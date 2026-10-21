package androidx.media3.exoplayer.video;

import P3.v;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.SurfaceInfo;
import androidx.media3.common.VideoCompositorSettings;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoGraph;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.TimestampIterator;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExecutorC0577g;
import androidx.media3.exoplayer.video.VideoSink;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class PlaybackVideoGraphWrapper implements VideoGraph.Listener {
    public static final long LATE_US_TO_DROP_INPUT_FRAME = 15000;
    private static final Executor NO_OP_EXECUTOR = new a(1);
    private static final int PRIMARY_SEQUENCE_INDEX = 0;
    private static final int STATE_CREATED = 0;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_RELEASED = 2;
    private static final String TAG = "PlaybackVidGraphWrapper";
    private final Clock clock;
    private ImmutableList<Effect> compositionEffects;
    private VideoCompositorSettings compositorSettings;
    private final Context context;
    private Pair<Surface, Size> currentSurfaceAndSize;
    private final VideoSink defaultVideoSink;
    private final long earlyThresholdToDropInputUs;
    private final boolean enablePlaylistMode;
    private long finalFramePresentationTimeUs;
    private HandlerWrapper handler;
    private boolean hasSignaledEndOfVideoGraphOutputStream;
    private final SparseArray<InputVideoSink> inputVideoSinks;
    private boolean isInputSdrToneMapped;
    private long lastOutputFramePresentationTimeUs;
    private final CopyOnWriteArraySet<Listener> listeners;
    private int outputStreamFirstFrameReleaseInstruction;
    private long outputStreamStartPositionUs;
    private int pendingFlushCount;
    private TimedValueQueue<StreamChangeInfo> pendingStreamChanges;
    private int registeredVideoInputCount;
    private boolean requestOpenGlToneMapping;
    private int state;
    private int totalVideoInputCount;
    private final VideoSink.VideoFrameHandler videoFrameHandler;
    private VideoFrameMetadataListener videoFrameMetadataListener;
    private final VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster;
    private VideoGraph videoGraph;
    private final VideoGraph.Factory videoGraphFactory;
    private Format videoGraphOutputFormat;

    public static final class Builder {
        private boolean built;
        private final Context context;
        private boolean enablePlaylistMode;
        private boolean enableReplayableCache;
        private final VideoFrameReleaseControl videoFrameReleaseControl;
        private VideoGraph.Factory videoGraphFactory;
        private long lateThresholdToDropInputUs = 15000;
        private VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = new VideoFrameReleaseEarlyTimeForecaster(1.0f);
        private Clock clock = Clock.DEFAULT;

        public Builder(Context context, VideoFrameReleaseControl videoFrameReleaseControl) {
            this.context = context.getApplicationContext();
            this.videoFrameReleaseControl = videoFrameReleaseControl;
        }

        public PlaybackVideoGraphWrapper build() {
            v.checkState(!this.built);
            if (this.videoGraphFactory == null) {
                this.videoGraphFactory = new ReflectiveSingleInputVideoGraphFactory(this.enableReplayableCache);
            }
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = new PlaybackVideoGraphWrapper(this);
            this.built = true;
            return playbackVideoGraphWrapper;
        }

        public Builder experimentalSetLateThresholdToDropInputUs(long j7) {
            this.lateThresholdToDropInputUs = j7;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setEnablePlaylistMode(boolean z6) {
            this.enablePlaylistMode = z6;
            return this;
        }

        public Builder setEnableReplayableCache(boolean z6) {
            this.enableReplayableCache = z6;
            return this;
        }

        public Builder setVideoFrameReleaseEarlyTimeForecaster(VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster) {
            this.videoFrameReleaseEarlyTimeForecaster = videoFrameReleaseEarlyTimeForecaster;
            return this;
        }

        public Builder setVideoGraphFactory(VideoGraph.Factory factory) {
            this.videoGraphFactory = factory;
            return this;
        }
    }

    public final class DefaultVideoSinkListener implements VideoSink.Listener {
        private DefaultVideoSinkListener() {
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public void onError(VideoSink.VideoSinkException videoSinkException) {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onError(VideoFrameProcessingException.from(videoSinkException));
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public void onFirstFrameRendered() {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onFirstFrameRendered();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public final /* synthetic */ void onFrameAvailableForRendering() {
            n.c(this);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public void onFrameDropped() {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onFrameDropped();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public void onVideoSizeChanged(VideoSize videoSize) {
            Iterator it = PlaybackVideoGraphWrapper.this.listeners.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).onVideoSizeChanged(videoSize);
            }
        }
    }

    public final class InputVideoSink implements VideoSink, Listener {
        private static final int MAX_CONSECUTIVE_FRAMES_TO_DROP = 2;
        private int consecutiveDroppedFrames;
        private long inputBufferTimestampAdjustmentUs;
        private Format inputFormat;
        private final int inputIndex;
        private int inputType;
        private boolean isInitialized;
        private boolean signaledEndOfStream;
        private final int videoFrameProcessorMaxPendingFrameCount;
        private ImmutableList<Effect> videoEffects = ImmutableList.of();
        private long lastFramePresentationTimeUs = C.TIME_UNSET;
        private VideoSink.Listener listener = VideoSink.Listener.NO_OP;
        private Executor listenerExecutor = PlaybackVideoGraphWrapper.NO_OP_EXECUTOR;

        public InputVideoSink(Context context, int i2) {
            this.inputIndex = i2;
            this.videoFrameProcessorMaxPendingFrameCount = Util.getMaxPendingFramesCountForMediaCodecDecoders(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$1(VideoSink.Listener listener, VideoFrameProcessingException videoFrameProcessingException) {
            listener.onError(new VideoSink.VideoSinkException(videoFrameProcessingException, (Format) v.checkNotNull(this.inputFormat)));
        }

        private void registerInputStream(Format format) {
            ((VideoGraph) v.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).registerInputStream(this.inputIndex, this.inputType != 1 ? 2 : 1, format.buildUpon().setColorInfo(PlaybackVideoGraphWrapper.this.getAdjustedInputColorInfo(format.colorInfo)).build(), this.videoEffects, 0L);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void allowReleaseFirstFrameBeforeStarted() {
            if (PlaybackVideoGraphWrapper.this.pendingStreamChanges.size() == 0) {
                PlaybackVideoGraphWrapper.this.allowReleaseFirstFrameBeforeStarted();
                return;
            }
            TimedValueQueue timedValueQueue = new TimedValueQueue();
            boolean z6 = true;
            while (PlaybackVideoGraphWrapper.this.pendingStreamChanges.size() > 0) {
                StreamChangeInfo streamChangeInfo = (StreamChangeInfo) v.checkNotNull((StreamChangeInfo) PlaybackVideoGraphWrapper.this.pendingStreamChanges.pollFirst());
                if (z6) {
                    int i2 = streamChangeInfo.firstFrameReleaseInstruction;
                    if (i2 == 0 || i2 == 1) {
                        streamChangeInfo = new StreamChangeInfo(streamChangeInfo.startPositionUs, 0, streamChangeInfo.fromTimestampUs);
                    } else {
                        PlaybackVideoGraphWrapper.this.allowReleaseFirstFrameBeforeStarted();
                    }
                    z6 = false;
                }
                timedValueQueue.add(streamChangeInfo.fromTimestampUs, streamChangeInfo);
            }
            PlaybackVideoGraphWrapper.this.pendingStreamChanges = timedValueQueue;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void clearOutputSurfaceInfo() {
            PlaybackVideoGraphWrapper.this.clearOutputSurfaceInfo();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void flush(boolean z6) {
            if (isInitialized()) {
                ((VideoGraph) v.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).flush();
            }
            this.lastFramePresentationTimeUs = C.TIME_UNSET;
            PlaybackVideoGraphWrapper.this.flush(z6);
            this.signaledEndOfStream = false;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public Surface getInputSurface() {
            v.checkState(isInitialized());
            return ((VideoGraph) v.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).getInputSurface(this.inputIndex);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean handleInputBitmap(Bitmap bitmap, TimestampIterator timestampIterator) {
            v.checkState(isInitialized());
            if (!PlaybackVideoGraphWrapper.this.shouldRenderToInputVideoSink()) {
                return false;
            }
            ShiftingTimestampIterator shiftingTimestampIterator = new ShiftingTimestampIterator(timestampIterator, this.inputBufferTimestampAdjustmentUs);
            if (!((VideoGraph) v.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).queueInputBitmap(this.inputIndex, bitmap, shiftingTimestampIterator)) {
                return false;
            }
            long lastTimestampUs = shiftingTimestampIterator.getLastTimestampUs();
            v.checkState(lastTimestampUs != C.TIME_UNSET);
            this.lastFramePresentationTimeUs = lastTimestampUs;
            return true;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean handleInputFrame(long j7, VideoSink.VideoFrameHandler videoFrameHandler) {
            int i2;
            v.checkState(isInitialized());
            long j8 = j7 + this.inputBufferTimestampAdjustmentUs;
            long predictEarlyUs = PlaybackVideoGraphWrapper.this.videoFrameReleaseEarlyTimeForecaster.predictEarlyUs(j8);
            if (predictEarlyUs != C.TIME_UNSET && PlaybackVideoGraphWrapper.this.earlyThresholdToDropInputUs != C.TIME_UNSET && predictEarlyUs < PlaybackVideoGraphWrapper.this.earlyThresholdToDropInputUs && (i2 = this.consecutiveDroppedFrames) < 2) {
                this.consecutiveDroppedFrames = i2 + 1;
                videoFrameHandler.skip();
                return true;
            }
            if (!PlaybackVideoGraphWrapper.this.shouldRenderToInputVideoSink() || ((VideoGraph) v.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).getPendingInputFrameCount(this.inputIndex) >= this.videoFrameProcessorMaxPendingFrameCount || !((VideoGraph) v.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).registerInputFrame(this.inputIndex)) {
                return false;
            }
            this.lastFramePresentationTimeUs = j8;
            videoFrameHandler.render(j8 * 1000);
            this.consecutiveDroppedFrames = 0;
            return true;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean initialize(Format format) throws VideoSink.VideoSinkException {
            v.checkState(!isInitialized());
            boolean registerInput = PlaybackVideoGraphWrapper.this.registerInput(format, this.inputIndex);
            this.isInitialized = registerInput;
            return registerInput;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isEnded() {
            return isInitialized() && PlaybackVideoGraphWrapper.this.isEnded();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isInitialized() {
            return this.isInitialized;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public boolean isReady(boolean z6) {
            return PlaybackVideoGraphWrapper.this.isReady(z6 && isInitialized());
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void join(boolean z6) {
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode) {
                PlaybackVideoGraphWrapper.this.joinPlayback(z6);
            }
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onError(VideoFrameProcessingException videoFrameProcessingException) {
            this.listenerExecutor.execute(new f(this, this.listener, videoFrameProcessingException, 0));
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onFirstFrameRendered() {
            VideoSink.Listener listener = this.listener;
            Executor executor = this.listenerExecutor;
            Objects.requireNonNull(listener);
            executor.execute(new g(listener, 1));
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onFrameAvailableForRendering() {
            VideoSink.Listener listener = this.listener;
            Executor executor = this.listenerExecutor;
            Objects.requireNonNull(listener);
            executor.execute(new g(listener, 2));
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onFrameDropped() {
            VideoSink.Listener listener = this.listener;
            Executor executor = this.listenerExecutor;
            Objects.requireNonNull(listener);
            executor.execute(new g(listener, 0));
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void onInputStreamChanged(int i2, Format format, long j7, int i7, List<Effect> list) {
            v.checkState(isInitialized());
            this.videoEffects = ImmutableList.copyOf((Collection) list);
            this.inputType = i2;
            this.inputFormat = format;
            PlaybackVideoGraphWrapper.this.finalFramePresentationTimeUs = C.TIME_UNSET;
            PlaybackVideoGraphWrapper.this.hasSignaledEndOfVideoGraphOutputStream = false;
            registerInputStream(format);
            boolean z6 = this.lastFramePresentationTimeUs == C.TIME_UNSET;
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode || (this.inputIndex == 0 && z6)) {
                long j8 = z6 ? -4611686018427387904L : this.lastFramePresentationTimeUs + 1;
                PlaybackVideoGraphWrapper.this.pendingStreamChanges.add(j8, new StreamChangeInfo(this.inputBufferTimestampAdjustmentUs + j7, i7, j8));
            }
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public void onVideoSizeChanged(VideoSize videoSize) {
            this.listenerExecutor.execute(new e(1, this.listener, videoSize));
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void redraw() {
            if (isInitialized()) {
                boolean z6 = this.signaledEndOfStream;
                long j7 = PlaybackVideoGraphWrapper.this.lastOutputFramePresentationTimeUs;
                PlaybackVideoGraphWrapper.this.flush(false);
                ((VideoGraph) v.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).redraw();
                PlaybackVideoGraphWrapper.this.lastOutputFramePresentationTimeUs = j7;
                if (z6) {
                    signalEndOfCurrentInputStream();
                }
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void release() {
            PlaybackVideoGraphWrapper.this.release();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void render(long j7, long j8) throws VideoSink.VideoSinkException {
            PlaybackVideoGraphWrapper.this.render(j7 + this.inputBufferTimestampAdjustmentUs, j8);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setBufferTimestampAdjustmentUs(long j7) {
            this.inputBufferTimestampAdjustmentUs = j7;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setChangeFrameRateStrategy(int i2) {
            if (this.inputIndex == 0) {
                PlaybackVideoGraphWrapper.this.setChangeFrameRateStrategy(i2);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setListener(VideoSink.Listener listener, Executor executor) {
            this.listener = listener;
            this.listenerExecutor = executor;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setOutputSurfaceInfo(Surface surface, Size size) {
            PlaybackVideoGraphWrapper.this.setOutputSurfaceInfo(surface, size);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setPlaybackSpeed(float f3) {
            if (this.inputIndex == 0) {
                PlaybackVideoGraphWrapper.this.setPlaybackSpeed(f3);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setVideoEffects(List<Effect> list) {
            if (this.videoEffects.equals(list)) {
                return;
            }
            this.videoEffects = ImmutableList.copyOf((Collection) list);
            Format format = this.inputFormat;
            if (format != null) {
                registerInputStream(format);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
            if (this.inputIndex == 0) {
                PlaybackVideoGraphWrapper.this.setVideoFrameMetadataListener(videoFrameMetadataListener);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void signalEndOfCurrentInputStream() {
            PlaybackVideoGraphWrapper.this.finalFramePresentationTimeUs = this.lastFramePresentationTimeUs;
            if (PlaybackVideoGraphWrapper.this.lastOutputFramePresentationTimeUs >= PlaybackVideoGraphWrapper.this.finalFramePresentationTimeUs) {
                PlaybackVideoGraphWrapper.this.signalEndOfVideoGraphOutputStream();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void signalEndOfInput() {
            if (!this.signaledEndOfStream && isInitialized()) {
                ((VideoGraph) v.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).signalEndOfInput(this.inputIndex);
                this.signaledEndOfStream = true;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void startRendering() {
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode) {
                PlaybackVideoGraphWrapper.this.startRendering();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public void stopRendering() {
            if (PlaybackVideoGraphWrapper.this.enablePlaylistMode) {
                PlaybackVideoGraphWrapper.this.stopRendering();
            }
        }
    }

    public interface Listener {
        void onError(VideoFrameProcessingException videoFrameProcessingException);

        void onFirstFrameRendered();

        void onFrameAvailableForRendering();

        void onFrameDropped();

        void onVideoSizeChanged(VideoSize videoSize);
    }

    public static final class ReflectiveDefaultVideoFrameProcessorFactory implements VideoFrameProcessor.Factory {
        private static final P3.C DEFAULT_VIDEO_FRAME_PROCESSOR_FACTORY_BUILDER_CLASS = com.google.common.base.c.memoize(new i());
        private final boolean enableReplayableCache;

        public ReflectiveDefaultVideoFrameProcessorFactory(boolean z6) {
            this.enableReplayableCache = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Class lambda$static$0() {
            try {
                return Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
            } catch (Exception e3) {
                throw new IllegalStateException(e3);
            }
        }

        @Override // androidx.media3.common.VideoFrameProcessor.Factory
        public VideoFrameProcessor create(Context context, DebugViewProvider debugViewProvider, ColorInfo colorInfo, boolean z6, Executor executor, VideoFrameProcessor.Listener listener) throws VideoFrameProcessingException {
            try {
                Class cls = (Class) DEFAULT_VIDEO_FRAME_PROCESSOR_FACTORY_BUILDER_CLASS.get();
                Object newInstance = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
                cls.getMethod("setEnableReplayableCache", Boolean.TYPE).invoke(newInstance, Boolean.valueOf(this.enableReplayableCache));
                return ((VideoFrameProcessor.Factory) v.checkNotNull(cls.getMethod(JsonPOJOBuilder.DEFAULT_BUILD_METHOD, new Class[0]).invoke(newInstance, new Object[0]))).create(context, debugViewProvider, colorInfo, z6, executor, listener);
            } catch (Exception e3) {
                throw new VideoFrameProcessingException(e3);
            }
        }
    }

    public static final class ReflectiveSingleInputVideoGraphFactory implements VideoGraph.Factory {
        private final VideoFrameProcessor.Factory videoFrameProcessorFactory;

        public ReflectiveSingleInputVideoGraphFactory(boolean z6) {
            this.videoFrameProcessorFactory = new ReflectiveDefaultVideoFrameProcessorFactory(z6);
        }

        @Override // androidx.media3.common.VideoGraph.Factory
        public VideoGraph create(Context context, ColorInfo colorInfo, DebugViewProvider debugViewProvider, VideoGraph.Listener listener, Executor executor, long j7, boolean z6) {
            try {
                return ((VideoGraph.Factory) Class.forName("androidx.media3.effect.SingleInputVideoGraph$Factory").getConstructor(VideoFrameProcessor.Factory.class).newInstance(this.videoFrameProcessorFactory)).create(context, colorInfo, debugViewProvider, listener, executor, j7, z6);
            } catch (Exception e3) {
                throw new IllegalStateException(e3);
            }
        }

        @Override // androidx.media3.common.VideoGraph.Factory
        public boolean supportsMultipleInputs() {
            return false;
        }
    }

    public static final class ShiftingTimestampIterator implements TimestampIterator {
        private final long shift;
        private final TimestampIterator timestampIterator;

        public ShiftingTimestampIterator(TimestampIterator timestampIterator, long j7) {
            this.timestampIterator = timestampIterator;
            this.shift = j7;
        }

        @Override // androidx.media3.common.util.TimestampIterator
        public TimestampIterator copyOf() {
            return new ShiftingTimestampIterator(this.timestampIterator.copyOf(), this.shift);
        }

        @Override // androidx.media3.common.util.TimestampIterator
        public long getLastTimestampUs() {
            long lastTimestampUs = this.timestampIterator.getLastTimestampUs();
            return lastTimestampUs == C.TIME_UNSET ? C.TIME_UNSET : lastTimestampUs + this.shift;
        }

        @Override // androidx.media3.common.util.TimestampIterator
        public boolean hasNext() {
            return this.timestampIterator.hasNext();
        }

        @Override // androidx.media3.common.util.TimestampIterator
        public long next() {
            return this.timestampIterator.next() + this.shift;
        }
    }

    public static final class StreamChangeInfo {
        public final int firstFrameReleaseInstruction;
        public final long fromTimestampUs;
        public final long startPositionUs;

        public StreamChangeInfo(long j7, int i2, long j8) {
            this.startPositionUs = j7;
            this.firstFrameReleaseInstruction = i2;
            this.fromTimestampUs = j8;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void allowReleaseFirstFrameBeforeStarted() {
        this.defaultVideoSink.allowReleaseFirstFrameBeforeStarted();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void flush(boolean z6) {
        if (isInitialized()) {
            this.pendingFlushCount++;
            this.defaultVideoSink.flush(z6);
            while (this.pendingStreamChanges.size() > 1) {
                this.pendingStreamChanges.pollFirst();
            }
            if (this.pendingStreamChanges.size() == 1) {
                StreamChangeInfo streamChangeInfo = (StreamChangeInfo) v.checkNotNull(this.pendingStreamChanges.pollFirst());
                this.outputStreamStartPositionUs = streamChangeInfo.startPositionUs;
                this.outputStreamFirstFrameReleaseInstruction = streamChangeInfo.firstFrameReleaseInstruction;
                onOutputStreamChanged();
            }
            this.lastOutputFramePresentationTimeUs = C.TIME_UNSET;
            if (z6) {
                this.finalFramePresentationTimeUs = C.TIME_UNSET;
                this.hasSignaledEndOfVideoGraphOutputStream = false;
            }
            ((HandlerWrapper) v.checkNotNull(this.handler)).post(new c(this, 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ColorInfo getAdjustedInputColorInfo(ColorInfo colorInfo) {
        return (colorInfo == null || !colorInfo.isDataSpaceValid() || this.isInputSdrToneMapped) ? ColorInfo.SDR_BT709_LIMITED : colorInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isEnded() {
        return this.pendingFlushCount == 0 && this.hasSignaledEndOfVideoGraphOutputStream && this.defaultVideoSink.isEnded();
    }

    private boolean isInitialized() {
        return this.state == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isReady(boolean z6) {
        return this.defaultVideoSink.isReady(z6 && this.pendingFlushCount == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinPlayback(boolean z6) {
        this.defaultVideoSink.join(z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flush$1() {
        this.pendingFlushCount--;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$0(Runnable runnable) {
    }

    private void maybeSetOutputSurfaceInfo(Surface surface, int i2, int i7) {
        VideoGraph videoGraph = this.videoGraph;
        if (videoGraph == null) {
            return;
        }
        if (surface != null) {
            videoGraph.setOutputSurfaceInfo(new SurfaceInfo(surface, i2, i7));
            this.defaultVideoSink.setOutputSurfaceInfo(surface, new Size(i2, i7));
        } else {
            videoGraph.setOutputSurfaceInfo(null);
            this.defaultVideoSink.clearOutputSurfaceInfo();
        }
    }

    private void onOutputStreamChanged() {
        this.defaultVideoSink.onInputStreamChanged(1, this.videoGraphOutputFormat, this.outputStreamStartPositionUs, this.outputStreamFirstFrameReleaseInstruction, ImmutableList.of());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean registerInput(Format format, int i2) throws VideoSink.VideoSinkException {
        PlaybackVideoGraphWrapper playbackVideoGraphWrapper;
        GlUtil.GlException glException;
        int i7 = 1;
        if (i2 == 0) {
            v.checkState(this.state == 0);
            ColorInfo adjustedInputColorInfo = getAdjustedInputColorInfo(format.colorInfo);
            try {
            } catch (GlUtil.GlException e3) {
                glException = e3;
            }
            try {
                if (this.requestOpenGlToneMapping) {
                    adjustedInputColorInfo = ColorInfo.SDR_BT709_LIMITED;
                } else if (adjustedInputColorInfo.colorTransfer == 7 && Build.VERSION.SDK_INT < 34 && GlUtil.isBt2020PqExtensionSupported()) {
                    adjustedInputColorInfo = adjustedInputColorInfo.buildUpon().setColorTransfer(6).build();
                } else if (GlUtil.isColorTransferSupported(adjustedInputColorInfo.colorTransfer) || Build.VERSION.SDK_INT < 29) {
                    int i8 = adjustedInputColorInfo.colorTransfer;
                    if (i8 == 2 || i8 == 10) {
                        adjustedInputColorInfo = ColorInfo.SDR_BT709_LIMITED;
                    }
                } else {
                    Log.w(TAG, Util.formatInvariant("Color transfer %d is not supported. Falling back to OpenGl tone mapping.", Integer.valueOf(adjustedInputColorInfo.colorTransfer)));
                    adjustedInputColorInfo = ColorInfo.SDR_BT709_LIMITED;
                }
                ColorInfo colorInfo = adjustedInputColorInfo;
                HandlerWrapper createHandler = this.clock.createHandler((Looper) v.checkNotNull(Looper.myLooper()), null);
                this.handler = createHandler;
                try {
                    VideoGraph.Factory factory = this.videoGraphFactory;
                    Context context = this.context;
                    DebugViewProvider debugViewProvider = DebugViewProvider.NONE;
                    Objects.requireNonNull(createHandler);
                    playbackVideoGraphWrapper = this;
                    try {
                        VideoGraph create = factory.create(context, colorInfo, debugViewProvider, playbackVideoGraphWrapper, new ExecutorC0577g(createHandler, i7), 0L, false);
                        playbackVideoGraphWrapper.videoGraph = create;
                        create.setCompositionEffects(playbackVideoGraphWrapper.compositionEffects);
                        playbackVideoGraphWrapper.videoGraph.setCompositorSettings(playbackVideoGraphWrapper.compositorSettings);
                        playbackVideoGraphWrapper.videoGraph.initialize();
                        Pair<Surface, Size> pair = playbackVideoGraphWrapper.currentSurfaceAndSize;
                        if (pair != null) {
                            Surface surface = (Surface) pair.first;
                            Size size = (Size) pair.second;
                            maybeSetOutputSurfaceInfo(surface, size.getWidth(), size.getHeight());
                        }
                        playbackVideoGraphWrapper.defaultVideoSink.initialize(format);
                        VideoSink videoSink = playbackVideoGraphWrapper.defaultVideoSink;
                        DefaultVideoSinkListener defaultVideoSinkListener = new DefaultVideoSinkListener();
                        HandlerWrapper handlerWrapper = playbackVideoGraphWrapper.handler;
                        Objects.requireNonNull(handlerWrapper);
                        videoSink.setListener(defaultVideoSinkListener, new ExecutorC0577g(handlerWrapper, i7));
                        playbackVideoGraphWrapper.state = 1;
                    } catch (VideoFrameProcessingException e7) {
                        e = e7;
                        throw new VideoSink.VideoSinkException(e, format);
                    }
                } catch (VideoFrameProcessingException e8) {
                    e = e8;
                }
            } catch (GlUtil.GlException e9) {
                glException = e9;
                throw new VideoSink.VideoSinkException(glException, format);
            }
        } else {
            playbackVideoGraphWrapper = this;
            if (!isInitialized()) {
                return false;
            }
        }
        try {
            ((VideoGraph) v.checkNotNull(playbackVideoGraphWrapper.videoGraph)).registerInput(i2);
            playbackVideoGraphWrapper.registeredVideoInputCount++;
            return true;
        } catch (VideoFrameProcessingException e10) {
            throw new VideoSink.VideoSinkException(e10, format);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void render(long j7, long j8) throws VideoSink.VideoSinkException {
        this.defaultVideoSink.render(j7, j8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setChangeFrameRateStrategy(int i2) {
        this.defaultVideoSink.setChangeFrameRateStrategy(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f3) {
        this.videoFrameReleaseEarlyTimeForecaster.setPlaybackSpeed(f3);
        this.defaultVideoSink.setPlaybackSpeed(f3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        this.videoFrameMetadataListener = videoFrameMetadataListener;
        this.defaultVideoSink.setVideoFrameMetadataListener(videoFrameMetadataListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldRenderToInputVideoSink() {
        int i2 = this.totalVideoInputCount;
        return i2 != -1 && i2 == this.registeredVideoInputCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void signalEndOfVideoGraphOutputStream() {
        this.defaultVideoSink.signalEndOfCurrentInputStream();
        this.hasSignaledEndOfVideoGraphOutputStream = true;
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public void clearOutputSurfaceInfo() {
        Size size = Size.UNKNOWN;
        maybeSetOutputSurfaceInfo(null, size.getWidth(), size.getHeight());
        this.currentSurfaceAndSize = null;
    }

    public VideoSink getSink(int i2) {
        if (Util.contains(this.inputVideoSinks, i2)) {
            return this.inputVideoSinks.get(i2);
        }
        InputVideoSink inputVideoSink = new InputVideoSink(this.context, i2);
        if (i2 == 0) {
            addListener(inputVideoSink);
        }
        this.inputVideoSinks.put(i2, inputVideoSink);
        return inputVideoSink;
    }

    @Override // androidx.media3.common.VideoGraph.Listener
    public void onEnded(long j7) {
    }

    @Override // androidx.media3.common.VideoGraph.Listener
    public void onError(VideoFrameProcessingException videoFrameProcessingException) {
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onError(videoFrameProcessingException);
        }
    }

    @Override // androidx.media3.common.VideoGraph.Listener
    public void onOutputFrameAvailableForRendering(long j7, boolean z6) {
        if (this.pendingFlushCount > 0) {
            return;
        }
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onFrameAvailableForRendering();
        }
        if (z6) {
            VideoFrameMetadataListener videoFrameMetadataListener = this.videoFrameMetadataListener;
            if (videoFrameMetadataListener != null) {
                videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j7, C.TIME_UNSET, this.videoGraphOutputFormat, null);
                return;
            }
            return;
        }
        this.lastOutputFramePresentationTimeUs = j7;
        StreamChangeInfo pollFloor = this.pendingStreamChanges.pollFloor(j7);
        if (pollFloor != null) {
            this.outputStreamStartPositionUs = pollFloor.startPositionUs;
            this.outputStreamFirstFrameReleaseInstruction = pollFloor.firstFrameReleaseInstruction;
            onOutputStreamChanged();
        }
        this.defaultVideoSink.handleInputFrame(j7, this.videoFrameHandler);
        long j8 = this.finalFramePresentationTimeUs;
        if (j8 == C.TIME_UNSET || j7 < j8) {
            return;
        }
        signalEndOfVideoGraphOutputStream();
    }

    @Override // androidx.media3.common.VideoGraph.Listener
    public void onOutputFrameRateChanged(float f3) {
        this.videoGraphOutputFormat = this.videoGraphOutputFormat.buildUpon().setFrameRate(f3).build();
        onOutputStreamChanged();
    }

    @Override // androidx.media3.common.VideoGraph.Listener
    public void onOutputSizeChanged(int i2, int i7) {
        this.videoGraphOutputFormat = this.videoGraphOutputFormat.buildUpon().setWidth(i2).setHeight(i7).build();
        onOutputStreamChanged();
    }

    public void release() {
        if (this.state == 2) {
            return;
        }
        HandlerWrapper handlerWrapper = this.handler;
        if (handlerWrapper != null) {
            handlerWrapper.removeCallbacksAndMessages(null);
        }
        VideoGraph videoGraph = this.videoGraph;
        if (videoGraph != null) {
            videoGraph.release();
        }
        this.currentSurfaceAndSize = null;
        this.state = 2;
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public void setCompositionEffects(List<Effect> list) {
        this.compositionEffects = ImmutableList.copyOf((Collection) list);
        VideoGraph videoGraph = this.videoGraph;
        if (videoGraph != null) {
            videoGraph.setCompositionEffects(list);
        }
    }

    public void setCompositorSettings(VideoCompositorSettings videoCompositorSettings) {
        this.compositorSettings = videoCompositorSettings;
        VideoGraph videoGraph = this.videoGraph;
        if (videoGraph != null) {
            videoGraph.setCompositorSettings(videoCompositorSettings);
        }
    }

    public void setIsInputSdrToneMapped(boolean z6) {
        this.isInputSdrToneMapped = z6;
    }

    public void setOutputSurfaceInfo(Surface surface, Size size) {
        Pair<Surface, Size> pair = this.currentSurfaceAndSize;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((Size) this.currentSurfaceAndSize.second).equals(size)) {
            return;
        }
        this.currentSurfaceAndSize = Pair.create(surface, size);
        maybeSetOutputSurfaceInfo(surface, size.getWidth(), size.getHeight());
    }

    public void setRequestOpenGlToneMapping(boolean z6) {
        this.requestOpenGlToneMapping = z6;
    }

    public void setTotalVideoInputCount(int i2) {
        if (i2 < this.totalVideoInputCount) {
            return;
        }
        this.totalVideoInputCount = i2;
    }

    public void startRendering() {
        this.defaultVideoSink.startRendering();
    }

    public void stopRendering() {
        this.defaultVideoSink.stopRendering();
    }

    private PlaybackVideoGraphWrapper(Builder builder) {
        this.context = builder.context;
        this.pendingStreamChanges = new TimedValueQueue<>();
        this.videoGraphFactory = (VideoGraph.Factory) v.checkNotNull(builder.videoGraphFactory);
        this.inputVideoSinks = new SparseArray<>();
        this.compositionEffects = ImmutableList.of();
        this.compositorSettings = VideoCompositorSettings.DEFAULT;
        this.enablePlaylistMode = builder.enablePlaylistMode;
        Clock clock = builder.clock;
        this.clock = clock;
        this.earlyThresholdToDropInputUs = builder.lateThresholdToDropInputUs != C.TIME_UNSET ? -builder.lateThresholdToDropInputUs : -9223372036854775807L;
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = builder.videoFrameReleaseEarlyTimeForecaster;
        this.videoFrameReleaseEarlyTimeForecaster = videoFrameReleaseEarlyTimeForecaster;
        this.defaultVideoSink = new DefaultVideoSink(builder.videoFrameReleaseControl, videoFrameReleaseEarlyTimeForecaster, clock);
        this.videoFrameHandler = new VideoSink.VideoFrameHandler() { // from class: androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.1
            @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
            public void render(long j7) {
                ((VideoGraph) v.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).renderOutputFrame(j7);
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
            public void skip() {
                ((VideoGraph) v.checkNotNull(PlaybackVideoGraphWrapper.this.videoGraph)).renderOutputFrame(-2L);
            }
        };
        this.listeners = new CopyOnWriteArraySet<>();
        this.videoGraphOutputFormat = new Format.Builder().build();
        this.outputStreamStartPositionUs = C.TIME_UNSET;
        this.lastOutputFramePresentationTimeUs = C.TIME_UNSET;
        this.finalFramePresentationTimeUs = C.TIME_UNSET;
        this.totalVideoInputCount = -1;
        this.state = 0;
    }
}
