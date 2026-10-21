package androidx.media3.exoplayer.text;

import P3.v;
import S0.c;
import S0.i;
import S0.j;
import S0.m;
import S0.n;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.X;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.extractor.text.SubtitleDecoderException;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import u0.C1665f;

@UnstableApi
/* loaded from: classes.dex */
public final class TextRenderer extends BaseRenderer implements Handler.Callback {
    private static final int MSG_UPDATE_OUTPUT = 1;
    private static final int REPLACEMENT_STATE_NONE = 0;
    private static final int REPLACEMENT_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REPLACEMENT_STATE_WAIT_END_OF_STREAM = 2;
    private static final String TAG = "TextRenderer";
    private final S0.a cueDecoder;
    private final C1665f cueDecoderInputBuffer;
    private CuesResolver cuesResolver;
    private int decoderReplacementState;
    private long finalStreamEndPositionUs;
    private final FormatHolder formatHolder;
    private boolean inputStreamEnded;
    private long lastRendererPositionUs;
    private boolean legacyDecodingEnabled;
    private n nextSubtitle;
    private int nextSubtitleEventIndex;
    private m nextSubtitleInputBuffer;
    private final TextOutput output;
    private final Handler outputHandler;
    private boolean outputStreamEnded;
    private Format streamFormat;
    private n subtitle;
    private j subtitleDecoder;
    private final SubtitleDecoderFactory subtitleDecoderFactory;
    private boolean waitingForKeyFrame;

    public TextRenderer(TextOutput textOutput, Looper looper) {
        this(textOutput, looper, SubtitleDecoderFactory.DEFAULT);
    }

    private void assertLegacyDecodingEnabledIfRequired() {
        v.checkState(this.legacyDecodingEnabled || Objects.equals(this.streamFormat.sampleMimeType, MimeTypes.APPLICATION_CEA608) || Objects.equals(this.streamFormat.sampleMimeType, MimeTypes.APPLICATION_MP4CEA608) || Objects.equals(this.streamFormat.sampleMimeType, MimeTypes.APPLICATION_CEA708), "Legacy decoding is disabled, can't handle %s samples (expected %s).", this.streamFormat.sampleMimeType, MimeTypes.APPLICATION_MEDIA3_CUES);
    }

    private void clearOutput() {
        updateOutput(new CueGroup(ImmutableList.of(), getPresentationTimeUs(this.lastRendererPositionUs)));
    }

    private long getCurrentEventTimeUs(long j7) {
        int nextEventTimeIndex = this.subtitle.getNextEventTimeIndex(j7);
        if (nextEventTimeIndex == 0 || this.subtitle.getEventTimeCount() == 0) {
            return this.subtitle.timeUs;
        }
        if (nextEventTimeIndex != -1) {
            return this.subtitle.getEventTime(nextEventTimeIndex - 1);
        }
        return this.subtitle.getEventTime(r2.getEventTimeCount() - 1);
    }

