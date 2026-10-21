package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7247b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7248e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f7249f;

    public /* synthetic */ g(AnalyticsListener.EventTime eventTime, int i2, int i7) {
        this.f7247b = i7;
        this.f7248e = eventTime;
        this.f7249f = i2;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7247b) {
            case 0:
                analyticsListener.onTimelineChanged(this.f7248e, this.f7249f);
                break;
            case 1:
                analyticsListener.onPlaybackSuppressionReasonChanged(this.f7248e, this.f7249f);
                break;
            case 2:
                analyticsListener.onDroppedSeeksWhileScrubbing(this.f7248e, this.f7249f);
                break;
            case 3:
                analyticsListener.onPlaybackStateChanged(this.f7248e, this.f7249f);
                break;
            case 4:
                DefaultAnalyticsCollector.lambda$onDrmSessionAcquired$64(this.f7248e, this.f7249f, analyticsListener);
                break;
            case 5:
                analyticsListener.onAudioSessionIdChanged(this.f7248e, this.f7249f);
                break;
            default:
                analyticsListener.onRepeatModeChanged(this.f7248e, this.f7249f);
                break;
        }
    }
}
