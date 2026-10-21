package K4;

import android.os.Handler;
import androidx.media3.exoplayer.ExoPlayer;
import flix.com.vision.bvp.BetterVideoPlayer;

/* loaded from: classes2.dex */
public final class k implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f1798b;

    public k(BetterVideoPlayer betterVideoPlayer) {
        this.f1798b = betterVideoPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        ExoPlayer exoPlayer;
        BetterVideoPlayer betterVideoPlayer = this.f1798b;
        if (betterVideoPlayer.f15860L == null || !betterVideoPlayer.f15856H || betterVideoPlayer.f15851C == null || (exoPlayer = betterVideoPlayer.f15906z) == null) {
            return;
        }
        long currentPosition = exoPlayer.getCurrentPosition();
        long duration = betterVideoPlayer.f15906z.getDuration();
        if (currentPosition > duration) {
            currentPosition = duration;
        }
        long j7 = betterVideoPlayer.f15892o0;
        if (currentPosition < j7 && j7 - currentPosition < ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            Handler handler = betterVideoPlayer.f15860L;
            if (handler != null) {
                handler.postDelayed(this, 100L);
                return;
            }
            return;
        }
        betterVideoPlayer.f15892o0 = currentPosition;
        betterVideoPlayer.f15853E.setText(M4.c.getDurationString(currentPosition, false));
        if (betterVideoPlayer.f15870V) {
            betterVideoPlayer.f15854F.setText(M4.c.getDurationString(duration, false));
        } else {
            betterVideoPlayer.f15854F.setText(M4.c.getDurationString(duration - currentPosition, true));
        }
        int i2 = (int) currentPosition;
        int i7 = (int) duration;
        betterVideoPlayer.f15851C.setProgress(i2);
        betterVideoPlayer.f15851C.setMax(i7);
        betterVideoPlayer.f15852D.setProgress(i2);
        betterVideoPlayer.f15852D.setMax(i7);
        Handler handler2 = betterVideoPlayer.f15860L;
        if (handler2 != null) {
            handler2.postDelayed(this, 100L);
        }
    }
}