    private long getNextEventTime() {
        if (this.nextSubtitleEventIndex == -1) {
            return Long.MAX_VALUE;
        }
        v.checkNotNull(this.subtitle);
        if (this.nextSubtitleEventIndex >= this.subtitle.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.subtitle.getEventTime(this.nextSubtitleEventIndex);
    }

    private long getPresentationTimeUs(long j7) {
        v.checkState(j7 != C.TIME_UNSET);
        return j7 - getStreamOffsetUs();
    }

    private void handleDecoderError(SubtitleDecoderException subtitleDecoderException) {
        Log.e(TAG, "Subtitle decoding failed. streamFormat=" + this.streamFormat, subtitleDecoderException);
        clearOutput();
        replaceSubtitleDecoder();
    }

    private static boolean hasEventsAfter(i iVar, long j7) {
        return iVar != null && iVar.getEventTimeCount() > 0 && iVar.getEventTime(iVar.getEventTimeCount() - 1) > j7;
    }

    private void initSubtitleDecoder() {
        this.waitingForKeyFrame = true;
        j createDecoder = this.subtitleDecoderFactory.createDecoder((Format) v.checkNotNull(this.streamFormat));
        this.subtitleDecoder = createDecoder;
        createDecoder.setOutputStartTimeUs(getLastResetPositionUs());
    }

    private void invokeUpdateOutputInternal(CueGroup cueGroup) {
        this.output.onCues(cueGroup.cues);
        this.output.onCues(cueGroup);
    }

    private static boolean isCuesWithTiming(Format format) {
        return Objects.equals(format.sampleMimeType, MimeTypes.APPLICATION_MEDIA3_CUES);
    }

    private boolean readAndDecodeCuesWithTiming(long j7) {
        if (this.inputStreamEnded || readSource(this.formatHolder, this.cueDecoderInputBuffer, 0) != -4) {
            return false;
        }
        if (this.cueDecoderInputBuffer.isEndOfStream()) {
            this.inputStreamEnded = true;
            return false;
        }
        this.cueDecoderInputBuffer.flip();
        ByteBuffer byteBuffer = (ByteBuffer) v.checkNotNull(this.cueDecoderInputBuffer.data);
        c decode = this.cueDecoder.decode(this.cueDecoderInputBuffer.timeUs, byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
        this.cueDecoderInputBuffer.clear();
        return this.cuesResolver.addCues(decode, j7);
    }

    private void releaseSubtitleBuffers() {
        this.nextSubtitleInputBuffer = null;
        this.nextSubtitleEventIndex = -1;
        n nVar = this.subtitle;
        if (nVar != null) {
            nVar.release();
            this.subtitle = null;
        }
        n nVar2 = this.nextSubtitle;
        if (nVar2 != null) {
            nVar2.release();
            this.nextSubtitle = null;
        }
    }

    private void releaseSubtitleDecoder() {
        releaseSubtitleBuffers();
        ((j) v.checkNotNull(this.subtitleDecoder)).release();
        this.subtitleDecoder = null;
        this.decoderReplacementState = 0;
    }

    private void renderFromCuesWithTiming(long j7) {
        boolean readAndDecodeCuesWithTiming = readAndDecodeCuesWithTiming(j7);
        long nextCueChangeTimeUs = this.cuesResolver.getNextCueChangeTimeUs(this.lastRendererPositionUs);
        if (nextCueChangeTimeUs == Long.MIN_VALUE && this.inputStreamEnded && !readAndDecodeCuesWithTiming) {
            this.outputStreamEnded = true;
        }
        if (nextCueChangeTimeUs != Long.MIN_VALUE && nextCueChangeTimeUs <= j7) {
            readAndDecodeCuesWithTiming = true;
        }
        if (readAndDecodeCuesWithTiming) {
            ImmutableList<Cue> cuesAtTimeUs = this.cuesResolver.getCuesAtTimeUs(j7);
            long previousCueChangeTimeUs = this.cuesResolver.getPreviousCueChangeTimeUs(j7);
            updateOutput(new CueGroup(cuesAtTimeUs, getPresentationTimeUs(previousCueChangeTimeUs)));
            this.cuesResolver.discardCuesBeforeTimeUs(previousCueChangeTimeUs);
        }
        this.lastRendererPositionUs = j7;
    }

    private void renderFromSubtitles(long j7) {
        boolean z6;
        this.lastRendererPositionUs = j7;
        if (this.nextSubtitle == null) {
            ((j) v.checkNotNull(this.subtitleDecoder)).setPositionUs(j7);
            try {
                this.nextSubtitle = (n) ((j) v.checkNotNull(this.subtitleDecoder)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e3) {
                handleDecoderError(e3);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.subtitle != null) {
            long nextEventTime = getNextEventTime();
            z6 = false;
            while (nextEventTime <= j7) {
                this.nextSubtitleEventIndex++;
                nextEventTime = getNextEventTime();
                z6 = true;
            }
        } else {
            z6 = false;
        }
        n nVar = this.nextSubtitle;
        if (nVar != null) {
            if (nVar.isEndOfStream()) {
                if (!z6 && getNextEventTime() == Long.MAX_VALUE) {
                    if (this.decoderReplacementState == 2) {
                        replaceSubtitleDecoder();
                    } else {
                        releaseSubtitleBuffers();
                        this.outputStreamEnded = true;
                    }
                }
            } else if (nVar.timeUs <= j7) {
                n nVar2 = this.subtitle;
                if (nVar2 != null) {
                    nVar2.release();
                }
                this.nextSubtitleEventIndex = nVar.getNextEventTimeIndex(j7);
                this.subtitle = nVar;
                this.nextSubtitle = null;
                z6 = true;
            }
        }
        if (z6) {
            v.checkNotNull(this.subtitle);
            updateOutput(new CueGroup(this.subtitle.getCues(j7), getPresentationTimeUs(getCurrentEventTimeUs(j7))));
        }
        if (this.decoderReplacementState == 2) {
            return;
        }
        while (!this.inputStreamEnded) {
            try {
                m mVar = this.nextSubtitleInputBuffer;
                if (mVar == null) {
                    mVar = (m) ((j) v.checkNotNull(this.subtitleDecoder)).dequeueInputBuffer();
                    if (mVar == null) {
                        return;
                    } else {
                        this.nextSubtitleInputBuffer = mVar;
                    }
                }
                if (this.decoderReplacementState == 1) {
                    mVar.setFlags(4);
                    ((j) v.checkNotNull(this.subtitleDecoder)).queueInputBuffer(mVar);
                    this.nextSubtitleInputBuffer = null;
                    this.decoderReplacementState = 2;
                    return;
                }
                int readSource = readSource(this.formatHolder, mVar, 0);
                if (readSource == -4) {
                    if (mVar.isEndOfStream()) {
                        this.inputStreamEnded = true;
                        this.waitingForKeyFrame = false;
                    } else {
                        Format format = this.formatHolder.format;
                        if (format == null) {
                            return;
                        }
                        mVar.f3271b = format.subsampleOffsetUs;
                        mVar.flip();
                        this.waitingForKeyFrame &= !mVar.isKeyFrame();
                    }
                    if (!this.waitingForKeyFrame) {
                        ((j) v.checkNotNull(this.subtitleDecoder)).queueInputBuffer(mVar);
                        this.nextSubtitleInputBuffer = null;
                    }
                } else if (readSource == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e7) {
                handleDecoderError(e7);
                return;
            }
        }
    }

    private void replaceSubtitleDecoder() {
        releaseSubtitleDecoder();
        initSubtitleDecoder();
    }

    private void updateOutput(CueGroup cueGroup) {
        Handler handler = this.outputHandler;
        if (handler != null) {
            handler.obtainMessage(1, cueGroup).sendToTarget();
        } else {
            invokeUpdateOutputInternal(cueGroup);
        }
    }

    @Deprecated
    public void experimentalSetLegacyDecodingEnabled(boolean z6) {
        this.legacyDecodingEnabled = z6;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public String getName() {
        return TAG;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        invokeUpdateOutputInternal((CueGroup) message.obj);
        return true;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        Format format = this.streamFormat;
        if (format == null) {
            return true;
        }
        if (!isCuesWithTiming((Format) v.checkNotNull(format))) {
            return !this.outputStreamEnded && (!this.inputStreamEnded || hasEventsAfter(this.subtitle, this.lastRendererPositionUs) || hasEventsAfter(this.nextSubtitle, this.lastRendererPositionUs) || this.nextSubtitleInputBuffer == null);
        }
        if (((CuesResolver) v.checkNotNull(this.cuesResolver)).getNextCueChangeTimeUs(this.lastRendererPositionUs) != Long.MIN_VALUE) {
            return true;
        }
        try {
            maybeThrowStreamError();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onDisabled() {
        this.streamFormat = null;
        this.finalStreamEndPositionUs = C.TIME_UNSET;
        clearOutput();
        this.lastRendererPositionUs = C.TIME_UNSET;
        if (this.subtitleDecoder != null) {
            releaseSubtitleDecoder();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onPositionReset(long j7, boolean z6, boolean z7) {
        this.lastRendererPositionUs = j7;
        CuesResolver cuesResolver = this.cuesResolver;
        if (cuesResolver != null) {
            cuesResolver.clear();
        }
        clearOutput();
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.finalStreamEndPositionUs = C.TIME_UNSET;
        Format format = this.streamFormat;
        if (format == null || isCuesWithTiming(format)) {
            return;
        }
        if (this.decoderReplacementState != 0) {
            replaceSubtitleDecoder();
            return;
        }
        releaseSubtitleBuffers();
        j jVar = (j) v.checkNotNull(this.subtitleDecoder);
        jVar.flush();
        jVar.setOutputStartTimeUs(getLastResetPositionUs());
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j7, long j8, MediaSource.MediaPeriodId mediaPeriodId) {
        Format format = formatArr[0];
        this.streamFormat = format;
        if (isCuesWithTiming(format)) {
            this.cuesResolver = this.streamFormat.cueReplacementBehavior == 1 ? new MergingCuesResolver() : new ReplacingCuesResolver();
            return;
        }
        assertLegacyDecodingEnabledIfRequired();
        if (this.subtitleDecoder != null) {
            this.decoderReplacementState = 1;
        } else {
            initSubtitleDecoder();
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j7, long j8) {
        if (isCurrentStreamFinal()) {
            long j9 = this.finalStreamEndPositionUs;
            if (j9 != C.TIME_UNSET && j7 >= j9) {
                releaseSubtitleBuffers();
                this.outputStreamEnded = true;
            }
        }
        if (this.outputStreamEnded) {
            return;
        }
        if (isCuesWithTiming((Format) v.checkNotNull(this.streamFormat))) {
            v.checkNotNull(this.cuesResolver);
            renderFromCuesWithTiming(j7);
        } else {
            assertLegacyDecodingEnabledIfRequired();
            renderFromSubtitles(j7);
        }
    }

    public void setFinalStreamEndPositionUs(long j7) {
        v.checkState(isCurrentStreamFinal());
        this.finalStreamEndPositionUs = j7;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int supportsFormat(Format format) {
        if (isCuesWithTiming(format) || this.subtitleDecoderFactory.supportsFormat(format)) {
            return X.c(format.cryptoType == 0 ? 4 : 2);
        }
        return MimeTypes.isText(format.sampleMimeType) ? X.c(1) : X.c(0);
    }

    public TextRenderer(TextOutput textOutput, Looper looper, SubtitleDecoderFactory subtitleDecoderFactory) {
        super(3);
        this.output = (TextOutput) v.checkNotNull(textOutput);
        this.outputHandler = looper == null ? null : Util.createHandler(looper, this);
        this.subtitleDecoderFactory = subtitleDecoderFactory;
        this.cueDecoder = new S0.a();
        this.cueDecoderInputBuffer = new C1665f(1);
        this.formatHolder = new FormatHolder();
        this.finalStreamEndPositionUs = C.TIME_UNSET;
        this.lastRendererPositionUs = C.TIME_UNSET;
        this.legacyDecodingEnabled = false;
    }
}
