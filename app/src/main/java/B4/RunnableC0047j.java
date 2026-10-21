package B4;

import flix.com.vision.activities.player.PlayerActivityLiveTV;
import flix.com.vision.bvp.BetterVideoPlayer;

/* renamed from: B4.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC0047j implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f267b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PlayerActivityLiveTV f268e;

    public RunnableC0047j(PlayerActivityLiveTV playerActivityLiveTV, BetterVideoPlayer betterVideoPlayer) {
        this.f268e = playerActivityLiveTV;
        this.f267b = betterVideoPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f267b.isPlaying()) {
            return;
        }
        this.f268e.Show();
    }
}
