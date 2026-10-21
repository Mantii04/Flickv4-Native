package androidx.fragment.app;

import android.view.View;

/* loaded from: classes.dex */
public final class A extends L {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C f6035b;

    public A(C c7) {
        this.f6035b = c7;
    }

    @Override // androidx.fragment.app.L
    public View onFindViewById(int i2) {
        C c7 = this.f6035b;
        View view = c7.f6068Q;
        if (view != null) {
            return view.findViewById(i2);
        }
        throw new IllegalStateException("Fragment " + c7 + " does not have a view");
    }

    @Override // androidx.fragment.app.L
    public boolean onHasView() {
        return this.f6035b.f6068Q != null;
    }
}
