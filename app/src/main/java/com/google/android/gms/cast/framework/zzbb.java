package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbb extends com.google.android.gms.internal.cast.zzb implements zzbc {
    public zzbb() {
        super("com.google.android.gms.cast.framework.ISessionProvider");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 == 1) {
            String readString = parcel.readString();
            com.google.android.gms.internal.cast.zzc.zzb(parcel);
            IObjectWrapper zzb = zzb(readString);
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zze(parcel2, zzb);
        } else if (i2 == 2) {
            boolean zzd = zzd();
            parcel2.writeNoException();
            int i8 = com.google.android.gms.internal.cast.zzc.zza;
            parcel2.writeInt(zzd ? 1 : 0);
        } else if (i2 == 3) {
            String zzc = zzc();
            parcel2.writeNoException();
            parcel2.writeString(zzc);
        } else {
            if (i2 != 4) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        }
        return true;
    }
}
