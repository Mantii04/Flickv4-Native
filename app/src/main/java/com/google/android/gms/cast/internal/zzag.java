package com.google.android.gms.cast.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.zzbu;

/* loaded from: classes.dex */
public final class zzag extends com.google.android.gms.internal.cast.zza implements IInterface {
    public zzag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.internal.ICastDeviceController");
    }

    public final void zze() throws RemoteException {
        zzd(17, zza());
    }

    public final void zzf() throws RemoteException {
        zzd(1, zza());
    }

    public final void zzg(String str, String str2, zzbu zzbuVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        com.google.android.gms.internal.cast.zzc.zzc(zza, zzbuVar);
        zzd(14, zza);
    }

    public final void zzh(String str, LaunchOptions launchOptions) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        com.google.android.gms.internal.cast.zzc.zzc(zza, launchOptions);
        zzd(13, zza);
    }

    public final void zzi() throws RemoteException {
        zzd(4, zza());
    }

    public final void zzj(zzai zzaiVar) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.cast.zzc.zze(zza, zzaiVar);
        zzd(18, zza);
    }

    public final void zzk(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzd(11, zza);
    }

    public final void zzl() throws RemoteException {
        zzd(6, zza());
    }

    public final void zzm(String str, String str2, long j7) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeLong(j7);
        zzd(9, zza);
    }

    public final void zzn(boolean z6, double d7, boolean z7) throws RemoteException {
        Parcel zza = zza();
        int i2 = com.google.android.gms.internal.cast.zzc.zza;
        zza.writeInt(z6 ? 1 : 0);
        zza.writeDouble(d7);
        zza.writeInt(z7 ? 1 : 0);
        zzd(8, zza);
    }

    public final void zzp(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzd(5, zza);
    }

    public final void zzq() throws RemoteException {
        zzd(19, zza());
    }

    public final void zzr(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzd(12, zza);
    }
}
