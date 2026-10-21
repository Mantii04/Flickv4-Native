package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7235b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7236e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DecoderCounters f7237f;

    public /* synthetic */ c(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters, int i2) {
        this.f7235b = i2;
        this.f7236e = eventTime;
        this.f7237f = decoderCounters;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7235b) {
            case 0:
                analyticsListener.onAudioEnabled(this.f7236e, this.f7237f);
                break;
            case 1:
                analyticsListener.onAudioDisabled(this.f7236e, this.f7237f);
                break;
            case 2:
                analyticsListener.onVideoDisabled(this.f7236e, this.f7237f);
                break;
            default:
                analyticsListener.onVideoEnabled(this.f7236e, this.f7237f);
                break;
        }
    }
}
