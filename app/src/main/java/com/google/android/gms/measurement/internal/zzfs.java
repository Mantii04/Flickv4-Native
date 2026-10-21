package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzfs extends com.google.android.gms.internal.measurement.zzbu implements zzfq {
    public zzfs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final zzal zza(zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        Parcel zza = zza(21, a_);
        zzal zzalVar = (zzal) com.google.android.gms.internal.measurement.zzbw.zza(zza, zzal.CREATOR);
        zza.recycle();
        return zzalVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final String zzb(zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        Parcel zza = zza(11, a_);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zzc(zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        zzb(4, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zzd(zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        zzb(18, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zze(zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        zzb(20, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zzf(zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        zzb(6, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzmv> zza(zzn zznVar, Bundle bundle) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        com.google.android.gms.internal.measurement.zzbw.zza(a_, bundle);
        Parcel zza = zza(24, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzmv.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzno> zza(zzn zznVar, boolean z6) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        com.google.android.gms.internal.measurement.zzbw.zza(a_, z6);
        Parcel zza = zza(7, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzno.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzac> zza(String str, String str2, zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        Parcel zza = zza(16, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzac.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzac> zza(String str, String str2, String str3) throws RemoteException {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        a_.writeString(str3);
        Parcel zza = zza(17, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzac.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzno> zza(String str, String str2, boolean z6, zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        com.google.android.gms.internal.measurement.zzbw.zza(a_, z6);
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        Parcel zza = zza(14, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzno.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final List<zzno> zza(String str, String str2, String str3, boolean z6) throws RemoteException {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        a_.writeString(str3);
        com.google.android.gms.internal.measurement.zzbw.zza(a_, z6);
        Parcel zza = zza(15, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzno.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(zzbf zzbfVar, zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zzbfVar);
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        zzb(1, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(zzbf zzbfVar, String str, String str2) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zzbfVar);
        a_.writeString(str);
        a_.writeString(str2);
        zzb(5, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(zzac zzacVar, zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zzacVar);
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        zzb(12, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(zzac zzacVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zzacVar);
        zzb(13, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(long j7, String str, String str2, String str3) throws RemoteException {
        Parcel a_ = a_();
        a_.writeLong(j7);
        a_.writeString(str);
        a_.writeString(str2);
        a_.writeString(str3);
        zzb(10, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(Bundle bundle, zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, bundle);
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        zzb(19, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final void zza(zzno zznoVar, zzn zznVar) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznoVar);
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zznVar);
        zzb(2, a_);
    }

    @Override // com.google.android.gms.measurement.internal.zzfq
    public final byte[] zza(zzbf zzbfVar, String str) throws RemoteException {
        Parcel a_ = a_();
        com.google.android.gms.internal.measurement.zzbw.zza(a_, zzbfVar);
        a_.writeString(str);
        Parcel zza = zza(9, a_);
        byte[] createByteArray = zza.createByteArray();
        zza.recycle();
        return createByteArray;
    }
}
