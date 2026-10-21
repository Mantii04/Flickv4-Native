package I3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes2.dex */
public final class d extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f1323a;

    public d(t tVar) {
        this.f1323a = tVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        t tVar = this.f1323a;
        tVar.getClass();
        A.b().onShown(tVar.f1374u);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        t tVar = this.f1323a;
        u uVar = tVar.f1363j;
        int i2 = tVar.f1356c;
        int i7 = tVar.f1354a;
        uVar.animateContentIn(i2 - i7, i7);
    }
}
