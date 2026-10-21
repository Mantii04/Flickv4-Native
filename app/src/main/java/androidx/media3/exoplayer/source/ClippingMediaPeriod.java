package androidx.media3.exoplayer.source;

import P3.v;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.ClippingMediaSource;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import java.io.IOException;
import java.util.List;
import u0.C1665f;

@UnstableApi
/* loaded from: classes.dex */
public final class ClippingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private MediaPeriod.Callback callback;
    private ClippingMediaSource.IllegalClippingException clippingError;
    long endUs;
    private long lastReportedDiscontinuityUs;
    public final MediaPeriod mediaPeriod;
    private long pendingInitialDiscontinuityPositionUs;
    private ClippingSampleStream[] sampleStreams = new ClippingSampleStream[0];
    long startUs;

    public final class ClippingSampleStream implements SampleStream {
        public final SampleStream childStream;
        private boolean sentEos;

        public ClippingSampleStream(SampleStream sampleStream) {
            this.childStream = sampleStream;
        }

        public void clearSentEos() {
            this.sentEos = false;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return !ClippingMediaPeriod.this.isPendingInitialDiscontinuity() && this.childStream.isReady();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.childStream.maybeThrowError();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int readData(FormatHolder formatHolder, C1665f c1665f, int i2) {
            if (ClippingMediaPeriod.this.isPendingInitialDiscontinuity()) {
                return -3;
            }
            if (this.sentEos) {
                c1665f.setFlags(4);
                return -4;
            }
            long bufferedPositionUs = ClippingMediaPeriod.this.getBufferedPositionUs();
            int readData = this.childStream.readData(formatHolder, c1665f, i2);
            if (readData == -5) {
                Format format = (Format) v.checkNotNull(formatHolder.format);
                int i7 = format.encoderDelay;
                if (i7 != 0 || format.encoderPadding != 0) {
                    ClippingMediaPeriod clippingMediaPeriod = ClippingMediaPeriod.this;
                    if (clippingMediaPeriod.startUs != 0) {
                        i7 = 0;
                    }
                    formatHolder.format = format.buildUpon().setEncoderDelay(i7).setEncoderPadding(clippingMediaPeriod.endUs == Long.MIN_VALUE ? format.encoderPadding : 0).build();
                }
                return -5;
            }
            long j7 = ClippingMediaPeriod.this.endUs;
            if (j7 == Long.MIN_VALUE || ((readData != -4 || c1665f.timeUs < j7) && !(readData == -3 && bufferedPositionUs == Long.MIN_VALUE && !c1665f.waitingForKeys))) {
                return readData;
            }
            c1665f.clear();
            c1665f.setFlags(4);
            this.sentEos = true;
            return -4;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j7) {
            if (ClippingMediaPeriod.this.isPendingInitialDiscontinuity()) {
                return -3;
            }
            return this.childStream.skipData(j7);
        }
    }

    public ClippingMediaPeriod(MediaPeriod mediaPeriod, boolean z6, long j7, long j8) {
        this.mediaPeriod = mediaPeriod;
        this.pendingInitialDiscontinuityPositionUs = z6 ? j7 : -9223372036854775807L;
        this.lastReportedDiscontinuityUs = C.TIME_UNSET;
        this.startUs = j7;
        this.endUs = j8;
    }

    private SeekParameters clipSeekParameters(long j7, SeekParameters seekParameters) {
        long constrainValue = Util.constrainValue(seekParameters.toleranceBeforeUs, 0L, j7 - this.startUs);
        long j8 = seekParameters.toleranceAfterUs;
        long j9 = this.endUs;
        long constrainValue2 = Util.constrainValue(j8, 0L, j9 == Long.MIN_VALUE ? Long.MAX_VALUE : j9 - j7);
        return (constrainValue == seekParameters.toleranceBeforeUs && constrainValue2 == seekParameters.toleranceAfterUs) ? seekParameters : new SeekParameters(constrainValue, constrainValue2);
    }

    private static long enforceClippingRange(long j7, long j8, long j9) {
        long max = Math.max(j7, j8);
        return j9 != Long.MIN_VALUE ? Math.min(max, j9) : max;
    }

    private static boolean shouldKeepInitialDiscontinuity(long j7, long j8, ExoTrackSelection[] exoTrackSelectionArr) {
        if (j7 < j8) {
            return true;
        }
        if (j7 != 0) {
            for (ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
                if (exoTrackSelection != null) {
                    Format selectedFormat = exoTrackSelection.getSelectedFormat();
                    if (!MimeTypes.allSamplesAreSyncSamples(selectedFormat.sampleMimeType, selectedFormat.codecs)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        return this.mediaPeriod.continueLoading(loadingInfo);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j7, boolean z6) {
        this.mediaPeriod.discardBuffer(j7, z6);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j7, SeekParameters seekParameters) {
        long j8 = this.startUs;
        if (j7 == j8) {
            return j8;
        }
        return this.mediaPeriod.getAdjustedSeekPositionUs(j7, clipSeekParameters(j7, seekParameters));
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j7 = this.endUs;
            if (j7 == Long.MIN_VALUE || bufferedPositionUs < j7) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j7 = this.endUs;
            if (j7 == Long.MIN_VALUE || nextLoadPositionUs < j7) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public List<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
        return this.mediaPeriod.getStreamKeys(list);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.mediaPeriod.getTrackGroups();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.mediaPeriod.isLoading();
    }

    public boolean isPendingInitialDiscontinuity() {
        return this.pendingInitialDiscontinuityPositionUs != C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        ClippingMediaSource.IllegalClippingException illegalClippingException = this.clippingError;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        this.mediaPeriod.maybeThrowPrepareError();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        if (this.clippingError != null) {
            return;
        }
        ((MediaPeriod.Callback) v.checkNotNull(this.callback)).onPrepared(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j7) {
        this.callback = callback;
        this.mediaPeriod.prepare(this, j7);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        if (isPendingInitialDiscontinuity()) {
            long j7 = this.pendingInitialDiscontinuityPositionUs;
            this.pendingInitialDiscontinuityPositionUs = C.TIME_UNSET;
            this.lastReportedDiscontinuityUs = j7;
            long readDiscontinuity = readDiscontinuity();
            return readDiscontinuity != C.TIME_UNSET ? readDiscontinuity : j7;
        }
        long readDiscontinuity2 = this.mediaPeriod.readDiscontinuity();
        if (readDiscontinuity2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long enforceClippingRange = enforceClippingRange(readDiscontinuity2, this.startUs, this.endUs);
        if (enforceClippingRange == this.lastReportedDiscontinuityUs) {
            return C.TIME_UNSET;
        }
        this.lastReportedDiscontinuityUs = enforceClippingRange;
        return enforceClippingRange;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j7) {
        this.mediaPeriod.reevaluateBuffer(j7);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j7) {
        this.pendingInitialDiscontinuityPositionUs = C.TIME_UNSET;
        for (ClippingSampleStream clippingSampleStream : this.sampleStreams) {
            if (clippingSampleStream != null) {
                clippingSampleStream.clearSentEos();
            }
        }
        return enforceClippingRange(this.mediaPeriod.seekToUs(j7), this.startUs, this.endUs);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j7) {
        this.sampleStreams = new ClippingSampleStream[sampleStreamArr.length];
        SampleStream[] sampleStreamArr2 = new SampleStream[sampleStreamArr.length];
        int i2 = 0;
        while (true) {
            SampleStream sampleStream = null;
            if (i2 >= sampleStreamArr.length) {
                break;
            }
            ClippingSampleStream[] clippingSampleStreamArr = this.sampleStreams;
            ClippingSampleStream clippingSampleStream = (ClippingSampleStream) sampleStreamArr[i2];
            clippingSampleStreamArr[i2] = clippingSampleStream;
            if (clippingSampleStream != null) {
                sampleStream = clippingSampleStream.childStream;
            }
            sampleStreamArr2[i2] = sampleStream;
            i2++;
        }
        long selectTracks = this.mediaPeriod.selectTracks(exoTrackSelectionArr, zArr, sampleStreamArr2, zArr2, j7);
        long enforceClippingRange = enforceClippingRange(selectTracks, j7, this.endUs);
        this.pendingInitialDiscontinuityPositionUs = (isPendingInitialDiscontinuity() && shouldKeepInitialDiscontinuity(selectTracks, j7, exoTrackSelectionArr)) ? enforceClippingRange : C.TIME_UNSET;
        for (int i7 = 0; i7 < sampleStreamArr.length; i7++) {
            SampleStream sampleStream2 = sampleStreamArr2[i7];
            if (sampleStream2 == null) {
                this.sampleStreams[i7] = null;
            } else {
                ClippingSampleStream[] clippingSampleStreamArr2 = this.sampleStreams;
                ClippingSampleStream clippingSampleStream2 = clippingSampleStreamArr2[i7];
                if (clippingSampleStream2 == null || clippingSampleStream2.childStream != sampleStream2) {
                    clippingSampleStreamArr2[i7] = new ClippingSampleStream(sampleStream2);
                }
            }
            sampleStreamArr[i7] = this.sampleStreams[i7];
        }
        return enforceClippingRange;
    }

    public void setClippingError(ClippingMediaSource.IllegalClippingException illegalClippingException) {
        this.clippingError = illegalClippingException;
    }

    public void updateClipping(long j7, long j8) {
        this.startUs = j7;
        this.endUs = j8;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) v.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }
}
