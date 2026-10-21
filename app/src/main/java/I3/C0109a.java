package I3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: I3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0109a extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f1320a;

    public C0109a(t tVar, int i2) {
        this.f1320a = tVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1320a.a();
    }
}
