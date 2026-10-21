package androidx.leanback.widget;

import android.view.View;

/* renamed from: androidx.leanback.widget.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0492b0 extends m1.B0 implements InterfaceC0539y {

    /* renamed from: u, reason: collision with root package name */
    public final C0 f6768u;

    /* renamed from: v, reason: collision with root package name */
    public final A0 f6769v;

    /* renamed from: w, reason: collision with root package name */
    public Object f6770w;

    /* renamed from: x, reason: collision with root package name */
    public Object f6771x;

    public C0492b0(C0 c02, View view, A0 a02) {
        super(view);
        this.f6768u = c02;
        this.f6769v = a02;
    }

    public final Object getExtraObject() {
        return this.f6771x;
    }

    @Override // androidx.leanback.widget.InterfaceC0539y
    public Object getFacet(Class<?> cls) {
        return this.f6769v.getFacet(cls);
    }

    public final C0 getPresenter() {
        return this.f6768u;
    }

    public final A0 getViewHolder() {
        return this.f6769v;
    }

    public void setExtraObject(Object obj) {
        this.f6771x = obj;
    }
}
