package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
final class zaaq extends zabg {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zaaw f10693b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.signin.internal.zak f10694c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaaq(zaaw zaawVar, zaaw zaawVar2, com.google.android.gms.signin.internal.zak zakVar) {
        super(zaawVar);
        this.f10693b = zaawVar2;
        this.f10694c = zakVar;
    }

    @Override // com.google.android.gms.common.api.internal.zabg
    public final void zaa() {
        zaaw zaawVar = this.f10693b;
        if (zaawVar.e(0)) {
            com.google.android.gms.signin.internal.zak zakVar = this.f10694c;
            ConnectionResult zaa = zakVar.zaa();
            if (!zaa.isSuccess()) {
                if (!zaawVar.f10703f || zaa.hasResolution()) {
                    zaawVar.c(zaa);
                    return;
                } else {
                    zaawVar.f10704g = false;
                    throw null;
                }
            }
            com.google.android.gms.common.internal.zav zavVar = (com.google.android.gms.common.internal.zav) Preconditions.checkNotNull(zakVar.zab());
            ConnectionResult zaa2 = zavVar.zaa();
            if (!zaa2.isSuccess()) {
                String valueOf = String.valueOf(zaa2);
                Log.wtf("GACConnecting", "Sign-in succeeded with resolve account failure: ".concat(valueOf), new Exception());
                zaawVar.c(zaa2);
                return;
            }
            zaawVar.f10705h = true;
            zaawVar.f10706i = (IAccountAccessor) Preconditions.checkNotNull(zavVar.zab());
            zaawVar.f10707j = zavVar.zac();
            zaawVar.f10708k = zavVar.zad();
            zaawVar.d();
        }
    }
}
