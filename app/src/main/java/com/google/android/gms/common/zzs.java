package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();

    /* renamed from: b, reason: collision with root package name */
    public final String f11086b;

    /* renamed from: e, reason: collision with root package name */
    public final zzj f11087e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f11088f;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f11089j;

    public zzs(String str, zzj zzjVar, boolean z6, boolean z7) {
        this.f11086b = str;
        this.f11087e = zzjVar;
        this.f11088f = z6;
        this.f11089j = z7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f11086b, false);
        zzj zzjVar = this.f11087e;
        if (zzjVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            zzjVar = null;
        }
        SafeParcelWriter.writeIBinder(parcel, 2, zzjVar, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.f11088f);
        SafeParcelWriter.writeBoolean(parcel, 4, this.f11089j);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzs(String str, IBinder iBinder, boolean z6, boolean z7) {
        this.f11086b = str;
        zzk zzkVar = null;
        if (iBinder != null) {
            try {
                IObjectWrapper zzd = com.google.android.gms.common.internal.zzz.zzg(iBinder).zzd();
                byte[] bArr = zzd == null ? null : (byte[]) ObjectWrapper.unwrap(zzd);
                if (bArr != null) {
                    zzkVar = new zzk(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e3) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e3);
            }
        }
        this.f11087e = zzkVar;
        this.f11088f = z6;
        this.f11089j = z7;
    }
}
