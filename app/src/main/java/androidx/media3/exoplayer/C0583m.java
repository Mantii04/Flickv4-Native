package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayer;

/* renamed from: androidx.media3.exoplayer.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0583m implements P3.C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7429b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RenderersFactory f7430e;

    public /* synthetic */ C0583m(RenderersFactory renderersFactory, int i2) {
        this.f7429b = i2;
        this.f7430e = renderersFactory;
    }

    @Override // P3.C
    public final Object get() {
        RenderersFactory lambda$setRenderersFactory$16;
        RenderersFactory lambda$new$6;
        RenderersFactory lambda$new$2;
        RenderersFactory lambda$new$8;
        switch (this.f7429b) {
            case 0:
                lambda$setRenderersFactory$16 = ExoPlayer.Builder.lambda$setRenderersFactory$16(this.f7430e);
                return lambda$setRenderersFactory$16;
            case 1:
                lambda$new$6 = ExoPlayer.Builder.lambda$new$6(this.f7430e);
                return lambda$new$6;
            case 2:
                lambda$new$2 = ExoPlayer.Builder.lambda$new$2(this.f7430e);
                return lambda$new$2;
            default:
                lambda$new$8 = ExoPlayer.Builder.lambda$new$8(this.f7430e);
                return lambda$new$8;
        }
    }
}
