package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzax extends com.google.android.gms.internal.cast.zza implements zzay {
    @Override // com.google.android.gms.cast.framework.zzay
    public final IObjectWrapper zzf() throws RemoteException {
        Parcel zzb = zzb(1, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzb.readStrongBinder());
        zzb.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.cast.framework.zzay
    public final IObjectWrapper zzg() throws RemoteException {
        Parcel zzb = zzb(7, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzb.readStrongBinder());
        zzb.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.cast.framework.zzay
    public final void zzi(zzba zzbaVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.cast.zzc.zze(zza, zzbaVar);
        zzc(2, zza);
    }

    @Override // com.google.android.gms.cast.framework.zzay
    public final void zzj(boolean z6, boolean z7) throws RemoteException {
        Parcel zza = zza();
        int i2 = com.google.android.gms.internal.cast.zzc.zza;
        zza.writeInt(1);
        zza.writeInt(z7 ? 1 : 0);
        zzc(6, zza);
    }

    @Override // com.google.android.gms.cast.framework.zzay
    public final void zzl(zzba zzbaVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.cast.zzc.zze(zza, zzbaVar);
        zzc(3, zza);
    }
}
