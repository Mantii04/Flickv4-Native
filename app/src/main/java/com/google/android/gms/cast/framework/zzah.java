package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzah extends com.google.android.gms.internal.cast.zza implements zzaj {
    @Override // com.google.android.gms.cast.framework.zzaj
    public final Bundle zze() throws RemoteException {
        Parcel zzb = zzb(1, zza());
        Bundle bundle = (Bundle) com.google.android.gms.internal.cast.zzc.zza(zzb, Bundle.CREATOR);
        zzb.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.cast.framework.zzaj
    public final zzaq zzf() throws RemoteException {
        zzaq zzapVar;
        Parcel zzb = zzb(6, zza());
        IBinder readStrongBinder = zzb.readStrongBinder();
        if (readStrongBinder == null) {
            zzapVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
            zzapVar = queryLocalInterface instanceof zzaq ? (zzaq) queryLocalInterface : new zzap(readStrongBinder, "com.google.android.gms.cast.framework.IDiscoveryManager");
        }
        zzb.recycle();
        return zzapVar;
    }

    @Override // com.google.android.gms.cast.framework.zzaj
    public final zzay zzg() throws RemoteException {
        zzay zzaxVar;
        Parcel zzb = zzb(5, zza());
        IBinder readStrongBinder = zzb.readStrongBinder();
        if (readStrongBinder == null) {
            zzaxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISessionManager");
            zzaxVar = queryLocalInterface instanceof zzay ? (zzay) queryLocalInterface : new zzax(readStrongBinder, "com.google.android.gms.cast.framework.ISessionManager");
        }
        zzb.recycle();
        return zzaxVar;
    }

    @Override // com.google.android.gms.cast.framework.zzaj
    public final void zzh(zzae zzaeVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.cast.zzc.zze(zza, zzaeVar);
        zzc(3, zza);
    }
}
