package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzf extends com.google.android.gms.internal.cast.zzb implements zzg {
    public zzf() {
        super("com.google.android.gms.cast.framework.media.INotificationActionsProvider");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 == 1) {
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        } else if (i2 == 2) {
            IObjectWrapper zze = zze();
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zze(parcel2, zze);
        } else if (i2 == 3) {
            List zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeTypedList(zzf);
        } else {
            if (i2 != 4) {
                return false;
            }
            int[] zzg = zzg();
            parcel2.writeNoException();
            parcel2.writeIntArray(zzg);
        }
        return true;
    }
}
