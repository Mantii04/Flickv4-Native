package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7233b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7234e;

    public /* synthetic */ b(AnalyticsListener.EventTime eventTime, int i2) {
        this.f7233b = i2;
        this.f7234e = eventTime;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f7233b) {
            case 0:
                ((AnalyticsListener) obj).onPlayerReleased(this.f7234e);
                break;
            case 1:
                ((AnalyticsListener) obj).onDrmKeysRemoved(this.f7234e);
                break;
            case 2:
                ((AnalyticsListener) obj).onDrmKeysRestored(this.f7234e);
                break;
            case 3:
                ((AnalyticsListener) obj).onSeekStarted(this.f7234e);
                break;
            default:
                ((AnalyticsListener) obj).onDrmSessionReleased(this.f7234e);
                break;
        }
    }
}
