package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public final class zzak extends com.google.android.gms.internal.cast.zza implements zzam {
    @Override // com.google.android.gms.cast.framework.zzam
    public final void zze(boolean z6, int i2) throws RemoteException {
        Parcel zza = zza();
        int i7 = com.google.android.gms.internal.cast.zzc.zza;
        zza.writeInt(z6 ? 1 : 0);
        zza.writeInt(0);
        zzc(6, zza);
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zzf(ApplicationMetadata applicationMetadata, String str, String str2, boolean z6) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.cast.zzc.zzc(zza, applicationMetadata);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeInt(z6 ? 1 : 0);
        zzc(4, zza);
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zzg(int i2) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i2);
        zzc(5, zza);
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zzh(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.cast.zzc.zzc(zza, null);
        zzc(1, zza);
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zzi(ConnectionResult connectionResult) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.cast.zzc.zzc(zza, connectionResult);
        zzc(3, zza);
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zzj(int i2) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i2);
        zzc(2, zza);
    }
}
