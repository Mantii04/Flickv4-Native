package androidx.fragment.app;

import M.AbstractC0181p0;
import android.view.View;

/* loaded from: classes.dex */
public final class r0 implements View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f6301b;

    public r0(View view) {
        this.f6301b = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        View view2 = this.f6301b;
        view2.removeOnAttachStateChangeListener(this);
        AbstractC0181p0.requestApplyInsets(view2);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
