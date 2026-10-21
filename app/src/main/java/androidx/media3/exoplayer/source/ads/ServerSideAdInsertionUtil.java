package androidx.media3.exoplayer.source.ads;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.C;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class ServerSideAdInsertionUtil {
    private ServerSideAdInsertionUtil() {
    }

    public static AdPlaybackState addAdGroupToAdPlaybackState(AdPlaybackState adPlaybackState, long j7, long j8, long... jArr) {
        long mediaPeriodPositionUsForContent = getMediaPeriodPositionUsForContent(j7, -1, adPlaybackState);
        int i2 = adPlaybackState.removedAdGroupCount;
        while (i2 < adPlaybackState.adGroupCount && adPlaybackState.getAdGroup(i2).timeUs != Long.MIN_VALUE && adPlaybackState.getAdGroup(i2).timeUs <= mediaPeriodPositionUsForContent) {
            i2++;
        }
        AdPlaybackState withContentResumeOffsetUs = adPlaybackState.withNewAdGroup(i2, mediaPeriodPositionUsForContent).withIsServerSideInserted(i2, true).withAdCount(i2, jArr.length).withAdDurationsUs(i2, jArr).withContentResumeOffsetUs(i2, j8);
        AdPlaybackState adPlaybackState2 = withContentResumeOffsetUs;
        for (int i7 = 0; i7 < jArr.length && jArr[i7] == 0; i7++) {
            adPlaybackState2 = adPlaybackState2.withSkippedAd(i2, i7);
        }
        return correctFollowingAdGroupTimes(adPlaybackState2, i2, Util.sum(jArr), j8);
    }

    private static AdPlaybackState correctFollowingAdGroupTimes(AdPlaybackState adPlaybackState, int i2, long j7, long j8) {
        long j9 = (-j7) + j8;
        while (true) {
            i2++;
            if (i2 >= adPlaybackState.adGroupCount) {
                return adPlaybackState;
            }
            long j10 = adPlaybackState.getAdGroup(i2).timeUs;
            if (j10 != Long.MIN_VALUE) {
                adPlaybackState = adPlaybackState.withAdGroupTimeUs(i2, j10 + j9);
            }
        }
    }

    public static int getAdCountInGroup(AdPlaybackState adPlaybackState, int i2) {
        int i7 = adPlaybackState.getAdGroup(i2).count;
        if (i7 == -1) {
            return 0;
        }
        return i7;
    }

    public static long getMediaPeriodPositionUs(long j7, MediaSource.MediaPeriodId mediaPeriodId, AdPlaybackState adPlaybackState) {
        return mediaPeriodId.isAd() ? getMediaPeriodPositionUsForAd(j7, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState) : getMediaPeriodPositionUsForContent(j7, mediaPeriodId.nextAdGroupIndex, adPlaybackState);
    }

    public static long getMediaPeriodPositionUsForAd(long j7, int i2, int i7, AdPlaybackState adPlaybackState) {
        int i8;
        AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i2);
        long j8 = j7 - adGroup.timeUs;
        int i9 = adPlaybackState.removedAdGroupCount;
        while (true) {
            i8 = 0;
            if (i9 >= i2) {
                break;
            }
            AdPlaybackState.AdGroup adGroup2 = adPlaybackState.getAdGroup(i9);
            while (i8 < getAdCountInGroup(adPlaybackState, i9)) {
                j8 -= adGroup2.durationsUs[i8];
                i8++;
            }
            j8 += adGroup2.contentResumeOffsetUs;
            i9++;
        }
        if (i7 < getAdCountInGroup(adPlaybackState, i2)) {
            while (i8 < i7) {
                j8 -= adGroup.durationsUs[i8];
                i8++;
            }
        }
        return j8;
    }

    public static long getMediaPeriodPositionUsForContent(long j7, int i2, AdPlaybackState adPlaybackState) {
        if (i2 == -1) {
            i2 = adPlaybackState.adGroupCount;
        }
        long j8 = 0;
        for (int i7 = adPlaybackState.removedAdGroupCount; i7 < i2; i7++) {
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i7);
            long j9 = adGroup.timeUs;
            if (j9 == Long.MIN_VALUE || j9 > j7 - j8) {
                break;
            }
            for (int i8 = 0; i8 < getAdCountInGroup(adPlaybackState, i7); i8++) {
                j8 += adGroup.durationsUs[i8];
            }
            long j10 = adGroup.contentResumeOffsetUs;
            j8 -= j10;
            long j11 = adGroup.timeUs;
            long j12 = j7 - j8;
            if (j10 + j11 > j12) {
                return Math.max(j11, j12);
            }
        }
        return j7 - j8;
    }

    public static long getStreamPositionUs(Player player, Object obj) {
        Timeline currentTimeline = player.getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return C.TIME_UNSET;
        }
        Timeline.Period period = currentTimeline.getPeriod(player.getCurrentPeriodIndex(), new Timeline.Period());
        if (!Objects.equals(period.getAdsId(), obj)) {
            return C.TIME_UNSET;
        }
        if (!player.isPlayingAd()) {
            return getStreamPositionUsForContent(Util.msToUs(player.getCurrentPosition()) - period.getPositionInWindowUs(), -1, period.adPlaybackState);
        }
        return getStreamPositionUsForAd(Util.msToUs(player.getCurrentPosition()), player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup(), period.adPlaybackState);
    }

    public static long getStreamPositionUsForAd(long j7, int i2, int i7, AdPlaybackState adPlaybackState) {
        int i8;
        AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i2);
        long j8 = j7 + adGroup.timeUs;
        int i9 = adPlaybackState.removedAdGroupCount;
        while (true) {
            i8 = 0;
            if (i9 >= i2) {
                break;
            }
            AdPlaybackState.AdGroup adGroup2 = adPlaybackState.getAdGroup(i9);
            while (i8 < getAdCountInGroup(adPlaybackState, i9)) {
                j8 += adGroup2.durationsUs[i8];
                i8++;
            }
            j8 -= adGroup2.contentResumeOffsetUs;
            i9++;
        }
        if (i7 < getAdCountInGroup(adPlaybackState, i2)) {
            while (i8 < i7) {
                j8 += adGroup.durationsUs[i8];
                i8++;
            }
        }
        return j8;
    }

    public static long getStreamPositionUsForContent(long j7, int i2, AdPlaybackState adPlaybackState) {
        if (i2 == -1) {
            i2 = adPlaybackState.adGroupCount;
        }
        long j8 = 0;
        for (int i7 = adPlaybackState.removedAdGroupCount; i7 < i2; i7++) {
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i7);
            long j9 = adGroup.timeUs;
            if (j9 == Long.MIN_VALUE || j9 > j7) {
                break;
            }
            long j10 = j9 + j8;
            for (int i8 = 0; i8 < getAdCountInGroup(adPlaybackState, i7); i8++) {
                j8 += adGroup.durationsUs[i8];
            }
            long j11 = adGroup.contentResumeOffsetUs;
            j8 -= j11;
            if (adGroup.timeUs + j11 > j7) {
                return Math.max(j10, j7 + j8);
            }
        }
        return j7 + j8;
    }

    public static long getStreamPositionUs(long j7, MediaSource.MediaPeriodId mediaPeriodId, AdPlaybackState adPlaybackState) {
        if (mediaPeriodId.isAd()) {
            return getStreamPositionUsForAd(j7, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState);
        }
        return getStreamPositionUsForContent(j7, mediaPeriodId.nextAdGroupIndex, adPlaybackState);
    }
}
