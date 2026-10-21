package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.MediaLoadData;

/* loaded from: classes.dex */
public final /* synthetic */ class r implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7287b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7288e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f7289f;

    public /* synthetic */ r(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData, int i2) {
        this.f7287b = i2;
        this.f7288e = eventTime;
        this.f7289f = mediaLoadData;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7287b) {
            case 0:
                analyticsListener.onDownstreamFormatChanged(this.f7288e, this.f7289f);
                break;
            default:
                analyticsListener.onUpstreamDiscarded(this.f7288e, this.f7289f);
                break;
        }
    }
}
