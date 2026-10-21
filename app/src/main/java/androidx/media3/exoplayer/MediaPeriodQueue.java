package androidx.media3.exoplayer;

import Q3.C0248s;
import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.MediaPeriodHolder;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class MediaPeriodQueue {
    public static final long INITIAL_RENDERER_POSITION_OFFSET_US = 1000000000000L;
    private static final int MAXIMUM_BUFFER_AHEAD_PERIODS = 100;
    static final int UPDATE_PERIOD_QUEUE_ALTERED_PREWARMING_PERIOD = 2;
    static final int UPDATE_PERIOD_QUEUE_ALTERED_READING_PERIOD = 1;
    private final AnalyticsCollector analyticsCollector;
    private final HandlerWrapper analyticsCollectorHandler;
    private int length;
    private MediaPeriodHolder loading;
    private final MediaPeriodHolder.Factory mediaPeriodHolderFactory;
    private long nextWindowSequenceNumber;
    private Object oldFrontPeriodUid;
    private long oldFrontPeriodWindowSequenceNumber;
    private MediaPeriodHolder playing;
    private ExoPlayer.PreloadConfiguration preloadConfiguration;
    private MediaPeriodHolder preloading;
    private MediaPeriodHolder prewarming;
    private MediaPeriodHolder reading;
    private int repeatMode;
    private boolean shuffleModeEnabled;
    private final Timeline.Period period = new Timeline.Period();
    private final Timeline.Window window = new Timeline.Window();
    private List<MediaPeriodHolder> preloadPriorityList = new ArrayList();

    public MediaPeriodQueue(AnalyticsCollector analyticsCollector, HandlerWrapper handlerWrapper, MediaPeriodHolder.Factory factory, ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.analyticsCollector = analyticsCollector;
        this.analyticsCollectorHandler = handlerWrapper;
        this.mediaPeriodHolderFactory = factory;
        this.preloadConfiguration = preloadConfiguration;
    }

    public static boolean areDurationsCompatible(long j7, long j8) {
        return j7 == androidx.media3.common.C.TIME_UNSET || j7 == j8;
    }

    private boolean canKeepMediaPeriodHolder(MediaPeriodInfo mediaPeriodInfo, MediaPeriodInfo mediaPeriodInfo2) {
        return mediaPeriodInfo.startPositionUs == mediaPeriodInfo2.startPositionUs && mediaPeriodInfo.id.equals(mediaPeriodInfo2.id);
    }

    private Pair<Object, Long> getDefaultPeriodPositionOfNextWindow(Timeline timeline, Object obj, long j7) {
        int nextWindowIndex = timeline.getNextWindowIndex(timeline.getPeriodByUid(obj, this.period).windowIndex, this.repeatMode, this.shuffleModeEnabled);
        if (nextWindowIndex != -1) {
            return timeline.getPeriodPositionUs(this.window, this.period, nextWindowIndex, androidx.media3.common.C.TIME_UNSET, j7);
        }
        return null;
    }

    private MediaPeriodInfo getFirstMediaPeriodInfo(PlaybackInfo playbackInfo) {
        return getMediaPeriodInfo(playbackInfo.timeline, playbackInfo.periodId, playbackInfo.requestedContentPositionUs, playbackInfo.positionUs);
    }

    private MediaPeriodInfo getFirstMediaPeriodInfoOfNextPeriod(Timeline timeline, MediaPeriodHolder mediaPeriodHolder, long j7) {
        Object obj;
        long j8;
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
        int nextPeriodIndex = timeline.getNextPeriodIndex(timeline.getIndexOfPeriod(mediaPeriodInfo.id.periodUid), this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
        if (nextPeriodIndex == -1) {
            return null;
        }
        int i2 = timeline.getPeriod(nextPeriodIndex, this.period, true).windowIndex;
        Object checkNotNull = P3.v.checkNotNull(this.period.uid);
        long j9 = mediaPeriodInfo.id.windowSequenceNumber;
        long j10 = 0;
        if (timeline.getWindow(i2, this.window).firstPeriodIndex == nextPeriodIndex) {
            Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(this.window, this.period, i2, androidx.media3.common.C.TIME_UNSET, Math.max(0L, j7));
            if (periodPositionUs == null) {
                return null;
            }
            Object obj2 = periodPositionUs.first;
            long longValue = ((Long) periodPositionUs.second).longValue();
            MediaPeriodHolder next = mediaPeriodHolder.getNext();
            if (next == null || !next.uid.equals(obj2)) {
                long resolvePeriodUidToWindowSequenceNumberInPreloadPeriods = resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(obj2);
                if (resolvePeriodUidToWindowSequenceNumberInPreloadPeriods == -1) {
                    resolvePeriodUidToWindowSequenceNumberInPreloadPeriods = this.nextWindowSequenceNumber;
                    this.nextWindowSequenceNumber = 1 + resolvePeriodUidToWindowSequenceNumberInPreloadPeriods;
                }
                j9 = resolvePeriodUidToWindowSequenceNumberInPreloadPeriods;
            } else {
                j9 = next.info.id.windowSequenceNumber;
            }
            obj = obj2;
            j8 = longValue;
            j10 = -9223372036854775807L;
        } else {
            obj = checkNotNull;
            j8 = 0;
        }
        MediaSource.MediaPeriodId resolveMediaPeriodIdForAds = resolveMediaPeriodIdForAds(timeline, obj, j8, j9, this.window, this.period);
        if (j10 != androidx.media3.common.C.TIME_UNSET && mediaPeriodInfo.requestedContentPositionUs != androidx.media3.common.C.TIME_UNSET) {
            boolean hasServerSideInsertedAds = hasServerSideInsertedAds(mediaPeriodInfo.id.periodUid, timeline);
            if (resolveMediaPeriodIdForAds.isAd() && hasServerSideInsertedAds) {
                j10 = mediaPeriodInfo.requestedContentPositionUs;
            } else if (hasServerSideInsertedAds) {
                j8 = mediaPeriodInfo.requestedContentPositionUs;
            }
        }
        return getMediaPeriodInfo(timeline, resolveMediaPeriodIdForAds, j10, j8);
    }

    private MediaPeriodInfo getFollowingMediaPeriodInfo(Timeline timeline, MediaPeriodHolder mediaPeriodHolder, long j7) {
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
        long rendererOffset = (mediaPeriodHolder.getRendererOffset() + mediaPeriodInfo.durationUs) - j7;
        return mediaPeriodInfo.isLastInTimelinePeriod ? getFirstMediaPeriodInfoOfNextPeriod(timeline, mediaPeriodHolder, rendererOffset) : getFollowingMediaPeriodInfoOfCurrentPeriod(timeline, mediaPeriodHolder, rendererOffset);
    }

    private MediaPeriodInfo getFollowingMediaPeriodInfoOfCurrentPeriod(Timeline timeline, MediaPeriodHolder mediaPeriodHolder, long j7) {
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        boolean z6 = mediaPeriodInfo.isFollowedByTransitionToSameStream;
        if (!mediaPeriodId.isAd()) {
            int i2 = mediaPeriodId.nextAdGroupIndex;
            if (i2 != -1 && this.period.isLivePostrollPlaceholder(i2)) {
                return getFirstMediaPeriodInfoOfNextPeriod(timeline, mediaPeriodHolder, j7);
            }
            int firstAdIndexToPlay = this.period.getFirstAdIndexToPlay(mediaPeriodId.nextAdGroupIndex);
            boolean z7 = this.period.isServerSideInsertedAdGroup(mediaPeriodId.nextAdGroupIndex) && this.period.getAdState(mediaPeriodId.nextAdGroupIndex, firstAdIndexToPlay) == 3;
            if (firstAdIndexToPlay == this.period.getAdCountInAdGroup(mediaPeriodId.nextAdGroupIndex) || z7) {
                return getMediaPeriodInfoForContent(timeline, mediaPeriodId.periodUid, getMinStartPositionAfterAdGroupUs(timeline, mediaPeriodId.periodUid, mediaPeriodId.nextAdGroupIndex), mediaPeriodInfo.durationUs, mediaPeriodId.windowSequenceNumber, false);
            }
            return getMediaPeriodInfoForAd(timeline, mediaPeriodId.periodUid, mediaPeriodId.nextAdGroupIndex, firstAdIndexToPlay, mediaPeriodInfo.durationUs, mediaPeriodId.windowSequenceNumber, z6);
        }
        int i7 = mediaPeriodId.adGroupIndex;
        int adCountInAdGroup = this.period.getAdCountInAdGroup(i7);
        if (adCountInAdGroup == -1) {
            return null;
        }
        int nextAdIndexToPlay = this.period.getNextAdIndexToPlay(i7, mediaPeriodId.adIndexInAdGroup);
        if (nextAdIndexToPlay < adCountInAdGroup) {
            return getMediaPeriodInfoForAd(timeline, mediaPeriodId.periodUid, i7, nextAdIndexToPlay, mediaPeriodInfo.requestedContentPositionUs, mediaPeriodId.windowSequenceNumber, z6);
        }
        long j8 = mediaPeriodInfo.requestedContentPositionUs;
        if (j8 == androidx.media3.common.C.TIME_UNSET) {
            Timeline.Window window = this.window;
            Timeline.Period period = this.period;
            Pair<Object, Long> periodPositionUs = timeline.getPeriodPositionUs(window, period, period.windowIndex, androidx.media3.common.C.TIME_UNSET, Math.max(0L, j7));
            if (periodPositionUs == null) {
                return null;
            }
            j8 = ((Long) periodPositionUs.second).longValue();
        }
        return getMediaPeriodInfoForContent(timeline, mediaPeriodId.periodUid, Math.max(getMinStartPositionAfterAdGroupUs(timeline, mediaPeriodId.periodUid, mediaPeriodId.adGroupIndex), j8), mediaPeriodInfo.requestedContentPositionUs, mediaPeriodId.windowSequenceNumber, z6);
    }

    private MediaPeriodInfo getMediaPeriodInfo(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j7, long j8) {
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return mediaPeriodId.isAd() ? getMediaPeriodInfoForAd(timeline, mediaPeriodId.periodUid, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, j7, mediaPeriodId.windowSequenceNumber, false) : getMediaPeriodInfoForContent(timeline, mediaPeriodId.periodUid, j8, j7, mediaPeriodId.windowSequenceNumber, false);
    }

    private MediaPeriodInfo getMediaPeriodInfoForAd(Timeline timeline, Object obj, int i2, int i7, long j7, long j8, boolean z6) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, i2, i7, j8);
        long adDurationUs = timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        long adResumePositionUs = i7 == this.period.getFirstAdIndexToPlay(i2) ? this.period.getAdResumePositionUs() : 0L;
        boolean isServerSideInsertedAdGroup = this.period.isServerSideInsertedAdGroup(mediaPeriodId.adGroupIndex);
        if (adDurationUs != androidx.media3.common.C.TIME_UNSET && adResumePositionUs >= adDurationUs) {
            adResumePositionUs = Math.max(0L, adDurationUs - 1);
        }
        return new MediaPeriodInfo(mediaPeriodId, adResumePositionUs, j7, androidx.media3.common.C.TIME_UNSET, adDurationUs, z6, isServerSideInsertedAdGroup, false, false, false);
    }

    private MediaPeriodInfo getMediaPeriodInfoForContent(Timeline timeline, Object obj, long j7, long j8, long j9, boolean z6) {
        boolean z7;
        long j10;
        long j11;
        long j12;
        long j13 = j7;
        timeline.getPeriodByUid(obj, this.period);
        int adGroupIndexAfterPositionUs = this.period.getAdGroupIndexAfterPositionUs(j13);
        int i2 = 1;
        if (adGroupIndexAfterPositionUs == -1) {
            if (this.period.getAdGroupCount() > 0) {
                Timeline.Period period = this.period;
                if (period.isServerSideInsertedAdGroup(period.getRemovedAdGroupCount())) {
                    z7 = true;
                }
            }
            z7 = false;
        } else {
            if (this.period.isServerSideInsertedAdGroup(adGroupIndexAfterPositionUs)) {
                long adGroupTimeUs = this.period.getAdGroupTimeUs(adGroupIndexAfterPositionUs);
                Timeline.Period period2 = this.period;
                if (adGroupTimeUs == period2.durationUs && period2.hasPlayedAdGroup(adGroupIndexAfterPositionUs)) {
                    z7 = true;
                    adGroupIndexAfterPositionUs = -1;
                }
            }
            z7 = false;
        }
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, j9, adGroupIndexAfterPositionUs);
        boolean isLastInPeriod = isLastInPeriod(mediaPeriodId);
        boolean isLastInWindow = isLastInWindow(timeline, mediaPeriodId);
        boolean isLastInTimeline = isLastInTimeline(timeline, mediaPeriodId, isLastInPeriod);
        boolean z8 = (adGroupIndexAfterPositionUs == -1 || !this.period.isServerSideInsertedAdGroup(adGroupIndexAfterPositionUs) || this.period.isLivePostrollPlaceholder(adGroupIndexAfterPositionUs)) ? false : true;
        boolean z9 = adGroupIndexAfterPositionUs != -1 && this.period.isLivePostrollPlaceholder(adGroupIndexAfterPositionUs) && this.period.isServerSideInsertedAdGroup(adGroupIndexAfterPositionUs);
        if (adGroupIndexAfterPositionUs != -1 && !z9) {
            j11 = this.period.getAdGroupTimeUs(adGroupIndexAfterPositionUs);
        } else {
            if (!z7) {
                j10 = -9223372036854775807L;
                j12 = (j10 != androidx.media3.common.C.TIME_UNSET || j10 == Long.MIN_VALUE) ? this.period.durationUs : j10;
                if (j12 != androidx.media3.common.C.TIME_UNSET && j13 >= j12) {
                    if (!isLastInTimeline && z7) {
                        i2 = 0;
                    }
                    j13 = Math.max(0L, j12 - i2);
                }
                return new MediaPeriodInfo(mediaPeriodId, j13, j8, j10, j12, z6, z8, isLastInPeriod, isLastInWindow, isLastInTimeline);
            }
            j11 = this.period.durationUs;
        }
        j10 = j11;
        if (j10 != androidx.media3.common.C.TIME_UNSET) {
        }
        if (j12 != androidx.media3.common.C.TIME_UNSET) {
            if (!isLastInTimeline) {
                i2 = 0;
            }
            j13 = Math.max(0L, j12 - i2);
        }
        return new MediaPeriodInfo(mediaPeriodId, j13, j8, j10, j12, z6, z8, isLastInPeriod, isLastInWindow, isLastInTimeline);
    }

    private MediaPeriodInfo getMediaPeriodInfoForPeriodPosition(Timeline timeline, Object obj, long j7, long j8) {
        MediaSource.MediaPeriodId resolveMediaPeriodIdForAds = resolveMediaPeriodIdForAds(timeline, obj, j7, j8, this.window, this.period);
        return resolveMediaPeriodIdForAds.isAd() ? getMediaPeriodInfoForAd(timeline, resolveMediaPeriodIdForAds.periodUid, resolveMediaPeriodIdForAds.adGroupIndex, resolveMediaPeriodIdForAds.adIndexInAdGroup, j7, resolveMediaPeriodIdForAds.windowSequenceNumber, false) : getMediaPeriodInfoForContent(timeline, resolveMediaPeriodIdForAds.periodUid, j7, androidx.media3.common.C.TIME_UNSET, resolveMediaPeriodIdForAds.windowSequenceNumber, false);
    }

    private long getMinStartPositionAfterAdGroupUs(Timeline timeline, Object obj, int i2) {
        timeline.getPeriodByUid(obj, this.period);
        long adGroupTimeUs = this.period.getAdGroupTimeUs(i2);
        return adGroupTimeUs == Long.MIN_VALUE ? this.period.durationUs : this.period.getContentResumeOffsetUs(i2) + adGroupTimeUs;
    }

    private boolean hasServerSideInsertedAds(Object obj, Timeline timeline) {
        int adGroupCount = timeline.getPeriodByUid(obj, this.period).getAdGroupCount();
        int removedAdGroupCount = this.period.getRemovedAdGroupCount();
        if (adGroupCount <= 0 || !this.period.isServerSideInsertedAdGroup(removedAdGroupCount)) {
            return false;
        }
        return adGroupCount > 1 || this.period.getAdGroupTimeUs(removedAdGroupCount) != Long.MIN_VALUE;
    }

    private boolean isLastInPeriod(MediaSource.MediaPeriodId mediaPeriodId) {
        return !mediaPeriodId.isAd() && mediaPeriodId.nextAdGroupIndex == -1;
    }

    private boolean isLastInTimeline(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, boolean z6) {
        int indexOfPeriod = timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        return !timeline.getWindow(timeline.getPeriod(indexOfPeriod, this.period).windowIndex, this.window).isDynamic && timeline.isLastPeriod(indexOfPeriod, this.period, this.window, this.repeatMode, this.shuffleModeEnabled) && z6;
    }

    private boolean isLastInWindow(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        if (isLastInPeriod(mediaPeriodId)) {
            return timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, this.window).lastPeriodIndex == timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        }
        return false;
    }

    private static boolean isSkippableAdPeriod(Timeline.Period period) {
        int adGroupCount = period.getAdGroupCount();
        if (adGroupCount != 0 && ((adGroupCount != 1 || !period.isLivePostrollPlaceholder(0)) && period.isServerSideInsertedAdGroup(period.getRemovedAdGroupCount()))) {
            long j7 = 0;
            if (period.getAdGroupIndexForPositionUs(0L) == -1) {
                if (period.durationUs == 0) {
                    return true;
                }
                int i2 = adGroupCount - (period.isLivePostrollPlaceholder(adGroupCount + (-1)) ? 2 : 1);
                for (int i7 = 0; i7 <= i2; i7++) {
                    j7 += period.getContentResumeOffsetUs(i7);
                }
                if (period.durationUs <= j7) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyQueueUpdate$0(C0248s c0248s, MediaSource.MediaPeriodId mediaPeriodId) {
        this.analyticsCollector.updateMediaPeriodQueueInfo(c0248s.build(), mediaPeriodId);
    }

    private void notifyQueueUpdate() {
        C0248s builder = ImmutableList.builder();
        for (MediaPeriodHolder mediaPeriodHolder = this.playing; mediaPeriodHolder != null; mediaPeriodHolder = mediaPeriodHolder.getNext()) {
            builder.add((Object) mediaPeriodHolder.info.id);
        }
        MediaPeriodHolder mediaPeriodHolder2 = this.reading;
        this.analyticsCollectorHandler.post(new M(this, builder, mediaPeriodHolder2 == null ? null : mediaPeriodHolder2.info.id, 0));
    }

    private void releaseAndResetPreloadPriorityList(List<MediaPeriodHolder> list) {
        for (int i2 = 0; i2 < this.preloadPriorityList.size(); i2++) {
            this.preloadPriorityList.get(i2).release();
        }
        this.preloadPriorityList = list;
        this.preloading = null;
        maybeUpdatePreloadMediaPeriodHolder();
    }

    private MediaPeriodHolder removePreloadedMediaPeriodHolder(MediaPeriodInfo mediaPeriodInfo) {
        for (int i2 = 0; i2 < this.preloadPriorityList.size(); i2++) {
            if (this.preloadPriorityList.get(i2).canBeUsedForMediaPeriodInfo(mediaPeriodInfo)) {
                return this.preloadPriorityList.remove(i2);
            }
        }
        return null;
    }

    private long resolvePeriodUidToWindowSequenceNumber(Timeline timeline, Object obj) {
        int indexOfPeriod;
        int i2 = timeline.getPeriodByUid(obj, this.period).windowIndex;
        Object obj2 = this.oldFrontPeriodUid;
        if (obj2 != null && (indexOfPeriod = timeline.getIndexOfPeriod(obj2)) != -1 && timeline.getPeriod(indexOfPeriod, this.period).windowIndex == i2) {
            return this.oldFrontPeriodWindowSequenceNumber;
        }
        for (MediaPeriodHolder mediaPeriodHolder = this.playing; mediaPeriodHolder != null; mediaPeriodHolder = mediaPeriodHolder.getNext()) {
            if (mediaPeriodHolder.uid.equals(obj)) {
                return mediaPeriodHolder.info.id.windowSequenceNumber;
            }
        }
        for (MediaPeriodHolder mediaPeriodHolder2 = this.playing; mediaPeriodHolder2 != null; mediaPeriodHolder2 = mediaPeriodHolder2.getNext()) {
            int indexOfPeriod2 = timeline.getIndexOfPeriod(mediaPeriodHolder2.uid);
            if (indexOfPeriod2 != -1 && timeline.getPeriod(indexOfPeriod2, this.period).windowIndex == i2) {
                return mediaPeriodHolder2.info.id.windowSequenceNumber;
            }
        }
        long resolvePeriodUidToWindowSequenceNumberInPreloadPeriods = resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(obj);
        if (resolvePeriodUidToWindowSequenceNumberInPreloadPeriods != -1) {
            return resolvePeriodUidToWindowSequenceNumberInPreloadPeriods;
        }
        long j7 = this.nextWindowSequenceNumber;
        this.nextWindowSequenceNumber = 1 + j7;
        if (this.playing == null) {
            this.oldFrontPeriodUid = obj;
            this.oldFrontPeriodWindowSequenceNumber = j7;
        }
        return j7;
    }

    private long resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Object obj) {
        for (int i2 = 0; i2 < this.preloadPriorityList.size(); i2++) {
            MediaPeriodHolder mediaPeriodHolder = this.preloadPriorityList.get(i2);
            if (mediaPeriodHolder.uid.equals(obj)) {
                return mediaPeriodHolder.info.id.windowSequenceNumber;
            }
        }
        return -1L;
    }

    private int updateForPlaybackModeChange(Timeline timeline) {
        Timeline timeline2;
        MediaPeriodHolder mediaPeriodHolder = this.playing;
        if (mediaPeriodHolder == null) {
            return 0;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(mediaPeriodHolder.uid);
        while (true) {
            timeline2 = timeline;
            indexOfPeriod = timeline2.getNextPeriodIndex(indexOfPeriod, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            while (((MediaPeriodHolder) P3.v.checkNotNull(mediaPeriodHolder)).getNext() != null && !mediaPeriodHolder.info.isLastInTimelinePeriod) {
                mediaPeriodHolder = mediaPeriodHolder.getNext();
            }
            MediaPeriodHolder next = mediaPeriodHolder.getNext();
            if (indexOfPeriod == -1 || next == null || timeline2.getIndexOfPeriod(next.uid) != indexOfPeriod) {
                break;
            }
            mediaPeriodHolder = next;
            timeline = timeline2;
        }
        int removeAfter = removeAfter(mediaPeriodHolder);
        mediaPeriodHolder.info = getUpdatedMediaPeriodInfo(timeline2, mediaPeriodHolder.info);
        return removeAfter;
    }

    public MediaPeriodHolder advancePlayingPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.playing;
        if (mediaPeriodHolder == null) {
            return null;
        }
        if (mediaPeriodHolder == this.reading) {
            this.reading = mediaPeriodHolder.getNext();
        }
        MediaPeriodHolder mediaPeriodHolder2 = this.playing;
        if (mediaPeriodHolder2 == this.prewarming) {
            this.prewarming = mediaPeriodHolder2.getNext();
        }
        this.playing.release();
        int i2 = this.length - 1;
        this.length = i2;
        if (i2 == 0) {
            this.loading = null;
            MediaPeriodHolder mediaPeriodHolder3 = this.playing;
            this.oldFrontPeriodUid = mediaPeriodHolder3.uid;
            this.oldFrontPeriodWindowSequenceNumber = mediaPeriodHolder3.info.id.windowSequenceNumber;
        }
        this.playing = this.playing.getNext();
        notifyQueueUpdate();
        return this.playing;
    }

    public MediaPeriodHolder advancePrewarmingPeriod() {
        this.prewarming = ((MediaPeriodHolder) P3.v.checkNotNull(this.prewarming)).getNext();
        notifyQueueUpdate();
        return (MediaPeriodHolder) P3.v.checkNotNull(this.prewarming);
    }

    public MediaPeriodHolder advanceReadingPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.prewarming;
        MediaPeriodHolder mediaPeriodHolder2 = this.reading;
        if (mediaPeriodHolder == mediaPeriodHolder2) {
            this.prewarming = ((MediaPeriodHolder) P3.v.checkNotNull(mediaPeriodHolder2)).getNext();
        }
        this.reading = ((MediaPeriodHolder) P3.v.checkNotNull(this.reading)).getNext();
        notifyQueueUpdate();
        return (MediaPeriodHolder) P3.v.checkNotNull(this.reading);
    }

    public void clear() {
        if (this.length == 0) {
            return;
        }
        MediaPeriodHolder mediaPeriodHolder = (MediaPeriodHolder) P3.v.checkNotNull(this.playing);
        this.oldFrontPeriodUid = mediaPeriodHolder.uid;
        this.oldFrontPeriodWindowSequenceNumber = mediaPeriodHolder.info.id.windowSequenceNumber;
        while (mediaPeriodHolder != null) {
            mediaPeriodHolder.release();
            mediaPeriodHolder = mediaPeriodHolder.getNext();
        }
        this.playing = null;
        this.loading = null;
        this.reading = null;
        this.prewarming = null;
        this.length = 0;
        notifyQueueUpdate();
    }

    public MediaPeriodHolder enqueueNextMediaPeriodHolder(MediaPeriodInfo mediaPeriodInfo) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        long rendererOffset = mediaPeriodHolder == null ? INITIAL_RENDERER_POSITION_OFFSET_US : (mediaPeriodHolder.getRendererOffset() + this.loading.info.durationUs) - mediaPeriodInfo.startPositionUs;
        MediaPeriodHolder removePreloadedMediaPeriodHolder = removePreloadedMediaPeriodHolder(mediaPeriodInfo);
        if (removePreloadedMediaPeriodHolder == null) {
            removePreloadedMediaPeriodHolder = this.mediaPeriodHolderFactory.create(mediaPeriodInfo, rendererOffset);
        } else {
            removePreloadedMediaPeriodHolder.info = mediaPeriodInfo;
            removePreloadedMediaPeriodHolder.setRendererOffset(rendererOffset);
        }
        MediaPeriodHolder mediaPeriodHolder2 = this.loading;
        if (mediaPeriodHolder2 != null) {
            mediaPeriodHolder2.setNext(removePreloadedMediaPeriodHolder);
        } else {
            this.playing = removePreloadedMediaPeriodHolder;
            this.reading = removePreloadedMediaPeriodHolder;
            this.prewarming = removePreloadedMediaPeriodHolder;
        }
        this.oldFrontPeriodUid = null;
        this.loading = removePreloadedMediaPeriodHolder;
        this.length++;
        notifyQueueUpdate();
        return removePreloadedMediaPeriodHolder;
    }

    public MediaPeriodHolder getLoadingPeriod() {
        return this.loading;
    }

    public MediaPeriodInfo getNextMediaPeriodInfo(long j7, PlaybackInfo playbackInfo) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder == null ? getFirstMediaPeriodInfo(playbackInfo) : getFollowingMediaPeriodInfo(playbackInfo.timeline, mediaPeriodHolder, j7);
    }

    public MediaPeriodHolder getPlayingPeriod() {
        return this.playing;
    }

    public MediaPeriodHolder getPreloadHolderByMediaPeriod(MediaPeriod mediaPeriod) {
        for (int i2 = 0; i2 < this.preloadPriorityList.size(); i2++) {
            MediaPeriodHolder mediaPeriodHolder = this.preloadPriorityList.get(i2);
            if (mediaPeriodHolder.mediaPeriod == mediaPeriod) {
                return mediaPeriodHolder;
            }
        }
        return null;
    }

    public MediaPeriodHolder getPreloadingPeriod() {
        return this.preloading;
    }

    public MediaPeriodHolder getPrewarmingPeriod() {
        return this.prewarming;
    }

    public MediaPeriodHolder getReadingPeriod() {
        return this.reading;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media3.exoplayer.MediaPeriodInfo getUpdatedMediaPeriodInfo(androidx.media3.common.Timeline r18, androidx.media3.exoplayer.MediaPeriodInfo r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            androidx.media3.exoplayer.source.MediaSource$MediaPeriodId r3 = r2.id
            boolean r13 = r0.isLastInPeriod(r3)
            boolean r14 = r0.isLastInWindow(r1, r3)
            boolean r15 = r0.isLastInTimeline(r1, r3, r13)
            androidx.media3.exoplayer.source.MediaSource$MediaPeriodId r4 = r2.id
            java.lang.Object r4 = r4.periodUid
            androidx.media3.common.Timeline$Period r5 = r0.period
            r1.getPeriodByUid(r4, r5)
            boolean r1 = r3.isAd()
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = -1
            if (r1 != 0) goto L35
            int r1 = r3.nextAdGroupIndex
            if (r1 != r6) goto L2e
            goto L35
        L2e:
            androidx.media3.common.Timeline$Period r7 = r0.period
            long r7 = r7.getAdGroupTimeUs(r1)
            goto L36
        L35:
            r7 = r4
        L36:
            boolean r1 = r3.isAd()
            if (r1 == 0) goto L48
            androidx.media3.common.Timeline$Period r1 = r0.period
            int r4 = r3.adGroupIndex
            int r5 = r3.adIndexInAdGroup
            long r4 = r1.getAdDurationUs(r4, r5)
        L46:
            r9 = r4
            goto L5c
        L48:
            int r1 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r1 == 0) goto L55
            r4 = -9223372036854775808
            int r1 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r1 != 0) goto L53
            goto L55
        L53:
            r9 = r7
            goto L5c
        L55:
            androidx.media3.common.Timeline$Period r1 = r0.period
            long r4 = r1.getDurationUs()
            goto L46
        L5c:
            boolean r1 = r3.isAd()
            if (r1 == 0) goto L6c
            androidx.media3.common.Timeline$Period r1 = r0.period
            int r4 = r3.adGroupIndex
            boolean r1 = r1.isServerSideInsertedAdGroup(r4)
        L6a:
            r12 = r1
            goto L7c
        L6c:
            int r1 = r3.nextAdGroupIndex
            if (r1 == r6) goto L7a
            androidx.media3.common.Timeline$Period r4 = r0.period
            boolean r1 = r4.isServerSideInsertedAdGroup(r1)
            if (r1 == 0) goto L7a
            r1 = 1
            goto L6a
        L7a:
            r1 = 0
            goto L6a
        L7c:
            androidx.media3.exoplayer.MediaPeriodInfo r1 = new androidx.media3.exoplayer.MediaPeriodInfo
            r5 = r3
            long r3 = r2.startPositionUs
            r11 = r5
            long r5 = r2.requestedContentPositionUs
            boolean r2 = r2.isPrecededByTransitionFromSameStream
            r16 = r11
            r11 = r2
            r2 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14, r15)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.MediaPeriodQueue.getUpdatedMediaPeriodInfo(androidx.media3.common.Timeline, androidx.media3.exoplayer.MediaPeriodInfo):androidx.media3.exoplayer.MediaPeriodInfo");
    }

    public void invalidatePreloadPool(Timeline timeline) {
        MediaPeriodHolder mediaPeriodHolder;
        if (this.preloadConfiguration.targetPreloadDurationUs == androidx.media3.common.C.TIME_UNSET || (mediaPeriodHolder = this.loading) == null) {
            releasePreloadPool();
            return;
        }
        ArrayList arrayList = new ArrayList();
        Pair<Object, Long> defaultPeriodPositionOfNextWindow = getDefaultPeriodPositionOfNextWindow(timeline, mediaPeriodHolder.info.id.periodUid, 0L);
        if (defaultPeriodPositionOfNextWindow != null && !timeline.getWindow(timeline.getPeriodByUid(defaultPeriodPositionOfNextWindow.first, this.period).windowIndex, this.window).isLive()) {
            long resolvePeriodUidToWindowSequenceNumberInPreloadPeriods = resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(defaultPeriodPositionOfNextWindow.first);
            if (resolvePeriodUidToWindowSequenceNumberInPreloadPeriods == -1) {
                resolvePeriodUidToWindowSequenceNumberInPreloadPeriods = this.nextWindowSequenceNumber;
                this.nextWindowSequenceNumber = 1 + resolvePeriodUidToWindowSequenceNumberInPreloadPeriods;
            }
            MediaPeriodInfo mediaPeriodInfoForPeriodPosition = getMediaPeriodInfoForPeriodPosition(timeline, defaultPeriodPositionOfNextWindow.first, ((Long) defaultPeriodPositionOfNextWindow.second).longValue(), resolvePeriodUidToWindowSequenceNumberInPreloadPeriods);
            MediaPeriodHolder removePreloadedMediaPeriodHolder = removePreloadedMediaPeriodHolder(mediaPeriodInfoForPeriodPosition);
            if (removePreloadedMediaPeriodHolder == null) {
                removePreloadedMediaPeriodHolder = this.mediaPeriodHolderFactory.create(mediaPeriodInfoForPeriodPosition, (mediaPeriodHolder.getRendererOffset() + mediaPeriodHolder.info.durationUs) - mediaPeriodInfoForPeriodPosition.startPositionUs);
            }
            arrayList.add(removePreloadedMediaPeriodHolder);
        }
        releaseAndResetPreloadPriorityList(arrayList);
    }

    public boolean isLoading(MediaPeriod mediaPeriod) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder != null && mediaPeriodHolder.mediaPeriod == mediaPeriod;
    }

    public boolean isPreloading(MediaPeriod mediaPeriod) {
        MediaPeriodHolder mediaPeriodHolder = this.preloading;
        return mediaPeriodHolder != null && mediaPeriodHolder.mediaPeriod == mediaPeriod;
    }

    public void maybeUpdatePreloadMediaPeriodHolder() {
        MediaPeriodHolder mediaPeriodHolder = this.preloading;
        if (mediaPeriodHolder == null || mediaPeriodHolder.isFullyPreloaded()) {
            this.preloading = null;
            for (int i2 = 0; i2 < this.preloadPriorityList.size(); i2++) {
                MediaPeriodHolder mediaPeriodHolder2 = this.preloadPriorityList.get(i2);
                if (!mediaPeriodHolder2.isFullyPreloaded()) {
                    this.preloading = mediaPeriodHolder2;
                    return;
                }
            }
        }
    }

    public void reevaluateBuffer(long j7) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        if (mediaPeriodHolder != null) {
            mediaPeriodHolder.reevaluateBuffer(j7);
        }
    }

    public void releasePreloadPool() {
        if (this.preloadPriorityList.isEmpty()) {
            return;
        }
        releaseAndResetPreloadPriorityList(new ArrayList());
    }

    public int removeAfter(MediaPeriodHolder mediaPeriodHolder) {
        P3.v.checkNotNull(mediaPeriodHolder);
        int i2 = 0;
        if (mediaPeriodHolder.equals(this.loading)) {
            return 0;
        }
        this.loading = mediaPeriodHolder;
        while (mediaPeriodHolder.getNext() != null) {
            mediaPeriodHolder = (MediaPeriodHolder) P3.v.checkNotNull(mediaPeriodHolder.getNext());
            if (mediaPeriodHolder == this.reading) {
                MediaPeriodHolder mediaPeriodHolder2 = this.playing;
                this.reading = mediaPeriodHolder2;
                this.prewarming = mediaPeriodHolder2;
                i2 = 3;
            }
            if (mediaPeriodHolder == this.prewarming) {
                this.prewarming = this.reading;
                i2 |= 2;
            }
            mediaPeriodHolder.release();
            this.length--;
        }
        ((MediaPeriodHolder) P3.v.checkNotNull(this.loading)).setNext(null);
        notifyQueueUpdate();
        return i2;
    }

    public MediaSource.MediaPeriodId resolveMediaPeriodIdForAds(Timeline timeline, Object obj, long j7) {
        return resolveMediaPeriodIdForAds(timeline, obj, j7, resolvePeriodUidToWindowSequenceNumber(timeline, obj), this.window, this.period);
    }

    public MediaSource.MediaPeriodId resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Timeline timeline, Object obj, long j7) {
        long resolvePeriodUidToWindowSequenceNumber = resolvePeriodUidToWindowSequenceNumber(timeline, obj);
        timeline.getPeriodByUid(obj, this.period);
        timeline.getWindow(this.period.windowIndex, this.window);
        boolean z6 = false;
        for (int indexOfPeriod = timeline.getIndexOfPeriod(obj); indexOfPeriod >= this.window.firstPeriodIndex; indexOfPeriod--) {
            timeline.getPeriod(indexOfPeriod, this.period, true);
            boolean z7 = this.period.getAdGroupCount() > 0;
            z6 |= z7;
            Timeline.Period period = this.period;
            if (period.getAdGroupIndexForPositionUs(period.durationUs) != -1) {
                obj = P3.v.checkNotNull(this.period.uid);
            }
            if (z6 && (!z7 || this.period.durationUs != 0)) {
                break;
            }
        }
        return resolveMediaPeriodIdForAds(timeline, obj, j7, resolvePeriodUidToWindowSequenceNumber, this.window, this.period);
    }

    public boolean shouldLoadNextMediaPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        if (mediaPeriodHolder != null) {
            return !mediaPeriodHolder.info.isFinal && mediaPeriodHolder.isFullyBuffered() && this.loading.info.durationUs != androidx.media3.common.C.TIME_UNSET && this.length < 100;
        }
        return true;
    }

    public void updatePreloadConfiguration(Timeline timeline, ExoPlayer.PreloadConfiguration preloadConfiguration) {
        this.preloadConfiguration = preloadConfiguration;
        invalidatePreloadPool(timeline);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a5 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int updateQueuedPeriods(androidx.media3.common.Timeline r18, long r19, long r21, long r23) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            androidx.media3.exoplayer.MediaPeriodHolder r2 = r0.playing
            r3 = 0
        L7:
            if (r2 == 0) goto Lb6
            androidx.media3.exoplayer.MediaPeriodInfo r5 = r2.info
            if (r3 != 0) goto L14
            androidx.media3.exoplayer.MediaPeriodInfo r3 = r0.getUpdatedMediaPeriodInfo(r1, r5)
            r6 = r19
            goto L25
        L14:
            r6 = r19
            androidx.media3.exoplayer.MediaPeriodInfo r8 = r0.getFollowingMediaPeriodInfo(r1, r3, r6)
            if (r8 == 0) goto Lb1
            boolean r9 = r0.canKeepMediaPeriodHolder(r5, r8)
            if (r9 != 0) goto L24
            goto Lb1
        L24:
            r3 = r8
        L25:
            long r8 = r5.requestedContentPositionUs
            androidx.media3.exoplayer.MediaPeriodInfo r8 = r3.copyWithRequestedContentPositionUs(r8)
            r2.info = r8
            long r8 = r5.durationUs
            long r10 = r3.durationUs
            int r8 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r8 == 0) goto La6
            r2.updateClipping()
            long r6 = r3.durationUs
            r8 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 != 0) goto L49
            r6 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            goto L4d
        L49:
            long r6 = r2.toRendererTime(r6)
        L4d:
            androidx.media3.exoplayer.MediaPeriodHolder r1 = r0.reading
            r10 = 1
            r11 = -9223372036854775808
            if (r2 != r1) goto L64
            androidx.media3.exoplayer.MediaPeriodInfo r1 = r2.info
            boolean r1 = r1.isFollowedByTransitionToSameStream
            if (r1 != 0) goto L64
            int r1 = (r21 > r11 ? 1 : (r21 == r11 ? 0 : -1))
            if (r1 == 0) goto L62
            int r1 = (r21 > r6 ? 1 : (r21 == r6 ? 0 : -1))
            if (r1 < 0) goto L64
        L62:
            r1 = r10
            goto L65
        L64:
            r1 = 0
        L65:
            androidx.media3.exoplayer.MediaPeriodHolder r13 = r0.prewarming
            if (r2 != r13) goto L73
            int r13 = (r23 > r11 ? 1 : (r23 == r11 ? 0 : -1))
            if (r13 == 0) goto L71
            int r6 = (r23 > r6 ? 1 : (r23 == r6 ? 0 : -1))
            if (r6 < 0) goto L73
        L71:
            r6 = r10
            goto L74
        L73:
            r6 = 0
        L74:
            int r2 = r0.removeAfter(r2)
            if (r2 == 0) goto L7b
            return r2
        L7b:
            long r13 = r5.durationUs
            int r2 = (r13 > r8 ? 1 : (r13 == r8 ? 0 : -1))
            r15 = 0
            if (r2 != 0) goto L94
            long r4 = r5.endPositionUs
            int r2 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r2 != 0) goto L94
            long r2 = r3.endPositionUs
            int r4 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r4 == 0) goto L94
            int r2 = (r2 > r11 ? 1 : (r2 == r11 ? 0 : -1))
            if (r2 == 0) goto L94
            r2 = r10
            goto L95
        L94:
            r2 = r15
        L95:
            if (r1 == 0) goto L9f
            int r1 = (r13 > r8 ? 1 : (r13 == r8 ? 0 : -1))
            if (r1 != 0) goto L9d
            if (r2 == 0) goto L9f
        L9d:
            r4 = r10
            goto La0
        L9f:
            r4 = r15
        La0:
            if (r6 == 0) goto La5
            r1 = r4 | 2
            return r1
        La5:
            return r4
        La6:
            androidx.media3.exoplayer.MediaPeriodHolder r3 = r2.getNext()
            r16 = r3
            r3 = r2
            r2 = r16
            goto L7
        Lb1:
            int r1 = r0.removeAfter(r3)
            return r1
        Lb6:
            r15 = 0
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.MediaPeriodQueue.updateQueuedPeriods(androidx.media3.common.Timeline, long, long, long):int");
    }

    public int updateRepeatMode(Timeline timeline, int i2) {
        this.repeatMode = i2;
        return updateForPlaybackModeChange(timeline);
    }

    public int updateShuffleModeEnabled(Timeline timeline, boolean z6) {
        this.shuffleModeEnabled = z6;
        return updateForPlaybackModeChange(timeline);
    }

    private static MediaSource.MediaPeriodId resolveMediaPeriodIdForAds(Timeline timeline, Object obj, long j7, long j8, Timeline.Window window, Timeline.Period period) {
        timeline.getPeriodByUid(obj, period);
        timeline.getWindow(period.windowIndex, window);
        for (int indexOfPeriod = timeline.getIndexOfPeriod(obj); isSkippableAdPeriod(period) && indexOfPeriod <= window.lastPeriodIndex; indexOfPeriod++) {
            timeline.getPeriod(indexOfPeriod, period, true);
            obj = P3.v.checkNotNull(period.uid);
        }
        timeline.getPeriodByUid(obj, period);
        int adGroupIndexForPositionUs = period.getAdGroupIndexForPositionUs(j7);
        if (adGroupIndexForPositionUs == -1) {
            return new MediaSource.MediaPeriodId(obj, j8, period.getAdGroupIndexAfterPositionUs(j7));
        }
        return new MediaSource.MediaPeriodId(obj, adGroupIndexForPositionUs, period.getFirstAdIndexToPlay(adGroupIndexForPositionUs), j8);
    }
}
