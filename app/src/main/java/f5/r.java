package f5;

import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.tv.PlayerActivityLiveExtended;

/* loaded from: classes2.dex */
public final class r implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f14406b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PlayerActivityLiveExtended f14407e;

    public r(PlayerActivityLiveExtended playerActivityLiveExtended, BetterVideoPlayer betterVideoPlayer) {
        this.f14407e = playerActivityLiveExtended;
        this.f14406b = betterVideoPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f14406b.isPlaying()) {
            return;
        }
        this.f14407e.Show();
    }
}
