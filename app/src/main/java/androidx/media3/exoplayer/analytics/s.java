package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;

/* loaded from: classes.dex */
public final /* synthetic */ class s implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7290b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7291e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LoadEventInfo f7292f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f7293j;

    public /* synthetic */ s(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i2) {
        this.f7290b = i2;
        this.f7291e = eventTime;
        this.f7292f = loadEventInfo;
        this.f7293j = mediaLoadData;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7290b) {
            case 0:
                analyticsListener.onLoadCanceled(this.f7291e, this.f7292f, this.f7293j);
                break;
            default:
                analyticsListener.onLoadCompleted(this.f7291e, this.f7292f, this.f7293j);
                break;
        }
    }
}
