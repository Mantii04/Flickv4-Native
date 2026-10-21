package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.AbstractC0467i0;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public class SupportErrorDialogFragment extends DialogInterfaceOnCancelListenerC0486y {

    /* renamed from: v0, reason: collision with root package name */
    public Dialog f10578v0;

    /* renamed from: w0, reason: collision with root package name */
    public DialogInterface.OnCancelListener f10579w0;

    /* renamed from: x0, reason: collision with root package name */
    public AlertDialog f10580x0;

    public static SupportErrorDialogFragment newInstance(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
        Dialog dialog2 = (Dialog) Preconditions.checkNotNull(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        supportErrorDialogFragment.f10578v0 = dialog2;
        if (onCancelListener != null) {
            supportErrorDialogFragment.f10579w0 = onCancelListener;
        }
        return supportErrorDialogFragment;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f10579w0;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f10578v0;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f10580x0 == null) {
            this.f10580x0 = new AlertDialog.Builder((Context) Preconditions.checkNotNull(getContext())).create();
        }
        return this.f10580x0;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y
    public void show(AbstractC0467i0 abstractC0467i0, String str) {
        super.show(abstractC0467i0, str);
    }
}
