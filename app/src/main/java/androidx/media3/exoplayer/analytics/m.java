package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7267b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7268e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f7269f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f7270j;

    public /* synthetic */ m(AnalyticsListener.EventTime eventTime, int i2, int i7, boolean z6) {
        this.f7267b = i7;
        this.f7268e = eventTime;
        this.f7270j = z6;
        this.f7269f = i2;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7267b) {
            case 0:
                analyticsListener.onPlayerStateChanged(this.f7268e, this.f7270j, this.f7269f);
                break;
            case 1:
                analyticsListener.onDeviceVolumeChanged(this.f7268e, this.f7269f, this.f7270j);
                break;
            default:
                analyticsListener.onPlayWhenReadyChanged(this.f7268e, this.f7270j, this.f7269f);
                break;
        }
    }

    public /* synthetic */ m(AnalyticsListener.EventTime eventTime, int i2, boolean z6) {
        this.f7267b = 1;
        this.f7268e = eventTime;
        this.f7269f = i2;
        this.f7270j = z6;
    }
}
