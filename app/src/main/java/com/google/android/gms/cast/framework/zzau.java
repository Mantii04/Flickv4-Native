package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzau extends com.google.android.gms.internal.cast.zza implements zzaw {
    @Override // com.google.android.gms.cast.framework.zzaw
    public final int zze() throws RemoteException {
        Parcel zzb = zzb(17, zza());
        int readInt = zzb.readInt();
        zzb.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final int zzf() throws RemoteException {
        Parcel zzb = zzb(18, zza());
        int readInt = zzb.readInt();
        zzb.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final IObjectWrapper zzg() throws RemoteException {
        Parcel zzb = zzb(1, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzb.readStrongBinder());
        zzb.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final void zzj(int i2) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i2);
        zzc(15, zza);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final void zzk(int i2) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i2);
        zzc(12, zza);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final void zzl(int i2) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i2);
        zzc(13, zza);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final boolean zzp() throws RemoteException {
        Parcel zzb = zzb(5, zza());
        boolean zzf = com.google.android.gms.internal.cast.zzc.zzf(zzb);
        zzb.recycle();
        return zzf;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final boolean zzq() throws RemoteException {
        Parcel zzb = zzb(6, zza());
        boolean zzf = com.google.android.gms.internal.cast.zzc.zzf(zzb);
        zzb.recycle();
        return zzf;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final boolean zzt() throws RemoteException {
        Parcel zzb = zzb(9, zza());
        boolean zzf = com.google.android.gms.internal.cast.zzc.zzf(zzb);
        zzb.recycle();
        return zzf;
    }
}
