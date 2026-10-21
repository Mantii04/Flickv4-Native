package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.RemoteException;
import android.view.Surface;

/* loaded from: classes2.dex */
public abstract class zzdr extends zzb implements zzds {
    public zzdr() {
        super("com.google.android.gms.cast.remote_display.ICastRemoteDisplayCallbacks");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 == 1) {
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            Surface surface = (Surface) zzc.zza(parcel, Surface.CREATOR);
            zzc.zzb(parcel);
            zzb(readInt, readInt2, surface);
        } else if (i2 == 2) {
            int readInt3 = parcel.readInt();
            zzc.zzb(parcel);
            zzd(readInt3);
        } else if (i2 == 3) {
            zzf();
        } else if (i2 == 4) {
            zzc();
        } else {
            if (i2 != 5) {
                return false;
            }
            boolean zzf = zzc.zzf(parcel);
            zzc.zzb(parcel);
            zze(zzf);
        }
        parcel2.writeNoException();
        return true;
    }
}
