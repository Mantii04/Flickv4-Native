package i4;

import android.animation.Animator;
import h4.InterfaceC0986a;

/* loaded from: classes2.dex */
public final class h implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0986a f16732a;

    public h(InterfaceC0986a interfaceC0986a) {
        this.f16732a = interfaceC0986a;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f16732a.onAnimationCancel(null);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f16732a.onAnimationEnd(null);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        this.f16732a.onAnimationRepeat(null);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f16732a.onAnimationStart(null);
    }
}
