package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class Q implements View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s0 f6153b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ S f6154e;

    public Q(S s6, s0 s0Var) {
        this.f6154e = s6;
        this.f6153b = s0Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        s0 s0Var = this.f6153b;
        C c7 = s0Var.f6304c;
        s0Var.k();
        M0.g((ViewGroup) c7.f6068Q.getParent(), this.f6154e.f6155b).e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
