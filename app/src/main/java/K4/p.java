package K4;

import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import flix.com.vision.bvp.BetterVideoPlayer2;

/* loaded from: classes2.dex */
public final class p extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f1805b;

    public p(q qVar) {
        this.f1805b = qVar;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        q qVar = this.f1805b;
        int i2 = qVar.f1808f / 1000;
        BetterVideoPlayer2 betterVideoPlayer2 = qVar.f1809j;
        betterVideoPlayer2.f15937f.setText(i2 + " seconds");
        betterVideoPlayer2.f15942j.setText(i2 + " seconds");
        float x6 = motionEvent.getX();
        float f3 = (float) qVar.f1806b;
        int i7 = qVar.f1808f;
        if (x6 > f3) {
            BetterVideoPlayer2.b(betterVideoPlayer2, betterVideoPlayer2.f15937f, 1);
            betterVideoPlayer2.seekTo(betterVideoPlayer2.getCurrentPosition() + i7);
            new Handler().postDelayed(new n(this), 500L);
            return true;
        }
        BetterVideoPlayer2.b(betterVideoPlayer2, betterVideoPlayer2.f15942j, 1);
        betterVideoPlayer2.seekTo(betterVideoPlayer2.getCurrentPosition() - i7);
        new Handler().postDelayed(new o(this), 500L);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        this.f1805b.f1809j.toggleControls();
        return true;
    }
}
