package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.IAccountAccessor;

/* loaded from: classes.dex */
final class zabt implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConnectionResult f10739b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zabu f10740e;

    public zabt(zabu zabuVar, ConnectionResult connectionResult) {
        this.f10740e = zabuVar;
        this.f10739b = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IAccountAccessor iAccountAccessor;
        zabu zabuVar = this.f10740e;
        zabq zabqVar = (zabq) zabuVar.f10746f.f10637s.get(zabuVar.f10742b);
        if (zabqVar == null) {
            return;
        }
        ConnectionResult connectionResult = this.f10739b;
        if (!connectionResult.isSuccess()) {
            zabqVar.zar(connectionResult, null);
            return;
        }
        zabuVar.f10745e = true;
        Api.Client client = zabuVar.f10741a;
        if (client.requiresSignIn()) {
            if (!zabuVar.f10745e || (iAccountAccessor = zabuVar.f10743c) == null) {
                return;
            }
            client.getRemoteService(iAccountAccessor, zabuVar.f10744d);
            return;
        }
        try {
            client.getRemoteService(null, client.getScopesForConnectionlessNonSignIn());
        } catch (SecurityException e3) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e3);
            client.disconnect("Failed to get service from broker.");
            zabqVar.zar(new ConnectionResult(10), null);
        }
    }
}
