package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.LaunchOptions;

/* loaded from: classes.dex */
public abstract class zzaf extends com.google.android.gms.internal.cast.zzb implements zzag {
    public zzaf() {
        super("com.google.android.gms.cast.framework.ICastConnectionController");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 == 1) {
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            com.google.android.gms.internal.cast.zzc.zzb(parcel);
            zzc(readString, readString2);
            parcel2.writeNoException();
        } else if (i2 == 2) {
            String readString3 = parcel.readString();
            LaunchOptions launchOptions = (LaunchOptions) com.google.android.gms.internal.cast.zzc.zza(parcel, LaunchOptions.CREATOR);
            com.google.android.gms.internal.cast.zzc.zzb(parcel);
            zzd(readString3, launchOptions);
            parcel2.writeNoException();
        } else if (i2 == 3) {
            String readString4 = parcel.readString();
            com.google.android.gms.internal.cast.zzc.zzb(parcel);
            zze(readString4);
            parcel2.writeNoException();
        } else if (i2 == 4) {
            int readInt = parcel.readInt();
            com.google.android.gms.internal.cast.zzc.zzb(parcel);
            zzb(readInt);
            parcel2.writeNoException();
        } else {
            if (i2 != 5) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        }
        return true;
    }
}
