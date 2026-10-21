package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import x1.AbstractC1819v;
import x1.InterfaceC1820w;
import x1.M;
import x1.W;

/* loaded from: classes.dex */
public final class b extends AnimatorListenerAdapter implements InterfaceC1820w {

    /* renamed from: a, reason: collision with root package name */
    public final View f8210a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8211b = false;

    public b(View view) {
        this.f8210a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        M.f20786a.setTransitionAlpha(this.f8210a, 1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        onAnimationEnd(animator, false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        View view = this.f8210a;
        if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
            this.f8211b = true;
            view.setLayerType(2, null);
        }
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionCancel(e eVar) {
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionEnd(e eVar) {
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionPause(e eVar) {
        View view = this.f8210a;
        view.setTag(R.id.transition_pause_alpha, Float.valueOf(view.getVisibility() == 0 ? M.f20786a.getTransitionAlpha(view) : 0.0f));
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionResume(e eVar) {
        this.f8210a.setTag(R.id.transition_pause_alpha, null);
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionStart(e eVar) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator, boolean z6) {
        boolean z7 = this.f8211b;
        View view = this.f8210a;
        if (z7) {
            view.setLayerType(0, null);
        }
        if (z6) {
            return;
        }
        W w6 = M.f20786a;
        w6.setTransitionAlpha(view, 1.0f);
        w6.clearNonTransitionAlpha(view);
    }

    @Override // x1.InterfaceC1820w
    public final /* synthetic */ void onTransitionEnd(e eVar, boolean z6) {
        AbstractC1819v.a(this, eVar, z6);
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionStart(e eVar, boolean z6) {
    }
}
