package B4;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.ExoPlayer;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.tv.PlayerActivityLiveExternal;

/* renamed from: B4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC0041d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f260b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f261e;

    public /* synthetic */ RunnableC0041d(BetterVideoPlayer betterVideoPlayer, int i2) {
        this.f260b = i2;
        this.f261e = betterVideoPlayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BetterVideoPlayer betterVideoPlayer = this.f261e;
        switch (this.f260b) {
            case 0:
                int i2 = AdultVideoPlayerActivity.f15591z;
                betterVideoPlayer.start();
                break;
            case 1:
                betterVideoPlayer.start();
                break;
            case 2:
                ExoPlayer exoPlayer = betterVideoPlayer.f15906z;
                if (exoPlayer != null && exoPlayer.getVideoFormat() != null) {
                    Format videoFormat = betterVideoPlayer.f15906z.getVideoFormat();
                    if (videoFormat.width > 0 && videoFormat.height > 0) {
                        betterVideoPlayer.c(betterVideoPlayer.getWidth(), betterVideoPlayer.getHeight(), videoFormat.width, videoFormat.height);
                        break;
                    }
                }
                break;
            default:
                int i7 = PlayerActivityLiveExternal.f16226J;
                betterVideoPlayer.start();
                break;
        }
    }
}
