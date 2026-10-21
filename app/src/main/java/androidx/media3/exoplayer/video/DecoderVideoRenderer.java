package androidx.media3.exoplayer.video;

import P3.v;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderException;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import u0.C1665f;
import u0.InterfaceC1661b;
import u0.InterfaceC1664e;

@UnstableApi
/* loaded from: classes.dex */
public abstract class DecoderVideoRenderer extends BaseRenderer {
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    private static final String TAG = "DecoderVideoRenderer";
    private final long allowedJoiningTimeMs;
    private int buffersInCodecCount;
    private int consecutiveDroppedFrameCount;
    private InterfaceC1664e decoder;
    protected DecoderCounters decoderCounters;
    private DrmSession decoderDrmSession;
    private boolean decoderReceivedBuffers;
    private int decoderReinitializationState;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private final VideoRendererEventListener.EventDispatcher eventDispatcher;
    private int firstFrameState;
    private final C1665f flagsOnlyBuffer;
    private final TimedValueQueue<Format> formatQueue;
    private VideoFrameMetadataListener frameMetadataListener;
    private long initialPositionUs;
    private C1665f inputBuffer;
    private Format inputFormat;
    private boolean inputStreamEnded;
    private long joiningDeadlineMs;
    private long lastRenderTimeUs;
    private final int maxDroppedFramesToNotify;
    private Object output;
    private u0.l outputBuffer;
    private VideoDecoderOutputBufferRenderer outputBufferRenderer;
    private Format outputFormat;
    private int outputMode;
    private boolean outputStreamEnded;
    private Surface outputSurface;
    private VideoSize reportedVideoSize;
    private DrmSession sourceDrmSession;
    private boolean waitingForFirstSampleInFormat;

    public DecoderVideoRenderer(long j7, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2) {
        super(2);
        this.allowedJoiningTimeMs = j7;
        this.maxDroppedFramesToNotify = i2;
        this.joiningDeadlineMs = C.TIME_UNSET;
        this.formatQueue = new TimedValueQueue<>();
        this.flagsOnlyBuffer = C1665f.newNoDataInstance();
        this.eventDispatcher = new VideoRendererEventListener.EventDispatcher(handler, videoRendererEventListener);
        this.decoderReinitializationState = 0;
        this.outputMode = -1;
        this.firstFrameState = 0;
        this.decoderCounters = new DecoderCounters();
    }

    private boolean drainOutputBuffer(long j7, long j8) throws ExoPlaybackException, DecoderException {
        if (((InterfaceC1664e) v.checkNotNull(this.decoder)).dequeueOutputBuffer() == null) {
            return false;
        }
        throw new ClassCastException();
    }

