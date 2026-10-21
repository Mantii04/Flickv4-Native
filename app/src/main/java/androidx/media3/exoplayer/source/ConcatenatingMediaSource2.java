package androidx.media3.exoplayer.source;

import P3.v;
import Q3.C0248s;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.collect.ImmutableList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class ConcatenatingMediaSource2 extends CompositeMediaSource<Integer> {
    private static final int MSG_UPDATE_TIMELINE = 1;
    private MediaItem mediaItem;
    private final IdentityHashMap<MediaPeriod, MediaSourceHolder> mediaSourceByMediaPeriod;
    private final ImmutableList<MediaSourceHolder> mediaSourceHolders;
    private Handler playbackThreadHandler;
    private boolean timelineUpdateScheduled;

    public static final class Builder {
        private int index;
        private MediaItem mediaItem;
        private MediaSource.Factory mediaSourceFactory;
        private final C0248s mediaSourceHoldersBuilder = ImmutableList.builder();

        public Builder add(MediaItem mediaItem) {
            return add(mediaItem, C.TIME_UNSET);
        }

        public ConcatenatingMediaSource2 build() {
            v.checkArgument(this.index > 0, "Must add at least one source to the concatenation.");
            if (this.mediaItem == null) {
                this.mediaItem = MediaItem.fromUri(Uri.EMPTY);
            }
            return new ConcatenatingMediaSource2(this.mediaItem, this.mediaSourceHoldersBuilder.build());
        }

        public Builder setMediaItem(MediaItem mediaItem) {
            this.mediaItem = mediaItem;
            return this;
        }

        public Builder setMediaSourceFactory(MediaSource.Factory factory) {
            this.mediaSourceFactory = (MediaSource.Factory) v.checkNotNull(factory);
            return this;
        }

        public Builder useDefaultMediaSourceFactory(Context context) {
            return setMediaSourceFactory(new DefaultMediaSourceFactory(context));
        }

        public Builder add(MediaItem mediaItem, long j7) {
            v.checkNotNull(mediaItem);
            if (j7 == C.TIME_UNSET) {
                MediaItem.ClippingConfiguration clippingConfiguration = mediaItem.clippingConfiguration;
                if (clippingConfiguration.endPositionMs != Long.MIN_VALUE) {
                    j7 = Util.usToMs(clippingConfiguration.endPositionUs - clippingConfiguration.startPositionUs);
                }
            }
            v.checkNotNull(this.mediaSourceFactory, "Must use useDefaultMediaSourceFactory or setMediaSourceFactory first.");
            return add(this.mediaSourceFactory.createMediaSource(mediaItem), j7);
        }

        public Builder add(MediaSource mediaSource) {
            return add(mediaSource, C.TIME_UNSET);
        }

        public Builder add(MediaSource mediaSource, long j7) {
            v.checkNotNull(mediaSource);
            v.checkState(((mediaSource instanceof ProgressiveMediaSource) && j7 == C.TIME_UNSET) ? false : true, "Progressive media source must define an initial placeholder duration.");
            C0248s c0248s = this.mediaSourceHoldersBuilder;
            int i2 = this.index;
            this.index = i2 + 1;
            c0248s.add((Object) new MediaSourceHolder(mediaSource, i2, Util.msToUs(j7)));
            return this;
        }
    }

    public static final class ConcatenatedTimeline extends Timeline {
        private final long defaultPositionUs;
        private final long durationUs;
        private final ImmutableList<Integer> firstPeriodIndices;
        private final boolean isDynamic;
        private final boolean isSeekable;
        private final Object manifest;
        private final MediaItem mediaItem;
        private final ImmutableList<Long> periodOffsetsInWindowUs;
        private final ImmutableList<Timeline> timelines;

        public ConcatenatedTimeline(MediaItem mediaItem, ImmutableList<Timeline> immutableList, ImmutableList<Integer> immutableList2, ImmutableList<Long> immutableList3, boolean z6, boolean z7, long j7, long j8, Object obj) {
            this.mediaItem = mediaItem;
            this.timelines = immutableList;
            this.firstPeriodIndices = immutableList2;
            this.periodOffsetsInWindowUs = immutableList3;
            this.isSeekable = z6;
            this.isDynamic = z7;
            this.durationUs = j7;
            this.defaultPositionUs = j8;
            this.manifest = obj;
        }

        private int getChildIndexByPeriodIndex(int i2) {
            return Util.binarySearchFloor((List<? extends Comparable<? super Integer>>) this.firstPeriodIndices, Integer.valueOf(i2 + 1), false, false);
        }

        private long getPeriodDurationUs(Timeline.Period period, int i2) {
            if (period.durationUs == C.TIME_UNSET) {
                return C.TIME_UNSET;
            }
            return (i2 == this.periodOffsetsInWindowUs.size() + (-1) ? this.durationUs : this.periodOffsetsInWindowUs.get(i2 + 1).longValue()) - this.periodOffsetsInWindowUs.get(i2).longValue();
        }

        @Override // androidx.media3.common.Timeline
        public int getIndexOfPeriod(Object obj) {
            if (!(obj instanceof Pair) || !(((Pair) obj).first instanceof Integer)) {
                return -1;
            }
            int childIndex = ConcatenatingMediaSource2.getChildIndex(obj);
            int indexOfPeriod = this.timelines.get(childIndex).getIndexOfPeriod(ConcatenatingMediaSource2.getChildPeriodUid(obj));
            if (indexOfPeriod == -1) {
                return -1;
            }
            return this.firstPeriodIndices.get(childIndex).intValue() + indexOfPeriod;
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Period getPeriod(int i2, Timeline.Period period, boolean z6) {
            int childIndexByPeriodIndex = getChildIndexByPeriodIndex(i2);
            this.timelines.get(childIndexByPeriodIndex).getPeriod(i2 - this.firstPeriodIndices.get(childIndexByPeriodIndex).intValue(), period, z6);
            period.windowIndex = 0;
            period.positionInWindowUs = this.periodOffsetsInWindowUs.get(i2).longValue();
            period.durationUs = getPeriodDurationUs(period, i2);
            if (z6) {
                period.uid = ConcatenatingMediaSource2.getPeriodUid(childIndexByPeriodIndex, v.checkNotNull(period.uid));
            }
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Period getPeriodByUid(Object obj, Timeline.Period period) {
            int childIndex = ConcatenatingMediaSource2.getChildIndex(obj);
            Object childPeriodUid = ConcatenatingMediaSource2.getChildPeriodUid(obj);
            Timeline timeline = this.timelines.get(childIndex);
            int indexOfPeriod = timeline.getIndexOfPeriod(childPeriodUid) + this.firstPeriodIndices.get(childIndex).intValue();
            timeline.getPeriodByUid(childPeriodUid, period);
            period.windowIndex = 0;
            period.positionInWindowUs = this.periodOffsetsInWindowUs.get(indexOfPeriod).longValue();
            period.durationUs = getPeriodDurationUs(period, indexOfPeriod);
            period.uid = obj;
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public int getPeriodCount() {
            return this.periodOffsetsInWindowUs.size();
        }

        @Override // androidx.media3.common.Timeline
        public Object getUidOfPeriod(int i2) {
            int childIndexByPeriodIndex = getChildIndexByPeriodIndex(i2);
            return ConcatenatingMediaSource2.getPeriodUid(childIndexByPeriodIndex, this.timelines.get(childIndexByPeriodIndex).getUidOfPeriod(i2 - this.firstPeriodIndices.get(childIndexByPeriodIndex).intValue()));
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Window getWindow(int i2, Timeline.Window window, long j7) {
            return window.set(Timeline.Window.SINGLE_WINDOW_UID, this.mediaItem, this.manifest, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, this.isSeekable, this.isDynamic, null, this.defaultPositionUs, this.durationUs, 0, getPeriodCount() - 1, -this.periodOffsetsInWindowUs.get(0).longValue());
        }

        @Override // androidx.media3.common.Timeline
        public int getWindowCount() {
            return 1;
        }
    }

    public static final class MediaSourceHolder {
        public int activeMediaPeriods;
        public final int index;
        public final long initialPlaceholderDurationUs;
        public final MaskingMediaSource mediaSource;
        public final HashMap<Object, Long> periodTimeOffsetsByUid = new HashMap<>();

        public MediaSourceHolder(MediaSource mediaSource, int i2, long j7) {
            this.mediaSource = new MaskingMediaSource(mediaSource, false);
            this.index = i2;
            this.initialPlaceholderDurationUs = j7;
        }
    }

    private void disableUnusedMediaSources() {
        for (int i2 = 0; i2 < this.mediaSourceHolders.size(); i2++) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i2);
            if (mediaSourceHolder.activeMediaPeriods == 0) {
                disableChildSource(Integer.valueOf(mediaSourceHolder.index));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getChildIndex(Object obj) {
        return ((Integer) ((Pair) obj).first).intValue();
    }

    private static int getChildIndexFromChildWindowSequenceNumber(long j7, int i2) {
        return (int) (j7 % i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object getChildPeriodUid(Object obj) {
        return ((Pair) obj).second;
    }

    private static long getChildWindowSequenceNumber(long j7, int i2, int i7) {
        return (j7 * i2) + i7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object getPeriodUid(int i2, Object obj) {
        return Pair.create(Integer.valueOf(i2), obj);
    }

    private static long getWindowSequenceNumberFromChildWindowSequenceNumber(long j7, int i2) {
        return j7 / i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            updateTimeline();
        }
        return true;
    }

    private ConcatenatedTimeline maybeCreateConcatenatedTimeline() {
        C0248s c0248s;
        C0248s c0248s2;
        int i2;
        long j7;
        long j8;
        Timeline.Window window;
        boolean z6;
        ConcatenatingMediaSource2 concatenatingMediaSource2 = this;
        Timeline.Window window2 = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        C0248s builder = ImmutableList.builder();
        C0248s builder2 = ImmutableList.builder();
        C0248s builder3 = ImmutableList.builder();
        int size = concatenatingMediaSource2.mediaSourceHolders.size();
        boolean z7 = true;
        boolean z8 = true;
        boolean z9 = true;
        int i7 = 0;
        Object obj = null;
        int i8 = 0;
        boolean z10 = false;
        boolean z11 = false;
        long j9 = 0;
        long j10 = 0;
        long j11 = 0;
        while (i7 < size) {
            MediaSourceHolder mediaSourceHolder = concatenatingMediaSource2.mediaSourceHolders.get(i7);
            Timeline timeline = mediaSourceHolder.mediaSource.getTimeline();
            v.checkArgument(timeline.isEmpty() ^ z7, "Can't concatenate empty child Timeline.");
            builder.add((Object) timeline);
            builder2.add((Object) Integer.valueOf(i8));
            i8 += timeline.getPeriodCount();
            int i9 = 0;
            while (i9 < timeline.getWindowCount()) {
                timeline.getWindow(i9, window2);
                if (!z10) {
                    z10 = z7;
                    obj = window2.manifest;
                }
                z8 = (z8 && Objects.equals(obj, window2.manifest)) ? z7 : false;
                Timeline timeline2 = timeline;
                long j12 = window2.durationUs;
                if (j12 == C.TIME_UNSET) {
                    j12 = mediaSourceHolder.initialPlaceholderDurationUs;
                    if (j12 == C.TIME_UNSET) {
                        return null;
                    }
                }
                j9 += j12;
                if (mediaSourceHolder.index == 0 && i9 == 0) {
                    c0248s = builder;
                    c0248s2 = builder2;
                    j10 = window2.defaultPositionUs;
                    j11 = -window2.positionInFirstPeriodUs;
                } else {
                    c0248s = builder;
                    c0248s2 = builder2;
                }
                z9 &= window2.isSeekable || window2.isPlaceholder;
                z11 |= window2.isDynamic;
                int i10 = window2.firstPeriodIndex;
                while (i10 <= window2.lastPeriodIndex) {
                    builder3.add((Object) Long.valueOf(j11));
                    Timeline timeline3 = timeline2;
                    timeline3.getPeriod(i10, period, true);
                    C0248s c0248s3 = builder3;
                    long j13 = period.durationUs;
                    if (j13 == C.TIME_UNSET) {
                        v.checkArgument(window2.firstPeriodIndex == window2.lastPeriodIndex, "Can't apply placeholder duration to multiple periods with unknown duration in a single window.");
                        j13 = window2.positionInFirstPeriodUs + j12;
                    }
                    if (i10 != window2.firstPeriodIndex || ((mediaSourceHolder.index == 0 && i9 == 0) || j13 == C.TIME_UNSET)) {
                        i2 = i10;
                        j7 = j13;
                        j8 = 0;
                    } else {
                        i2 = i10;
                        j8 = -window2.positionInFirstPeriodUs;
                        j7 = j13 + j8;
                    }
                    Object checkNotNull = v.checkNotNull(period.uid);
                    int i11 = i2;
                    if (mediaSourceHolder.activeMediaPeriods == 0 || !mediaSourceHolder.periodTimeOffsetsByUid.containsKey(checkNotNull)) {
                        window = window2;
                    } else {
                        window = window2;
                        if (!mediaSourceHolder.periodTimeOffsetsByUid.get(checkNotNull).equals(Long.valueOf(j8))) {
                            z6 = false;
                            v.checkArgument(z6, "Can't handle windows with changing offset in first period.");
                            mediaSourceHolder.periodTimeOffsetsByUid.put(checkNotNull, Long.valueOf(j8));
                            j11 += j7;
                            i10 = i11 + 1;
                            builder3 = c0248s3;
                            timeline2 = timeline3;
                            window2 = window;
                        }
                    }
                    z6 = true;
                    v.checkArgument(z6, "Can't handle windows with changing offset in first period.");
                    mediaSourceHolder.periodTimeOffsetsByUid.put(checkNotNull, Long.valueOf(j8));
                    j11 += j7;
                    i10 = i11 + 1;
                    builder3 = c0248s3;
                    timeline2 = timeline3;
                    window2 = window;
                }
                i9++;
                builder = c0248s;
                builder2 = c0248s2;
                timeline = timeline2;
                z7 = true;
            }
            i7++;
            concatenatingMediaSource2 = this;
            z7 = true;
        }
        return new ConcatenatedTimeline(getMediaItem(), builder.build(), builder2.build(), builder3.build(), z9, z11, j9, j10, z8 ? obj : null);
    }

    private void scheduleTimelineUpdate() {
        if (this.timelineUpdateScheduled) {
            return;
        }
        ((Handler) v.checkNotNull(this.playbackThreadHandler)).obtainMessage(1).sendToTarget();
        this.timelineUpdateScheduled = true;
    }

    private void updateTimeline() {
        this.timelineUpdateScheduled = false;
        ConcatenatedTimeline maybeCreateConcatenatedTimeline = maybeCreateConcatenatedTimeline();
        if (maybeCreateConcatenatedTimeline != null) {
            refreshSourceInfo(maybeCreateConcatenatedTimeline);
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        return true;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j7) {
        MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(getChildIndex(mediaPeriodId.periodUid));
        MediaSource.MediaPeriodId copyWithWindowSequenceNumber = mediaPeriodId.copyWithPeriodUid(getChildPeriodUid(mediaPeriodId.periodUid)).copyWithWindowSequenceNumber(getChildWindowSequenceNumber(mediaPeriodId.windowSequenceNumber, this.mediaSourceHolders.size(), mediaSourceHolder.index));
        enableChildSource(Integer.valueOf(mediaSourceHolder.index));
        mediaSourceHolder.activeMediaPeriods++;
        long longValue = mediaPeriodId.isAd() ? 0L : ((Long) v.checkNotNull(mediaSourceHolder.periodTimeOffsetsByUid.get(copyWithWindowSequenceNumber.periodUid))).longValue();
        TimeOffsetMediaPeriod timeOffsetMediaPeriod = new TimeOffsetMediaPeriod(mediaSourceHolder.mediaSource.createPeriod(copyWithWindowSequenceNumber, allocator, j7 - longValue), longValue);
        this.mediaSourceByMediaPeriod.put(timeOffsetMediaPeriod, mediaSourceHolder);
        disableUnusedMediaSources();
        return timeOffsetMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void enableInternal() {
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public Timeline getInitialTimeline() {
        return maybeCreateConcatenatedTimeline();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public synchronized MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public int getWindowIndexForChildWindowIndex(Integer num, int i2) {
        return 0;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void prepareSourceInternal(TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        this.playbackThreadHandler = new Handler(new b(this, 1));
        for (int i2 = 0; i2 < this.mediaSourceHolders.size(); i2++) {
            prepareChildSource(Integer.valueOf(i2), this.mediaSourceHolders.get(i2).mediaSource);
        }
        scheduleTimelineUpdate();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((MediaSourceHolder) v.checkNotNull(this.mediaSourceByMediaPeriod.remove(mediaPeriod))).mediaSource.releasePeriod(((TimeOffsetMediaPeriod) mediaPeriod).getWrappedMediaPeriod());
        r0.activeMediaPeriods--;
        if (this.mediaSourceByMediaPeriod.isEmpty()) {
            return;
        }
        disableUnusedMediaSources();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        Handler handler = this.playbackThreadHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.playbackThreadHandler = null;
        }
        this.timelineUpdateScheduled = false;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public synchronized void updateMediaItem(MediaItem mediaItem) {
        this.mediaItem = mediaItem;
    }

    private ConcatenatingMediaSource2(MediaItem mediaItem, ImmutableList<MediaSourceHolder> immutableList) {
        this.mediaItem = mediaItem;
        this.mediaSourceHolders = immutableList;
        this.mediaSourceByMediaPeriod = new IdentityHashMap<>();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(Integer num, MediaSource.MediaPeriodId mediaPeriodId) {
        if (num.intValue() != getChildIndexFromChildWindowSequenceNumber(mediaPeriodId.windowSequenceNumber, this.mediaSourceHolders.size())) {
            return null;
        }
        return mediaPeriodId.copyWithPeriodUid(getPeriodUid(num.intValue(), mediaPeriodId.periodUid)).copyWithWindowSequenceNumber(getWindowSequenceNumberFromChildWindowSequenceNumber(mediaPeriodId.windowSequenceNumber, this.mediaSourceHolders.size()));
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public long getMediaTimeForChildMediaTime(Integer num, long j7, MediaSource.MediaPeriodId mediaPeriodId) {
        Long l7;
        return (j7 == C.TIME_UNSET || mediaPeriodId == null || mediaPeriodId.isAd() || (l7 = this.mediaSourceHolders.get(num.intValue()).periodTimeOffsetsByUid.get(mediaPeriodId.periodUid)) == null) ? j7 : Util.usToMs(l7.longValue()) + j7;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void lambda$prepareChildSource$0(Integer num, MediaSource mediaSource, Timeline timeline) {
        scheduleTimelineUpdate();
    }
}
