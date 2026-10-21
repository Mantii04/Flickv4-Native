package k;

import android.widget.PopupWindow;

/* renamed from: k.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1056A implements PopupWindow.OnDismissListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1058C f17027b;

    public C1056A(C1058C c1058c) {
        this.f17027b = c1058c;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f17027b.onDismiss();
    }
}