    private boolean feedInputBuffer() throws DecoderException, ExoPlaybackException {
        InterfaceC1664e interfaceC1664e = this.decoder;
        if (interfaceC1664e == null || this.decoderReinitializationState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            C1665f c1665f = (C1665f) interfaceC1664e.dequeueInputBuffer();
            this.inputBuffer = c1665f;
            if (c1665f == null) {
                return false;
            }
        }
        C1665f c1665f2 = (C1665f) v.checkNotNull(this.inputBuffer);
        if (this.decoderReinitializationState == 1) {
            c1665f2.setFlags(4);
            ((InterfaceC1664e) v.checkNotNull(this.decoder)).queueInputBuffer(c1665f2);
            this.inputBuffer = null;
            this.decoderReinitializationState = 2;
            return false;
        }
        FormatHolder formatHolder = getFormatHolder();
        int readSource = readSource(formatHolder, c1665f2, 0);
        if (readSource == -5) {
            onInputFormatChanged(formatHolder);
            return true;
        }
        if (readSource != -4) {
            if (readSource == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        if (c1665f2.isEndOfStream()) {
            this.inputStreamEnded = true;
            ((InterfaceC1664e) v.checkNotNull(this.decoder)).queueInputBuffer(c1665f2);
            this.inputBuffer = null;
            return false;
        }
        if (this.waitingForFirstSampleInFormat) {
            this.formatQueue.add(c1665f2.timeUs, (Format) v.checkNotNull(this.inputFormat));
            this.waitingForFirstSampleInFormat = false;
        }
        c1665f2.flip();
        c1665f2.format = this.inputFormat;
        onQueueInputBuffer(c1665f2);
        ((InterfaceC1664e) v.checkNotNull(this.decoder)).queueInputBuffer(c1665f2);
        this.buffersInCodecCount++;
        this.decoderReceivedBuffers = true;
        this.decoderCounters.queuedInputBufferCount++;
        this.inputBuffer = null;
        return true;
    }

    private boolean hasOutput() {
        return this.outputMode != -1;
    }

    private static boolean isBufferLate(long j7) {
        return j7 < -30000;
    }

    private static boolean isBufferVeryLate(long j7) {
        return j7 < -500000;
    }

    private void lowerFirstFrameState(int i2) {
        this.firstFrameState = Math.min(this.firstFrameState, i2);
    }

    private void maybeInitDecoder() throws ExoPlaybackException {
        InterfaceC1661b interfaceC1661b;
        if (this.decoder != null) {
            return;
        }
        setDecoderDrmSession(this.sourceDrmSession);
        DrmSession drmSession = this.decoderDrmSession;
        if (drmSession != null) {
            interfaceC1661b = drmSession.getCryptoConfig();
            if (interfaceC1661b == null && this.decoderDrmSession.getError() == null) {
                return;
            }
        } else {
            interfaceC1661b = null;
        }
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            InterfaceC1664e createDecoder = createDecoder((Format) v.checkNotNull(this.inputFormat), interfaceC1661b);
            this.decoder = createDecoder;
            createDecoder.setOutputStartTimeUs(getLastResetPositionUs());
            setDecoderOutputMode(this.outputMode);
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            this.eventDispatcher.decoderInitialized(((InterfaceC1664e) v.checkNotNull(this.decoder)).getName(), elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            this.decoderCounters.decoderInitCount++;
        } catch (DecoderException e3) {
            Log.e(TAG, "Video codec error", e3);
            this.eventDispatcher.videoCodecError(e3);
            throw createRendererException(e3, this.inputFormat, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
        } catch (OutOfMemoryError e7) {
            throw createRendererException(e7, this.inputFormat, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
        }
    }

    private void maybeNotifyDroppedFrames() {
        if (this.droppedFrames > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.eventDispatcher.droppedFrames(this.droppedFrames, elapsedRealtime - this.droppedFrameAccumulationStartTimeMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = elapsedRealtime;
        }
    }

    private void maybeNotifyRenderedFirstFrame() {
        if (this.firstFrameState != 3) {
            this.firstFrameState = 3;
            Object obj = this.output;
            if (obj != null) {
                this.eventDispatcher.renderedFirstFrame(obj);
            }
        }
    }

    private void maybeNotifyVideoSizeChanged(int i2, int i7) {
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null && videoSize.width == i2 && videoSize.height == i7) {
            return;
        }
        VideoSize videoSize2 = new VideoSize(i2, i7);
        this.reportedVideoSize = videoSize2;
        this.eventDispatcher.videoSizeChanged(videoSize2);
    }

    private void maybeRenotifyRenderedFirstFrame() {
        Object obj;
        if (this.firstFrameState != 3 || (obj = this.output) == null) {
            return;
        }
        this.eventDispatcher.renderedFirstFrame(obj);
    }

    private void maybeRenotifyVideoSizeChanged() {
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null) {
            this.eventDispatcher.videoSizeChanged(videoSize);
        }
    }

    private void onOutputChanged() {
        maybeRenotifyVideoSizeChanged();
        lowerFirstFrameState(1);
        if (getState() == 2) {
            setJoiningDeadlineMs();
        }
    }

    private void onOutputRemoved() {
        this.reportedVideoSize = null;
        lowerFirstFrameState(1);
    }

    private void onOutputReset() {
        maybeRenotifyVideoSizeChanged();
        maybeRenotifyRenderedFirstFrame();
    }

    private boolean processOutputBuffer(long j7, long j8) throws ExoPlaybackException, DecoderException {
        if (this.initialPositionUs == C.TIME_UNSET) {
            this.initialPositionUs = j7;
        }
        v.checkNotNull(null).getClass();
        throw new ClassCastException();
    }

    private void setDecoderDrmSession(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.e.b(this.decoderDrmSession, drmSession);
        this.decoderDrmSession = drmSession;
    }

    private void setJoiningDeadlineMs() {
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? SystemClock.elapsedRealtime() + this.allowedJoiningTimeMs : C.TIME_UNSET;
    }

    private void setSourceDrmSession(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.e.b(this.sourceDrmSession, drmSession);
        this.sourceDrmSession = drmSession;
    }

    private boolean shouldForceRender(long j7) {
        boolean z6 = getState() == 2;
        int i2 = this.firstFrameState;
        if (i2 == 0) {
            return z6;
        }
        if (i2 == 1) {
            return true;
        }
        if (i2 == 3) {
            return z6 && shouldForceRenderOutputBuffer(j7, Util.msToUs(SystemClock.elapsedRealtime()) - this.lastRenderTimeUs);
        }
        throw new IllegalStateException();
    }

    public DecoderReuseEvaluation canReuseDecoder(String str, Format format, Format format2) {
        return new DecoderReuseEvaluation(str, format, format2, 0, 1);
    }

    public abstract InterfaceC1664e createDecoder(Format format, InterfaceC1661b interfaceC1661b) throws DecoderException;

    public void dropOutputBuffer(u0.l lVar) {
        updateDroppedBufferCounters(0, 1);
        throw null;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public void enableMayRenderStartOfStream() {
        if (this.firstFrameState == 0) {
            this.firstFrameState = 1;
        }
    }

    public void flushDecoder() throws ExoPlaybackException {
        this.buffersInCodecCount = 0;
        if (this.decoderReinitializationState != 0) {
            releaseDecoder();
            maybeInitDecoder();
            return;
        }
        this.inputBuffer = null;
        InterfaceC1664e interfaceC1664e = (InterfaceC1664e) v.checkNotNull(this.decoder);
        interfaceC1664e.flush();
        interfaceC1664e.setOutputStartTimeUs(getLastResetPositionUs());
        this.decoderReceivedBuffers = false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i2, Object obj) throws ExoPlaybackException {
        if (i2 == 1) {
            setOutput(obj);
        } else if (i2 == 7) {
            this.frameMetadataListener = (VideoFrameMetadataListener) obj;
        } else {
            super.handleMessage(i2, obj);
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        if (this.inputFormat != null && isSourceReady() && (this.firstFrameState == 3 || !hasOutput())) {
            this.joiningDeadlineMs = C.TIME_UNSET;
            return true;
        }
        if (this.joiningDeadlineMs == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.joiningDeadlineMs) {
            return true;
        }
        this.joiningDeadlineMs = C.TIME_UNSET;
        return false;
    }

    public boolean maybeDropBuffersToKeyframe(long j7) throws ExoPlaybackException {
        int skipSource = skipSource(j7);
        if (skipSource == 0) {
            return false;
        }
        this.decoderCounters.droppedToKeyframeCount++;
        updateDroppedBufferCounters(skipSource, this.buffersInCodecCount);
        flushDecoder();
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        this.reportedVideoSize = null;
        lowerFirstFrameState(0);
        try {
            setSourceDrmSession(null);
            releaseDecoder();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onEnabled(boolean z6, boolean z7) throws ExoPlaybackException {
        DecoderCounters decoderCounters = new DecoderCounters();
        this.decoderCounters = decoderCounters;
        this.eventDispatcher.enabled(decoderCounters);
        this.firstFrameState = z7 ? 1 : 0;
    }

    public void onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        this.waitingForFirstSampleInFormat = true;
        Format format = (Format) v.checkNotNull(formatHolder.format);
        setSourceDrmSession(formatHolder.drmSession);
        Format format2 = this.inputFormat;
        this.inputFormat = format;
        InterfaceC1664e interfaceC1664e = this.decoder;
        if (interfaceC1664e == null) {
            maybeInitDecoder();
            this.eventDispatcher.inputFormatChanged((Format) v.checkNotNull(this.inputFormat), null);
            return;
        }
        DecoderReuseEvaluation decoderReuseEvaluation = this.sourceDrmSession != this.decoderDrmSession ? new DecoderReuseEvaluation(interfaceC1664e.getName(), (Format) v.checkNotNull(format2), format, 0, 128) : canReuseDecoder(interfaceC1664e.getName(), (Format) v.checkNotNull(format2), format);
        if (decoderReuseEvaluation.result == 0) {
            if (this.decoderReceivedBuffers) {
                this.decoderReinitializationState = 1;
            } else {
                releaseDecoder();
                maybeInitDecoder();
            }
        }
        this.eventDispatcher.inputFormatChanged((Format) v.checkNotNull(this.inputFormat), decoderReuseEvaluation);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onPositionReset(long j7, boolean z6, boolean z7) throws ExoPlaybackException {
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        lowerFirstFrameState(1);
        this.initialPositionUs = C.TIME_UNSET;
        this.consecutiveDroppedFrameCount = 0;
        if (this.decoder != null) {
            flushDecoder();
        }
        if (z6) {
            setJoiningDeadlineMs();
        } else {
            this.joiningDeadlineMs = C.TIME_UNSET;
        }
        if (this.formatQueue.size() > 0) {
            this.waitingForFirstSampleInFormat = true;
        }
        this.formatQueue.clear();
    }

    public void onProcessedOutputBuffer(long j7) {
        this.buffersInCodecCount--;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onStarted() {
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
        this.lastRenderTimeUs = Util.msToUs(SystemClock.elapsedRealtime());
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onStopped() {
        this.joiningDeadlineMs = C.TIME_UNSET;
        maybeNotifyDroppedFrames();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j7, long j8, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        super.onStreamChanged(formatArr, j7, j8, mediaPeriodId);
    }

    public void releaseDecoder() {
        this.inputBuffer = null;
        this.decoderReinitializationState = 0;
        this.decoderReceivedBuffers = false;
        this.buffersInCodecCount = 0;
        InterfaceC1664e interfaceC1664e = this.decoder;
        if (interfaceC1664e != null) {
            this.decoderCounters.decoderReleaseCount++;
            interfaceC1664e.release();
            this.eventDispatcher.decoderReleased(this.decoder.getName());
            this.decoder = null;
        }
        setDecoderDrmSession(null);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j7, long j8) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return;
        }
        if (this.inputFormat == null) {
            FormatHolder formatHolder = getFormatHolder();
            this.flagsOnlyBuffer.clear();
            int readSource = readSource(formatHolder, this.flagsOnlyBuffer, 2);
            if (readSource != -5) {
                if (readSource == -4) {
                    v.checkState(this.flagsOnlyBuffer.isEndOfStream());
                    this.inputStreamEnded = true;
                    this.outputStreamEnded = true;
                    return;
                }
                return;
            }
            onInputFormatChanged(formatHolder);
        }
        maybeInitDecoder();
        if (this.decoder != null) {
            try {
                TraceUtil.beginSection("drainAndFeed");
                while (drainOutputBuffer(j7, j8)) {
                }
                while (feedInputBuffer()) {
                }
                TraceUtil.endSection();
                this.decoderCounters.ensureUpdated();
            } catch (DecoderException e3) {
                Log.e(TAG, "Video codec error", e3);
                this.eventDispatcher.videoCodecError(e3);
                throw createRendererException(e3, this.inputFormat, PlaybackException.ERROR_CODE_DECODING_FAILED);
            }
        }
    }

    public void renderOutputBuffer(u0.l lVar, long j7, Format format) throws DecoderException {
        VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j7, getClock().nanoTime(), format, null);
        }
        this.lastRenderTimeUs = Util.msToUs(SystemClock.elapsedRealtime());
        throw null;
    }

    public abstract void renderOutputBufferToSurface(u0.l lVar, Surface surface) throws DecoderException;

    public abstract void setDecoderOutputMode(int i2);

    public final void setOutput(Object obj) {
        if (obj instanceof Surface) {
            this.outputSurface = (Surface) obj;
            this.outputBufferRenderer = null;
            this.outputMode = 1;
        } else if (obj instanceof VideoDecoderOutputBufferRenderer) {
            this.outputSurface = null;
            this.outputBufferRenderer = (VideoDecoderOutputBufferRenderer) obj;
            this.outputMode = 0;
        } else {
            this.outputSurface = null;
            this.outputBufferRenderer = null;
            this.outputMode = -1;
            obj = null;
        }
        if (this.output == obj) {
            if (obj != null) {
                onOutputReset();
                return;
            }
            return;
        }
        this.output = obj;
        if (obj == null) {
            onOutputRemoved();
            return;
        }
        if (this.decoder != null) {
            setDecoderOutputMode(this.outputMode);
        }
        onOutputChanged();
    }

    public boolean shouldDropBuffersToKeyframe(long j7, long j8) {
        return isBufferVeryLate(j7);
    }

    public boolean shouldDropOutputBuffer(long j7, long j8) {
        return isBufferLate(j7);
    }

    public boolean shouldForceRenderOutputBuffer(long j7, long j8) {
        return isBufferLate(j7) && j8 > SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US;
    }

    public void skipOutputBuffer(u0.l lVar) {
        this.decoderCounters.skippedOutputBufferCount++;
        throw null;
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

    public void onQueueInputBuffer(C1665f c1665f) {
    }
}
