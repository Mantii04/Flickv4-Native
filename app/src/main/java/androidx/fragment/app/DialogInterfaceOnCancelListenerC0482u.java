package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;

/* renamed from: androidx.fragment.app.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0482u implements DialogInterface.OnCancelListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0486y f6322b;

    public DialogInterfaceOnCancelListenerC0482u(DialogInterfaceOnCancelListenerC0486y dialogInterfaceOnCancelListenerC0486y) {
        this.f6322b = dialogInterfaceOnCancelListenerC0486y;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    @SuppressLint({"SyntheticAccessor"})
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC0486y dialogInterfaceOnCancelListenerC0486y = this.f6322b;
        Dialog dialog = dialogInterfaceOnCancelListenerC0486y.f6365q0;
        if (dialog != null) {
            dialogInterfaceOnCancelListenerC0486y.onCancel(dialog);
        }
    }
}
