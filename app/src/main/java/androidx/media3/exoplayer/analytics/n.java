package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7271b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7272e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f7273f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ long f7274j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ long f7275m;

    public /* synthetic */ n(AnalyticsListener.EventTime eventTime, String str, long j7, long j8, int i2) {
        this.f7271b = i2;
        this.f7272e = eventTime;
        this.f7273f = str;
        this.f7274j = j7;
        this.f7275m = j8;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f7271b) {
            case 0:
                String str = this.f7273f;
                long j7 = this.f7274j;
                DefaultAnalyticsCollector.lambda$onAudioDecoderInitialized$4(this.f7272e, str, j7, this.f7275m, (AnalyticsListener) obj);
                break;
            default:
                String str2 = this.f7273f;
                long j8 = this.f7274j;
                DefaultAnalyticsCollector.lambda$onVideoDecoderInitialized$16(this.f7272e, str2, j8, this.f7275m, (AnalyticsListener) obj);
                break;
        }
    }
}
