package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zze extends com.google.android.gms.internal.cast.zza implements zzg {
    @Override // com.google.android.gms.cast.framework.media.zzg
    public final List zzf() throws RemoteException {
        Parcel zzb = zzb(3, zza());
        ArrayList createTypedArrayList = zzb.createTypedArrayList(NotificationAction.CREATOR);
        zzb.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.cast.framework.media.zzg
    public final int[] zzg() throws RemoteException {
        Parcel zzb = zzb(4, zza());
        int[] createIntArray = zzb.createIntArray();
        zzb.recycle();
        return createIntArray;
    }
}
