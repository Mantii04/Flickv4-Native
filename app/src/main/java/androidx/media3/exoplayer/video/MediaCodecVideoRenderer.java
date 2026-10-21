package androidx.media3.exoplayer.video;

import P3.v;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Pair;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Timeline;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.ScrubbingModeParameters;
import androidx.media3.exoplayer.X;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.VideoSink;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.PriorityQueue;
import u0.C1665f;

@UnstableApi
/* loaded from: classes.dex */
public class MediaCodecVideoRenderer extends MediaCodecRenderer implements VideoFrameReleaseControl.FrameTimingEvaluator {
    private static final int HEVC_MAX_INPUT_SIZE_THRESHOLD = 2097152;
    private static final float INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR = 1.5f;
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int MAX_CONSECUTIVE_DROPPED_INPUT_BUFFERS_COUNT_TO_DISCARD_HEADER = 0;
    private static final long MIN_EARLY_US_LATE_THRESHOLD = -30000;
    private static final long MIN_EARLY_US_VERY_LATE_THRESHOLD = -500000;
    private static final long OFFSET_FROM_PERIOD_END_TO_TREAT_AS_LAST_US = 100000;
    private static final int[] STANDARD_LONG_EDGE_VIDEO_PX = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static final String TAG = "MediaCodecVideoRenderer";
    private static final long TUNNELING_EOS_PRESENTATION_TIME_US = Long.MAX_VALUE;
    private static boolean deviceNeedsSetOutputSurfaceWorkaround;
    private static boolean evaluatedDeviceNeedsSetOutputSurfaceWorkaround;
    private final Av1SampleDependencyParser av1SampleDependencyParser;
    private int buffersInCodecCount;
    private int changeFrameRateStrategy;
    private boolean codecHandlesHdr10PlusOutOfBandMetadata;
    private CodecMaxValues codecMaxValues;
    private boolean codecNeedsSetOutputSurfaceWorkaround;
    private int consecutiveDroppedFrameCount;
    private int consecutiveDroppedInputBufferCount;
    private final Context context;
    private VideoSize decodedVideoSize;
    private final boolean deviceNeedsNoPostProcessWorkaround;
    private Surface displaySurface;
    private final PriorityQueue<Long> droppedDecoderInputBufferTimestamps;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private final boolean enableMediaCodecBufferDecodeOnlyFlag;
    private final VideoRendererEventListener.EventDispatcher eventDispatcher;
    private VideoFrameMetadataListener frameMetadataListener;
    private boolean hasSetVideoSink;
    private boolean haveReportedFirstFrameRenderedForCurrentSurface;
    private boolean isFlushRequired;
    private long lastFrameReleaseTimeNs;
    private long lastResetToKeyFramePositionUs;
    private final int maxDroppedFramesToNotify;
    private final long minEarlyUsToDropDecoderInput;
    private int nextVideoSinkFirstFrameReleaseInstruction;
    private Size outputResolution;
    private final boolean ownsVideoSink;
    private boolean pendingVideoSinkInputStreamChange;
    private long periodDurationUs;
    private PlaceholderSurface placeholderSurface;
    private int rendererPriority;
    private VideoSize reportedVideoSize;
    private int scalingMode;
    private ScrubbingModeParameters scrubbingModeParameters;
    private long startPositionUs;
    private long totalVideoFrameProcessingOffsetUs;
    private boolean tunneling;
    private int tunnelingAudioSessionId;
    OnFrameRenderedListener tunnelingOnFrameRenderedListener;
    private List<Effect> videoEffects;
    private int videoFrameProcessingOffsetCount;
    private final VideoFrameReleaseControl videoFrameReleaseControl;
    private final VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster;
    private final VideoFrameReleaseControl.FrameReleaseInfo videoFrameReleaseInfo;
    private VideoSink videoSink;

    public static final class Api26 {
        private Api26() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
        
