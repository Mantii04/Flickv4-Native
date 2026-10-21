package K3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: K3.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0137c extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0138d f1663a;

    public C0137c(C0138d c0138d) {
        this.f1663a = c0138d;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1663a.f1725b.h(false);
    }
}
