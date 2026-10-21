package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.trackselection.TrackSelector;

/* renamed from: androidx.media3.exoplayer.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0586p implements P3.C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7461b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TrackSelector f7462e;

    public /* synthetic */ C0586p(TrackSelector trackSelector, int i2) {
        this.f7461b = i2;
        this.f7462e = trackSelector;
    }

    @Override // P3.C
    public final Object get() {
        TrackSelector lambda$new$10;
        TrackSelector lambda$setTrackSelector$18;
        switch (this.f7461b) {
            case 0:
                lambda$new$10 = ExoPlayer.Builder.lambda$new$10(this.f7462e);
                return lambda$new$10;
            default:
                lambda$setTrackSelector$18 = ExoPlayer.Builder.lambda$setTrackSelector$18(this.f7462e);
                return lambda$setTrackSelector$18;
        }
    }
}
