package androidx.media3.exoplayer.analytics;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class v implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7301b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7302e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MediaMetadata f7303f;

    public /* synthetic */ v(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata, int i2) {
        this.f7301b = i2;
        this.f7302e = eventTime;
        this.f7303f = mediaMetadata;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7301b) {
            case 0:
                analyticsListener.onPlaylistMetadataChanged(this.f7302e, this.f7303f);
                break;
            default:
                analyticsListener.onMediaMetadataChanged(this.f7302e, this.f7303f);
                break;
        }
    }
}
