package androidx.media3.exoplayer;

import androidx.media3.exoplayer.source.MediaSource;
import java.util.Objects;

/* loaded from: classes.dex */
final class MediaPeriodInfo {
    public final long durationUs;
    public final long endPositionUs;
    public final MediaSource.MediaPeriodId id;
    public final boolean isFinal;
    public final boolean isFollowedByTransitionToSameStream;
    public final boolean isLastInTimelinePeriod;
    public final boolean isLastInTimelineWindow;
    public final boolean isPrecededByTransitionFromSameStream;
    public final long requestedContentPositionUs;
    public final long startPositionUs;

    public MediaPeriodInfo(MediaSource.MediaPeriodId mediaPeriodId, long j7, long j8, long j9, long j10, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10) {
        boolean z11 = true;
        P3.v.checkArgument(!z10 || z8);
        P3.v.checkArgument(!z9 || z8);
        if (z7 && (z8 || z9 || z10)) {
            z11 = false;
        }
        P3.v.checkArgument(z11);
        this.id = mediaPeriodId;
        this.startPositionUs = j7;
        this.requestedContentPositionUs = j8;
        this.endPositionUs = j9;
        this.durationUs = j10;
        this.isPrecededByTransitionFromSameStream = z6;
        this.isFollowedByTransitionToSameStream = z7;
        this.isLastInTimelinePeriod = z8;
        this.isLastInTimelineWindow = z9;
        this.isFinal = z10;
    }

    public MediaPeriodInfo copyWithRequestedContentPositionUs(long j7) {
        return j7 == this.requestedContentPositionUs ? this : new MediaPeriodInfo(this.id, this.startPositionUs, j7, this.endPositionUs, this.durationUs, this.isPrecededByTransitionFromSameStream, this.isFollowedByTransitionToSameStream, this.isLastInTimelinePeriod, this.isLastInTimelineWindow, this.isFinal);
    }

    public MediaPeriodInfo copyWithStartPositionUs(long j7) {
        return j7 == this.startPositionUs ? this : new MediaPeriodInfo(this.id, j7, this.requestedContentPositionUs, this.endPositionUs, this.durationUs, this.isPrecededByTransitionFromSameStream, this.isFollowedByTransitionToSameStream, this.isLastInTimelinePeriod, this.isLastInTimelineWindow, this.isFinal);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MediaPeriodInfo.class == obj.getClass()) {
            MediaPeriodInfo mediaPeriodInfo = (MediaPeriodInfo) obj;
            if (this.startPositionUs == mediaPeriodInfo.startPositionUs && this.requestedContentPositionUs == mediaPeriodInfo.requestedContentPositionUs && this.endPositionUs == mediaPeriodInfo.endPositionUs && this.durationUs == mediaPeriodInfo.durationUs && this.isPrecededByTransitionFromSameStream == mediaPeriodInfo.isPrecededByTransitionFromSameStream && this.isFollowedByTransitionToSameStream == mediaPeriodInfo.isFollowedByTransitionToSameStream && this.isLastInTimelinePeriod == mediaPeriodInfo.isLastInTimelinePeriod && this.isLastInTimelineWindow == mediaPeriodInfo.isLastInTimelineWindow && this.isFinal == mediaPeriodInfo.isFinal && Objects.equals(this.id, mediaPeriodInfo.id)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((this.id.hashCode() + 527) * 31) + ((int) this.startPositionUs)) * 31) + ((int) this.requestedContentPositionUs)) * 31) + ((int) this.endPositionUs)) * 31) + ((int) this.durationUs)) * 31) + (this.isPrecededByTransitionFromSameStream ? 1 : 0)) * 31) + (this.isFollowedByTransitionToSameStream ? 1 : 0)) * 31) + (this.isLastInTimelinePeriod ? 1 : 0)) * 31) + (this.isLastInTimelineWindow ? 1 : 0)) * 31) + (this.isFinal ? 1 : 0);
    }
}
