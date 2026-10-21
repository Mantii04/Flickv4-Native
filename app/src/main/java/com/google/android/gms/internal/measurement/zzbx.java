package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public class zzbx extends Binder implements IInterface {
    private static zzbz zza;

    public zzbx(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        boolean z6;
        if (i2 > 16777215) {
            z6 = super.onTransact(i2, parcel, parcel2, i7);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            z6 = false;
        }
        if (z6) {
            return true;
        }
        return zza(i2, parcel, parcel2, i7);
    }

    public boolean zza(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        return false;
    }
}
