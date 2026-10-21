package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
final class zacr implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.signin.internal.zak f10773b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zact f10774e;

    public zacr(zact zactVar, com.google.android.gms.signin.internal.zak zakVar) {
        this.f10774e = zactVar;
        this.f10773b = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.AbstractClientBuilder abstractClientBuilder = zact.f10775h;
        com.google.android.gms.signin.internal.zak zakVar = this.f10773b;
        ConnectionResult zaa = zakVar.zaa();
        boolean isSuccess = zaa.isSuccess();
        zact zactVar = this.f10774e;
        if (isSuccess) {
            com.google.android.gms.common.internal.zav zavVar = (com.google.android.gms.common.internal.zav) Preconditions.checkNotNull(zakVar.zab());
            ConnectionResult zaa2 = zavVar.zaa();
            if (!zaa2.isSuccess()) {
                String valueOf = String.valueOf(zaa2);
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(valueOf), new Exception());
                zactVar.f10782g.zae(zaa2);
                zactVar.f10781f.disconnect();
                return;
            }
            zactVar.f10782g.zaf(zavVar.zab(), zactVar.f10779d);
        } else {
            zactVar.f10782g.zae(zaa);
        }
        zactVar.f10781f.disconnect();
    }
}
