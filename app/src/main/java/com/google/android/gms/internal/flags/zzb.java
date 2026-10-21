package com.google.android.gms.internal.flags;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public class zzb extends Binder implements IInterface {
    public zzb(String str) {
        attachInterface(this, "com.google.android.gms.flags.IFlagProvider");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i2, parcel, parcel2, i7)) {
            return true;
        }
        return zza(i2, parcel, parcel2, i7);
    }

    public boolean zza(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        throw null;
    }
}
