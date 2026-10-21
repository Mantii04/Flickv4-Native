package n4;

import android.content.DialogInterface;

/* loaded from: classes2.dex */
public final class b implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.thebluealliance.spectrum.a f19009b;

    public b(com.thebluealliance.spectrum.a aVar) {
        this.f19009b = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        com.thebluealliance.spectrum.a aVar = this.f19009b;
        d dVar = aVar.f13461C0;
        if (dVar != null) {
            dVar.onColorSelected(false, aVar.f13469z0);
        }
        dialogInterface.dismiss();
    }
}
