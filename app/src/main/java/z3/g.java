package z3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes2.dex */
public final class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f21428a;

    public g(h hVar) {
        this.f21428a = hVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        h hVar = this.f21428a;
        hVar.f21417b.setTranslationY(0.0f);
        hVar.updateBackProgress(0.0f);
    }
}
