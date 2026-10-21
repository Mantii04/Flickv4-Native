package androidx.media3.exoplayer;

import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.StreamVolumeManager;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;

/* renamed from: androidx.media3.exoplayer.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0581k implements P3.p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7425a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7426b;

    public /* synthetic */ C0581k(Object obj, int i2) {
        this.f7425a = i2;
        this.f7426b = obj;
    }

    @Override // P3.p
    public final Object apply(Object obj) {
        AnalyticsCollector lambda$setAnalyticsCollector$21;
        AnalyticsCollector lambda$new$13;
        StreamVolumeManager.StreamVolumeState lambda$release$12;
        switch (this.f7425a) {
            case 0:
                lambda$setAnalyticsCollector$21 = ExoPlayer.Builder.lambda$setAnalyticsCollector$21((AnalyticsCollector) this.f7426b, (Clock) obj);
                return lambda$setAnalyticsCollector$21;
            case 1:
                lambda$new$13 = ExoPlayer.Builder.lambda$new$13((AnalyticsCollector) this.f7426b, (Clock) obj);
                return lambda$new$13;
            default:
                lambda$release$12 = ((StreamVolumeManager) this.f7426b).lambda$release$12((StreamVolumeManager.StreamVolumeState) obj);
                return lambda$release$12;
        }
    }
}
