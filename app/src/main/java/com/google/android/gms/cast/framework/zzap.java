package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzap extends com.google.android.gms.internal.cast.zza implements zzaq {
    @Override // com.google.android.gms.cast.framework.zzaq
    public final IObjectWrapper zze() throws RemoteException {
        Parcel zzb = zzb(5, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzb.readStrongBinder());
        zzb.recycle();
        return asInterface;
    }
}
