package androidx.media3.exoplayer.analytics;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.audio.AudioSink;

/* loaded from: classes.dex */
public final /* synthetic */ class u implements ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7298b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnalyticsListener.EventTime f7299e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AudioSink.AudioTrackConfig f7300f;

    public /* synthetic */ u(AnalyticsListener.EventTime eventTime, AudioSink.AudioTrackConfig audioTrackConfig, int i2) {
        this.f7298b = i2;
        this.f7299e = eventTime;
        this.f7300f = audioTrackConfig;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f7298b) {
            case 0:
                analyticsListener.onAudioTrackInitialized(this.f7299e, this.f7300f);
                break;
            default:
                analyticsListener.onAudioTrackReleased(this.f7299e, this.f7300f);
                break;
        }
    }
}
