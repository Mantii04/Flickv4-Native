package com.google.android.gms.cast.framework.media.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzg extends com.google.android.gms.internal.cast.zza implements zzi {
    @Override // com.google.android.gms.cast.framework.media.internal.zzi
    public final Bitmap zze(Uri uri) throws RemoteException {
        Parcel zza = zza();
        com.google.android.gms.internal.cast.zzc.zzc(zza, uri);
        Parcel zzb = zzb(1, zza);
        Bitmap bitmap = (Bitmap) com.google.android.gms.internal.cast.zzc.zza(zzb, Bitmap.CREATOR);
        zzb.recycle();
        return bitmap;
    }
}
