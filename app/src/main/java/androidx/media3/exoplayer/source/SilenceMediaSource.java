package androidx.media3.exoplayer.source;

import P3.v;
import android.net.Uri;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.ArrayList;
import java.util.List;
import u0.C1665f;

@UnstableApi
/* loaded from: classes.dex */
public final class SilenceMediaSource extends BaseMediaSource {
    private static final int CHANNEL_COUNT = 2;
    private static final Format FORMAT;
    public static final String MEDIA_ID = "SilenceMediaSource";
    private static final MediaItem MEDIA_ITEM;
    private static final int PCM_ENCODING = 2;
    private static final int SAMPLE_RATE_HZ = 44100;
    private static final byte[] SILENCE_SAMPLE;
    private final long durationUs;
    private MediaItem mediaItem;

    public static final class Factory {
        private long durationUs;
        private Object tag;

        public SilenceMediaSource createMediaSource() {
            v.checkState(this.durationUs > 0);
            return new SilenceMediaSource(this.durationUs, SilenceMediaSource.MEDIA_ITEM.buildUpon().setTag(this.tag).build());
        }

        public Factory setDurationUs(long j7) {
            this.durationUs = j7;
            return this;
        }

        public Factory setTag(Object obj) {
            this.tag = obj;
            return this;
        }
    }

    public static final class SilenceMediaPeriod implements MediaPeriod {
        private static final TrackGroupArray TRACKS = new TrackGroupArray(new TrackGroup(SilenceMediaSource.FORMAT));
        private final long durationUs;
        private final ArrayList<SampleStream> sampleStreams = new ArrayList<>();

        public SilenceMediaPeriod(long j7) {
            this.durationUs = j7;
        }

        private long constrainSeekPosition(long j7) {
            return Util.constrainValue(j7, 0L, this.durationUs);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean continueLoading(LoadingInfo loadingInfo) {
            return false;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void discardBuffer(long j7, boolean z6) {
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long getAdjustedSeekPositionUs(long j7, SeekParameters seekParameters) {
            return constrainSeekPosition(j7);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return Long.MIN_VALUE;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public final /* synthetic */ List getStreamKeys(List list) {
            return f.a(this, list);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return TRACKS;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean isLoading() {
            return false;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void maybeThrowPrepareError() {
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void prepare(MediaPeriod.Callback callback, long j7) {
            callback.onPrepared(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long readDiscontinuity() {
            return C.TIME_UNSET;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public void reevaluateBuffer(long j7) {
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long seekToUs(long j7) {
            long constrainSeekPosition = constrainSeekPosition(j7);
            for (int i2 = 0; i2 < this.sampleStreams.size(); i2++) {
                ((SilenceSampleStream) this.sampleStreams.get(i2)).seekTo(constrainSeekPosition);
            }
            return constrainSeekPosition;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j7) {
            long constrainSeekPosition = constrainSeekPosition(j7);
            for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
                SampleStream sampleStream = sampleStreamArr[i2];
                if (sampleStream != null && (exoTrackSelectionArr[i2] == null || !zArr[i2])) {
                    this.sampleStreams.remove(sampleStream);
                    sampleStreamArr[i2] = null;
                }
                if (sampleStreamArr[i2] == null && exoTrackSelectionArr[i2] != null) {
                    SilenceSampleStream silenceSampleStream = new SilenceSampleStream(this.durationUs);
                    silenceSampleStream.seekTo(constrainSeekPosition);
                    this.sampleStreams.add(silenceSampleStream);
                    sampleStreamArr[i2] = silenceSampleStream;
                    zArr2[i2] = true;
                }
            }
            return constrainSeekPosition;
        }
    }

    public static final class SilenceSampleStream implements SampleStream {
        private final long durationBytes;
        private long positionBytes;
        private boolean sentFormat;

        public SilenceSampleStream(long j7) {
            this.durationBytes = SilenceMediaSource.getAudioByteCount(j7);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return true;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() {
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int readData(FormatHolder formatHolder, C1665f c1665f, int i2) {
            if (!this.sentFormat || (i2 & 2) != 0) {
                formatHolder.format = SilenceMediaSource.FORMAT;
                this.sentFormat = true;
                return -5;
            }
            long j7 = this.durationBytes;
            long j8 = this.positionBytes;
            long j9 = j7 - j8;
            if (j9 == 0) {
                c1665f.addFlag(4);
                return -4;
            }
            c1665f.timeUs = SilenceMediaSource.getAudioPositionUs(j8);
            c1665f.addFlag(1);
            int min = (int) Math.min(SilenceMediaSource.SILENCE_SAMPLE.length, j9);
            if ((i2 & 4) == 0) {
                c1665f.ensureSpaceForWrite(min);
                c1665f.data.put(SilenceMediaSource.SILENCE_SAMPLE, 0, min);
            }
            if ((i2 & 1) == 0) {
                this.positionBytes += min;
            }
            return -4;
        }

        public void seekTo(long j7) {
            this.positionBytes = Util.constrainValue(SilenceMediaSource.getAudioByteCount(j7), 0L, this.durationBytes);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j7) {
            long j8 = this.positionBytes;
            seekTo(j7);
            return (int) ((this.positionBytes - j8) / SilenceMediaSource.SILENCE_SAMPLE.length);
        }
    }

    static {
        Format build = new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_RAW).setChannelCount(2).setSampleRate(SAMPLE_RATE_HZ).setPcmEncoding(2).build();
        FORMAT = build;
        MEDIA_ITEM = new MediaItem.Builder().setMediaId(MEDIA_ID).setUri(Uri.EMPTY).setMimeType(build.sampleMimeType).build();
        SILENCE_SAMPLE = new byte[Util.getPcmFrameSize(2, 2) * 1024];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getAudioByteCount(long j7) {
        return Util.getPcmFrameSize(2, 2) * Util.durationUsToSampleCount(j7, SAMPLE_RATE_HZ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getAudioPositionUs(long j7) {
        return Util.sampleCountToDurationUs(j7 / Util.getPcmFrameSize(2, 2), SAMPLE_RATE_HZ);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        return true;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j7) {
        return new SilenceMediaPeriod(this.durationUs);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public synchronized MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public void prepareSourceInternal(TransferListener transferListener) {
        refreshSourceInfo(new SinglePeriodTimeline(this.durationUs, true, false, false, (Object) null, getMediaItem()));
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public void releaseSourceInternal() {
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public synchronized void updateMediaItem(MediaItem mediaItem) {
        this.mediaItem = mediaItem;
    }

    public SilenceMediaSource(long j7) {
        this(j7, MEDIA_ITEM);
    }

    private SilenceMediaSource(long j7, MediaItem mediaItem) {
        v.checkArgument(j7 >= 0);
        this.durationUs = j7;
        this.mediaItem = mediaItem;
    }
}
