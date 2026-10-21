package K3;

import android.view.MotionEvent;
import android.view.View;
import flix.com.vision.bvp.BetterVideoPlayer;

/* loaded from: classes2.dex */
public final /* synthetic */ class i implements View.OnTouchListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1677b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1678e;

    public /* synthetic */ i(Object obj, int i2) {
        this.f1677b = i2;
        this.f1678e = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.f1677b) {
            case 0:
                l lVar = (l) this.f1678e;
                lVar.getClass();
                if (motionEvent.getAction() == 1) {
                    long currentTimeMillis = System.currentTimeMillis() - lVar.f1691o;
                    if (currentTimeMillis < 0 || currentTimeMillis > 300) {
                        lVar.f1689m = false;
                    }
                    lVar.p();
                    lVar.f1689m = true;
                    lVar.f1691o = System.currentTimeMillis();
                }
                return false;
            default:
                ((BetterVideoPlayer) this.f1678e).f15883i0.onTouchEvent(motionEvent);
                return true;
        }
    }
}
