package j3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;

/* renamed from: j3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1049a extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HideBottomViewOnScrollBehavior f16978a;

    public C1049a(HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior) {
        this.f16978a = hideBottomViewOnScrollBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f16978a.f12446q = null;
    }
}
