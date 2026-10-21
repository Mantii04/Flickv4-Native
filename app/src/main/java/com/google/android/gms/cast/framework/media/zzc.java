package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzc extends com.google.android.gms.internal.cast.zzb implements zzd {
    public zzc() {
        super("com.google.android.gms.cast.framework.media.IImagePicker");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i7) throws RemoteException {
        if (i2 == 1) {
            MediaMetadata mediaMetadata = (MediaMetadata) com.google.android.gms.internal.cast.zzc.zza(parcel, MediaMetadata.CREATOR);
            int readInt = parcel.readInt();
            com.google.android.gms.internal.cast.zzc.zzb(parcel);
            WebImage zze = zze(mediaMetadata, readInt);
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zzd(parcel2, zze);
        } else if (i2 == 2) {
            IObjectWrapper zzg = zzg();
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zze(parcel2, zzg);
        } else if (i2 == 3) {
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        } else {
            if (i2 != 4) {
                return false;
            }
            MediaMetadata mediaMetadata2 = (MediaMetadata) com.google.android.gms.internal.cast.zzc.zza(parcel, MediaMetadata.CREATOR);
            ImageHints imageHints = (ImageHints) com.google.android.gms.internal.cast.zzc.zza(parcel, ImageHints.CREATOR);
            com.google.android.gms.internal.cast.zzc.zzb(parcel);
            WebImage zzf = zzf(mediaMetadata2, imageHints);
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zzd(parcel2, zzf);
        }
        return true;
    }
}
