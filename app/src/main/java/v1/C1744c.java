package v1;

import android.animation.Animator;

/* renamed from: v1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1744c implements Animator.AnimatorListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1745d f20581a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1746e f20582b;

    public C1744c(C1746e c1746e, C1745d c1745d) {
        this.f20582b = c1746e;
        this.f20581a = c1745d;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        C1746e c1746e = this.f20582b;
        C1745d c1745d = this.f20581a;
        c1746e.a(1.0f, c1745d, true);
        c1745d.f20593k = c1745d.f20587e;
        c1745d.f20594l = c1745d.f20588f;
        c1745d.f20595m = c1745d.f20589g;
        c1745d.a((c1745d.f20592j + 1) % c1745d.f20591i.length);
        if (!c1746e.f20612n) {
            c1746e.f20611m += 1.0f;
            return;
        }
        c1746e.f20612n = false;
        animator.cancel();
        animator.setDuration(1332L);
        animator.start();
        if (c1745d.f20596n) {
            c1745d.f20596n = false;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f20582b.f20611m = 0.0f;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
    }
}
