package androidx.media3.exoplayer.analytics;

import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class p implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7280b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7281e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PlaybackException f7282f;

    public /* synthetic */ p(AnalyticsListener.EventTime eventTime, PlaybackException playbackException, int i2) {
        this.f7280b = i2;
        this.f7281e = eventTime;
        this.f7282f = playbackException;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7280b) {
            case 0:
                analyticsListener.onPlayerErrorChanged(this.f7281e, this.f7282f);
                break;
            default:
                analyticsListener.onPlayerError(this.f7281e, this.f7282f);
                break;
        }
    }
}
