package io.hopmonsdk;

import android.content.DialogInterface;

/* loaded from: classes2.dex */
public final class b implements DialogInterface.OnDismissListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Hopmn f16791b;

    public b(Hopmn hopmn) {
        this.f16791b = hopmn;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f16791b.f16775g = false;
    }
}
