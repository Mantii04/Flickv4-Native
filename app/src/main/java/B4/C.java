package B4;

import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.bvp.BetterVideoPlayer;

/* loaded from: classes2.dex */
public final class C implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f224b;

    public C(SimpleVideoPlayer simpleVideoPlayer) {
        this.f224b = simpleVideoPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        SimpleVideoPlayer simpleVideoPlayer = this.f224b;
        BetterVideoPlayer betterVideoPlayer = simpleVideoPlayer.f15630A;
        if (betterVideoPlayer != null) {
            long j7 = simpleVideoPlayer.f15664S;
            if (j7 != -1) {
                betterVideoPlayer.seekTo(j7);
                simpleVideoPlayer.f15630A.hideVisualSeek();
                simpleVideoPlayer.f15664S = -1L;
                if (simpleVideoPlayer.f15630A.isPlaying()) {
                    return;
                }
                simpleVideoPlayer.f15630A.start();
            }
        }
    }
}
