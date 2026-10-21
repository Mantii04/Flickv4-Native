package com.google.android.gms.cast.framework.media.internal;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class zzj extends com.google.android.gms.internal.cast.zzb implements zzk {
    public zzj() {
        super("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 == 1) {
            long readLong = parcel.readLong();
            long readLong2 = parcel.readLong();
            com.google.android.gms.internal.cast.zzc.zzb(parcel);
            zzb(readLong, readLong2);
            parcel2.writeNoException();
        } else {
            if (i2 != 2) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        }
        return true;
    }
}
