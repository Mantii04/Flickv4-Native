package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7257b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7258e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Exception f7259f;

    public /* synthetic */ j(AnalyticsListener.EventTime eventTime, Exception exc, int i2) {
        this.f7257b = i2;
        this.f7258e = eventTime;
        this.f7259f = exc;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7257b) {
            case 0:
                analyticsListener.onVideoCodecError(this.f7258e, this.f7259f);
                break;
            case 1:
                analyticsListener.onDrmSessionManagerError(this.f7258e, this.f7259f);
                break;
            case 2:
                analyticsListener.onAudioCodecError(this.f7258e, this.f7259f);
                break;
            default:
                analyticsListener.onAudioSinkError(this.f7258e, this.f7259f);
                break;
        }
    }
}
