package M;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
public final class L0 extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ S0 f1944a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1945b;

    public L0(S0 s02, View view) {
        this.f1944a = s02;
        this.f1945b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        S0 s02 = this.f1944a;
        s02.setFraction(1.0f);
        O0.a(s02, this.f1945b);
    }
}
