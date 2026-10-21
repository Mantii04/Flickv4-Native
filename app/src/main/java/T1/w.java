package T1;

import android.animation.ValueAnimator;
import b2.C0643c;

/* loaded from: classes.dex */
public final class w implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ G f3648b;

    public w(G g7) {
        this.f3648b = g7;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        G g7 = this.f3648b;
        C0643c c0643c = g7.f3547v;
        if (c0643c != null) {
            c0643c.setProgress(g7.f3537f.getAnimatedValueAbsolute());
        }
    }
}
