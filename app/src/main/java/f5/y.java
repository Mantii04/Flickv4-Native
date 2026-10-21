package f5;

import android.content.DialogInterface;

/* loaded from: classes2.dex */
public final class y implements DialogInterface.OnClickListener {
    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        try {
            dialogInterface.dismiss();
        } catch (Exception unused) {
        }
    }
}
