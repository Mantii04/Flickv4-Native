package K4;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import flix.com.vision.bvp.BetterVideoPlayer2;

/* loaded from: classes2.dex */
public final class q implements View.OnTouchListener {

    /* renamed from: b, reason: collision with root package name */
    public final int f1806b;

    /* renamed from: e, reason: collision with root package name */
    public final GestureDetector f1807e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f1808f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer2 f1809j;

    public q(BetterVideoPlayer2 betterVideoPlayer2, int i2) {
        this.f1809j = betterVideoPlayer2;
        this.f1808f = i2;
        this.f1806b = M4.c.getScreenWidth(betterVideoPlayer2.f15949t) / 2;
        this.f1807e = new GestureDetector(betterVideoPlayer2.f15949t, new p(this));
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.f1807e.onTouchEvent(motionEvent);
        return true;
    }
}
