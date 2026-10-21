package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7238b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7239e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f7240f;

    public /* synthetic */ d(AnalyticsListener.EventTime eventTime, int i2, long j7) {
        this.f7238b = i2;
        this.f7239e = eventTime;
        this.f7240f = j7;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7238b) {
            case 0:
                analyticsListener.onSeekForwardIncrementChanged(this.f7239e, this.f7240f);
                break;
            case 1:
                analyticsListener.onAudioPositionAdvancing(this.f7239e, this.f7240f);
                break;
            case 2:
                analyticsListener.onSeekBackIncrementChanged(this.f7239e, this.f7240f);
                break;
            default:
                analyticsListener.onMaxSeekToPreviousPositionChanged(this.f7239e, this.f7240f);
                break;
        }
    }
}
