package K3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: K3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0136b extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0138d f1662a;

    public C0136b(C0138d c0138d) {
        this.f1662a = c0138d;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1662a.f1725b.h(true);
    }
}
