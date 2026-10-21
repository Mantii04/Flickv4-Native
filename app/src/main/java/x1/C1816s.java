package x1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: x1.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1816s extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ androidx.transition.e f20828a;

    public C1816s(androidx.transition.e eVar) {
        this.f20828a = eVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f20828a.end();
        animator.removeListener(this);
    }
}
