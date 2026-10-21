package androidx.media3.exoplayer.source;

import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public abstract class ForwardingTimeline extends Timeline {
    protected final Timeline timeline;

    public ForwardingTimeline(Timeline timeline) {
        this.timeline = timeline;
    }

    @Override // androidx.media3.common.Timeline
    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // androidx.media3.common.Timeline
    public int getFirstWindowIndex(boolean z6) {
        return this.timeline.getFirstWindowIndex(z6);
    }

    @Override // androidx.media3.common.Timeline
    public int getIndexOfPeriod(Object obj) {
        return this.timeline.getIndexOfPeriod(obj);
    }

    @Override // androidx.media3.common.Timeline
    public int getLastWindowIndex(boolean z6) {
        return this.timeline.getLastWindowIndex(z6);
    }

    @Override // androidx.media3.common.Timeline
    public int getNextWindowIndex(int i2, int i7, boolean z6) {
        return this.timeline.getNextWindowIndex(i2, i7, z6);
    }

    @Override // androidx.media3.common.Timeline
    public Timeline.Period getPeriod(int i2, Timeline.Period period, boolean z6) {
        return this.timeline.getPeriod(i2, period, z6);
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period getPeriodByUid(Object obj, Timeline.Period period) {
        return super.getPeriodByUid(obj, period);
    }

    @Override // androidx.media3.common.Timeline
    public int getPeriodCount() {
        return this.timeline.getPeriodCount();
    }

    @Override // androidx.media3.common.Timeline
    public int getPreviousWindowIndex(int i2, int i7, boolean z6) {
        return this.timeline.getPreviousWindowIndex(i2, i7, z6);
    }

    @Override // androidx.media3.common.Timeline
    public Object getUidOfPeriod(int i2) {
        return this.timeline.getUidOfPeriod(i2);
    }

    @Override // androidx.media3.common.Timeline
    public Timeline.Window getWindow(int i2, Timeline.Window window, long j7) {
        return this.timeline.getWindow(i2, window, j7);
    }

    @Override // androidx.media3.common.Timeline
    public int getWindowCount() {
        return this.timeline.getWindowCount();
    }

    @Override // androidx.media3.common.Timeline
    public final int hashCode() {
        return super.hashCode();
    }
}
