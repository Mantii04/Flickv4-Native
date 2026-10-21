package androidx.media3.exoplayer.analytics;

import androidx.media3.common.Format;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* loaded from: classes.dex */
public final /* synthetic */ class t implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7294b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7295e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Format f7296f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ DecoderReuseEvaluation f7297j;

    public /* synthetic */ t(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation, int i2) {
        this.f7294b = i2;
        this.f7295e = eventTime;
        this.f7296f = format;
        this.f7297j = decoderReuseEvaluation;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7294b) {
            case 0:
                analyticsListener.onVideoInputFormatChanged(this.f7295e, this.f7296f, this.f7297j);
                break;
            default:
                analyticsListener.onAudioInputFormatChanged(this.f7295e, this.f7296f, this.f7297j);
                break;
        }
    }
}
