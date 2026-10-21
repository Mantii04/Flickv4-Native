package com.google.android.gms.cast.framework.media;

import android.app.AlertDialog;
import android.content.DialogInterface;

/* loaded from: classes.dex */
final class zzbq implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TracksChooserDialogFragment f10288b;

    public zzbq(TracksChooserDialogFragment tracksChooserDialogFragment) {
        this.f10288b = tracksChooserDialogFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        TracksChooserDialogFragment tracksChooserDialogFragment = this.f10288b;
        AlertDialog alertDialog = tracksChooserDialogFragment.f10046z0;
        if (alertDialog != null) {
            alertDialog.cancel();
            tracksChooserDialogFragment.f10046z0 = null;
        }
    }
}
