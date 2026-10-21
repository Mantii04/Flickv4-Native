package K4;

import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import flix.com.vision.bvp.BetterVideoPlayer;
import h5.AbstractC1000n;

/* loaded from: classes2.dex */
public final class f extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f1792b;

    public f(BetterVideoPlayer betterVideoPlayer) {
        this.f1792b = betterVideoPlayer;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        BetterVideoPlayer betterVideoPlayer = this.f1792b;
        betterVideoPlayer.f15885j0 = M4.c.getScreenWidth(betterVideoPlayer.f15900t) / 2;
        long j7 = betterVideoPlayer.f15882h0 / 1000;
        betterVideoPlayer.f15879f.setText(AbstractC1000n.getDurationString(j7));
        betterVideoPlayer.f15884j.setText(AbstractC1000n.getDurationString(j7));
        if (motionEvent.getX() > betterVideoPlayer.f15885j0) {
            betterVideoPlayer.d(betterVideoPlayer.f15879f, 1);
            betterVideoPlayer.seekTo(betterVideoPlayer.getCurrentPosition() + betterVideoPlayer.f15882h0);
            final int i2 = 0;
            new Handler().postDelayed(new Runnable(this) { // from class: K4.e

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ f f1791e;

                {
                    this.f1791e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i2) {
                        case 0:
                            BetterVideoPlayer betterVideoPlayer2 = this.f1791e.f1792b;
                            betterVideoPlayer2.d(betterVideoPlayer2.f15879f, 0);
                            break;
                        default:
                            BetterVideoPlayer betterVideoPlayer3 = this.f1791e.f1792b;
                            betterVideoPlayer3.d(betterVideoPlayer3.f15884j, 0);
                            break;
                    }
                }
            }, 500L);
            return true;
        }
        betterVideoPlayer.d(betterVideoPlayer.f15884j, 1);
        betterVideoPlayer.seekTo(betterVideoPlayer.getCurrentPosition() - betterVideoPlayer.f15882h0);
        final int i7 = 1;
        new Handler().postDelayed(new Runnable(this) { // from class: K4.e

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ f f1791e;

            {
                this.f1791e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i7) {
                    case 0:
                        BetterVideoPlayer betterVideoPlayer2 = this.f1791e.f1792b;
                        betterVideoPlayer2.d(betterVideoPlayer2.f15879f, 0);
                        break;
                    default:
                        BetterVideoPlayer betterVideoPlayer3 = this.f1791e.f1792b;
                        betterVideoPlayer3.d(betterVideoPlayer3.f15884j, 0);
                        break;
                }
            }
        }, 500L);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return true;
    }
}
