package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* renamed from: androidx.media3.exoplayer.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0585o implements P3.C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7448b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BandwidthMeter f7449e;

    public /* synthetic */ C0585o(BandwidthMeter bandwidthMeter, int i2) {
        this.f7448b = i2;
        this.f7449e = bandwidthMeter;
    }

    @Override // P3.C
    public final Object get() {
        BandwidthMeter lambda$setBandwidthMeter$20;
        BandwidthMeter lambda$new$12;
        switch (this.f7448b) {
            case 0:
                lambda$setBandwidthMeter$20 = ExoPlayer.Builder.lambda$setBandwidthMeter$20(this.f7449e);
                return lambda$setBandwidthMeter$20;
            default:
                lambda$new$12 = ExoPlayer.Builder.lambda$new$12(this.f7449e);
                return lambda$new$12;
        }
    }
}
