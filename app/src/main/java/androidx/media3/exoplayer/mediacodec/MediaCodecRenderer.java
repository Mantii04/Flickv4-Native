package androidx.media3.exoplayer.mediacodec;

import P3.v;
import Q3.x0;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer$InsufficientCapacityException;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.W;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.OggOpusAudioPacketizer;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.FrameworkCryptoConfig;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import com.google.common.collect.ImmutableSet;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import u0.C1665f;
import u0.InterfaceC1661b;
import v0.b0;

@UnstableApi
/* loaded from: classes.dex */
public abstract class MediaCodecRenderer extends BaseRenderer {
    private static final byte[] ADAPTATION_WORKAROUND_BUFFER = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, ByteSourceJsonBootstrapper.UTF8_BOM_3, 28, 49, -61, 39, 93, 120};
    private static final int ADAPTATION_WORKAROUND_MODE_ALWAYS = 2;
    private static final int ADAPTATION_WORKAROUND_MODE_NEVER = 0;
    private static final int ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION = 1;
    private static final int ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT = 32;
    protected static final float CODEC_OPERATING_RATE_UNSET = -1.0f;
    protected static final boolean DEBUG_LOG_ENABLED = false;
    protected static final String DEBUG_LOG_TAG = "MCRdebug";
    private static final int DRAIN_ACTION_FLUSH = 1;
    private static final int DRAIN_ACTION_FLUSH_AND_UPDATE_DRM_SESSION = 2;
    private static final int DRAIN_ACTION_NONE = 0;
    private static final int DRAIN_ACTION_REINITIALIZE = 3;
    private static final int DRAIN_STATE_NONE = 0;
    private static final int DRAIN_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int DRAIN_STATE_WAIT_END_OF_STREAM = 2;
    private static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    private static final String TAG = "MediaCodecRenderer";
    private CodecParameters activeCodecParameters;
    private final float assumedMinimumCodecOperatingRate;
    private ArrayDeque<MediaCodecInfo> availableCodecInfos;
    private final C1665f buffer;
    private final BatchBuffer bypassBatchBuffer;
    private boolean bypassDrainAndReinitialize;
    private boolean bypassEnabled;
    private final C1665f bypassSampleBuffer;
    private boolean bypassSampleBufferPending;
    private MediaCodecAdapter codec;
    private int codecAdaptationWorkaroundMode;
    private final MediaCodecAdapter.Factory codecAdapterFactory;
    private int codecDrainAction;
    private int codecDrainState;
    private DrmSession codecDrmSession;
    private boolean codecHasOutputMediaFormat;
    private long codecHotswapDeadlineMs;
    private MediaCodecInfo codecInfo;
    private Format codecInputFormat;
    private boolean codecNeedsAdaptationWorkaroundBuffer;
    private boolean codecNeedsEosFlushWorkaround;
    private boolean codecNeedsEosPropagation;
    private boolean codecNeedsSosFlushWorkaround;
    private float codecOperatingRate;
    private MediaFormat codecOutputMediaFormat;
    private boolean codecOutputMediaFormatChanged;
    private boolean codecReceivedBuffers;
    private boolean codecReceivedEos;
    private int codecReconfigurationState;
    private boolean codecReconfigured;
    private boolean codecRegisteredOnBufferAvailableListener;
    private final Context context;
    private float currentPlaybackSpeed;
    protected DecoderCounters decoderCounters;
    private final boolean enableDecoderFallback;
    private boolean experimentalEnableProcessedStreamChangedAtStart;
    private boolean hasSkippedFlushAndWaitingForQueueInputBuffer;
    private Format inputFormat;
    private int inputIndex;
    private boolean inputStreamEnded;
    private boolean isDecodeOnlyOutputBuffer;
    private boolean isLastOutputBuffer;
    private long largestQueuedPresentationTimeUs;
    private CodecParameters lastDispatchedCodecParameters;
    private long lastOutputBufferProcessedRealtimeMs;
    private long lastProcessedOutputBufferTimeUs;
    private final MediaCodecSelector mediaCodecSelector;
    private MediaCrypto mediaCrypto;
    private boolean needToNotifyOutputFormatChangeAfterStreamChange;
    private final C1665f noDataBuffer;
    private final OggOpusAudioPacketizer oggOpusAudioPacketizer;
    private ByteBuffer outputBuffer;
    private final MediaCodec.BufferInfo outputBufferInfo;
    private Format outputFormat;
    private int outputIndex;
    private boolean outputStreamEnded;
    private OutputStreamInfo outputStreamInfo;
    private boolean pendingOutputEndOfStream;
    private final ArrayDeque<OutputStreamInfo> pendingOutputStreamChanges;
    private ExoPlaybackException pendingPlaybackException;
    private DecoderInitializationException preferredDecoderInitializationException;
    private final AtomicInteger readDataResultHolder;
    private long renderTimeLimitMs;
    private boolean shouldSkipAdaptationWorkaroundOutputBuffer;
    private long skippedFlushOffsetUs;
    private DrmSession sourceDrmSession;
    private ImmutableSet<String> subscribedCodecParameterKeys;
    private float targetPlaybackSpeed;
    private boolean waitingForFirstSampleInFormat;
    private Renderer.WakeupListener wakeupListener;

    public static final class Api31 {
        private Api31() {
        }

        public static void setLogSessionIdToMediaCodecFormat(MediaCodecAdapter.Configuration configuration, PlayerId playerId) {
            boolean equals;
            String stringId;
            LogSessionId unused;
            LogSessionId logSessionId = playerId.getLogSessionId();
            unused = LogSessionId.LOG_SESSION_ID_NONE;
            equals = logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE);
            if (equals) {
                return;
            }
            MediaFormat mediaFormat = configuration.mediaFormat;
            stringId = logSessionId.getStringId();
            mediaFormat.setString("log-session-id", stringId);
        }
    }

    public final class MediaCodecRendererCodecAdapterListener implements MediaCodecAdapter.OnBufferAvailableListener {
        private MediaCodecRendererCodecAdapterListener() {
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnBufferAvailableListener
        public void onInputBufferAvailable() {
            if (MediaCodecRenderer.this.wakeupListener != null) {
                MediaCodecRenderer.this.wakeupListener.onWakeup();
            }
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnBufferAvailableListener
        public void onOutputBufferAvailable() {
            if (MediaCodecRenderer.this.wakeupListener != null) {
                MediaCodecRenderer.this.wakeupListener.onWakeup();
            }
        }
    }

    public static final class OutputStreamInfo {
        public static final OutputStreamInfo UNSET = new OutputStreamInfo(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET);
        public final TimedValueQueue<Format> formatQueue = new TimedValueQueue<>();
        public long lastBufferTimeUs = C.TIME_UNSET;
        public final long previousStreamLastBufferTimeUs;
        public final long startPositionUs;
        public final long streamOffsetUs;

        public OutputStreamInfo(long j7, long j8, long j9) {
            this.previousStreamLastBufferTimeUs = j7;
            this.startPositionUs = j8;
            this.streamOffsetUs = j9;
        }
    }

    public MediaCodecRenderer(Context context, int i2, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, boolean z6, float f3) {
        super(i2);
        this.context = context.getApplicationContext();
        this.codecAdapterFactory = factory;
        this.mediaCodecSelector = (MediaCodecSelector) v.checkNotNull(mediaCodecSelector);
        this.enableDecoderFallback = z6;
        this.assumedMinimumCodecOperatingRate = f3;
        this.readDataResultHolder = new AtomicInteger();
        this.noDataBuffer = C1665f.newNoDataInstance();
        this.buffer = new C1665f(0);
        this.bypassSampleBuffer = new C1665f(2);
        BatchBuffer batchBuffer = new BatchBuffer();
        this.bypassBatchBuffer = batchBuffer;
        this.outputBufferInfo = new MediaCodec.BufferInfo();
        this.currentPlaybackSpeed = 1.0f;
        this.targetPlaybackSpeed = 1.0f;
        this.renderTimeLimitMs = C.TIME_UNSET;
        this.pendingOutputStreamChanges = new ArrayDeque<>();
        this.outputStreamInfo = OutputStreamInfo.UNSET;
        batchBuffer.ensureSpaceForWrite(0);
        batchBuffer.data.order(ByteOrder.nativeOrder());
        this.oggOpusAudioPacketizer = new OggOpusAudioPacketizer();
        this.codecOperatingRate = CODEC_OPERATING_RATE_UNSET;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecReconfigurationState = 0;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.codecHotswapDeadlineMs = C.TIME_UNSET;
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        this.lastProcessedOutputBufferTimeUs = C.TIME_UNSET;
        this.lastOutputBufferProcessedRealtimeMs = C.TIME_UNSET;
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
        this.decoderCounters = new DecoderCounters();
        this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
        this.skippedFlushOffsetUs = 0L;
        this.subscribedCodecParameterKeys = ImmutableSet.of();
        CodecParameters codecParameters = CodecParameters.EMPTY;
        this.activeCodecParameters = codecParameters;
        this.lastDispatchedCodecParameters = codecParameters;
    }

    private void bypassRead() throws ExoPlaybackException {
        v.checkState(!this.inputStreamEnded);
        FormatHolder formatHolder = getFormatHolder();
        this.bypassSampleBuffer.clear();
        do {
            this.bypassSampleBuffer.clear();
            int readSource = readSource(formatHolder, this.bypassSampleBuffer, 0);
            if (readSource == -5) {
                onInputFormatChanged(formatHolder);
                return;
            }
            if (readSource == -4) {
                if (!this.bypassSampleBuffer.isEndOfStream()) {
                    this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, this.bypassSampleBuffer.timeUs);
                    if (hasReadStreamToEnd() || this.buffer.isLastSample()) {
                        getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                    }
                    if (this.waitingForFirstSampleInFormat) {
                        Format format = (Format) v.checkNotNull(this.inputFormat);
                        this.outputFormat = format;
                        if (Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_OPUS) && !this.outputFormat.initializationData.isEmpty()) {
                            this.outputFormat = this.outputFormat.buildUpon().setEncoderDelay(b0.getPreSkipSamples(this.outputFormat.initializationData.get(0))).build();
                        }
                        onOutputFormatChanged(this.outputFormat, null);
                        this.waitingForFirstSampleInFormat = false;
                    }
                    this.bypassSampleBuffer.flip();
                    Format format2 = this.outputFormat;
                    if (format2 != null && Objects.equals(format2.sampleMimeType, MimeTypes.AUDIO_OPUS)) {
                        if (this.bypassSampleBuffer.hasSupplementalData()) {
                            C1665f c1665f = this.bypassSampleBuffer;
                            c1665f.format = this.outputFormat;
                            handleInputBufferSupplementalData(c1665f);
                        }
                        if (b0.needToDecodeOpusFrame(getLastResetPositionUs(), this.bypassSampleBuffer.timeUs)) {
                            this.oggOpusAudioPacketizer.packetize(this.bypassSampleBuffer, this.outputFormat.initializationData);
                        }
                    }
                    if (!haveBypassBatchBufferAndNewSampleSameDecodeOnlyState()) {
                        break;
                    }
                } else {
                    this.inputStreamEnded = true;
                    getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                    return;
                }
            } else {
                if (readSource != -3) {
                    throw new IllegalStateException();
                }
                if (hasReadStreamToEnd()) {
                    getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                    return;
                }
                return;
            }
        } while (this.bypassBatchBuffer.append(this.bypassSampleBuffer));
        this.bypassSampleBufferPending = true;
    }

    private boolean bypassRender(long j7, long j8) throws ExoPlaybackException {
        boolean z6;
        v.checkState(!this.outputStreamEnded);
        if (this.bypassBatchBuffer.hasSamples()) {
            BatchBuffer batchBuffer = this.bypassBatchBuffer;
            z6 = false;
            if (!processOutputBuffer(j7, j8, null, batchBuffer.data, this.outputIndex, 0, batchBuffer.getSampleCount(), this.bypassBatchBuffer.getFirstSampleTimeUs(), isDecodeOnly(getLastResetPositionUs(), this.bypassBatchBuffer.getLastSampleTimeUs()), this.bypassBatchBuffer.isEndOfStream(), (Format) v.checkNotNull(this.outputFormat))) {
                return false;
            }
            onProcessedOutputBuffer(this.bypassBatchBuffer.getLastSampleTimeUs());
            this.bypassBatchBuffer.clear();
        } else {
            z6 = false;
        }
        if (this.inputStreamEnded) {
            this.outputStreamEnded = true;
            return z6;
        }
        if (this.bypassSampleBufferPending) {
            v.checkState(this.bypassBatchBuffer.append(this.bypassSampleBuffer));
            this.bypassSampleBufferPending = z6;
        }
        if (this.bypassDrainAndReinitialize) {
            if (this.bypassBatchBuffer.hasSamples()) {
                return true;
            }
            disableBypass();
            this.bypassDrainAndReinitialize = z6;
            maybeInitCodecOrBypass();
            if (!this.bypassEnabled) {
                return z6;
            }
        }
        bypassRead();
        if (this.bypassBatchBuffer.hasSamples()) {
            this.bypassBatchBuffer.flip();
        }
        if (this.bypassBatchBuffer.hasSamples() || this.inputStreamEnded || this.bypassDrainAndReinitialize) {
            return true;
        }
        return z6;
    }

    private void checkAndNotifyCodecParameterChanges(MediaFormat mediaFormat) {
        if (this.subscribedCodecParameterKeys.isEmpty()) {
            return;
        }
        CodecParameters build = CodecParameters.createFrom(mediaFormat, this.subscribedCodecParameterKeys).build();
        if (build.equals(this.lastDispatchedCodecParameters)) {
            return;
        }
        this.lastDispatchedCodecParameters = build;
        onCodecParametersChanged(build);
    }

    private int codecAdaptationWorkaroundMode(String str) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = Build.MODEL;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i2 >= 24) {
            return 0;
        }
        if (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) {
            return 0;
        }
        String str3 = Build.DEVICE;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    private static boolean codecNeedsEosFlushWorkaround(String str) {
        return Build.VERSION.SDK_INT == 23 && "OMX.google.vorbis.decoder".equals(str);
    }

    private static boolean codecNeedsEosPropagationWorkaround(MediaCodecInfo mediaCodecInfo) {
        String str = mediaCodecInfo.name;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) {
            return true;
        }
        if (i2 > 29 || !("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str) || "OMX.bcm.vdec.avc.tunnel".equals(str) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str) || "OMX.bcm.vdec.hevc.tunnel".equals(str) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str))) {
            return "Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && mediaCodecInfo.secure;
        }
        return true;
    }

    private static boolean codecNeedsSosFlushWorkaround(String str) {
        return Build.VERSION.SDK_INT == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void disableBypass() {
        this.bypassEnabled = false;
        resetBypassState();
    }

    private boolean drainAndFlushCodec() {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 1;
        }
        return true;
    }

    private void drainAndReinitializeCodec() throws ExoPlaybackException {
        if (!this.codecReceivedBuffers) {
            reinitializeCodec();
        } else {
            this.codecDrainState = 1;
            this.codecDrainAction = 3;
        }
    }

    private boolean drainAndUpdateCodecDrmSession() throws ExoPlaybackException {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 2;
        } else {
            updateDrmSession();
        }
        return true;
    }

    private boolean drainOutputBuffer(long j7, long j8) throws ExoPlaybackException {
        MediaCodecAdapter mediaCodecAdapter = (MediaCodecAdapter) v.checkNotNull(this.codec);
        if (!hasOutputBuffer()) {
            int dequeueOutputBufferIndex = mediaCodecAdapter.dequeueOutputBufferIndex(this.outputBufferInfo);
            if (dequeueOutputBufferIndex < 0) {
                if (dequeueOutputBufferIndex == -2) {
                    processOutputMediaFormatChanged();
                    return true;
                }
                if (this.codecNeedsEosPropagation && (this.inputStreamEnded || this.codecDrainState == 2)) {
                    processEndOfStream();
                }
                long j9 = this.lastOutputBufferProcessedRealtimeMs;
                if (j9 != C.TIME_UNSET && j9 + 100 < getClock().currentTimeMillis()) {
                    processEndOfStream();
                }
                return false;
            }
            MediaCodec.BufferInfo bufferInfo = this.outputBufferInfo;
            bufferInfo.presentationTimeUs -= this.skippedFlushOffsetUs;
            if (this.shouldSkipAdaptationWorkaroundOutputBuffer) {
                this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
                mediaCodecAdapter.releaseOutputBuffer(dequeueOutputBufferIndex, false);
                return true;
            }
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                processEndOfStream();
                return false;
            }
            this.outputIndex = dequeueOutputBufferIndex;
            ByteBuffer outputBuffer = mediaCodecAdapter.getOutputBuffer(dequeueOutputBufferIndex);
            this.outputBuffer = outputBuffer;
            if (outputBuffer != null) {
                outputBuffer.position(this.outputBufferInfo.offset);
                ByteBuffer byteBuffer = this.outputBuffer;
                MediaCodec.BufferInfo bufferInfo2 = this.outputBufferInfo;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            updateOutputFormatForTime(this.outputBufferInfo.presentationTimeUs);
        }
        boolean z6 = this.hasSkippedFlushAndWaitingForQueueInputBuffer || this.outputBufferInfo.presentationTimeUs < getLastResetPositionUs();
        this.isDecodeOnlyOutputBuffer = z6;
        long j10 = this.outputStreamInfo.lastBufferTimeUs;
        boolean z7 = j10 != C.TIME_UNSET && j10 <= this.outputBufferInfo.presentationTimeUs;
        this.isLastOutputBuffer = z7;
        ByteBuffer byteBuffer2 = this.outputBuffer;
        int i2 = this.outputIndex;
        MediaCodec.BufferInfo bufferInfo3 = this.outputBufferInfo;
        if (processOutputBuffer(j7, j8, mediaCodecAdapter, byteBuffer2, i2, bufferInfo3.flags, 1, bufferInfo3.presentationTimeUs, z6, z7, (Format) v.checkNotNull(this.outputFormat))) {
            onProcessedOutputBuffer(this.outputBufferInfo.presentationTimeUs);
            boolean z8 = (this.outputBufferInfo.flags & 4) != 0;
            if (!z8 && this.codecReceivedEos && this.isLastOutputBuffer) {
                this.lastOutputBufferProcessedRealtimeMs = getClock().currentTimeMillis();
            }
            resetOutputBuffer();
            if (!z8) {
                return true;
            }
            processEndOfStream();
        }
        return false;
    }

    private boolean drmNeedsCodecReinitialization(MediaCodecInfo mediaCodecInfo, Format format, DrmSession drmSession, DrmSession drmSession2) throws ExoPlaybackException {
        InterfaceC1661b cryptoConfig;
        InterfaceC1661b cryptoConfig2;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 != null && drmSession != null && (cryptoConfig = drmSession2.getCryptoConfig()) != null && (cryptoConfig2 = drmSession.getCryptoConfig()) != null && cryptoConfig.getClass().equals(cryptoConfig2.getClass())) {
            if (!(cryptoConfig instanceof FrameworkCryptoConfig)) {
                return false;
            }
            if (!drmSession2.getSchemeUuid().equals(drmSession.getSchemeUuid())) {
                return true;
            }
            UUID uuid = C.PLAYREADY_UUID;
            if (!uuid.equals(drmSession.getSchemeUuid()) && !uuid.equals(drmSession2.getSchemeUuid())) {
                return !mediaCodecInfo.secure && (drmSession2.getState() == 2 || ((drmSession2.getState() == 3 || drmSession2.getState() == 4) && drmSession2.requiresSecureDecoder((String) v.checkNotNull(format.sampleMimeType))));
            }
        }
        return true;
    }

    private boolean feedInputBuffer() throws ExoPlaybackException {
        int i2;
        if (this.codec != null && (i2 = this.codecDrainState) != 2 && !this.inputStreamEnded) {
            if (i2 == 0 && shouldReinitCodec()) {
                drainAndReinitializeCodec();
            }
            MediaCodecAdapter mediaCodecAdapter = (MediaCodecAdapter) v.checkNotNull(this.codec);
            if (this.inputIndex < 0) {
                int dequeueInputBufferIndex = mediaCodecAdapter.dequeueInputBufferIndex();
                this.inputIndex = dequeueInputBufferIndex;
                if (dequeueInputBufferIndex >= 0) {
                    this.buffer.data = mediaCodecAdapter.getInputBuffer(dequeueInputBufferIndex);
                    this.buffer.clear();
                }
            }
            if (this.codecDrainState == 1) {
                if (!this.codecNeedsEosPropagation) {
                    this.codecReceivedEos = true;
                    mediaCodecAdapter.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                    resetInputBuffer();
                }
                this.codecDrainState = 2;
                return false;
            }
            if (this.codecNeedsAdaptationWorkaroundBuffer) {
                this.codecNeedsAdaptationWorkaroundBuffer = false;
                ByteBuffer byteBuffer = (ByteBuffer) v.checkNotNull(this.buffer.data);
                byte[] bArr = ADAPTATION_WORKAROUND_BUFFER;
                byteBuffer.put(bArr);
                mediaCodecAdapter.queueInputBuffer(this.inputIndex, 0, bArr.length, 0L, 0);
                resetInputBuffer();
                this.codecReceivedBuffers = true;
                return true;
            }
            if (this.codecReconfigurationState == 1) {
                for (int i7 = 0; i7 < ((Format) v.checkNotNull(this.codecInputFormat)).initializationData.size(); i7++) {
                    ((ByteBuffer) v.checkNotNull(this.buffer.data)).put(this.codecInputFormat.initializationData.get(i7));
                }
                this.codecReconfigurationState = 2;
            }
            int position = ((ByteBuffer) v.checkNotNull(this.buffer.data)).position();
            FormatHolder formatHolder = getFormatHolder();
            try {
                mediaCodecAdapter.useInputBuffer(new a(1, this, formatHolder));
                int i8 = this.readDataResultHolder.get();
                if (i8 != -3) {
                    if (i8 == -5) {
                        if (this.codecReconfigurationState == 2) {
                            this.buffer.clear();
                            this.codecReconfigurationState = 1;
                        }
                        onInputFormatChanged(formatHolder);
                        return true;
                    }
                    if (!this.buffer.isEndOfStream()) {
                        if (this.codecReceivedBuffers || this.buffer.isKeyFrame()) {
                            C1665f c1665f = this.buffer;
                            long j7 = c1665f.timeUs;
                            if (!shouldDiscardDecoderInputBuffer(c1665f)) {
                                boolean isEncrypted = this.buffer.isEncrypted();
                                if (isEncrypted) {
                                    this.buffer.cryptoInfo.increaseClearDataFirstSubSampleBy(position);
                                }
                                if (this.waitingForFirstSampleInFormat) {
                                    getLastOutputStreamInfo().formatQueue.add(j7, (Format) v.checkNotNull(this.inputFormat));
                                    this.waitingForFirstSampleInFormat = false;
                                }
                                this.largestQueuedPresentationTimeUs = Math.max(this.largestQueuedPresentationTimeUs, j7);
                                if (hasReadStreamToEnd() || this.buffer.isLastSample()) {
                                    getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                                }
                                this.buffer.flip();
                                if (this.buffer.hasSupplementalData()) {
                                    handleInputBufferSupplementalData(this.buffer);
                                }
                                if (this.hasSkippedFlushAndWaitingForQueueInputBuffer) {
                                    long j8 = this.largestQueuedPresentationTimeUs;
                                    if (j7 <= j8) {
                                        this.skippedFlushOffsetUs = (j8 - j7) + 1 + this.skippedFlushOffsetUs;
                                    }
                                    this.largestQueuedPresentationTimeUs = j7;
                                    this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
                                }
                                onQueueInputBuffer(this.buffer);
                                int codecBufferFlags = getCodecBufferFlags(this.buffer);
                                long j9 = j7 + this.skippedFlushOffsetUs;
                                if (isEncrypted) {
                                    ((MediaCodecAdapter) v.checkNotNull(mediaCodecAdapter)).queueSecureInputBuffer(this.inputIndex, 0, this.buffer.cryptoInfo, j9, codecBufferFlags);
                                } else {
                                    ((MediaCodecAdapter) v.checkNotNull(mediaCodecAdapter)).queueInputBuffer(this.inputIndex, 0, ((ByteBuffer) v.checkNotNull(this.buffer.data)).limit(), j9, codecBufferFlags);
                                }
                                resetInputBuffer();
                                this.codecReceivedBuffers = true;
                                this.codecReconfigurationState = 0;
                                this.decoderCounters.queuedInputBufferCount++;
                                return true;
                            }
                        } else {
                            this.buffer.clear();
                            if (this.codecReconfigurationState == 2) {
                                this.codecReconfigurationState = 1;
                                return true;
                            }
                        }
                        return true;
                    }
                    getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                    if (this.codecReconfigurationState == 2) {
                        this.buffer.clear();
                        this.codecReconfigurationState = 1;
                    }
                    this.inputStreamEnded = true;
                    if (!this.codecReceivedBuffers) {
                        processEndOfStream();
                        return false;
                    }
                    if (!this.codecNeedsEosPropagation) {
                        this.codecReceivedEos = true;
                        mediaCodecAdapter.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                        resetInputBuffer();
                        return false;
                    }
                } else if (hasReadStreamToEnd()) {
                    getLastOutputStreamInfo().lastBufferTimeUs = this.largestQueuedPresentationTimeUs;
                    return false;
                }
            } catch (DecoderInputBuffer$InsufficientCapacityException e3) {
                onCodecError(e3);
                readSourceOmittingSampleData(0);
                flushCodec();
                return true;
            }
        }
        return false;
    }

    private void flushCodec() {
        try {
            ((MediaCodecAdapter) v.checkNotNull(this.codec)).flush();
        } finally {
            resetCodecStateForFlush();
        }
    }

    private boolean flushOrReleaseCodec() {
        if (this.codec == null) {
            return false;
        }
        if (shouldReleaseCodecInsteadOfFlushing()) {
            releaseCodec();
            return true;
        }
        if (shouldFlushCodec()) {
            flushCodec();
        } else {
            this.hasSkippedFlushAndWaitingForQueueInputBuffer = true;
        }
        return false;
    }

    private List<MediaCodecInfo> getAvailableCodecInfos(boolean z6) throws MediaCodecUtil.DecoderQueryException {
        Format format = (Format) v.checkNotNull(this.inputFormat);
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(this.mediaCodecSelector, format, z6);
        if (!decoderInfos.isEmpty() || !z6) {
            return decoderInfos;
        }
        List<MediaCodecInfo> decoderInfos2 = getDecoderInfos(this.mediaCodecSelector, format, false);
        if (!decoderInfos2.isEmpty()) {
            Log.w(TAG, "Drm session requires secure decoder for " + format.sampleMimeType + ", but no secure decoder available. Trying to proceed with " + decoderInfos2 + ".");
        }
        return decoderInfos2;
    }

    private OutputStreamInfo getLastOutputStreamInfo() {
        return !this.pendingOutputStreamChanges.isEmpty() ? this.pendingOutputStreamChanges.getLast() : this.outputStreamInfo;
    }

    private boolean hasOutputBuffer() {
        return this.outputIndex >= 0;
    }

    private boolean haveBypassBatchBufferAndNewSampleSameDecodeOnlyState() {
        if (!this.bypassBatchBuffer.hasSamples()) {
            return true;
        }
        long lastResetPositionUs = getLastResetPositionUs();
        return isDecodeOnly(lastResetPositionUs, this.bypassBatchBuffer.getLastSampleTimeUs()) == isDecodeOnly(lastResetPositionUs, this.bypassSampleBuffer.timeUs);
    }

    private void initBypass(Format format) {
        disableBypass();
        String str = format.sampleMimeType;
        if (MimeTypes.AUDIO_AAC.equals(str) || MimeTypes.AUDIO_MPEG.equals(str) || MimeTypes.AUDIO_OPUS.equals(str)) {
            this.bypassBatchBuffer.setMaxSampleCount(32);
        } else {
            this.bypassBatchBuffer.setMaxSampleCount(1);
        }
        this.bypassEnabled = true;
    }

    private void initCodec(MediaCodecInfo mediaCodecInfo, MediaCrypto mediaCrypto) throws Exception {
        boolean z6;
        this.codecInfo = mediaCodecInfo;
        Format format = (Format) v.checkNotNull(this.inputFormat);
        String str = mediaCodecInfo.name;
        float codecOperatingRateV23 = getCodecOperatingRateV23(this.targetPlaybackSpeed, format, getStreamFormats());
        if (codecOperatingRateV23 <= this.assumedMinimumCodecOperatingRate) {
            codecOperatingRateV23 = CODEC_OPERATING_RATE_UNSET;
        }
        long elapsedRealtime = getClock().elapsedRealtime();
        MediaCodecAdapter.Configuration mediaCodecConfiguration = getMediaCodecConfiguration(mediaCodecInfo, format, mediaCrypto, codecOperatingRateV23);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            Api31.setLogSessionIdToMediaCodecFormat(mediaCodecConfiguration, getPlayerId());
        }
        try {
            TraceUtil.beginSection("createCodec:" + str);
            MediaCodecAdapter createAdapter = this.codecAdapterFactory.createAdapter(mediaCodecConfiguration);
            this.codec = createAdapter;
            this.codecRegisteredOnBufferAvailableListener = createAdapter.registerOnBufferAvailableListener(new MediaCodecRendererCodecAdapterListener());
            TraceUtil.endSection();
            long elapsedRealtime2 = getClock().elapsedRealtime();
            if (mediaCodecInfo.isFormatSupported(this.context, format)) {
                z6 = false;
            } else {
                z6 = false;
                Log.w(TAG, Util.formatInvariant("Format exceeds selected codec's capabilities [%s, %s]", Format.toLogString(format), str));
            }
            this.codecOperatingRate = codecOperatingRateV23;
            this.codecInputFormat = format;
            this.codecAdaptationWorkaroundMode = codecAdaptationWorkaroundMode(str);
            this.codecNeedsSosFlushWorkaround = codecNeedsSosFlushWorkaround(str);
            this.codecNeedsEosFlushWorkaround = codecNeedsEosFlushWorkaround(str);
            this.codecNeedsEosPropagation = codecNeedsEosPropagationWorkaround(mediaCodecInfo);
            if (((MediaCodecAdapter) v.checkNotNull(this.codec)).needsReconfiguration()) {
                this.codecReconfigured = true;
                this.codecReconfigurationState = 1;
                this.codecNeedsAdaptationWorkaroundBuffer = this.codecAdaptationWorkaroundMode != 0 ? true : z6;
            }
            if (getState() == 2) {
                this.codecHotswapDeadlineMs = getClock().elapsedRealtime() + 1000;
            }
            this.decoderCounters.decoderInitCount++;
            long j7 = elapsedRealtime2 - elapsedRealtime;
            if (i2 >= 31 && !this.subscribedCodecParameterKeys.isEmpty()) {
                ((MediaCodecAdapter) v.checkNotNull(getCodec())).subscribeToVendorParameters(new ArrayList(this.subscribedCodecParameterKeys));
            }
            onCodecInitialized(str, mediaCodecConfiguration, elapsedRealtime2, j7);
        } catch (Throwable th) {
            TraceUtil.endSection();
            throw th;
        }
    }

    private boolean initMediaCryptoIfDrmSessionReady() throws ExoPlaybackException {
        v.checkState(this.mediaCrypto == null);
        DrmSession drmSession = this.codecDrmSession;
        InterfaceC1661b cryptoConfig = drmSession.getCryptoConfig();
        if (FrameworkCryptoConfig.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC && (cryptoConfig instanceof FrameworkCryptoConfig)) {
            int state = drmSession.getState();
            if (state == 1) {
                DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) v.checkNotNull(drmSession.getError());
                throw createRendererException(drmSessionException, this.inputFormat, drmSessionException.errorCode);
            }
            if (state != 4) {
                return false;
            }
        }
        if (cryptoConfig == null) {
            return drmSession.getError() != null;
        }
        if (cryptoConfig instanceof FrameworkCryptoConfig) {
            FrameworkCryptoConfig frameworkCryptoConfig = (FrameworkCryptoConfig) cryptoConfig;
            try {
                this.mediaCrypto = new MediaCrypto(frameworkCryptoConfig.uuid, frameworkCryptoConfig.sessionId);
            } catch (MediaCryptoException e3) {
                throw createRendererException(e3, this.inputFormat, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
            }
        }
        return true;
    }

    private boolean isDecodeOnly(long j7, long j8) {
        if (j8 >= j7) {
            return false;
        }
        Format format = this.outputFormat;
        return (format != null && Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_OPUS) && b0.needToDecodeOpusFrame(j7, j8)) ? false : true;
    }

    private static boolean isMediaCodecException(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$feedInputBuffer$0(FormatHolder formatHolder) {
        this.readDataResultHolder.set(readSource(formatHolder, this.buffer, 0));
    }

    private void maybeInitCodecWithFallback(MediaCrypto mediaCrypto, boolean z6) throws DecoderInitializationException, ExoPlaybackException {
        Format format = (Format) v.checkNotNull(this.inputFormat);
        if (this.availableCodecInfos == null) {
            try {
                List<MediaCodecInfo> availableCodecInfos = getAvailableCodecInfos(z6);
                ArrayDeque<MediaCodecInfo> arrayDeque = new ArrayDeque<>();
                this.availableCodecInfos = arrayDeque;
                if (this.enableDecoderFallback) {
                    arrayDeque.addAll(availableCodecInfos);
                } else if (!availableCodecInfos.isEmpty()) {
                    this.availableCodecInfos.add(availableCodecInfos.get(0));
                }
                this.preferredDecoderInitializationException = null;
            } catch (MediaCodecUtil.DecoderQueryException e3) {
                throw new DecoderInitializationException(format, e3, z6, -49998);
            }
        }
        if (this.availableCodecInfos.isEmpty()) {
            throw new DecoderInitializationException(format, (Throwable) null, z6, -49999);
        }
        ArrayDeque arrayDeque2 = (ArrayDeque) v.checkNotNull(this.availableCodecInfos);
        while (this.codec == null) {
            MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) v.checkNotNull((MediaCodecInfo) arrayDeque2.peekFirst());
            if (!maybeInitializeProcessingPipeline(format) || !shouldInitCodec(mediaCodecInfo)) {
                return;
            }
            try {
                initCodec(mediaCodecInfo, mediaCrypto);
            } catch (Exception e7) {
                Log.w(TAG, "Failed to initialize decoder: " + mediaCodecInfo, e7);
                arrayDeque2.removeFirst();
                DecoderInitializationException decoderInitializationException = new DecoderInitializationException(format, e7, z6, mediaCodecInfo);
                onCodecError(decoderInitializationException);
                if (this.preferredDecoderInitializationException == null) {
                    this.preferredDecoderInitializationException = decoderInitializationException;
                } else {
                    this.preferredDecoderInitializationException = this.preferredDecoderInitializationException.copyWithFallbackException(decoderInitializationException);
                }
                if (arrayDeque2.isEmpty()) {
                    throw this.preferredDecoderInitializationException;
                }
            }
        }
        this.availableCodecInfos = null;
    }

    private void processEndOfStream() throws ExoPlaybackException {
        int i2 = this.codecDrainAction;
        if (i2 == 1) {
            flushCodec();
            return;
        }
        if (i2 == 2) {
            flushCodec();
            updateDrmSession();
        } else if (i2 == 3) {
            reinitializeCodec();
        } else {
            this.outputStreamEnded = true;
            renderToEndOfStream();
        }
    }

    private void processOutputMediaFormatChanged() {
        this.codecHasOutputMediaFormat = true;
        MediaFormat outputFormat = ((MediaCodecAdapter) v.checkNotNull(this.codec)).getOutputFormat();
        if (this.codecAdaptationWorkaroundMode != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.shouldSkipAdaptationWorkaroundOutputBuffer = true;
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            checkAndNotifyCodecParameterChanges(outputFormat);
        }
        this.codecOutputMediaFormat = outputFormat;
        this.codecOutputMediaFormatChanged = true;
    }

    private boolean readSourceOmittingSampleData(int i2) throws ExoPlaybackException {
        FormatHolder formatHolder = getFormatHolder();
        this.noDataBuffer.clear();
        int readSource = readSource(formatHolder, this.noDataBuffer, i2 | 4);
        if (readSource == -5) {
            onInputFormatChanged(formatHolder);
            return true;
        }
        if (readSource != -4 || !this.noDataBuffer.isEndOfStream()) {
            return false;
        }
        this.inputStreamEnded = true;
        processEndOfStream();
        return false;
    }

    private void reinitializeCodec() throws ExoPlaybackException {
        releaseCodec();
        maybeInitCodecOrBypass();
    }

    private void resetBypassState() {
        resetCommonStateForFlush();
        this.bypassDrainAndReinitialize = false;
        this.bypassBatchBuffer.clear();
        this.bypassSampleBuffer.clear();
        this.bypassSampleBufferPending = false;
        this.oggOpusAudioPacketizer.reset();
    }

    private void resetCommonStateForFlush() {
        this.largestQueuedPresentationTimeUs = C.TIME_UNSET;
        getLastOutputStreamInfo().lastBufferTimeUs = C.TIME_UNSET;
        this.lastProcessedOutputBufferTimeUs = C.TIME_UNSET;
    }

    private void resetInputBuffer() {
        this.inputIndex = -1;
        this.buffer.data = null;
    }

    private void resetOutputBuffer() {
        this.outputIndex = -1;
        this.outputBuffer = null;
    }

    private void setCodecDrmSession(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.e.b(this.codecDrmSession, drmSession);
        this.codecDrmSession = drmSession;
    }

    private void setOutputStreamInfo(OutputStreamInfo outputStreamInfo) {
        this.outputStreamInfo = outputStreamInfo;
        long j7 = outputStreamInfo.streamOffsetUs;
        if (j7 != C.TIME_UNSET) {
            this.needToNotifyOutputFormatChangeAfterStreamChange = true;
            onOutputStreamOffsetUsChanged(j7);
        }
    }

    private void setSourceDrmSession(DrmSession drmSession) {
        androidx.media3.exoplayer.drm.e.b(this.sourceDrmSession, drmSession);
        this.sourceDrmSession = drmSession;
    }

    private boolean shouldContinueRendering(long j7) {
        return this.renderTimeLimitMs == C.TIME_UNSET || getClock().elapsedRealtime() - j7 < this.renderTimeLimitMs;
    }

    public static boolean supportsFormatDrm(Format format) {
        int i2 = format.cryptoType;
        return i2 == 0 || i2 == 2;
    }

    private void updateCodecSubscriptions(ImmutableSet<String> immutableSet) {
        if (this.subscribedCodecParameterKeys.equals(immutableSet)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            HashSet hashSet = new HashSet(immutableSet);
            HashSet hashSet2 = new HashSet();
            x0 it = this.subscribedCodecParameterKeys.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (!hashSet.remove(str)) {
                    hashSet2.add(str);
                }
            }
            MediaCodecAdapter codec = getCodec();
            if (codec != null) {
                if (!hashSet2.isEmpty()) {
                    codec.unsubscribeFromVendorParameters(new ArrayList(hashSet2));
                }
                if (!hashSet.isEmpty()) {
                    codec.subscribeToVendorParameters(new ArrayList(hashSet));
                }
            }
        }
        this.subscribedCodecParameterKeys = immutableSet;
    }

    private void updateDrmSession() throws ExoPlaybackException {
        InterfaceC1661b cryptoConfig = ((DrmSession) v.checkNotNull(this.sourceDrmSession)).getCryptoConfig();
        if (cryptoConfig instanceof FrameworkCryptoConfig) {
            try {
                ((MediaCrypto) v.checkNotNull(this.mediaCrypto)).setMediaDrmSession(((FrameworkCryptoConfig) cryptoConfig).sessionId);
            } catch (MediaCryptoException e3) {
                throw createRendererException(e3, this.inputFormat, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
            }
        }
        setCodecDrmSession(this.sourceDrmSession);
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
    }

    public final void applyCodecParametersToMediaFormat(MediaFormat mediaFormat) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.activeCodecParameters.applyTo(mediaFormat);
        }
    }

    public DecoderReuseEvaluation canReuseCodec(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        return new DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, 0, 1);
    }

    public MediaCodecDecoderException createDecoderException(Throwable th, MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecDecoderException(th, mediaCodecInfo);
    }

    public void experimentalEnableProcessedStreamChangedAtStart() {
        this.experimentalEnableProcessedStreamChangedAtStart = true;
    }

    public final boolean flushOrReinitializeCodec() throws ExoPlaybackException {
        boolean flushOrReleaseCodec = flushOrReleaseCodec();
        if (flushOrReleaseCodec) {
            maybeInitCodecOrBypass();
        }
        return flushOrReleaseCodec;
    }

    public final MediaCodecAdapter getCodec() {
        return this.codec;
    }

    public int getCodecBufferFlags(C1665f c1665f) {
        return 0;
    }

    public final MediaCodecInfo getCodecInfo() {
        return this.codecInfo;
    }

    public final Format getCodecInputFormat() {
        return this.codecInputFormat;
    }

    public float getCodecOperatingRate() {
        return this.codecOperatingRate;
    }

    public float getCodecOperatingRateV23(float f3, Format format, Format[] formatArr) {
        return CODEC_OPERATING_RATE_UNSET;
    }

    public final MediaFormat getCodecOutputMediaFormat() {
        return this.codecOutputMediaFormat;
    }

    public abstract List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean z6) throws MediaCodecUtil.DecoderQueryException;

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final long getDurationToProgressUs(long j7, long j8) {
        return getDurationToProgressUs(j7, j8, this.codecRegisteredOnBufferAvailableListener);
    }

    public long getLargestQueuedPresentationTimeUs() {
        return this.largestQueuedPresentationTimeUs;
    }

    public long getLastBufferInStreamPresentationTimeUs() {
        return this.outputStreamInfo.lastBufferTimeUs;
    }

    public final long getLastProcessedOutputBufferTimeUs() {
        return this.lastProcessedOutputBufferTimeUs;
    }

    public abstract MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f3);

    public final long getOutputStreamOffsetUs() {
        return this.outputStreamInfo.streamOffsetUs;
    }

    public final long getOutputStreamStartPositionUs() {
        return this.outputStreamInfo.startPositionUs;
    }

    public float getPlaybackSpeed() {
        return this.currentPlaybackSpeed;
    }

    public long getSkippedFlushOffsetUs() {
        return this.skippedFlushOffsetUs;
    }

    public final Renderer.WakeupListener getWakeupListener() {
        return this.wakeupListener;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i2, Object obj) throws ExoPlaybackException {
        if (i2 == 11) {
            this.wakeupListener = (Renderer.WakeupListener) v.checkNotNull((Renderer.WakeupListener) obj);
            return;
        }
        if (i2 != 21) {
            if (i2 != 22) {
                super.handleMessage(i2, obj);
                return;
            } else {
                if (Build.VERSION.SDK_INT >= 29) {
                    updateCodecSubscriptions((ImmutableSet) v.checkNotNull(obj));
                    return;
                }
                return;
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.activeCodecParameters = (CodecParameters) v.checkNotNull(obj);
            MediaCodecAdapter codec = getCodec();
            if (codec != null) {
                codec.setParameters(this.activeCodecParameters.toBundle());
            }
        }
    }

    public final boolean isBypassEnabled() {
        return this.bypassEnabled;
    }

    public final boolean isBypassPossible(Format format) {
        return this.sourceDrmSession == null && shouldUseBypass(format);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return isReadyForDecoding();
    }

    public final boolean isReadyForDecoding() {
        if (this.inputFormat == null) {
            return false;
        }
        if (isSourceReady() || hasOutputBuffer()) {
            return true;
        }
        return this.codecHotswapDeadlineMs != C.TIME_UNSET && getClock().elapsedRealtime() < this.codecHotswapDeadlineMs;
    }

    public final void maybeInitCodecOrBypass() throws ExoPlaybackException {
        Format format;
        boolean z6;
        if (this.codec != null || this.bypassEnabled || (format = this.inputFormat) == null) {
            return;
        }
        if (isBypassPossible(format)) {
            initBypass(format);
            return;
        }
        setCodecDrmSession(this.sourceDrmSession);
        if (this.codecDrmSession == null || initMediaCryptoIfDrmSessionReady()) {
            try {
                DrmSession drmSession = this.codecDrmSession;
                if (drmSession != null) {
                    if (drmSession.getState() != 3) {
                        if (this.codecDrmSession.getState() == 4) {
                        }
                    }
                    if (this.codecDrmSession.requiresSecureDecoder((String) v.checkNotNull(format.sampleMimeType))) {
                        z6 = true;
                        maybeInitCodecWithFallback(this.mediaCrypto, z6);
                    }
                }
                z6 = false;
                maybeInitCodecWithFallback(this.mediaCrypto, z6);
            } catch (DecoderInitializationException e3) {
                throw createRendererException(e3, format, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
            }
        }
        MediaCrypto mediaCrypto = this.mediaCrypto;
        if (mediaCrypto == null || this.codec != null) {
            return;
        }
        mediaCrypto.release();
        this.mediaCrypto = null;
    }

    public boolean maybeInitializeProcessingPipeline(Format format) throws ExoPlaybackException {
        return true;
    }

    public void onCodecError(Exception exc) {
    }

    public void onCodecInitialized(String str, MediaCodecAdapter.Configuration configuration, long j7, long j8) {
    }

    public abstract void onCodecParametersChanged(CodecParameters codecParameters);

    public void onCodecReleased(String str) {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        setOutputStreamInfo(OutputStreamInfo.UNSET);
        this.pendingOutputStreamChanges.clear();
        if (this.bypassEnabled) {
            disableBypass();
        } else {
            flushOrReleaseCodec();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onEnabled(boolean z6, boolean z7) throws ExoPlaybackException {
        this.decoderCounters = new DecoderCounters();
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a3, code lost:
    
        if (drainAndUpdateCodecDrmSession() == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a5, code lost:
    
        r9 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d6, code lost:
    
        if (drainAndUpdateCodecDrmSession() == false) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media3.exoplayer.DecoderReuseEvaluation onInputFormatChanged(androidx.media3.exoplayer.FormatHolder r12) throws androidx.media3.exoplayer.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.mediacodec.MediaCodecRenderer.onInputFormatChanged(androidx.media3.exoplayer.FormatHolder):androidx.media3.exoplayer.DecoderReuseEvaluation");
    }

    public void onOutputFormatChanged(Format format, MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    public void onOutputStreamOffsetUsChanged(long j7) {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onPositionReset(long j7, boolean z6, boolean z7) throws ExoPlaybackException {
        if (!this.pendingOutputStreamChanges.isEmpty()) {
            this.outputStreamInfo = this.pendingOutputStreamChanges.getLast();
        }
        this.pendingOutputStreamChanges.clear();
        if (z7) {
            this.inputStreamEnded = false;
            this.outputStreamEnded = false;
            this.pendingOutputEndOfStream = false;
            if (this.bypassEnabled) {
                resetBypassState();
            } else {
                flushOrReinitializeCodec();
            }
            if (this.outputStreamInfo.formatQueue.size() > 0) {
                this.waitingForFirstSampleInFormat = true;
            }
            this.outputStreamInfo.formatQueue.clear();
        }
    }

    public void onProcessedOutputBuffer(long j7) {
        this.lastProcessedOutputBufferTimeUs = j7;
        while (!this.pendingOutputStreamChanges.isEmpty() && j7 >= this.pendingOutputStreamChanges.peek().previousStreamLastBufferTimeUs) {
            setOutputStreamInfo((OutputStreamInfo) v.checkNotNull(this.pendingOutputStreamChanges.poll()));
            onProcessedStreamChange();
        }
    }

    public void onProcessedStreamChange() {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onReset() {
        try {
            disableBypass();
            releaseCodec();
        } finally {
            setSourceDrmSession(null);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onStarted() {
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onStopped() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        if (r4 >= r0) goto L16;
     */
    @Override // androidx.media3.exoplayer.BaseRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onStreamChanged(androidx.media3.common.Format[] r12, long r13, long r15, androidx.media3.exoplayer.source.MediaSource.MediaPeriodId r17) throws androidx.media3.exoplayer.ExoPlaybackException {
        /*
            r11 = this;
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r12 = r11.outputStreamInfo
            long r0 = r12.streamOffsetUs
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 != 0) goto L24
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r4 = new androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.setOutputStreamInfo(r4)
            boolean r12 = r11.experimentalEnableProcessedStreamChangedAtStart
            if (r12 == 0) goto L56
            r11.onProcessedStreamChange()
            return
        L24:
            java.util.ArrayDeque<androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo> r12 = r11.pendingOutputStreamChanges
            boolean r12 = r12.isEmpty()
            if (r12 == 0) goto L57
            long r0 = r11.largestQueuedPresentationTimeUs
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 == 0) goto L3c
            long r4 = r11.lastProcessedOutputBufferTimeUs
            int r12 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r12 == 0) goto L57
            int r12 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r12 < 0) goto L57
        L3c:
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r4 = new androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.setOutputStreamInfo(r4)
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r12 = r11.outputStreamInfo
            long r12 = r12.streamOffsetUs
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 == 0) goto L56
            r11.onProcessedStreamChange()
        L56:
            return
        L57:
            java.util.ArrayDeque<androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo> r12 = r11.pendingOutputStreamChanges
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r0 = new androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo
            long r1 = r11.largestQueuedPresentationTimeUs
            r3 = r13
            r5 = r15
            r0.<init>(r1, r3, r5)
            r12.add(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.mediacodec.MediaCodecRenderer.onStreamChanged(androidx.media3.common.Format[], long, long, androidx.media3.exoplayer.source.MediaSource$MediaPeriodId):void");
    }

    public abstract boolean processOutputBuffer(long j7, long j8, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i2, int i7, int i8, long j9, boolean z6, boolean z7, Format format) throws ExoPlaybackException;

    /* JADX WARN: Multi-variable type inference failed */
    public void releaseCodec() {
        try {
            MediaCodecAdapter mediaCodecAdapter = this.codec;
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.release();
                this.decoderCounters.decoderReleaseCount++;
                onCodecReleased(((MediaCodecInfo) v.checkNotNull(this.codecInfo)).name);
            }
            this.codec = null;
            try {
                MediaCrypto mediaCrypto = this.mediaCrypto;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.codec = null;
            try {
                MediaCrypto mediaCrypto2 = this.mediaCrypto;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j7, long j8) throws ExoPlaybackException {
        boolean z6 = false;
        if (this.pendingOutputEndOfStream) {
            this.pendingOutputEndOfStream = false;
            processEndOfStream();
        }
        ExoPlaybackException exoPlaybackException = this.pendingPlaybackException;
        if (exoPlaybackException != null) {
            this.pendingPlaybackException = null;
            throw exoPlaybackException;
        }
        try {
            if (this.outputStreamEnded) {
                renderToEndOfStream();
                return;
            }
            if (this.inputFormat != null || readSourceOmittingSampleData(2)) {
                maybeInitCodecOrBypass();
                if (this.bypassEnabled) {
                    TraceUtil.beginSection("bypassRender");
                    while (bypassRender(j7, j8)) {
                    }
                    TraceUtil.endSection();
                } else if (this.codec != null) {
                    long elapsedRealtime = getClock().elapsedRealtime();
                    TraceUtil.beginSection("drainAndFeed");
                    while (drainOutputBuffer(j7, j8) && shouldContinueRendering(elapsedRealtime)) {
                    }
                    while (feedInputBuffer() && shouldContinueRendering(elapsedRealtime)) {
                    }
                    TraceUtil.endSection();
                } else {
                    this.decoderCounters.skippedInputBufferCount += skipSource(j7);
                    readSourceOmittingSampleData(1);
                }
                this.decoderCounters.ensureUpdated();
            }
        } catch (MediaCodec.CryptoException e3) {
            throw createRendererException(e3, this.inputFormat, Util.getErrorCodeForMediaDrmErrorCode(e3.getErrorCode()));
        } catch (IllegalStateException e7) {
            if (!isMediaCodecException(e7)) {
                throw e7;
            }
            onCodecError(e7);
            if ((e7 instanceof MediaCodec.CodecException) && ((MediaCodec.CodecException) e7).isRecoverable()) {
                z6 = true;
            }
            if (z6) {
                releaseCodec();
            }
            MediaCodecDecoderException createDecoderException = createDecoderException(e7, getCodecInfo());
            throw createRendererException(createDecoderException, this.inputFormat, z6, createDecoderException.errorCode == 1101 ? PlaybackException.ERROR_CODE_DECODING_RESOURCES_RECLAIMED : PlaybackException.ERROR_CODE_DECODING_FAILED);
        }
    }

    public void renderToEndOfStream() throws ExoPlaybackException {
    }

    public void resetCodecStateForFlush() {
        resetInputBuffer();
        resetOutputBuffer();
        resetCommonStateForFlush();
        this.codecHotswapDeadlineMs = C.TIME_UNSET;
        this.codecReceivedEos = false;
        this.lastOutputBufferProcessedRealtimeMs = C.TIME_UNSET;
        this.codecReceivedBuffers = false;
        this.codecNeedsAdaptationWorkaroundBuffer = false;
        this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
        this.isDecodeOnlyOutputBuffer = false;
        this.isLastOutputBuffer = false;
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
        this.codecReconfigurationState = this.codecReconfigured ? 1 : 0;
        this.hasSkippedFlushAndWaitingForQueueInputBuffer = false;
        this.skippedFlushOffsetUs = 0L;
    }

    public void resetCodecStateForRelease() {
        resetCodecStateForFlush();
        this.pendingPlaybackException = null;
        this.availableCodecInfos = null;
        this.codecInfo = null;
        this.codecInputFormat = null;
        this.codecOutputMediaFormat = null;
        this.codecOutputMediaFormatChanged = false;
        this.codecHasOutputMediaFormat = false;
        this.codecOperatingRate = CODEC_OPERATING_RATE_UNSET;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecNeedsSosFlushWorkaround = false;
        this.codecNeedsEosFlushWorkaround = false;
        this.codecNeedsEosPropagation = false;
        this.codecRegisteredOnBufferAvailableListener = false;
        this.codecReconfigured = false;
        this.codecReconfigurationState = 0;
    }

    public final void setPendingOutputEndOfStream() {
        this.pendingOutputEndOfStream = true;
    }

    public final void setPendingPlaybackException(ExoPlaybackException exoPlaybackException) {
        this.pendingPlaybackException = exoPlaybackException;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public void setPlaybackSpeed(float f3, float f7) throws ExoPlaybackException {
        this.currentPlaybackSpeed = f3;
        this.targetPlaybackSpeed = f7;
        updateCodecOperatingRate(this.codecInputFormat);
    }

    public void setRenderTimeLimitMs(long j7) {
        this.renderTimeLimitMs = j7;
    }

    public boolean shouldDiscardDecoderInputBuffer(C1665f c1665f) {
        if (!shouldSkipDecoderInputBuffer(c1665f)) {
            return false;
        }
        c1665f.clear();
        this.decoderCounters.skippedInputBufferCount++;
        return true;
    }

    public boolean shouldFlushCodec() {
        return true;
    }

    public boolean shouldInitCodec(MediaCodecInfo mediaCodecInfo) {
        return true;
    }

    public boolean shouldReinitCodec() {
        return false;
    }

    public boolean shouldReleaseCodecInsteadOfFlushing() {
        int i2 = this.codecDrainAction;
        if (i2 == 3 || ((this.codecNeedsSosFlushWorkaround && !this.codecHasOutputMediaFormat) || (this.codecNeedsEosFlushWorkaround && this.codecReceivedEos))) {
            return true;
        }
        if (i2 != 2) {
            return false;
        }
        try {
            updateDrmSession();
            return false;
        } catch (ExoPlaybackException e3) {
            Log.w(TAG, "Failed to update the DRM session, releasing the codec instead.", e3);
            return true;
        }
    }

    public boolean shouldSkipDecoderInputBuffer(C1665f c1665f) {
        return false;
    }

    public boolean shouldUseBypass(Format format) {
        return false;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int supportsFormat(Format format) throws ExoPlaybackException {
        try {
            return supportsFormat(this.mediaCodecSelector, format);
        } catch (MediaCodecUtil.DecoderQueryException e3) {
            throw createRendererException(e3, format, PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
        }
    }

    public abstract int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException;

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.RendererCapabilities
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    public final boolean updateCodecOperatingRate() throws ExoPlaybackException {
        return updateCodecOperatingRate(this.codecInputFormat);
    }

    public final void updateOutputFormatForTime(long j7) throws ExoPlaybackException {
        Format pollFloor = this.outputStreamInfo.formatQueue.pollFloor(j7);
        if (pollFloor == null && this.needToNotifyOutputFormatChangeAfterStreamChange && this.codecOutputMediaFormat != null) {
            pollFloor = this.outputStreamInfo.formatQueue.pollFirst();
        }
        if (pollFloor != null) {
            this.outputFormat = pollFloor;
        } else if (!this.codecOutputMediaFormatChanged || this.outputFormat == null) {
            return;
        }
        onOutputFormatChanged((Format) v.checkNotNull(this.outputFormat), this.codecOutputMediaFormat);
        this.codecOutputMediaFormatChanged = false;
        this.needToNotifyOutputFormatChangeAfterStreamChange = false;
    }

    private boolean updateCodecOperatingRate(Format format) throws ExoPlaybackException {
        if (this.codec != null && this.codecDrainAction != 3 && getState() != 0) {
            float codecOperatingRateV23 = getCodecOperatingRateV23(this.targetPlaybackSpeed, (Format) v.checkNotNull(format), getStreamFormats());
            float f3 = this.codecOperatingRate;
            if (f3 == codecOperatingRateV23) {
                return true;
            }
            if (codecOperatingRateV23 == CODEC_OPERATING_RATE_UNSET) {
                drainAndReinitializeCodec();
                return false;
            }
            if (f3 == CODEC_OPERATING_RATE_UNSET && codecOperatingRateV23 <= this.assumedMinimumCodecOperatingRate) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", codecOperatingRateV23);
            ((MediaCodecAdapter) v.checkNotNull(this.codec)).setParameters(bundle);
            this.codecOperatingRate = codecOperatingRateV23;
        }
        return true;
    }

    public long getDurationToProgressUs(long j7, long j8, boolean z6) {
        return W.b(this, j7, j8);
    }

    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final MediaCodecInfo codecInfo;
        public final String diagnosticInfo;
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(Format format, Throwable th, boolean z6, int i2) {
            this("Decoder init failed: [" + i2 + "], " + format, th, format.sampleMimeType, z6, null, buildCustomDiagnosticInfo(i2), null);
        }

        private static String buildCustomDiagnosticInfo(int i2) {
            return "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_" + (i2 < 0 ? "neg_" : "") + Math.abs(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        public DecoderInitializationException(Format format, Throwable th, boolean z6, MediaCodecInfo mediaCodecInfo) {
            this("Decoder init failed: " + mediaCodecInfo.name + ", " + format, th, format.sampleMimeType, z6, mediaCodecInfo, th instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null, null);
        }

        private DecoderInitializationException(String str, Throwable th, String str2, boolean z6, MediaCodecInfo mediaCodecInfo, String str3, DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z6;
            this.codecInfo = mediaCodecInfo;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }
    }

    public void handleInputBufferSupplementalData(C1665f c1665f) throws ExoPlaybackException {
    }

    public void onQueueInputBuffer(C1665f c1665f) throws ExoPlaybackException {
    }
}
