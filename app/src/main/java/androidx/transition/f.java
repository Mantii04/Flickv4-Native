package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import x1.AbstractC1819v;
import x1.InterfaceC1820w;

/* loaded from: classes.dex */
public final class f extends AnimatorListenerAdapter implements InterfaceC1820w {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f8239a;

    /* renamed from: b, reason: collision with root package name */
    public final View f8240b;

    /* renamed from: c, reason: collision with root package name */
    public final View f8241c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8242d = true;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g f8243e;

    public f(g gVar, ViewGroup viewGroup, View view, View view2) {
        this.f8243e = gVar;
        this.f8239a = viewGroup;
        this.f8240b = view;
        this.f8241c = view2;
    }

    public final void a() {
        this.f8241c.setTag(R.id.save_overlay_view, null);
        this.f8239a.getOverlay().remove(this.f8240b);
        this.f8242d = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        a();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
        this.f8239a.getOverlay().remove(this.f8240b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
        View view = this.f8240b;
        if (view.getParent() == null) {
            this.f8239a.getOverlay().add(view);
        } else {
            this.f8243e.cancel();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator, boolean z6) {
        if (z6) {
            View view = this.f8241c;
            int i2 = R.id.save_overlay_view;
            View view2 = this.f8240b;
            view.setTag(i2, view2);
            this.f8239a.getOverlay().add(view2);
            this.f8242d = true;
        }
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionCancel(e eVar) {
        if (this.f8242d) {
            a();
        }
    }

    @Override // x1.InterfaceC1820w
    public final /* synthetic */ void onTransitionEnd(e eVar, boolean z6) {
        AbstractC1819v.a(this, eVar, z6);
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionPause(e eVar) {
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionResume(e eVar) {
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionStart(e eVar) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator, boolean z6) {
        if (z6) {
            return;
        }
        a();
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionEnd(e eVar) {
        eVar.removeListener(this);
    }

    @Override // x1.InterfaceC1820w
    public final /* synthetic */ void onTransitionStart(e eVar, boolean z6) {
        AbstractC1819v.b(this, eVar, z6);
    }
}
