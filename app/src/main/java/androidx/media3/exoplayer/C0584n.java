package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.MediaSource;

/* renamed from: androidx.media3.exoplayer.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0584n implements P3.C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7446b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaSource.Factory f7447e;

    public /* synthetic */ C0584n(MediaSource.Factory factory, int i2) {
        this.f7446b = i2;
        this.f7447e = factory;
    }

    @Override // P3.C
    public final Object get() {
        MediaSource.Factory lambda$new$7;
        MediaSource.Factory lambda$new$9;
        MediaSource.Factory lambda$new$5;
        MediaSource.Factory lambda$setMediaSourceFactory$17;
        switch (this.f7446b) {
            case 0:
                lambda$new$7 = ExoPlayer.Builder.lambda$new$7(this.f7447e);
                return lambda$new$7;
            case 1:
                lambda$new$9 = ExoPlayer.Builder.lambda$new$9(this.f7447e);
                return lambda$new$9;
            case 2:
                lambda$new$5 = ExoPlayer.Builder.lambda$new$5(this.f7447e);
                return lambda$new$5;
            default:
                lambda$setMediaSourceFactory$17 = ExoPlayer.Builder.lambda$setMediaSourceFactory$17(this.f7447e);
                return lambda$setMediaSourceFactory$17;
        }
    }
}
