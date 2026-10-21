package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.dynamic.IObjectWrapper;

@ShowFirstParty
/* loaded from: classes.dex */
public final class zzac {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f10316b = new Logger("DiscoveryManager");

    /* renamed from: a, reason: collision with root package name */
    public final zzaq f10317a;

    public zzac(zzaq zzaqVar) {
        this.f10317a = zzaqVar;
    }

    public final IObjectWrapper zza() {
        try {
            return this.f10317a.zze();
        } catch (RemoteException e3) {
            f10316b.d(e3, "Unable to call %s on %s.", "getWrappedThis", "zzaq");
            return null;
        }
    }
}
