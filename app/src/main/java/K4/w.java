package K4;

import android.media.MediaPlayer;
import android.os.Handler;
import flix.com.vision.bvp.BetterVideoPlayer2;

/* loaded from: classes2.dex */
public final class w implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer2 f1816b;

    public w(BetterVideoPlayer2 betterVideoPlayer2) {
        this.f1816b = betterVideoPlayer2;
    }

    @Override // java.lang.Runnable
    public void run() {
        MediaPlayer mediaPlayer;
        BetterVideoPlayer2 betterVideoPlayer2 = this.f1816b;
        if (betterVideoPlayer2.f15918L == null || !betterVideoPlayer2.f15914H || betterVideoPlayer2.f15908B == null || (mediaPlayer = betterVideoPlayer2.f15954y) == null) {
            return;
        }
        long currentPosition = mediaPlayer.getCurrentPosition();
        long duration = betterVideoPlayer2.f15954y.getDuration();
        if (currentPosition > duration) {
            currentPosition = duration;
        }
        betterVideoPlayer2.f15910D.setText(M4.c.getDurationString(currentPosition, false));
        if (betterVideoPlayer2.f15928V) {
            betterVideoPlayer2.f15911E.setText(M4.c.getDurationString(duration, false));
        } else {
            betterVideoPlayer2.f15911E.setText(M4.c.getDurationString(duration - currentPosition, true));
        }
        int i2 = (int) currentPosition;
        int i7 = (int) duration;
        betterVideoPlayer2.f15908B.setProgress(i2);
        betterVideoPlayer2.f15908B.setMax(i7);
        betterVideoPlayer2.f15909C.setProgress(i2);
        betterVideoPlayer2.f15909C.setMax(i7);
        Handler handler = betterVideoPlayer2.f15918L;
        if (handler != null) {
            handler.postDelayed(this, 100L);
        }
    }
}
