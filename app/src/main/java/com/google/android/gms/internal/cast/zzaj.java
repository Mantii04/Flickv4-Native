package com.google.android.gms.internal.cast;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzaj extends zza implements zzak {
    public zzaj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final int zze() throws RemoteException {
        Parcel zzb = zzb(8, zza());
        int readInt = zzb.readInt();
        zzb.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.zzaj zzf(IObjectWrapper iObjectWrapper, CastOptions castOptions, zzam zzamVar, Map map) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zzc.zzc(zza, castOptions);
        zzc.zze(zza, zzamVar);
        zza.writeMap(map);
        Parcel zzb = zzb(1, zza);
        com.google.android.gms.cast.framework.zzaj zzb2 = com.google.android.gms.cast.framework.zzai.zzb(zzb.readStrongBinder());
        zzb.recycle();
        return zzb2;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.zzam zzg(CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzag zzagVar) throws RemoteException {
        Parcel zza = zza();
        zzc.zzc(zza, castOptions);
        zzc.zze(zza, iObjectWrapper);
        zzc.zze(zza, zzagVar);
        Parcel zzb = zzb(3, zza);
        com.google.android.gms.cast.framework.zzam zzb2 = com.google.android.gms.cast.framework.zzal.zzb(zzb.readStrongBinder());
        zzb.recycle();
        return zzb2;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.zzat zzh(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zzc.zze(zza, iObjectWrapper2);
        zzc.zze(zza, iObjectWrapper3);
        Parcel zzb = zzb(5, zza);
        com.google.android.gms.cast.framework.zzat zzb2 = com.google.android.gms.cast.framework.zzas.zzb(zzb.readStrongBinder());
        zzb.recycle();
        return zzb2;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.zzaw zzi(String str, String str2, com.google.android.gms.cast.framework.zzbe zzbeVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzc.zze(zza, zzbeVar);
        Parcel zzb = zzb(2, zza);
        com.google.android.gms.cast.framework.zzaw zzb2 = com.google.android.gms.cast.framework.zzav.zzb(zzb.readStrongBinder());
        zzb.recycle();
        return zzb2;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.media.internal.zzi zzj(IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.media.internal.zzk zzkVar, int i2, int i7, boolean z6, long j7, int i8, int i9, int i10) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zzc.zze(zza, zzkVar);
        zza.writeInt(i2);
        zza.writeInt(i7);
        zza.writeInt(0);
        zza.writeLong(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        zza.writeInt(5);
        zza.writeInt(333);
        zza.writeInt(10000);
        Parcel zzb = zzb(6, zza);
        com.google.android.gms.cast.framework.media.internal.zzi zzb2 = com.google.android.gms.cast.framework.media.internal.zzh.zzb(zzb.readStrongBinder());
        zzb.recycle();
        return zzb2;
    }

    @Override // com.google.android.gms.internal.cast.zzak
    public final com.google.android.gms.cast.framework.media.internal.zzi zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, com.google.android.gms.cast.framework.media.internal.zzk zzkVar, int i2, int i7, boolean z6, long j7, int i8, int i9, int i10) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zzc.zze(zza, iObjectWrapper2);
        zzc.zze(zza, zzkVar);
        zza.writeInt(i2);
        zza.writeInt(i7);
        zza.writeInt(0);
        zza.writeLong(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        zza.writeInt(5);
        zza.writeInt(333);
        zza.writeInt(10000);
        Parcel zzb = zzb(7, zza);
        com.google.android.gms.cast.framework.media.internal.zzi zzb2 = com.google.android.gms.cast.framework.media.internal.zzh.zzb(zzb.readStrongBinder());
        zzb.recycle();
        return zzb2;
    }
}
