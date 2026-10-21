package y4;

import android.content.DialogInterface;

/* loaded from: classes2.dex */
public final class K0 implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ M0 f21141b;

    public K0(M0 m02) {
        this.f21141b = m02;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
        this.f21141b.cancel(true);
    }
}
