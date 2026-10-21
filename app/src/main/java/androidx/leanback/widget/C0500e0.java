package androidx.leanback.widget;

import android.view.View;

/* renamed from: androidx.leanback.widget.e0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0500e0 extends AbstractC0495c0 {

    /* renamed from: a, reason: collision with root package name */
    public final m1 f6785a;

    public C0500e0(m1 m1Var) {
        this.f6785a = m1Var;
    }

    @Override // androidx.leanback.widget.AbstractC0495c0
    public View createWrapper(View view) {
        return this.f6785a.createShadowOverlayContainer(view.getContext());
    }

    @Override // androidx.leanback.widget.AbstractC0495c0
    public void wrap(View view, View view2) {
        ((j1) view).wrap(view2);
    }
}
