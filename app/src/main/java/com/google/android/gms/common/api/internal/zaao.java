package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
final class zaao extends zaav {

    /* renamed from: e, reason: collision with root package name */
    public final Map f10689e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zaaw f10690f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaao(zaaw zaawVar, Map<Api.Client, zaal> map) {
        super(zaawVar);
        this.f10690f = zaawVar;
        this.f10689e = map;
    }

    @Override // com.google.android.gms.common.api.internal.zaav
    public final void zaa() {
        com.google.android.gms.signin.zae zaeVar;
        zaaw zaawVar = this.f10690f;
        zaawVar.getClass();
        com.google.android.gms.common.internal.zal zalVar = new com.google.android.gms.common.internal.zal(null);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Map map = this.f10689e;
        for (Api.Client client : map.keySet()) {
            if (!client.requiresGooglePlayServices() || ((zaal) map.get(client)).f10685c) {
                arrayList2.add(client);
            } else {
                arrayList.add(client);
            }
        }
        int i2 = -1;
        int i7 = 0;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            while (i7 < size) {
                i2 = zalVar.zab(null, (Api.Client) arrayList.get(i7));
                i7++;
                if (i2 != 0) {
                    break;
                }
            }
        } else {
            int size2 = arrayList2.size();
            while (i7 < size2) {
                i2 = zalVar.zab(null, (Api.Client) arrayList2.get(i7));
                i7++;
                if (i2 == 0) {
                    break;
                }
            }
        }
        if (i2 != 0) {
            new zaam(this, zaawVar, new ConnectionResult(i2, null));
            throw null;
        }
        if (zaawVar.f10704g && (zaeVar = zaawVar.f10702e) != null) {
            zaeVar.zab();
        }
        for (Api.Client client2 : map.keySet()) {
            BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks = (BaseGmsClient.ConnectionProgressReportCallbacks) map.get(client2);
            if (client2.requiresGooglePlayServices() && zalVar.zab(null, client2) != 0) {
                new zaan(zaawVar, connectionProgressReportCallbacks);
                throw null;
            }
            client2.connect(connectionProgressReportCallbacks);
        }
    }
}
