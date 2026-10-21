package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayer;

/* renamed from: androidx.media3.exoplayer.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0580j implements P3.C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7423b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LoadControl f7424e;

    public /* synthetic */ C0580j(LoadControl loadControl, int i2) {
        this.f7423b = i2;
        this.f7424e = loadControl;
    }

    @Override // P3.C
    public final Object get() {
        LoadControl lambda$setLoadControl$19;
        LoadControl lambda$new$11;
        switch (this.f7423b) {
            case 0:
                lambda$setLoadControl$19 = ExoPlayer.Builder.lambda$setLoadControl$19(this.f7424e);
                return lambda$setLoadControl$19;
            default:
                lambda$new$11 = ExoPlayer.Builder.lambda$new$11(this.f7424e);
                return lambda$new$11;
        }
    }
}