            r5 = r5.getHdrCapabilities();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean doesDisplaySupportDolbyVision(android.content.Context r5) {
            /*
                java.lang.String r0 = "display"
                java.lang.Object r5 = r5.getSystemService(r0)
                android.hardware.display.DisplayManager r5 = (android.hardware.display.DisplayManager) r5
                r0 = 0
                if (r5 == 0) goto L10
                android.view.Display r5 = r5.getDisplay(r0)
                goto L11
            L10:
                r5 = 0
            L11:
                if (r5 == 0) goto L32
                boolean r1 = B4.AbstractC0052o.A(r5)
                if (r1 != 0) goto L1a
                goto L32
            L1a:
                android.view.Display$HdrCapabilities r5 = androidx.media3.exoplayer.audio.n.k(r5)
                if (r5 != 0) goto L21
                goto L32
            L21:
                int[] r5 = androidx.media3.exoplayer.audio.n.D(r5)
                int r1 = r5.length
                r2 = r0
            L27:
                if (r2 >= r1) goto L32
                r3 = r5[r2]
                r4 = 1
                if (r3 != r4) goto L2f
                return r4
            L2f:
                int r2 = r2 + 1
                goto L27
            L32:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.Api26.doesDisplaySupportDolbyVision(android.content.Context):boolean");
        }
    }

    public static final class Builder {
        private long allowedJoiningTimeMs;
        private boolean buildCalled;
        private MediaCodecAdapter.Factory codecAdapterFactory;
        private final Context context;
        private boolean enableDecoderFallback;
        private boolean enableMediaCodecBufferDecodeOnlyFlag;
        private Handler eventHandler;
        private VideoRendererEventListener eventListener;
        private int maxDroppedFramesToNotify;
        private boolean parseAv1SampleDependencies;
        private VideoSink videoSink;
        private MediaCodecSelector mediaCodecSelector = MediaCodecSelector.DEFAULT;
        private float assumedMinimumCodecOperatingRate = 30.0f;
        private long lateThresholdToDropDecoderInputUs = C.TIME_UNSET;

        public Builder(Context context) {
            this.context = context;
            this.codecAdapterFactory = androidx.media3.exoplayer.mediacodec.g.a(context);
        }

        public MediaCodecVideoRenderer build() {
            v.checkState(!this.buildCalled);
            Handler handler = this.eventHandler;
            v.checkState((handler == null && this.eventListener == null) || !(handler == null || this.eventListener == null));
            this.buildCalled = true;
            return new MediaCodecVideoRenderer(this);
        }

        public Builder experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(boolean z6) {
            this.enableMediaCodecBufferDecodeOnlyFlag = z6;
            return this;
        }

        public Builder experimentalSetLateThresholdToDropDecoderInputUs(long j7) {
            this.lateThresholdToDropDecoderInputUs = j7;
            return this;
        }

        public Builder experimentalSetParseAv1SampleDependencies(boolean z6) {
            this.parseAv1SampleDependencies = z6;
            return this;
        }

        public Builder setAllowedJoiningTimeMs(long j7) {
            this.allowedJoiningTimeMs = j7;
            return this;
        }

        public Builder setAssumedMinimumCodecOperatingRate(float f3) {
            this.assumedMinimumCodecOperatingRate = f3;
            return this;
        }

        public Builder setCodecAdapterFactory(MediaCodecAdapter.Factory factory) {
            this.codecAdapterFactory = factory;
            return this;
        }

        public Builder setEnableDecoderFallback(boolean z6) {
            this.enableDecoderFallback = z6;
            return this;
        }

        public Builder setEventHandler(Handler handler) {
            this.eventHandler = handler;
            return this;
        }

        public Builder setEventListener(VideoRendererEventListener videoRendererEventListener) {
            this.eventListener = videoRendererEventListener;
            return this;
        }

        public Builder setMaxDroppedFramesToNotify(int i2) {
            this.maxDroppedFramesToNotify = i2;
            return this;
        }

        public Builder setMediaCodecSelector(MediaCodecSelector mediaCodecSelector) {
            this.mediaCodecSelector = mediaCodecSelector;
            return this;
        }

        public Builder setVideoSink(VideoSink videoSink) {
            this.videoSink = videoSink;
            return this;
        }
    }

    public static final class CodecMaxValues {
        public final int height;
        public final int inputSize;
        public final int width;

        public CodecMaxValues(int i2, int i7, int i8) {
            this.width = i2;
            this.height = i7;
            this.inputSize = i8;
        }
    }

    public final class OnFrameRenderedListener implements MediaCodecAdapter.OnFrameRenderedListener, Handler.Callback {
        private static final int HANDLE_FRAME_RENDERED = 0;
        private final Handler handler;

        public OnFrameRenderedListener(MediaCodecAdapter mediaCodecAdapter) {
            Handler createHandlerForCurrentLooper = Util.createHandlerForCurrentLooper(this);
            this.handler = createHandlerForCurrentLooper;
            mediaCodecAdapter.setOnFrameRenderedListener(this, createHandlerForCurrentLooper);
        }

        private void handleFrameRendered(long j7) {
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            if (this != mediaCodecVideoRenderer.tunnelingOnFrameRenderedListener || mediaCodecVideoRenderer.getCodec() == null) {
                return;
            }
            if (j7 == Long.MAX_VALUE) {
                MediaCodecVideoRenderer.this.onProcessedTunneledEndOfStream();
                return;
            }
            try {
                MediaCodecVideoRenderer.this.onProcessedTunneledBuffer(j7);
            } catch (ExoPlaybackException e3) {
                MediaCodecVideoRenderer.this.setPendingPlaybackException(e3);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            handleFrameRendered(Util.toLong(message.arg1, message.arg2));
            return true;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public void onFrameRendered(MediaCodecAdapter mediaCodecAdapter, long j7, long j8) {
            if (Build.VERSION.SDK_INT >= 30) {
                handleFrameRendered(j7);
            } else {
                this.handler.sendMessageAtFrontOfQueue(Message.obtain(this.handler, 0, (int) (j7 >> 32), (int) j7));
            }
        }
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector));
    }

    private static boolean cannotChangeSurfaceFrameRateMidPlayback() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            return i2 == 30 && Build.MODEL.startsWith("MiTV");
        }
        return true;
    }

    private void configureVideoSink() {
        this.videoSink.setListener(new VideoSink.Listener() { // from class: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.1
            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onError(VideoSink.VideoSinkException videoSinkException) {
                MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
                mediaCodecVideoRenderer.setPendingPlaybackException(mediaCodecVideoRenderer.createRendererException(videoSinkException, videoSinkException.format, PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED));
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onFirstFrameRendered() {
                if (MediaCodecVideoRenderer.this.displaySurface != null) {
                    MediaCodecVideoRenderer.this.notifyRenderedFirstFrame();
                }
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onFrameAvailableForRendering() {
                Renderer.WakeupListener wakeupListener = MediaCodecVideoRenderer.this.getWakeupListener();
                if (wakeupListener != null) {
                    wakeupListener.onWakeup();
                }
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onFrameDropped() {
                if (MediaCodecVideoRenderer.this.displaySurface != null) {
                    MediaCodecVideoRenderer.this.updateDroppedBufferCounters(0, 1);
                }
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public void onVideoSizeChanged(VideoSize videoSize) {
            }
        }, com.google.common.util.concurrent.g.directExecutor());
        VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            this.videoSink.setVideoFrameMetadataListener(videoFrameMetadataListener);
        }
        if (this.displaySurface != null && !this.outputResolution.equals(Size.UNKNOWN)) {
            this.videoSink.setOutputSurfaceInfo(this.displaySurface, this.outputResolution);
        }
        this.videoSink.setChangeFrameRateStrategy(this.changeFrameRateStrategy);
        this.videoSink.setPlaybackSpeed(getPlaybackSpeed());
        List<Effect> list = this.videoEffects;
        if (list != null) {
            this.videoSink.setVideoEffects(list);
        }
    }

    private static void debugLogForBufferRelease(int i2, long j7, long j8, boolean z6, boolean z7, VideoFrameReleaseControl.FrameReleaseInfo frameReleaseInfo, long j9) {
        if (i2 == 5) {
            return;
        }
        StringBuilder r6 = A.i.r(j7, "video, release output, pts=", ", pos=");
        r6.append(j8);
        r6.append(", early=");
        r6.append(frameReleaseInfo.getEarlyUs());
        String sb = r6.toString();
        if (z6) {
            sb = A.i.B(sb, ", decode-only");
        }
        if (z7) {
            sb = A.i.B(sb, ", last-buffer");
        }
        if (i2 == 0) {
            sb = A.i.B(sb, ", release immediately");
        } else if (i2 == 1) {
            long releaseTimeNs = frameReleaseInfo.getReleaseTimeNs();
            StringBuilder s6 = A.i.s(sb, ", release=");
            s6.append(releaseTimeNs / 1000);
            sb = s6.toString();
            if (j9 != 0) {
                sb = A.i.n(A.i.s(sb, " (+"), (releaseTimeNs - j9) / 1000, ")");
            }
        } else if (i2 == 2) {
            sb = A.i.B(sb, ", drop");
        } else if (i2 == 3) {
            sb = A.i.B(sb, ", skip");
        } else if (i2 == 4) {
            sb = A.i.B(sb, ", ignore");
        }
        Log.d("MCRdebug", sb);
    }

    private static boolean deviceNeedsNoPostProcessWorkaround() {
        return "NVIDIA".equals(Build.MANUFACTURER);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x073c, code lost:
    
        if (r11.equals("A10-70L") == false) goto L89;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean evaluateDeviceNeedsSetOutputSurfaceWorkaround() {
        /*
            Method dump skipped, instructions count: 3180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.evaluateDeviceNeedsSetOutputSurfaceWorkaround():boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0087, code lost:
    
        if (r9.equals(androidx.media3.common.MimeTypes.VIDEO_AV1) == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getCodecMaxInputSize(androidx.media3.exoplayer.mediacodec.MediaCodecInfo r11, androidx.media3.common.Format r12) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.getCodecMaxInputSize(androidx.media3.exoplayer.mediacodec.MediaCodecInfo, androidx.media3.common.Format):int");
    }

    private static Point getCodecMaxSize(MediaCodecInfo mediaCodecInfo, Format format) {
        int i2 = format.height;
        int i7 = format.width;
        boolean z6 = i2 > i7;
        int i8 = z6 ? i2 : i7;
        if (z6) {
            i2 = i7;
        }
        float f3 = i2 / i8;
        for (int i9 : STANDARD_LONG_EDGE_VIDEO_PX) {
            int i10 = (int) (i9 * f3);
            if (i9 <= i8 || i10 <= i2) {
                break;
            }
            int i11 = z6 ? i10 : i9;
            if (!z6) {
                i9 = i10;
            }
            Point alignVideoSizeV21 = mediaCodecInfo.alignVideoSizeV21(i11, i9);
            float f7 = format.frameRate;
            if (alignVideoSizeV21 != null && mediaCodecInfo.isVideoSizeAndRateSupportedV21(alignVideoSizeV21.x, alignVideoSizeV21.y, f7)) {
                return alignVideoSizeV21;
            }
        }
        return null;
    }

    public static int getMaxInputSize(MediaCodecInfo mediaCodecInfo, Format format) {
        if (format.maxInputSize == -1) {
            return getCodecMaxInputSize(mediaCodecInfo, format);
        }
        int size = format.initializationData.size();
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            i2 += format.initializationData.get(i7).length;
        }
        return format.maxInputSize + i2;
    }

    private static int getMaxSampleSize(int i2, int i7) {
        return (i2 * 3) / (i7 * 2);
    }

    private Surface getSurfaceForCodec(MediaCodecInfo mediaCodecInfo) {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            return videoSink.getInputSurface();
        }
        Surface surface = this.displaySurface;
        if (surface != null) {
            return surface;
        }
        if (shouldUseDetachedSurface(mediaCodecInfo)) {
            return null;
        }
        v.checkState(shouldUsePlaceholderSurface(mediaCodecInfo));
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (placeholderSurface != null && placeholderSurface.secure != mediaCodecInfo.secure) {
            releasePlaceholderSurface();
        }
        if (this.placeholderSurface == null) {
            this.placeholderSurface = PlaceholderSurface.newInstance(this.context, mediaCodecInfo.secure);
        }
        return this.placeholderSurface;
    }

    private boolean hasSurfaceForCodec(MediaCodecInfo mediaCodecInfo) {
        if (this.videoSink != null) {
            return true;
        }
        Surface surface = this.displaySurface;
        return (surface != null && surface.isValid()) || shouldUseDetachedSurface(mediaCodecInfo) || shouldUsePlaceholderSurface(mediaCodecInfo);
    }

    private boolean isBufferBeforeStartTime(C1665f c1665f) {
        return c1665f.timeUs < getLastResetPositionUs();
    }

    private boolean isBufferProbablyLastSample(C1665f c1665f) {
        if (hasReadStreamToEnd() || c1665f.isLastSample() || this.periodDurationUs == C.TIME_UNSET) {
            return true;
        }
        return this.periodDurationUs - (c1665f.timeUs - getOutputStreamOffsetUs()) <= 100000;
    }

    private void maybeNotifyDroppedFrames() {
        if (this.droppedFrames > 0) {
            long elapsedRealtime = getClock().elapsedRealtime();
            this.eventDispatcher.droppedFrames(this.droppedFrames, elapsedRealtime - this.droppedFrameAccumulationStartTimeMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = elapsedRealtime;
        }
    }

    private void maybeNotifyRenderedFirstFrame() {
        if (!this.videoFrameReleaseControl.onFrameReleasedIsFirstFrame() || this.displaySurface == null) {
            return;
        }
        notifyRenderedFirstFrame();
    }

    private void maybeNotifyVideoFrameProcessingOffset() {
        int i2 = this.videoFrameProcessingOffsetCount;
        if (i2 != 0) {
            this.eventDispatcher.reportVideoFrameProcessingOffset(this.totalVideoFrameProcessingOffsetUs, i2);
            this.totalVideoFrameProcessingOffsetUs = 0L;
            this.videoFrameProcessingOffsetCount = 0;
        }
    }

    private void maybeNotifyVideoSizeChanged(VideoSize videoSize) {
        if (videoSize.equals(VideoSize.UNKNOWN) || videoSize.equals(this.reportedVideoSize)) {
            return;
        }
        this.reportedVideoSize = videoSize;
        this.eventDispatcher.videoSizeChanged(videoSize);
    }

    private void maybeRenotifyRenderedFirstFrame() {
        Surface surface = this.displaySurface;
        if (surface == null || !this.haveReportedFirstFrameRenderedForCurrentSurface) {
            return;
        }
        this.eventDispatcher.renderedFirstFrame(surface);
    }

    private void maybeRenotifyVideoSizeChanged() {
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null) {
            this.eventDispatcher.videoSizeChanged(videoSize);
        }
    }

    private void maybeSetKeyAllowFrameDrop(MediaFormat mediaFormat) {
        if (this.videoSink == null || Util.isFrameDropAllowedOnSurfaceInput(this.context)) {
            return;
        }
        mediaFormat.setInteger("allow-frame-drop", 0);
    }

    private void maybeSetupTunnelingForFirstFrame() {
        MediaCodecAdapter codec;
        if (this.tunneling && (codec = getCodec()) != null) {
            this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListener(codec);
            if (Build.VERSION.SDK_INT >= 33) {
                Bundle bundle = new Bundle();
                bundle.putInt("tunnel-peek", 1);
                codec.setParameters(bundle);
            }
        }
    }

    private void notifyFrameMetadataListener(long j7, long j8, Format format) {
        VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j7, j8, format, getCodecOutputMediaFormat());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRenderedFirstFrame() {
        this.eventDispatcher.renderedFirstFrame(this.displaySurface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProcessedTunneledEndOfStream() {
        setPendingOutputEndOfStream();
    }

    private void releaseFrame(MediaCodecAdapter mediaCodecAdapter, int i2, long j7, Format format) {
        MediaCodecVideoRenderer mediaCodecVideoRenderer;
        long releaseTimeNs = this.videoFrameReleaseInfo.getReleaseTimeNs();
        long earlyUs = this.videoFrameReleaseInfo.getEarlyUs();
        if (shouldSkipBuffersWithIdenticalReleaseTime() && releaseTimeNs == this.lastFrameReleaseTimeNs) {
            skipOutputBuffer(mediaCodecAdapter, i2, j7);
            mediaCodecVideoRenderer = this;
        } else {
            mediaCodecVideoRenderer = this;
            mediaCodecVideoRenderer.notifyFrameMetadataListener(j7, releaseTimeNs, format);
            mediaCodecVideoRenderer.renderOutputBufferV21(mediaCodecAdapter, i2, j7, releaseTimeNs);
            releaseTimeNs = releaseTimeNs;
        }
        updateVideoFrameProcessingOffsetCounters(earlyUs);
        mediaCodecVideoRenderer.lastFrameReleaseTimeNs = releaseTimeNs;
    }

    private void releasePlaceholderSurface() {
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (placeholderSurface != null) {
            placeholderSurface.release();
            this.placeholderSurface = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i2, long j7, long j8) {
        renderOutputBufferV21(mediaCodecAdapter, i2, j7, j8);
    }

    private static void setHdr10PlusInfoV29(MediaCodecAdapter mediaCodecAdapter, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        mediaCodecAdapter.setParameters(bundle);
    }

    private void setOutput(Object obj) throws ExoPlaybackException {
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        if (this.displaySurface == surface) {
            if (surface != null) {
                maybeRenotifyVideoSizeChanged();
                maybeRenotifyRenderedFirstFrame();
                return;
            }
            return;
        }
        this.displaySurface = surface;
        if (this.videoSink == null) {
            this.videoFrameReleaseControl.setOutputSurface(surface);
        }
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        int state = getState();
        MediaCodecAdapter codec = getCodec();
        if (codec != null && this.videoSink == null) {
            MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) v.checkNotNull(getCodecInfo());
            if (!hasSurfaceForCodec(mediaCodecInfo) || this.codecNeedsSetOutputSurfaceWorkaround) {
                releaseCodec();
                maybeInitCodecOrBypass();
            } else {
                setOutputSurface(codec, getSurfaceForCodec(mediaCodecInfo));
            }
        }
        if (surface != null) {
            maybeRenotifyVideoSizeChanged();
        } else {
            this.reportedVideoSize = null;
            VideoSink videoSink = this.videoSink;
            if (videoSink != null) {
                videoSink.clearOutputSurfaceInfo();
            }
        }
        if (state == 2) {
            VideoSink videoSink2 = this.videoSink;
            if (videoSink2 != null) {
                videoSink2.join(true);
            } else {
                this.videoFrameReleaseControl.join(true);
            }
        }
        maybeSetupTunnelingForFirstFrame();
    }

    private void setOutputSurface(MediaCodecAdapter mediaCodecAdapter, Surface surface) {
        if (surface != null) {
            setOutputSurfaceV23(mediaCodecAdapter, surface);
        } else {
            if (Build.VERSION.SDK_INT < 35) {
                throw new IllegalStateException();
            }
            detachOutputSurfaceV35(mediaCodecAdapter);
        }
    }

    public static int supportsFormat(Context context, MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        return supportsFormatInternal(context, mediaCodecSelector, format);
    }

    private static int supportsFormatInternal(Context context, MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z6;
        int i2 = 0;
        if (!MimeTypes.isVideo(format.sampleMimeType)) {
            return X.c(0);
        }
        boolean z7 = format.drmInitData != null;
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(context, mediaCodecSelector, format, z7, false);
        if (z7 && decoderInfos.isEmpty()) {
            decoderInfos = getDecoderInfos(context, mediaCodecSelector, format, false, false);
        }
        if (decoderInfos.isEmpty()) {
            return X.c(1);
        }
        if (!MediaCodecRenderer.supportsFormatDrm(format)) {
            return X.c(2);
        }
        MediaCodecInfo mediaCodecInfo = decoderInfos.get(0);
        boolean isFormatSupported = mediaCodecInfo.isFormatSupported(context, format);
        if (!isFormatSupported) {
            for (int i7 = 1; i7 < decoderInfos.size(); i7++) {
                MediaCodecInfo mediaCodecInfo2 = decoderInfos.get(i7);
                if (mediaCodecInfo2.isFormatSupported(context, format)) {
                    z6 = false;
                    isFormatSupported = true;
                    mediaCodecInfo = mediaCodecInfo2;
                    break;
                }
            }
        }
        z6 = true;
        int i8 = isFormatSupported ? 4 : 3;
        int i9 = mediaCodecInfo.isSeamlessAdaptationSupported(format) ? 16 : 8;
        int i10 = mediaCodecInfo.hardwareAccelerated ? 64 : 0;
        int i11 = z6 ? 128 : 0;
        if (Build.VERSION.SDK_INT >= 26 && MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) && !Api26.doesDisplaySupportDolbyVision(context)) {
            i11 = 256;
        }
        if (isFormatSupported) {
            List<MediaCodecInfo> decoderInfos2 = getDecoderInfos(context, mediaCodecSelector, format, z7, true);
            if (!decoderInfos2.isEmpty()) {
                MediaCodecInfo mediaCodecInfo3 = MediaCodecUtil.getDecoderInfosSortedByFormatSupport(context, decoderInfos2, format).get(0);
                if (mediaCodecInfo3.isFormatSupported(context, format) && mediaCodecInfo3.isSeamlessAdaptationSupported(format)) {
                    i2 = 32;
                }
            }
        }
        return X.f(i8, i9, i2, i10, i11);
    }

    private void updateCodecImportance() {
        MediaCodecAdapter codec = getCodec();
        if (codec != null && Build.VERSION.SDK_INT >= 35) {
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.rendererPriority));
            codec.setParameters(bundle);
        }
    }

    private void updateDroppedBufferCountersWithInputBuffers(long j7) {
        int i2 = 0;
        while (true) {
            Long peek = this.droppedDecoderInputBufferTimestamps.peek();
            if (peek == null || peek.longValue() >= j7) {
                break;
            }
            i2++;
            this.droppedDecoderInputBufferTimestamps.poll();
        }
        updateDroppedBufferCounters(i2, 0);
    }

    private void updatePeriodDurationUs(MediaSource.MediaPeriodId mediaPeriodId) {
        Timeline timeline = getTimeline();
        if (timeline.isEmpty()) {
            this.periodDurationUs = C.TIME_UNSET;
            return;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        if (indexOfPeriod == -1) {
            this.periodDurationUs = C.TIME_UNSET;
        } else {
            this.periodDurationUs = timeline.getPeriod(indexOfPeriod, new Timeline.Period()).getDurationUs();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public DecoderReuseEvaluation canReuseCodec(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        DecoderReuseEvaluation canReuseCodec = mediaCodecInfo.canReuseCodec(format, format2);
        int i2 = canReuseCodec.discardReasons;
        CodecMaxValues codecMaxValues = (CodecMaxValues) v.checkNotNull(this.codecMaxValues);
        if (format2.width > codecMaxValues.width || format2.height > codecMaxValues.height) {
            i2 |= 256;
        }
        if (getMaxInputSize(mediaCodecInfo, format2) > codecMaxValues.inputSize) {
            i2 |= 64;
        }
        if (this.changeFrameRateStrategy != Integer.MIN_VALUE) {
            float f3 = format.frameRate;
            if (f3 != -1.0f) {
                float f7 = format2.frameRate;
                if (f7 != -1.0f && Math.abs(f7 - f3) > 1.0f && cannotChangeSurfaceFrameRateMidPlayback()) {
                    i2 |= 65536;
                }
            }
        }
        int i7 = i2;
        return new DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, i7 != 0 ? 0 : canReuseCodec.result, i7);
    }

    public void changeVideoSinkInputStream(VideoSink videoSink, int i2, Format format, int i7) {
        List<Effect> list = this.videoEffects;
        if (list == null) {
            list = ImmutableList.of();
        }
        videoSink.onInputStreamChanged(i2, format, getOutputStreamStartPositionUs(), i7, list);
    }

    public boolean codecNeedsSetOutputSurfaceWorkaround(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (MediaCodecVideoRenderer.class) {
            try {
                if (!evaluatedDeviceNeedsSetOutputSurfaceWorkaround) {
                    deviceNeedsSetOutputSurfaceWorkaround = evaluateDeviceNeedsSetOutputSurfaceWorkaround();
                    evaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return deviceNeedsSetOutputSurfaceWorkaround;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public MediaCodecDecoderException createDecoderException(Throwable th, MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecVideoDecoderException(th, mediaCodecInfo, this.displaySurface);
    }

    public PlaybackVideoGraphWrapper createPlaybackVideoGraphWrapper(Context context, VideoFrameReleaseControl videoFrameReleaseControl) {
        PlaybackVideoGraphWrapper.Builder enablePlaylistMode = new PlaybackVideoGraphWrapper.Builder(context, videoFrameReleaseControl).setEnablePlaylistMode(true);
        long j7 = this.minEarlyUsToDropDecoderInput;
        long j8 = C.TIME_UNSET;
        if (j7 != C.TIME_UNSET) {
            j8 = -j7;
        }
        return enablePlaylistMode.experimentalSetLateThresholdToDropInputUs(j8).setClock(getClock()).build();
    }

    public void detachOutputSurfaceV35(MediaCodecAdapter mediaCodecAdapter) {
        mediaCodecAdapter.detachOutputSurface();
    }

    public void dropOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i2, long j7) {
        TraceUtil.beginSection("dropVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i2, false);
        TraceUtil.endSection();
        updateDroppedBufferCounters(0, 1);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public void enableMayRenderStartOfStream() {
        VideoSink videoSink = this.videoSink;
        if (videoSink == null) {
            this.videoFrameReleaseControl.allowReleaseFirstFrameBeforeStarted();
            return;
        }
        int i2 = this.nextVideoSinkFirstFrameReleaseInstruction;
        if (i2 == 0 || i2 == 1) {
            this.nextVideoSinkFirstFrameReleaseInstruction = 0;
        } else {
            videoSink.allowReleaseFirstFrameBeforeStarted();
        }
    }

    public void experimentalDisableAdvancingTimestampChecksInVideoFrameReleaseControl() {
        this.videoFrameReleaseControl.experimentalDisableAdvancingTimestampChecks();
    }

    public long getBufferTimestampAdjustmentUs() {
        return -this.startPositionUs;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public int getCodecBufferFlags(C1665f c1665f) {
        ScrubbingModeParameters scrubbingModeParameters;
        if (Build.VERSION.SDK_INT >= 34) {
            return ((this.enableMediaCodecBufferDecodeOnlyFlag || (((scrubbingModeParameters = this.scrubbingModeParameters) != null && scrubbingModeParameters.useDecodeOnlyFlag) || this.tunneling)) && isBufferBeforeStartTime(c1665f) && !isBufferProbablyLastSample(c1665f)) ? 32 : 0;
        }
        return 0;
    }

    public CodecMaxValues getCodecMaxValues(MediaCodecInfo mediaCodecInfo, Format format, Format[] formatArr) {
        int codecMaxInputSize;
        int i2 = format.width;
        int i7 = format.height;
        int maxInputSize = getMaxInputSize(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            if (maxInputSize != -1 && (codecMaxInputSize = getCodecMaxInputSize(mediaCodecInfo, format)) != -1) {
                maxInputSize = Math.min((int) (maxInputSize * INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR), codecMaxInputSize);
            }
            return new CodecMaxValues(i2, i7, maxInputSize);
        }
        int length = formatArr.length;
        boolean z6 = false;
        for (int i8 = 0; i8 < length; i8++) {
            Format format2 = formatArr[i8];
            if (format.colorInfo != null && format2.colorInfo == null) {
                format2 = format2.buildUpon().setColorInfo(format.colorInfo).build();
            }
            if (mediaCodecInfo.canReuseCodec(format, format2).result != 0) {
                int i9 = format2.width;
                z6 |= i9 == -1 || format2.height == -1;
                i2 = Math.max(i2, i9);
                i7 = Math.max(i7, format2.height);
                maxInputSize = Math.max(maxInputSize, getMaxInputSize(mediaCodecInfo, format2));
            }
        }
        if (z6) {
            Log.w(TAG, "Resolutions unknown. Codec max resolution: " + i2 + "x" + i7);
            Point codecMaxSize = getCodecMaxSize(mediaCodecInfo, format);
            if (codecMaxSize != null) {
                i2 = Math.max(i2, codecMaxSize.x);
                i7 = Math.max(i7, codecMaxSize.y);
                maxInputSize = Math.max(maxInputSize, getCodecMaxInputSize(mediaCodecInfo, format.buildUpon().setWidth(i2).setHeight(i7).build()));
                Log.w(TAG, "Codec max resolution adjusted to: " + i2 + "x" + i7);
            }
        }
        return new CodecMaxValues(i2, i7, maxInputSize);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public float getCodecOperatingRateV23(float f3, Format format, Format[] formatArr) {
        MediaCodecInfo codecInfo;
        float f7 = -1.0f;
        for (Format format2 : formatArr) {
            float f8 = format2.frameRate;
            if (f8 != -1.0f) {
                f7 = Math.max(f7, f8);
            }
        }
        float f9 = f7 == -1.0f ? -1.0f : f7 * f3;
        if (this.scrubbingModeParameters == null || (codecInfo = getCodecInfo()) == null) {
            return f9;
        }
        float maxSupportedFrameRate = codecInfo.getMaxSupportedFrameRate(format.width, format.height);
        return f9 != -1.0f ? Math.max(f9, maxSupportedFrameRate) : maxSupportedFrameRate;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean z6) throws MediaCodecUtil.DecoderQueryException {
        Context context = this.context;
        return MediaCodecUtil.getDecoderInfosSortedByFormatSupport(context, getDecoderInfos(context, mediaCodecSelector, format, z6, this.tunneling), format);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f3) {
        String str = mediaCodecInfo.codecMimeType;
        CodecMaxValues codecMaxValues = getCodecMaxValues(mediaCodecInfo, format, getStreamFormats());
        this.codecMaxValues = codecMaxValues;
        MediaFormat mediaFormat = getMediaFormat(format, str, codecMaxValues, f3, this.deviceNeedsNoPostProcessWorkaround, this.tunneling ? this.tunnelingAudioSessionId : 0);
        Surface surfaceForCodec = getSurfaceForCodec(mediaCodecInfo);
        maybeSetKeyAllowFrameDrop(mediaFormat);
        return MediaCodecAdapter.Configuration.createForVideoDecoding(mediaCodecInfo, mediaFormat, format, surfaceForCodec, mediaCrypto);
    }

    @SuppressLint({"InlinedApi"})
    public MediaFormat getMediaFormat(Format format, String str, CodecMaxValues codecMaxValues, float f3, boolean z6, int i2) {
        Pair<Integer, Integer> codecProfileAndLevel;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        MediaFormatUtil.setCsdBuffers(mediaFormat, format.initializationData);
        MediaFormatUtil.maybeSetFloat(mediaFormat, "frame-rate", format.frameRate);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "rotation-degrees", format.rotationDegrees);
        MediaFormatUtil.maybeSetColorInfo(mediaFormat, format.colorInfo);
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) && (codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format)) != null) {
            MediaFormatUtil.maybeSetInteger(mediaFormat, "profile", ((Integer) codecProfileAndLevel.first).intValue());
        }
        mediaFormat.setInteger("max-width", codecMaxValues.width);
        mediaFormat.setInteger("max-height", codecMaxValues.height);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "max-input-size", codecMaxValues.inputSize);
        mediaFormat.setInteger("priority", 0);
        if (f3 != -1.0f) {
            mediaFormat.setFloat("operating-rate", f3);
        }
        if (z6) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i2 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i2);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.rendererPriority));
        }
        applyCodecParametersToMediaFormat(mediaFormat);
        return mediaFormat;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public String getName() {
        return TAG;
    }

    public Surface getSurface() {
        return this.displaySurface;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    @TargetApi(29)
    public void handleInputBufferSupplementalData(C1665f c1665f) throws ExoPlaybackException {
        if (this.codecHandlesHdr10PlusOutOfBandMetadata) {
            ByteBuffer byteBuffer = (ByteBuffer) v.checkNotNull(c1665f.supplementalData);
            if (byteBuffer.remaining() >= 7) {
                byte b7 = byteBuffer.get();
                short s6 = byteBuffer.getShort();
                short s7 = byteBuffer.getShort();
                byte b8 = byteBuffer.get();
                byte b9 = byteBuffer.get();
                byteBuffer.position(0);
                if (b7 == -75 && s6 == 60 && s7 == 1 && b8 == 4) {
                    if (b9 == 0 || b9 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        setHdr10PlusInfoV29((MediaCodecAdapter) v.checkNotNull(getCodec()), bArr);
                    }
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i2, Object obj) throws ExoPlaybackException {
        if (i2 == 1) {
            setOutput(obj);
            return;
        }
        if (i2 == 7) {
            VideoFrameMetadataListener videoFrameMetadataListener = (VideoFrameMetadataListener) v.checkNotNull(obj);
            this.frameMetadataListener = videoFrameMetadataListener;
            VideoSink videoSink = this.videoSink;
            if (videoSink != null) {
                videoSink.setVideoFrameMetadataListener(videoFrameMetadataListener);
                return;
            }
            return;
        }
        if (i2 == 10) {
            int intValue = ((Integer) v.checkNotNull(obj)).intValue();
            if (this.tunnelingAudioSessionId != intValue) {
                this.tunnelingAudioSessionId = intValue;
                if (this.tunneling) {
                    releaseCodec();
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 4) {
            this.scalingMode = ((Integer) v.checkNotNull(obj)).intValue();
            MediaCodecAdapter codec = getCodec();
            if (codec != null) {
                codec.setVideoScalingMode(this.scalingMode);
                return;
            }
            return;
        }
        if (i2 == 5) {
            int intValue2 = ((Integer) v.checkNotNull(obj)).intValue();
            this.changeFrameRateStrategy = intValue2;
            VideoSink videoSink2 = this.videoSink;
            if (videoSink2 != null) {
                videoSink2.setChangeFrameRateStrategy(intValue2);
                return;
            } else {
                this.videoFrameReleaseControl.setChangeFrameRateStrategy(intValue2);
                return;
            }
        }
        if (i2 == 13) {
            setVideoEffects((List) v.checkNotNull(obj));
            return;
        }
        if (i2 == 14) {
            Size size = (Size) v.checkNotNull(obj);
            if (size.getWidth() == 0 || size.getHeight() == 0) {
                return;
            }
            this.outputResolution = size;
            VideoSink videoSink3 = this.videoSink;
            if (videoSink3 != null) {
                videoSink3.setOutputSurfaceInfo((Surface) v.checkNotNull(this.displaySurface), size);
                return;
            }
            return;
        }
        switch (i2) {
            case 16:
                this.rendererPriority = ((Integer) v.checkNotNull(obj)).intValue();
                updateCodecImportance();
                break;
            case 17:
                Surface surface = this.displaySurface;
                setOutput(null);
                ((MediaCodecVideoRenderer) v.checkNotNull(obj)).handleMessage(1, surface);
                break;
            case 18:
                ScrubbingModeParameters scrubbingModeParameters = this.scrubbingModeParameters;
                boolean z6 = scrubbingModeParameters != null && scrubbingModeParameters.shouldIncreaseCodecOperatingRate;
                ScrubbingModeParameters scrubbingModeParameters2 = (ScrubbingModeParameters) obj;
                this.scrubbingModeParameters = scrubbingModeParameters2;
                if (z6 != (scrubbingModeParameters2 != null && scrubbingModeParameters2.shouldIncreaseCodecOperatingRate)) {
                    updateCodecOperatingRate();
                    break;
                }
                break;
            default:
                super.handleMessage(i2, obj);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        if (!super.isEnded()) {
            return false;
        }
        VideoSink videoSink = this.videoSink;
        return videoSink == null || videoSink.isEnded();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        boolean isReadyForDecoding = isReadyForDecoding();
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            return videoSink.isReady(isReadyForDecoding);
        }
        if (isReadyForDecoding && (getCodec() == null || this.tunneling)) {
            return true;
        }
        return this.videoFrameReleaseControl.isReady(isReadyForDecoding);
    }

    public boolean maybeDropBuffersToKeyframe(long j7, boolean z6) throws ExoPlaybackException {
        int skipSource = skipSource(j7);
        if (skipSource == 0) {
            return false;
        }
        this.lastResetToKeyFramePositionUs = j7;
        if (z6) {
            DecoderCounters decoderCounters = this.decoderCounters;
            int i2 = decoderCounters.skippedInputBufferCount + skipSource;
            decoderCounters.skippedInputBufferCount = i2;
            decoderCounters.skippedOutputBufferCount += this.buffersInCodecCount;
            decoderCounters.skippedInputBufferCount = this.droppedDecoderInputBufferTimestamps.size() + i2;
        } else {
            this.decoderCounters.droppedToKeyframeCount++;
            updateDroppedBufferCounters(this.droppedDecoderInputBufferTimestamps.size() + skipSource, this.buffersInCodecCount);
        }
        flushOrReinitializeCodec();
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.flush(false);
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public boolean maybeInitializeProcessingPipeline(Format format) throws ExoPlaybackException {
        VideoSink videoSink = this.videoSink;
        if (videoSink == null || videoSink.isInitialized()) {
            return true;
        }
        try {
            return this.videoSink.initialize(format);
        } catch (VideoSink.VideoSinkException e3) {
            throw createRendererException(e3, format, PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSOR_INIT_FAILED);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onCodecError(Exception exc) {
        Log.e(TAG, "Video codec error", exc);
        this.eventDispatcher.videoCodecError(exc);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onCodecInitialized(String str, MediaCodecAdapter.Configuration configuration, long j7, long j8) {
        this.eventDispatcher.decoderInitialized(str, j7, j8);
        this.codecNeedsSetOutputSurfaceWorkaround = codecNeedsSetOutputSurfaceWorkaround(str);
        this.codecHandlesHdr10PlusOutOfBandMetadata = ((MediaCodecInfo) v.checkNotNull(getCodecInfo())).isHdr10PlusOutOfBandMetadataSupported();
        maybeSetupTunnelingForFirstFrame();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onCodecParametersChanged(CodecParameters codecParameters) {
        this.eventDispatcher.videoCodecParametersChanged(codecParameters);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onCodecReleased(String str) {
        this.eventDispatcher.decoderReleased(str);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onDisabled() {
        this.reportedVideoSize = null;
        this.periodDurationUs = C.TIME_UNSET;
        maybeSetupTunnelingForFirstFrame();
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        this.tunnelingOnFrameRenderedListener = null;
        this.isFlushRequired = true;
        try {
            super.onDisabled();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
            this.eventDispatcher.videoSizeChanged(VideoSize.UNKNOWN);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onEnabled(boolean z6, boolean z7) throws ExoPlaybackException {
        super.onEnabled(z6, z7);
        boolean z8 = getConfiguration().tunneling;
        v.checkState((z8 && this.tunnelingAudioSessionId == 0) ? false : true);
        if (this.tunneling != z8) {
            this.tunneling = z8;
            releaseCodec();
        }
        this.eventDispatcher.enabled(this.decoderCounters);
        if (!this.hasSetVideoSink) {
            if (this.videoEffects != null && this.videoSink == null) {
                PlaybackVideoGraphWrapper createPlaybackVideoGraphWrapper = createPlaybackVideoGraphWrapper(this.context, this.videoFrameReleaseControl);
                createPlaybackVideoGraphWrapper.setTotalVideoInputCount(1);
                this.videoSink = createPlaybackVideoGraphWrapper.getSink(0);
            }
            this.hasSetVideoSink = true;
        }
        if (this.videoSink == null) {
            this.videoFrameReleaseControl.setClock(getClock());
            this.videoFrameReleaseControl.onStreamChanged(!z7 ? 1 : 0);
        } else {
            configureVideoSink();
            this.nextVideoSinkFirstFrameReleaseInstruction = !z7 ? 1 : 0;
            experimentalEnableProcessedStreamChangedAtStart();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onInit() {
        super.onInit();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public DecoderReuseEvaluation onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        DecoderReuseEvaluation onInputFormatChanged = super.onInputFormatChanged(formatHolder);
        this.eventDispatcher.inputFormatChanged((Format) v.checkNotNull(formatHolder.format), onInputFormatChanged);
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.reset();
        }
        return onInputFormatChanged;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onOutputFormatChanged(Format format, MediaFormat mediaFormat) {
        int integer;
        int i2;
        MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            codec.setVideoScalingMode(this.scalingMode);
        }
        if (this.tunneling) {
            i2 = format.width;
            integer = format.height;
        } else {
            v.checkNotNull(mediaFormat);
            boolean z6 = mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP);
            int integer2 = z6 ? (mediaFormat.getInteger(KEY_CROP_RIGHT) - mediaFormat.getInteger(KEY_CROP_LEFT)) + 1 : mediaFormat.getInteger("width");
            integer = z6 ? (mediaFormat.getInteger(KEY_CROP_BOTTOM) - mediaFormat.getInteger(KEY_CROP_TOP)) + 1 : mediaFormat.getInteger("height");
            i2 = integer2;
        }
        float f3 = format.pixelWidthHeightRatio;
        int i7 = format.rotationDegrees;
        if (i7 == 90 || i7 == 270) {
            f3 = 1.0f / f3;
            int i8 = integer;
            integer = i2;
            i2 = i8;
        }
        this.decodedVideoSize = new VideoSize(i2, integer, f3);
        VideoSink videoSink = this.videoSink;
        if (videoSink == null || !this.pendingVideoSinkInputStreamChange) {
            this.videoFrameReleaseControl.setFrameRate(format.frameRate);
        } else {
            changeVideoSinkInputStream(videoSink, 1, format.buildUpon().setWidth(i2).setHeight(integer).setPixelWidthHeightRatio(f3).build(), this.nextVideoSinkFirstFrameReleaseInstruction);
            this.nextVideoSinkFirstFrameReleaseInstruction = 2;
        }
        this.pendingVideoSinkInputStreamChange = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onPositionReset(long j7, boolean z6, boolean z7) throws ExoPlaybackException {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null && !z6) {
            videoSink.flush(true);
        }
        if (z7) {
            this.lastResetToKeyFramePositionUs = j7;
        }
        super.onPositionReset(j7, z6, z7);
        if (this.videoSink == null) {
            this.videoFrameReleaseControl.reset();
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.reset();
        }
        if (z6) {
            VideoSink videoSink2 = this.videoSink;
            if (videoSink2 != null) {
                videoSink2.join(false);
            } else {
                this.videoFrameReleaseControl.join(false);
            }
        }
        maybeSetupTunnelingForFirstFrame();
        this.consecutiveDroppedFrameCount = 0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onProcessedOutputBuffer(long j7) {
        super.onProcessedOutputBuffer(j7);
        if (this.tunneling) {
            return;
        }
        this.buffersInCodecCount--;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onProcessedStreamChange() {
        super.onProcessedStreamChange();
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.signalEndOfCurrentInputStream();
            if (this.startPositionUs == C.TIME_UNSET) {
                this.startPositionUs = getOutputStreamStartPositionUs();
            }
            this.videoSink.setBufferTimestampAdjustmentUs(getBufferTimestampAdjustmentUs());
        } else {
            this.videoFrameReleaseControl.onStreamChanged(2);
        }
        this.pendingVideoSinkInputStreamChange = true;
        maybeSetupTunnelingForFirstFrame();
    }

    public void onProcessedTunneledBuffer(long j7) throws ExoPlaybackException {
        updateOutputFormatForTime(j7);
        maybeNotifyVideoSizeChanged(this.decodedVideoSize);
        this.decoderCounters.renderedOutputBufferCount++;
        maybeNotifyRenderedFirstFrame();
        onProcessedOutputBuffer(j7);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void onQueueInputBuffer(C1665f c1665f) throws ExoPlaybackException {
        ByteBuffer byteBuffer;
        if (this.av1SampleDependencyParser != null && ((MediaCodecInfo) v.checkNotNull(getCodecInfo())).mimeType.equals(MimeTypes.VIDEO_AV1) && c1665f.isKeyFrame() && (byteBuffer = c1665f.data) != null) {
            this.av1SampleDependencyParser.queueInputBuffer(byteBuffer);
        }
        this.consecutiveDroppedInputBufferCount = 0;
        int codecBufferFlags = getCodecBufferFlags(c1665f);
        if ((Build.VERSION.SDK_INT < 34 || (codecBufferFlags & 32) == 0) && !this.tunneling) {
            this.buffersInCodecCount++;
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onRelease() {
        super.onRelease();
        VideoSink videoSink = this.videoSink;
        if (videoSink == null || !this.ownsVideoSink) {
            return;
        }
        videoSink.release();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onReset() {
        try {
            super.onReset();
        } finally {
            this.hasSetVideoSink = false;
            this.startPositionUs = C.TIME_UNSET;
            releasePlaceholderSurface();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onStarted() {
        super.onStarted();
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = getClock().elapsedRealtime();
        this.totalVideoFrameProcessingOffsetUs = 0L;
        this.videoFrameProcessingOffsetCount = 0;
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.startRendering();
        } else {
            this.videoFrameReleaseControl.onStarted();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onStopped() {
        maybeNotifyDroppedFrames();
        maybeNotifyVideoFrameProcessingOffset();
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.stopRendering();
        } else {
            this.videoFrameReleaseControl.onStopped();
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.reset();
        }
        super.onStopped();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j7, long j8, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        super.onStreamChanged(formatArr, j7, j8, mediaPeriodId);
        updatePeriodDurationUs(mediaPeriodId);
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.reset();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onTimelineChanged(Timeline timeline) {
        super.onTimelineChanged(timeline);
        MediaSource.MediaPeriodId mediaPeriodId = getMediaPeriodId();
        if (mediaPeriodId != null) {
            updatePeriodDurationUs(mediaPeriodId);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public boolean processOutputBuffer(long j7, long j8, final MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, final int i2, int i7, int i8, long j9, boolean z6, boolean z7, Format format) throws ExoPlaybackException {
        v.checkNotNull(mediaCodecAdapter);
        final long outputStreamOffsetUs = j9 - getOutputStreamOffsetUs();
        updateDroppedBufferCountersWithInputBuffers(j9);
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            if (!z6 || z7) {
                return videoSink.handleInputFrame(j9, new VideoSink.VideoFrameHandler() { // from class: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.2
                    @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
                    public void render(long j10) {
                        MediaCodecVideoRenderer.this.renderOutputBuffer(mediaCodecAdapter, i2, outputStreamOffsetUs, j10);
                    }

                    @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
                    public void skip() {
                        MediaCodecVideoRenderer.this.dropOutputBuffer(mediaCodecAdapter, i2, outputStreamOffsetUs);
                    }
                });
            }
            skipOutputBuffer(mediaCodecAdapter, i2, outputStreamOffsetUs);
            return true;
        }
        int frameReleaseAction = this.videoFrameReleaseControl.getFrameReleaseAction(j9, j7, j8, getOutputStreamStartPositionUs(), z6, z7, this.videoFrameReleaseInfo);
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null && frameReleaseAction != 5 && frameReleaseAction != 4) {
            videoFrameReleaseEarlyTimeForecaster.onVideoFrameProcessed(j9, this.videoFrameReleaseInfo.getEarlyUs());
        }
        if (frameReleaseAction == 0) {
            long nanoTime = getClock().nanoTime();
            notifyFrameMetadataListener(outputStreamOffsetUs, nanoTime, format);
            renderOutputBuffer(mediaCodecAdapter, i2, outputStreamOffsetUs, nanoTime);
            updateVideoFrameProcessingOffsetCounters(this.videoFrameReleaseInfo.getEarlyUs());
            return true;
        }
        if (frameReleaseAction == 1) {
            releaseFrame((MediaCodecAdapter) v.checkNotNull(mediaCodecAdapter), i2, outputStreamOffsetUs, format);
            return true;
        }
        if (frameReleaseAction == 2) {
            dropOutputBuffer(mediaCodecAdapter, i2, outputStreamOffsetUs);
            updateVideoFrameProcessingOffsetCounters(this.videoFrameReleaseInfo.getEarlyUs());
            return true;
        }
        if (frameReleaseAction == 3) {
            skipOutputBuffer(mediaCodecAdapter, i2, outputStreamOffsetUs);
            updateVideoFrameProcessingOffsetCounters(this.videoFrameReleaseInfo.getEarlyUs());
            return true;
        }
        if (frameReleaseAction == 4 || frameReleaseAction == 5) {
            return false;
        }
        throw new IllegalStateException(String.valueOf(frameReleaseAction));
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public void render(long j7, long j8) throws ExoPlaybackException {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            try {
                videoSink.render(j7, j8);
            } catch (VideoSink.VideoSinkException e3) {
                throw createRendererException(e3, e3.format, PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED);
            }
        }
        super.render(j7, j8);
    }

    public void renderOutputBufferV21(MediaCodecAdapter mediaCodecAdapter, int i2, long j7, long j8) {
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i2, j8);
        TraceUtil.endSection();
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        if (this.videoSink == null) {
            maybeNotifyVideoSizeChanged(this.decodedVideoSize);
            maybeNotifyRenderedFirstFrame();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void renderToEndOfStream() {
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.signalEndOfCurrentInputStream();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public void resetCodecStateForFlush() {
        super.resetCodecStateForFlush();
        this.droppedDecoderInputBufferTimestamps.clear();
        this.buffersInCodecCount = 0;
        this.consecutiveDroppedInputBufferCount = 0;
        this.isFlushRequired = false;
        Av1SampleDependencyParser av1SampleDependencyParser = this.av1SampleDependencyParser;
        if (av1SampleDependencyParser != null) {
            av1SampleDependencyParser.reset();
        }
    }

    public void setOutputSurfaceV23(MediaCodecAdapter mediaCodecAdapter, Surface surface) {
        mediaCodecAdapter.setOutputSurface(surface);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public void setPlaybackSpeed(float f3, float f7) throws ExoPlaybackException {
        super.setPlaybackSpeed(f3, f7);
        VideoSink videoSink = this.videoSink;
        if (videoSink != null) {
            videoSink.setPlaybackSpeed(f3);
        } else {
            this.videoFrameReleaseControl.setPlaybackSpeed(f3);
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.videoFrameReleaseEarlyTimeForecaster;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.setPlaybackSpeed(f3);
        }
    }

    public void setVideoEffects(List<Effect> list) {
        if (list.equals(VideoFrameProcessor.REDRAW)) {
            VideoSink videoSink = this.videoSink;
            if (videoSink == null || !videoSink.isInitialized()) {
                return;
            }
            this.videoSink.redraw();
            return;
        }
        this.videoEffects = list;
        VideoSink videoSink2 = this.videoSink;
        if (videoSink2 != null) {
            videoSink2.setVideoEffects(list);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0040  */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldDiscardDecoderInputBuffer(u0.C1665f r9) {
        /*
            r8 = this;
            boolean r0 = r8.isBufferProbablyLastSample(r9)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            boolean r0 = r8.isBufferBeforeStartTime(r9)
            androidx.media3.exoplayer.video.VideoFrameReleaseEarlyTimeForecaster r2 = r8.videoFrameReleaseEarlyTimeForecaster
            r3 = 1
            if (r2 == 0) goto L28
            long r4 = r9.timeUs
            long r4 = r2.predictEarlyUs(r4)
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 == 0) goto L28
            long r6 = r8.minEarlyUsToDropDecoderInput
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 >= 0) goto L28
            r2 = r3
            goto L29
        L28:
            r2 = r1
        L29:
            if (r0 != 0) goto L2e
            if (r2 != 0) goto L2e
            return r1
        L2e:
            boolean r2 = r9.hasSupplementalData()
            if (r2 == 0) goto L35
            return r1
        L35:
            boolean r2 = r9.notDependedOn()
            if (r2 == 0) goto L40
            r9.clear()
        L3e:
            r1 = r3
            goto La2
        L40:
            androidx.media3.exoplayer.video.Av1SampleDependencyParser r2 = r8.av1SampleDependencyParser
            if (r2 == 0) goto La2
            androidx.media3.exoplayer.mediacodec.MediaCodecInfo r2 = r8.getCodecInfo()
            java.lang.Object r2 = P3.v.checkNotNull(r2)
            androidx.media3.exoplayer.mediacodec.MediaCodecInfo r2 = (androidx.media3.exoplayer.mediacodec.MediaCodecInfo) r2
            java.lang.String r2 = r2.mimeType
            java.lang.String r4 = "video/av01"
            boolean r2 = r2.equals(r4)
            if (r2 == 0) goto La2
            java.nio.ByteBuffer r2 = r9.data
            if (r2 == 0) goto La2
            if (r0 != 0) goto L65
            int r4 = r8.consecutiveDroppedInputBufferCount
            if (r4 > 0) goto L63
            goto L65
        L63:
            r4 = r1
            goto L66
        L65:
            r4 = r3
        L66:
            java.nio.ByteBuffer r2 = r2.asReadOnlyBuffer()
            r2.flip()
            androidx.media3.exoplayer.video.Av1SampleDependencyParser r5 = r8.av1SampleDependencyParser
            int r4 = r5.sampleLimitAfterSkippingNonReferenceFrame(r2, r4)
            if (r4 != 0) goto L79
            r9.clear()
            goto L3e
        L79:
            int r5 = r2.limit()
            if (r4 == r5) goto La2
            androidx.media3.exoplayer.video.MediaCodecVideoRenderer$CodecMaxValues r5 = r8.codecMaxValues
            java.lang.Object r5 = P3.v.checkNotNull(r5)
            androidx.media3.exoplayer.video.MediaCodecVideoRenderer$CodecMaxValues r5 = (androidx.media3.exoplayer.video.MediaCodecVideoRenderer.CodecMaxValues) r5
            int r5 = r5.inputSize
            int r5 = r5 + r4
            int r2 = r2.capacity()
            if (r5 >= r2) goto La2
            boolean r2 = r9.isEncrypted()
            if (r2 != 0) goto La2
            java.nio.ByteBuffer r1 = r9.data
            java.lang.Object r1 = P3.v.checkNotNull(r1)
            java.nio.ByteBuffer r1 = (java.nio.ByteBuffer) r1
            r1.position(r4)
            goto L3e
        La2:
            if (r1 == 0) goto Lbe
            if (r0 == 0) goto Lae
            androidx.media3.exoplayer.DecoderCounters r9 = r8.decoderCounters
            int r0 = r9.skippedInputBufferCount
            int r0 = r0 + r3
            r9.skippedInputBufferCount = r0
            return r1
        Lae:
            java.util.PriorityQueue<java.lang.Long> r0 = r8.droppedDecoderInputBufferTimestamps
            long r4 = r9.timeUs
            java.lang.Long r9 = java.lang.Long.valueOf(r4)
            r0.add(r9)
            int r9 = r8.consecutiveDroppedInputBufferCount
            int r9 = r9 + r3
            r8.consecutiveDroppedInputBufferCount = r9
        Lbe:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.shouldDiscardDecoderInputBuffer(u0.f):boolean");
    }

    public boolean shouldDropBuffersToKeyframe(long j7, long j8, boolean z6) {
        return j7 < MIN_EARLY_US_VERY_LATE_THRESHOLD && !z6;
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public boolean shouldDropFrame(long j7, long j8, boolean z6) {
        return shouldDropOutputBuffer(j7, j8, z6);
    }

    public boolean shouldDropOutputBuffer(long j7, long j8, boolean z6) {
        return j7 < MIN_EARLY_US_LATE_THRESHOLD && !z6;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0032  */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean shouldFlushCodec() {
        /*
            r12 = this;
            androidx.media3.common.Format r0 = r12.getCodecInputFormat()
            long r1 = r12.periodDurationUs
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r6 = 0
            r7 = 1
            if (r5 == 0) goto L2d
            r8 = 1
            long r1 = r1 + r8
            long r8 = r12.getOutputStreamOffsetUs()
            long r10 = r12.periodDurationUs
            long r8 = r8 + r10
            long r10 = r12.getSkippedFlushOffsetUs()
            long r10 = r10 + r1
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            long r1 = r1 - r8
            int r1 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r1 <= 0) goto L2b
            goto L2d
        L2b:
            r1 = r6
            goto L2e
        L2d:
            r1 = r7
        L2e:
            androidx.media3.exoplayer.ScrubbingModeParameters r2 = r12.scrubbingModeParameters
            if (r2 != 0) goto L37
            boolean r0 = super.shouldFlushCodec()
            return r0
        L37:
            boolean r2 = r2.allowSkippingMediaCodecFlush
            if (r2 == 0) goto L55
            boolean r2 = r12.isFlushRequired
            if (r2 != 0) goto L55
            boolean r2 = r12.tunneling
            if (r2 != 0) goto L55
            if (r0 == 0) goto L49
            int r0 = r0.maxNumReorderSamples
            if (r0 > 0) goto L55
        L49:
            if (r1 != 0) goto L55
            long r0 = r12.getLastBufferInStreamPresentationTimeUs()
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 == 0) goto L54
            goto L55
        L54:
            return r6
        L55:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.shouldFlushCodec():boolean");
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public boolean shouldForceReleaseFrame(long j7, long j8) {
        return shouldForceRenderOutputBuffer(j7, j8);
    }

    public boolean shouldForceRenderOutputBuffer(long j7, long j8) {
        return j7 < MIN_EARLY_US_LATE_THRESHOLD && j8 > 100000;
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public boolean shouldIgnoreFrame(long j7, long j8, long j9, boolean z6, boolean z7) throws ExoPlaybackException {
        if (this.videoSink != null && this.ownsVideoSink) {
            j8 -= getBufferTimestampAdjustmentUs();
        }
        return shouldDropBuffersToKeyframe(j7, j9, z6) && maybeDropBuffersToKeyframe(j8, z7);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public boolean shouldInitCodec(MediaCodecInfo mediaCodecInfo) {
        return hasSurfaceForCodec(mediaCodecInfo);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean shouldReleaseCodecInsteadOfFlushing() {
        MediaCodecInfo codecInfo = getCodecInfo();
        if (this.videoSink == null || codecInfo == null || !(codecInfo.name.equals("c2.mtk.avc.decoder") || codecInfo.name.equals("c2.mtk.hevc.decoder"))) {
            return super.shouldReleaseCodecInsteadOfFlushing();
        }
        return true;
    }

    public boolean shouldSkipBuffersWithIdenticalReleaseTime() {
        return true;
    }

    public boolean shouldUseDetachedSurface(MediaCodecInfo mediaCodecInfo) {
        return Build.VERSION.SDK_INT >= 35 && mediaCodecInfo.detachedSurfaceSupported;
    }

    public boolean shouldUsePlaceholderSurface(MediaCodecInfo mediaCodecInfo) {
        if (this.tunneling || codecNeedsSetOutputSurfaceWorkaround(mediaCodecInfo.name)) {
            return false;
        }
        return !mediaCodecInfo.secure || PlaceholderSurface.isSecureSupported(this.context);
    }

    public void skipOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i2, long j7) {
        TraceUtil.beginSection("skipVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i2, false);
        TraceUtil.endSection();
        this.decoderCounters.skippedOutputBufferCount++;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public boolean supportsResetPositionWithoutKeyFrameReset(long j7) {
        if (getLargestQueuedPresentationTimeUs() == C.TIME_UNSET || j7 < this.lastResetToKeyFramePositionUs) {
            return false;
        }
        long lastProcessedOutputBufferTimeUs = getLastProcessedOutputBufferTimeUs();
        return lastProcessedOutputBufferTimeUs == C.TIME_UNSET || j7 > lastProcessedOutputBufferTimeUs;
    }

    public void updateDroppedBufferCounters(int i2, int i7) {
        DecoderCounters decoderCounters = this.decoderCounters;
        decoderCounters.droppedInputBufferCount += i2;
        int i8 = i2 + i7;
        decoderCounters.droppedBufferCount += i8;
        this.droppedFrames += i8;
        int i9 = this.consecutiveDroppedFrameCount + i8;
        this.consecutiveDroppedFrameCount = i9;
        decoderCounters.maxConsecutiveDroppedBufferCount = Math.max(i9, decoderCounters.maxConsecutiveDroppedBufferCount);
        int i10 = this.maxDroppedFramesToNotify;
        if (i10 <= 0 || this.droppedFrames < i10) {
            return;
        }
        maybeNotifyDroppedFrames();
    }

    public void updateVideoFrameProcessingOffsetCounters(long j7) {
        this.decoderCounters.addVideoFrameProcessingOffset(j7);
        this.totalVideoFrameProcessingOffsetUs += j7;
        this.videoFrameProcessingOffsetCount++;
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j7) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(j7));
    }

    @Deprecated
    public void renderOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i2, long j7) {
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i2, true);
        TraceUtil.endSection();
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        if (this.videoSink == null) {
            maybeNotifyVideoSizeChanged(this.decodedVideoSize);
            maybeNotifyRenderedFirstFrame();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        return supportsFormatInternal(this.context, mediaCodecSelector, format);
    }

    private static List<MediaCodecInfo> getDecoderInfos(Context context, MediaCodecSelector mediaCodecSelector, Format format, boolean z6, boolean z7) throws MediaCodecUtil.DecoderQueryException {
        String str = format.sampleMimeType;
        if (str == null) {
            return ImmutableList.of();
        }
        if (Build.VERSION.SDK_INT >= 26 && MimeTypes.VIDEO_DOLBY_VISION.equals(str) && !Api26.doesDisplaySupportDolbyVision(context)) {
            List<MediaCodecInfo> alternativeDecoderInfos = MediaCodecUtil.getAlternativeDecoderInfos(mediaCodecSelector, format, z6, z7);
            if (!alternativeDecoderInfos.isEmpty()) {
                return alternativeDecoderInfos;
            }
        }
        return MediaCodecUtil.getDecoderInfosSoftMatch(mediaCodecSelector, format, z6, z7);
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j7, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(j7).setEventHandler(handler).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(i2));
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j7, boolean z6, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(j7).setEnableDecoderFallback(z6).setEventHandler(handler).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(i2));
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j7, boolean z6, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setCodecAdapterFactory(factory).setAllowedJoiningTimeMs(j7).setEnableDecoderFallback(z6).setEventHandler(handler).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(i2));
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j7, boolean z6, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2, float f3) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setCodecAdapterFactory(factory).setAllowedJoiningTimeMs(j7).setEnableDecoderFallback(z6).setEventHandler(handler).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(i2).setAssumedMinimumCodecOperatingRate(f3));
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j7, boolean z6, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2, float f3, VideoSink videoSink) {
        this(new Builder(context).setMediaCodecSelector(mediaCodecSelector).setCodecAdapterFactory(factory).setAllowedJoiningTimeMs(j7).setEnableDecoderFallback(z6).setEventHandler(handler).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(i2).setAssumedMinimumCodecOperatingRate(f3).setVideoSink(videoSink));
    }

    public MediaCodecVideoRenderer(Builder builder) {
        super(builder.context.getApplicationContext(), 2, builder.codecAdapterFactory, builder.mediaCodecSelector, builder.enableDecoderFallback, builder.assumedMinimumCodecOperatingRate);
        Context applicationContext = builder.context.getApplicationContext();
        this.context = applicationContext;
        this.maxDroppedFramesToNotify = builder.maxDroppedFramesToNotify;
        this.videoSink = builder.videoSink;
        this.eventDispatcher = new VideoRendererEventListener.EventDispatcher(builder.eventHandler, builder.eventListener);
        this.ownsVideoSink = this.videoSink == null;
        this.videoFrameReleaseControl = new VideoFrameReleaseControl(applicationContext, this, builder.allowedJoiningTimeMs);
        this.videoFrameReleaseInfo = new VideoFrameReleaseControl.FrameReleaseInfo();
        this.deviceNeedsNoPostProcessWorkaround = deviceNeedsNoPostProcessWorkaround();
        this.outputResolution = Size.UNKNOWN;
        this.scalingMode = 1;
        this.changeFrameRateStrategy = 0;
        this.decodedVideoSize = VideoSize.UNKNOWN;
        this.tunnelingAudioSessionId = 0;
        this.reportedVideoSize = null;
        this.rendererPriority = -1000;
        this.startPositionUs = C.TIME_UNSET;
        this.periodDurationUs = C.TIME_UNSET;
        this.av1SampleDependencyParser = builder.parseAv1SampleDependencies ? new Av1SampleDependencyParser() : null;
        this.droppedDecoderInputBufferTimestamps = new PriorityQueue<>();
        if (builder.lateThresholdToDropDecoderInputUs != C.TIME_UNSET) {
            this.minEarlyUsToDropDecoderInput = -builder.lateThresholdToDropDecoderInputUs;
            this.videoFrameReleaseEarlyTimeForecaster = new VideoFrameReleaseEarlyTimeForecaster(1.0f);
        } else {
            this.minEarlyUsToDropDecoderInput = C.TIME_UNSET;
            this.videoFrameReleaseEarlyTimeForecaster = null;
        }
        this.enableMediaCodecBufferDecodeOnlyFlag = builder.enableMediaCodecBufferDecodeOnlyFlag;
        this.scrubbingModeParameters = null;
    }
}
