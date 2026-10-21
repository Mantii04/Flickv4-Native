package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;

/* renamed from: androidx.fragment.app.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnDismissListenerC0483v implements DialogInterface.OnDismissListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0486y f6332b;

    public DialogInterfaceOnDismissListenerC0483v(DialogInterfaceOnCancelListenerC0486y dialogInterfaceOnCancelListenerC0486y) {
        this.f6332b = dialogInterfaceOnCancelListenerC0486y;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    @SuppressLint({"SyntheticAccessor"})
    public void onDismiss(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC0486y dialogInterfaceOnCancelListenerC0486y = this.f6332b;
        Dialog dialog = dialogInterfaceOnCancelListenerC0486y.f6365q0;
        if (dialog != null) {
            dialogInterfaceOnCancelListenerC0486y.onDismiss(dialog);
        }
    }
}
