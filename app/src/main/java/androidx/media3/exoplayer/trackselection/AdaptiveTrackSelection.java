package androidx.media3.exoplayer.trackselection;

import Q3.A;
import Q3.C0248s;
import Q3.G;
import Q3.a0;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import com.google.common.collect.ImmutableList;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public class AdaptiveTrackSelection extends BaseTrackSelection {
    public static final float DEFAULT_BANDWIDTH_FRACTION = 0.7f;
    public static final float DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE = 0.75f;
    public static final int DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS = 25000;
    public static final int DEFAULT_MAX_HEIGHT_TO_DISCARD = 719;
    public static final int DEFAULT_MAX_WIDTH_TO_DISCARD = 1279;
    public static final int DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS = 10000;
    public static final int DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS = 25000;
    private static final long MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS = 1000;
    private static final String TAG = "AdaptiveTrackSelection";
    private final ImmutableList<AdaptationCheckpoint> adaptationCheckpoints;
    private final float bandwidthFraction;
    private final BandwidthMeter bandwidthMeter;
    private final float bufferedFractionToLiveEdgeForQualityIncrease;
    private final Clock clock;
    private MediaChunk lastBufferEvaluationMediaChunk;
    private long lastBufferEvaluationMs;
    private long latestBitrateEstimate;
    private final long maxDurationForQualityDecreaseUs;
    private final int maxHeightToDiscard;
    private final int maxWidthToDiscard;
    private final long minDurationForQualityIncreaseUs;
    private final long minDurationToRetainAfterDiscardUs;
    private float playbackSpeed;
    private int reason;
    private int selectedIndex;

    public static final class AdaptationCheckpoint {
        public final long allocatedBandwidth;
        public final long totalBandwidth;

        public AdaptationCheckpoint(long j7, long j8) {
            this.totalBandwidth = j7;
            this.allocatedBandwidth = j8;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdaptationCheckpoint)) {
                return false;
            }
            AdaptationCheckpoint adaptationCheckpoint = (AdaptationCheckpoint) obj;
            return this.totalBandwidth == adaptationCheckpoint.totalBandwidth && this.allocatedBandwidth == adaptationCheckpoint.allocatedBandwidth;
        }

        public int hashCode() {
            return (((int) this.totalBandwidth) * 31) + ((int) this.allocatedBandwidth);
        }
    }

    public static class Factory implements ExoTrackSelection.Factory {
        private final float bandwidthFraction;
        private final float bufferedFractionToLiveEdgeForQualityIncrease;
        private final Clock clock;
        private final int maxDurationForQualityDecreaseMs;
        private final int maxHeightToDiscard;
        private final int maxWidthToDiscard;
        private final int minDurationForQualityIncreaseMs;
        private final int minDurationToRetainAfterDiscardMs;

        public Factory() {
            this(10000, 25000, 25000, 0.7f);
        }

        public AdaptiveTrackSelection createAdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, int i2, BandwidthMeter bandwidthMeter, ImmutableList<AdaptationCheckpoint> immutableList) {
            return new AdaptiveTrackSelection(trackGroup, iArr, i2, bandwidthMeter, this.minDurationForQualityIncreaseMs, this.maxDurationForQualityDecreaseMs, this.minDurationToRetainAfterDiscardMs, this.maxWidthToDiscard, this.maxHeightToDiscard, this.bandwidthFraction, this.bufferedFractionToLiveEdgeForQualityIncrease, immutableList, this.clock);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection.Factory
        public final ExoTrackSelection[] createTrackSelections(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            BandwidthMeter bandwidthMeter2;
            ExoTrackSelection createAdaptiveTrackSelection;
            ImmutableList adaptationCheckpoints = AdaptiveTrackSelection.getAdaptationCheckpoints(definitionArr);
            ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
            int i2 = 0;
            while (i2 < definitionArr.length) {
                ExoTrackSelection.Definition definition = definitionArr[i2];
                if (definition != null) {
                    int[] iArr = definition.tracks;
                    if (iArr.length != 0) {
                        if (iArr.length == 1) {
                            createAdaptiveTrackSelection = new FixedTrackSelection(definition.group, iArr[0], definition.type);
                            bandwidthMeter2 = bandwidthMeter;
                        } else {
                            bandwidthMeter2 = bandwidthMeter;
                            createAdaptiveTrackSelection = createAdaptiveTrackSelection(definition.group, iArr, definition.type, bandwidthMeter2, (ImmutableList) adaptationCheckpoints.get(i2));
                        }
                        exoTrackSelectionArr[i2] = createAdaptiveTrackSelection;
                        i2++;
                        bandwidthMeter = bandwidthMeter2;
                    }
                }
                bandwidthMeter2 = bandwidthMeter;
                i2++;
                bandwidthMeter = bandwidthMeter2;
            }
            return exoTrackSelectionArr;
        }

        public Factory(int i2, int i7, int i8, float f3) {
            this(i2, i7, i8, AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, f3, 0.75f, Clock.DEFAULT);
        }

        public Factory(int i2, int i7, int i8, int i9, int i10, float f3) {
            this(i2, i7, i8, i9, i10, f3, 0.75f, Clock.DEFAULT);
        }

        public Factory(int i2, int i7, int i8, float f3, float f7, Clock clock) {
            this(i2, i7, i8, AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, f3, f7, clock);
        }

        public Factory(int i2, int i7, int i8, int i9, int i10, float f3, float f7, Clock clock) {
            this.minDurationForQualityIncreaseMs = i2;
            this.maxDurationForQualityDecreaseMs = i7;
            this.minDurationToRetainAfterDiscardMs = i8;
            this.maxWidthToDiscard = i9;
            this.maxHeightToDiscard = i10;
            this.bandwidthFraction = f3;
            this.bufferedFractionToLiveEdgeForQualityIncrease = f7;
            this.clock = clock;
        }
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter) {
        this(trackGroup, iArr, 0, bandwidthMeter, Renderer.DEFAULT_DURATION_TO_PROGRESS_US, 25000L, 25000L, DEFAULT_MAX_WIDTH_TO_DISCARD, DEFAULT_MAX_HEIGHT_TO_DISCARD, 0.7f, 0.75f, ImmutableList.of(), Clock.DEFAULT);
    }

    private static void addCheckpoint(List<C0248s> list, long[] jArr) {
        long j7 = 0;
        for (long j8 : jArr) {
            j7 += j8;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            C0248s c0248s = list.get(i2);
            if (c0248s != null) {
                c0248s.add((Object) new AdaptationCheckpoint(j7, jArr[i2]));
            }
        }
    }

    private int determineIdealSelectedIndex(long j7, long j8) {
        long allocatedBandwidth = getAllocatedBandwidth(j8);
        int i2 = 0;
        for (int i7 = 0; i7 < this.length; i7++) {
            if (j7 == Long.MIN_VALUE || !isTrackExcluded(i7, j7)) {
                Format format = getFormat(i7);
                if (canSelectFormat(format, format.bitrate, allocatedBandwidth)) {
                    return i7;
                }
                i2 = i7;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList<ImmutableList<AdaptationCheckpoint>> getAdaptationCheckpoints(ExoTrackSelection.Definition[] definitionArr) {
        ArrayList arrayList = new ArrayList();
        for (ExoTrackSelection.Definition definition : definitionArr) {
            if (definition == null || definition.tracks.length <= 1) {
                arrayList.add(null);
            } else {
                C0248s builder = ImmutableList.builder();
                builder.add((Object) new AdaptationCheckpoint(0L, 0L));
                arrayList.add(builder);
            }
        }
        long[][] sortedTrackBitrates = getSortedTrackBitrates(definitionArr);
        int[] iArr = new int[sortedTrackBitrates.length];
        long[] jArr = new long[sortedTrackBitrates.length];
        for (int i2 = 0; i2 < sortedTrackBitrates.length; i2++) {
            long[] jArr2 = sortedTrackBitrates[i2];
            jArr[i2] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        addCheckpoint(arrayList, jArr);
        ImmutableList<Integer> switchOrder = getSwitchOrder(sortedTrackBitrates);
        for (int i7 = 0; i7 < switchOrder.size(); i7++) {
            int intValue = switchOrder.get(i7).intValue();
            int i8 = iArr[intValue] + 1;
            iArr[intValue] = i8;
            jArr[intValue] = sortedTrackBitrates[intValue][i8];
            addCheckpoint(arrayList, jArr);
        }
        for (int i9 = 0; i9 < definitionArr.length; i9++) {
            if (arrayList.get(i9) != null) {
                jArr[i9] = jArr[i9] * 2;
            }
        }
        addCheckpoint(arrayList, jArr);
        C0248s builder2 = ImmutableList.builder();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            C0248s c0248s = (C0248s) arrayList.get(i10);
            builder2.add((Object) (c0248s == null ? ImmutableList.of() : c0248s.build()));
        }
        return builder2.build();
    }

    private long getAllocatedBandwidth(long j7) {
        long totalAllocatableBandwidth = getTotalAllocatableBandwidth(j7);
        if (this.adaptationCheckpoints.isEmpty()) {
            return totalAllocatableBandwidth;
        }
        int i2 = 1;
        while (i2 < this.adaptationCheckpoints.size() - 1 && this.adaptationCheckpoints.get(i2).totalBandwidth < totalAllocatableBandwidth) {
            i2++;
        }
        AdaptationCheckpoint adaptationCheckpoint = this.adaptationCheckpoints.get(i2 - 1);
        AdaptationCheckpoint adaptationCheckpoint2 = this.adaptationCheckpoints.get(i2);
        long j8 = adaptationCheckpoint.totalBandwidth;
        float f3 = (totalAllocatableBandwidth - j8) / (adaptationCheckpoint2.totalBandwidth - j8);
        return adaptationCheckpoint.allocatedBandwidth + ((long) (f3 * (adaptationCheckpoint2.allocatedBandwidth - r2)));
    }

    private long getLastChunkDurationUs(List<? extends MediaChunk> list) {
        if (list.isEmpty()) {
            return C.TIME_UNSET;
        }
        MediaChunk mediaChunk = (MediaChunk) A.getLast(list);
        long j7 = mediaChunk.startTimeUs;
        if (j7 != C.TIME_UNSET) {
            long j8 = mediaChunk.endTimeUs;
            if (j8 != C.TIME_UNSET) {
                return j8 - j7;
            }
        }
        return C.TIME_UNSET;
    }

    private long getNextChunkDurationUs(MediaChunkIterator[] mediaChunkIteratorArr, List<? extends MediaChunk> list) {
        int i2 = this.selectedIndex;
        if (i2 < mediaChunkIteratorArr.length && mediaChunkIteratorArr[i2].next()) {
            MediaChunkIterator mediaChunkIterator = mediaChunkIteratorArr[this.selectedIndex];
            return mediaChunkIterator.getChunkEndTimeUs() - mediaChunkIterator.getChunkStartTimeUs();
        }
        for (MediaChunkIterator mediaChunkIterator2 : mediaChunkIteratorArr) {
            if (mediaChunkIterator2.next()) {
                return mediaChunkIterator2.getChunkEndTimeUs() - mediaChunkIterator2.getChunkStartTimeUs();
            }
        }
        return getLastChunkDurationUs(list);
    }

    private static long[][] getSortedTrackBitrates(ExoTrackSelection.Definition[] definitionArr) {
        long[][] jArr = new long[definitionArr.length][];
        for (int i2 = 0; i2 < definitionArr.length; i2++) {
            ExoTrackSelection.Definition definition = definitionArr[i2];
            if (definition == null) {
                jArr[i2] = new long[0];
            } else {
                jArr[i2] = new long[definition.tracks.length];
                int i7 = 0;
                while (true) {
                    int[] iArr = definition.tracks;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    long j7 = definition.group.getFormat(iArr[i7]).bitrate;
                    long[] jArr2 = jArr[i2];
                    if (j7 == -1) {
                        j7 = 0;
                    }
                    jArr2[i7] = j7;
                    i7++;
                }
                Arrays.sort(jArr[i2]);
            }
        }
        return jArr;
    }

    private static ImmutableList<Integer> getSwitchOrder(long[][] jArr) {
        G build = a0.treeKeys().arrayListValues().build();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            long[] jArr2 = jArr[i2];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i7 = 0;
                while (true) {
                    long[] jArr3 = jArr[i2];
                    int length2 = jArr3.length;
                    double d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
                    if (i7 >= length2) {
                        break;
                    }
                    long j7 = jArr3[i7];
                    if (j7 != -1) {
                        d7 = Math.log(j7);
                    }
                    dArr[i7] = d7;
                    i7++;
                }
                int i8 = length - 1;
                double d8 = dArr[i8] - dArr[0];
                int i9 = 0;
                while (i9 < i8) {
                    double d9 = dArr[i9];
                    i9++;
                    build.put(Double.valueOf(d8 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? 1.0d : (((d9 + dArr[i9]) * 0.5d) - dArr[0]) / d8), Integer.valueOf(i2));
                }
            }
        }
        return ImmutableList.copyOf((Collection) build.values());
    }

    private long getTotalAllocatableBandwidth(long j7) {
        long bitrateEstimate = this.bandwidthMeter.getBitrateEstimate();
        this.latestBitrateEstimate = bitrateEstimate;
        long j8 = (long) (bitrateEstimate * this.bandwidthFraction);
        long timeToFirstByteEstimateUs = this.bandwidthMeter.getTimeToFirstByteEstimateUs();
        if (timeToFirstByteEstimateUs == C.TIME_UNSET || j7 == C.TIME_UNSET) {
            return (long) (j8 / this.playbackSpeed);
        }
        float f3 = j7;
        return (long) ((j8 * Math.max((f3 / this.playbackSpeed) - timeToFirstByteEstimateUs, 0.0f)) / f3);
    }

    private long minDurationForQualityIncreaseUs(long j7, long j8) {
        if (j7 == C.TIME_UNSET) {
            return this.minDurationForQualityIncreaseUs;
        }
        if (j8 != C.TIME_UNSET) {
            j7 -= j8;
        }
        return Math.min((long) (j7 * this.bufferedFractionToLiveEdgeForQualityIncrease), this.minDurationForQualityIncreaseUs);
    }

    public boolean canSelectFormat(Format format, int i2, long j7) {
        return ((long) i2) <= j7;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void disable() {
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void enable() {
        this.lastBufferEvaluationMs = C.TIME_UNSET;
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int evaluateQueueSize(long j7, List<? extends MediaChunk> list) {
        int i2;
        int i7;
        long elapsedRealtime = this.clock.elapsedRealtime();
        if (!shouldEvaluateQueueSize(elapsedRealtime, list)) {
            return list.size();
        }
        this.lastBufferEvaluationMs = elapsedRealtime;
        this.lastBufferEvaluationMediaChunk = list.isEmpty() ? null : (MediaChunk) A.getLast(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(list.get(size - 1).startTimeUs - j7, this.playbackSpeed);
        long minDurationToRetainAfterDiscardUs = getMinDurationToRetainAfterDiscardUs();
        if (playoutDurationForMediaDuration >= minDurationToRetainAfterDiscardUs) {
            Format format = getFormat(determineIdealSelectedIndex(elapsedRealtime, getLastChunkDurationUs(list)));
            for (int i8 = 0; i8 < size; i8++) {
                MediaChunk mediaChunk = list.get(i8);
                Format format2 = mediaChunk.trackFormat;
                if (Util.getPlayoutDurationForMediaDuration(mediaChunk.startTimeUs - j7, this.playbackSpeed) >= minDurationToRetainAfterDiscardUs && format2.bitrate < format.bitrate && (i2 = format2.height) != -1 && i2 <= this.maxHeightToDiscard && (i7 = format2.width) != -1 && i7 <= this.maxWidthToDiscard && i2 < format.height) {
                    return i8;
                }
            }
        }
        return size;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public long getLatestBitrateEstimate() {
        return this.latestBitrateEstimate;
    }

    public long getMinDurationToRetainAfterDiscardUs() {
        return this.minDurationToRetainAfterDiscardUs;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public Object getSelectionData() {
        return null;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectionReason() {
        return this.reason;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onPlaybackSpeed(float f3) {
        this.playbackSpeed = f3;
    }

    public boolean shouldEvaluateQueueSize(long j7, List<? extends MediaChunk> list) {
        long j8 = this.lastBufferEvaluationMs;
        if (j8 == C.TIME_UNSET || j7 - j8 >= 1000) {
            return true;
        }
        return (list.isEmpty() || ((MediaChunk) A.getLast(list)).equals(this.lastBufferEvaluationMediaChunk)) ? false : true;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void updateSelectedTrack(long j7, long j8, long j9, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long elapsedRealtime = this.clock.elapsedRealtime();
        long nextChunkDurationUs = getNextChunkDurationUs(mediaChunkIteratorArr, list);
        int i2 = this.reason;
        if (i2 == 0) {
            this.reason = 1;
            this.selectedIndex = determineIdealSelectedIndex(elapsedRealtime, nextChunkDurationUs);
            return;
        }
        int i7 = this.selectedIndex;
        int indexOf = list.isEmpty() ? -1 : indexOf(((MediaChunk) A.getLast(list)).trackFormat);
        if (indexOf != -1) {
            i2 = ((MediaChunk) A.getLast(list)).trackSelectionReason;
            i7 = indexOf;
        }
        int determineIdealSelectedIndex = determineIdealSelectedIndex(elapsedRealtime, nextChunkDurationUs);
        if (determineIdealSelectedIndex != i7 && !isTrackExcluded(i7, elapsedRealtime)) {
            Format format = getFormat(i7);
            Format format2 = getFormat(determineIdealSelectedIndex);
            long minDurationForQualityIncreaseUs = minDurationForQualityIncreaseUs(j9, nextChunkDurationUs);
            int i8 = format2.bitrate;
            int i9 = format.bitrate;
            if ((i8 > i9 && j8 < minDurationForQualityIncreaseUs) || (i8 < i9 && j8 >= this.maxDurationForQualityDecreaseUs)) {
                determineIdealSelectedIndex = i7;
            }
        }
        if (determineIdealSelectedIndex != i7) {
            i2 = 3;
        }
        this.reason = i2;
        this.selectedIndex = determineIdealSelectedIndex;
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, int i2, BandwidthMeter bandwidthMeter, long j7, long j8, long j9, int i7, int i8, float f3, float f7, List<AdaptationCheckpoint> list, Clock clock) {
        super(trackGroup, iArr, i2);
        long j10;
        if (j9 < j7) {
            Log.w(TAG, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j10 = j7;
        } else {
            j10 = j9;
        }
        this.bandwidthMeter = bandwidthMeter;
        this.minDurationForQualityIncreaseUs = j7 * 1000;
        this.maxDurationForQualityDecreaseUs = j8 * 1000;
        this.minDurationToRetainAfterDiscardUs = j10 * 1000;
        this.maxWidthToDiscard = i7;
        this.maxHeightToDiscard = i8;
        this.bandwidthFraction = f3;
        this.bufferedFractionToLiveEdgeForQualityIncrease = f7;
        this.adaptationCheckpoints = ImmutableList.copyOf((Collection) list);
        this.clock = clock;
        this.playbackSpeed = 1.0f;
        this.reason = 0;
        this.lastBufferEvaluationMs = C.TIME_UNSET;
        this.latestBitrateEstimate = -2147483647L;
    }
}
