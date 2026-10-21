package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzb extends com.google.android.gms.internal.cast.zza implements zzd {
    @Override // com.google.android.gms.cast.framework.media.zzd
    public final IObjectWrapper zzg() throws RemoteException {
        Parcel zzb = zzb(2, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzb.readStrongBinder());
        zzb.recycle();
        return asInterface;
    }
}
