package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7241b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7242e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f7243f;

    public /* synthetic */ e(AnalyticsListener.EventTime eventTime, int i2, boolean z6) {
        this.f7241b = i2;
        this.f7242e = eventTime;
        this.f7243f = z6;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7241b) {
            case 0:
                DefaultAnalyticsCollector.lambda$onIsLoadingChanged$35(this.f7242e, this.f7243f, analyticsListener);
                break;
            case 1:
                analyticsListener.onSkipSilenceEnabledChanged(this.f7242e, this.f7243f);
                break;
            case 2:
                analyticsListener.onIsPlayingChanged(this.f7242e, this.f7243f);
                break;
            default:
                analyticsListener.onShuffleModeChanged(this.f7242e, this.f7243f);
                break;
        }
    }
}
