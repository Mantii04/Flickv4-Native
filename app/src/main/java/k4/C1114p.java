package k4;

import android.widget.PopupWindow;

/* renamed from: k4.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1114p implements PopupWindow.OnDismissListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RunnableC1116r f17313b;

    public C1114p(RunnableC1116r runnableC1116r) {
        this.f17313b = runnableC1116r;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        InterfaceC1103e onSpinnerDismissListener = this.f17313b.f17315b.getOnSpinnerDismissListener();
        if (onSpinnerDismissListener != null) {
            onSpinnerDismissListener.onDismiss();
        }
    }
}
