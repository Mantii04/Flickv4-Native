package androidx.media3.exoplayer.source;

import P3.v;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.ForwardingTrackSelection;
import com.google.common.collect.B;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;

/* loaded from: classes.dex */
final class MergingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private MediaPeriod.Callback callback;
    private SequenceableLoader compositeSequenceableLoader;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private final MediaPeriod[] periods;
    private final boolean[] periodsWithTimeOffsets;
    private TrackGroupArray trackGroups;
    private final ArrayList<MediaPeriod> childrenPendingPreparation = new ArrayList<>();
    private final HashMap<TrackGroup, TrackGroup> childTrackGroupByMergedTrackGroup = new HashMap<>();
    private final IdentityHashMap<SampleStream, Integer> streamPeriodIndices = new IdentityHashMap<>();
    private MediaPeriod[] enabledPeriods = new MediaPeriod[0];

    public static final class MergingMediaPeriodTrackSelection extends ForwardingTrackSelection {
        private final TrackGroup trackGroup;

        public MergingMediaPeriodTrackSelection(ExoTrackSelection exoTrackSelection, TrackGroup trackGroup) {
            super(exoTrackSelection);
            this.trackGroup = trackGroup;
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection
        public boolean equals(Object obj) {
            if (super.equals(obj) && (obj instanceof MergingMediaPeriodTrackSelection)) {
                return this.trackGroup.equals(((MergingMediaPeriodTrackSelection) obj).trackGroup);
            }
            return false;
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.TrackSelection
        public Format getFormat(int i2) {
            return this.trackGroup.getFormat(getWrappedInstance().getIndexInTrackGroup(i2));
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public Format getSelectedFormat() {
            return this.trackGroup.getFormat(getWrappedInstance().getSelectedIndexInTrackGroup());
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.TrackSelection
        public TrackGroup getTrackGroup() {
            return this.trackGroup;
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection
        public int hashCode() {
            return this.trackGroup.hashCode() + (super.hashCode() * 31);
        }

        @Override // androidx.media3.exoplayer.trackselection.ForwardingTrackSelection, androidx.media3.exoplayer.trackselection.TrackSelection
        public int indexOf(Format format) {
            return getWrappedInstance().indexOf(this.trackGroup.indexOf(format));
        }
    }

    public MergingMediaPeriod(CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, long[] jArr, MediaPeriod... mediaPeriodArr) {
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.periods = mediaPeriodArr;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.empty();
        this.periodsWithTimeOffsets = new boolean[mediaPeriodArr.length];
        for (int i2 = 0; i2 < mediaPeriodArr.length; i2++) {
            long j7 = jArr[i2];
            if (j7 != 0) {
                this.periodsWithTimeOffsets[i2] = true;
                this.periods[i2] = new TimeOffsetMediaPeriod(mediaPeriodArr[i2], j7);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$selectTracks$0(MediaPeriod mediaPeriod) {
        return mediaPeriod.getTrackGroups().getTrackTypes();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean continueLoading(LoadingInfo loadingInfo) {
        if (this.childrenPendingPreparation.isEmpty()) {
            return this.compositeSequenceableLoader.continueLoading(loadingInfo);
        }
        int size = this.childrenPendingPreparation.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.childrenPendingPreparation.get(i2).continueLoading(loadingInfo);
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void discardBuffer(long j7, boolean z6) {
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            mediaPeriod.discardBuffer(j7, z6);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j7, SeekParameters seekParameters) {
        MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
        return (mediaPeriodArr.length > 0 ? mediaPeriodArr[0] : this.periods[0]).getAdjustedSeekPositionUs(j7, seekParameters);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    public MediaPeriod getChildPeriod(int i2) {
        return this.periodsWithTimeOffsets[i2] ? ((TimeOffsetMediaPeriod) this.periods[i2]).getWrappedMediaPeriod() : this.periods[i2];
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final /* synthetic */ List getStreamKeys(List list) {
        return f.a(this, list);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return (TrackGroupArray) v.checkNotNull(this.trackGroups);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.maybeThrowPrepareError();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.childrenPendingPreparation.remove(mediaPeriod);
        if (!this.childrenPendingPreparation.isEmpty()) {
            return;
        }
        int i2 = 0;
        for (MediaPeriod mediaPeriod2 : this.periods) {
            i2 += mediaPeriod2.getTrackGroups().length;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[i2];
        int i7 = 0;
        int i8 = 0;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.periods;
            if (i7 >= mediaPeriodArr.length) {
                this.trackGroups = new TrackGroupArray(trackGroupArr);
                ((MediaPeriod.Callback) v.checkNotNull(this.callback)).onPrepared(this);
                return;
            }
            TrackGroupArray trackGroups = mediaPeriodArr[i7].getTrackGroups();
            int i9 = trackGroups.length;
            int i10 = 0;
            while (i10 < i9) {
                TrackGroup trackGroup = trackGroups.get(i10);
                Format[] formatArr = new Format[trackGroup.length];
                for (int i11 = 0; i11 < trackGroup.length; i11++) {
                    Format format = trackGroup.getFormat(i11);
                    Format.Builder buildUpon = format.buildUpon();
                    StringBuilder sb = new StringBuilder();
                    sb.append(i7);
                    sb.append(":");
                    String str = format.id;
                    if (str == null) {
                        str = "";
                    }
                    sb.append(str);
                    formatArr[i11] = buildUpon.setId(sb.toString()).build();
                }
                TrackGroup trackGroup2 = new TrackGroup(i7 + ":" + trackGroup.id, formatArr);
                this.childTrackGroupByMergedTrackGroup.put(trackGroup2, trackGroup);
                trackGroupArr[i8] = trackGroup2;
                i10++;
                i8++;
            }
            i7++;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j7) {
        this.callback = callback;
        Collections.addAll(this.childrenPendingPreparation, this.periods);
        for (MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.prepare(this, j7);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long readDiscontinuity() {
        long j7 = -9223372036854775807L;
        for (MediaPeriod mediaPeriod : this.enabledPeriods) {
            long readDiscontinuity = mediaPeriod.readDiscontinuity();
            if (readDiscontinuity != C.TIME_UNSET) {
                if (j7 == C.TIME_UNSET) {
                    for (MediaPeriod mediaPeriod2 : this.enabledPeriods) {
                        if (mediaPeriod2 == mediaPeriod) {
                            break;
                        }
                        if (mediaPeriod2.seekToUs(readDiscontinuity) != readDiscontinuity) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j7 = readDiscontinuity;
                } else if (readDiscontinuity != j7) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j7 != C.TIME_UNSET && mediaPeriod.seekToUs(j7) != j7) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j7;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
    public void reevaluateBuffer(long j7) {
        this.compositeSequenceableLoader.reevaluateBuffer(j7);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long seekToUs(long j7) {
        long seekToUs = this.enabledPeriods[0].seekToUs(j7);
        int i2 = 1;
        while (true) {
            MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
            if (i2 >= mediaPeriodArr.length) {
                return seekToUs;
            }
            if (mediaPeriodArr[i2].seekToUs(seekToUs) != seekToUs) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i2++;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j7) {
        int[] iArr = new int[exoTrackSelectionArr.length];
        int[] iArr2 = new int[exoTrackSelectionArr.length];
        int i2 = 0;
        for (int i7 = 0; i7 < exoTrackSelectionArr.length; i7++) {
            SampleStream sampleStream = sampleStreamArr[i7];
            Integer num = sampleStream == null ? null : this.streamPeriodIndices.get(sampleStream);
            iArr[i7] = num == null ? -1 : num.intValue();
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i7];
            if (exoTrackSelection != null) {
                String str = exoTrackSelection.getTrackGroup().id;
                iArr2[i7] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr2[i7] = -1;
            }
        }
        this.streamPeriodIndices.clear();
        int length = exoTrackSelectionArr.length;
        SampleStream[] sampleStreamArr2 = new SampleStream[length];
        SampleStream[] sampleStreamArr3 = new SampleStream[exoTrackSelectionArr.length];
        ExoTrackSelection[] exoTrackSelectionArr2 = new ExoTrackSelection[exoTrackSelectionArr.length];
        ArrayList arrayList = new ArrayList(this.periods.length);
        long j8 = j7;
        int i8 = 0;
        while (i8 < this.periods.length) {
            for (int i9 = i2; i9 < exoTrackSelectionArr.length; i9++) {
                sampleStreamArr3[i9] = iArr[i9] == i8 ? sampleStreamArr[i9] : null;
                if (iArr2[i9] == i8) {
                    ExoTrackSelection exoTrackSelection2 = (ExoTrackSelection) v.checkNotNull(exoTrackSelectionArr[i9]);
                    exoTrackSelectionArr2[i9] = new MergingMediaPeriodTrackSelection(exoTrackSelection2, (TrackGroup) v.checkNotNull(this.childTrackGroupByMergedTrackGroup.get(exoTrackSelection2.getTrackGroup())));
                } else {
                    exoTrackSelectionArr2[i9] = null;
                }
            }
            int i10 = i8;
            long selectTracks = this.periods[i8].selectTracks(exoTrackSelectionArr2, zArr, sampleStreamArr3, zArr2, j8);
            if (i10 == 0) {
                j8 = selectTracks;
            } else if (selectTracks != j8) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z6 = false;
            for (int i11 = 0; i11 < exoTrackSelectionArr.length; i11++) {
                if (iArr2[i11] == i10) {
                    SampleStream sampleStream2 = (SampleStream) v.checkNotNull(sampleStreamArr3[i11]);
                    sampleStreamArr2[i11] = sampleStreamArr3[i11];
                    this.streamPeriodIndices.put(sampleStream2, Integer.valueOf(i10));
                    z6 = true;
                } else if (iArr[i11] == i10) {
                    v.checkState(sampleStreamArr3[i11] == null);
                }
            }
            if (z6) {
                arrayList.add(this.periods[i10]);
            }
            i8 = i10 + 1;
            i2 = 0;
        }
        int i12 = i2;
        System.arraycopy(sampleStreamArr2, i12, sampleStreamArr, i12, length);
        this.enabledPeriods = (MediaPeriod[]) arrayList.toArray(new MediaPeriod[i12]);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.create(arrayList, B.transform(arrayList, new k(0)));
        return j8;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        ((MediaPeriod.Callback) v.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }
}
