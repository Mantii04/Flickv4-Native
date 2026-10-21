package z3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes2.dex */
public final class i extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f21431a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21432b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j f21433c;

    public i(j jVar, boolean z6, int i2) {
        this.f21433c = jVar;
        this.f21431a = z6;
        this.f21432b = i2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        j jVar = this.f21433c;
        jVar.f21417b.setTranslationX(0.0f);
        jVar.updateBackProgress(0.0f, this.f21431a, this.f21432b);
    }
}
