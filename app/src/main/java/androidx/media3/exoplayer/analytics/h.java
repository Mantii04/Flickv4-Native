package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7250b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7251e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f7252f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ long f7253j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ long f7254m;

    public /* synthetic */ h(AnalyticsListener.EventTime eventTime, int i2, long j7, long j8, int i7) {
        this.f7250b = i7;
        this.f7251e = eventTime;
        this.f7252f = i2;
        this.f7253j = j7;
        this.f7254m = j8;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f7250b) {
            case 0:
                ((AnalyticsListener) obj).onBandwidthEstimate(this.f7251e, this.f7252f, this.f7253j, this.f7254m);
                break;
            default:
                ((AnalyticsListener) obj).onAudioUnderrun(this.f7251e, this.f7252f, this.f7253j, this.f7254m);
                break;
        }
    }
}
