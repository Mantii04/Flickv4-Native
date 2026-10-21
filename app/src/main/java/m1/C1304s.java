package m1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: m1.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1304s extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18466a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1308u f18467b;

    public C1304s(C1308u c1308u) {
        this.f18467b = c1308u;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f18466a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.f18466a) {
            this.f18466a = false;
            return;
        }
        C1308u c1308u = this.f18467b;
        if (((Float) c1308u.f18500z.getAnimatedValue()).floatValue() == 0.0f) {
            c1308u.f18472A = 0;
            c1308u.d(0);
        } else {
            c1308u.f18472A = 2;
            c1308u.f18493s.invalidate();
        }
    }
}
