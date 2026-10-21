package androidx.fragment.app;

import android.app.Dialog;
import android.view.View;

/* renamed from: androidx.fragment.app.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0485x extends L {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ A f6351b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0486y f6352e;

    public C0485x(DialogInterfaceOnCancelListenerC0486y dialogInterfaceOnCancelListenerC0486y, A a7) {
        this.f6352e = dialogInterfaceOnCancelListenerC0486y;
        this.f6351b = a7;
    }

    @Override // androidx.fragment.app.L
    public View onFindViewById(int i2) {
        A a7 = this.f6351b;
        if (a7.onHasView()) {
            return a7.onFindViewById(i2);
        }
        Dialog dialog = this.f6352e.f6365q0;
        if (dialog != null) {
            return dialog.findViewById(i2);
        }
        return null;
    }

    @Override // androidx.fragment.app.L
    public boolean onHasView() {
        return this.f6351b.onHasView() || this.f6352e.f6369u0;
    }
}
