package x1;

import a.AbstractC0373c;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class Y extends AnimatorListenerAdapter implements InterfaceC1820w {

    /* renamed from: a, reason: collision with root package name */
    public final View f20795a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20796b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f20797c;

    /* renamed from: e, reason: collision with root package name */
    public boolean f20799e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f20800f = false;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f20798d = true;

    public Y(View view, int i2) {
        this.f20795a = view;
        this.f20796b = i2;
        this.f20797c = (ViewGroup) view.getParent();
        a(true);
    }

    public final void a(boolean z6) {
        ViewGroup viewGroup;
        if (!this.f20798d || this.f20799e == z6 || (viewGroup = this.f20797c) == null) {
            return;
        }
        this.f20799e = z6;
        AbstractC0373c.f(viewGroup, z6);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f20800f = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f20800f) {
            M.b(this.f20795a, this.f20796b);
            ViewGroup viewGroup = this.f20797c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        a(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    @Override // x1.InterfaceC1820w
    public final /* synthetic */ void onTransitionEnd(androidx.transition.e eVar, boolean z6) {
        AbstractC1819v.a(this, eVar, z6);
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionPause(androidx.transition.e eVar) {
        a(false);
        if (this.f20800f) {
            return;
        }
        M.b(this.f20795a, this.f20796b);
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionResume(androidx.transition.e eVar) {
        a(true);
        if (this.f20800f) {
            return;
        }
        M.b(this.f20795a, 0);
    }

    @Override // x1.InterfaceC1820w
    public final /* synthetic */ void onTransitionStart(androidx.transition.e eVar, boolean z6) {
        AbstractC1819v.b(this, eVar, z6);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator, boolean z6) {
        if (z6) {
            M.b(this.f20795a, 0);
            ViewGroup viewGroup = this.f20797c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionEnd(androidx.transition.e eVar) {
        eVar.removeListener(this);
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionStart(androidx.transition.e eVar) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator, boolean z6) {
        if (z6) {
            return;
        }
        if (!this.f20800f) {
            M.b(this.f20795a, this.f20796b);
            ViewGroup viewGroup = this.f20797c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        a(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionCancel(androidx.transition.e eVar) {
    }
}
