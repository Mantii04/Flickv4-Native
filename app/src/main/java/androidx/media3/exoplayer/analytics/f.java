package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7244b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7245e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f7246f;

    public /* synthetic */ f(AnalyticsListener.EventTime eventTime, String str, int i2) {
        this.f7244b = i2;
        this.f7245e = eventTime;
        this.f7246f = str;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7244b) {
            case 0:
                analyticsListener.onAudioDecoderReleased(this.f7245e, this.f7246f);
                break;
            default:
                analyticsListener.onVideoDecoderReleased(this.f7245e, this.f7246f);
                break;
        }
    }
}
