package n4;

import android.content.DialogInterface;

/* renamed from: n4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class DialogInterfaceOnClickListenerC1418a implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.thebluealliance.spectrum.a f19008b;

    public DialogInterfaceOnClickListenerC1418a(com.thebluealliance.spectrum.a aVar) {
        this.f19008b = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        com.thebluealliance.spectrum.a aVar = this.f19008b;
        d dVar = aVar.f13461C0;
        if (dVar != null) {
            dVar.onColorSelected(true, aVar.f13459A0);
        }
        dialogInterface.dismiss();
    }
}
