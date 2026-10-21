package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes2.dex */
public final class zzdq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdq> CREATOR = new zzdp();

    @SafeParcelable.Field
    public final long zza;

    @SafeParcelable.Field
    public final long zzb;

    @SafeParcelable.Field
    public final boolean zzc;

    @SafeParcelable.Field
    public final String zzd;

    @SafeParcelable.Field
    public final String zze;

    @SafeParcelable.Field
    public final String zzf;

    @SafeParcelable.Field
    public final Bundle zzg;

    @SafeParcelable.Field
    public final String zzh;

    @SafeParcelable.Constructor
    public zzdq(@SafeParcelable.Param long j7, @SafeParcelable.Param long j8, @SafeParcelable.Param boolean z6, @SafeParcelable.Param String str, @SafeParcelable.Param String str2, @SafeParcelable.Param String str3, @SafeParcelable.Param Bundle bundle, @SafeParcelable.Param String str4) {
        this.zza = j7;
        this.zzb = j8;
        this.zzc = z6;
        this.zzd = str;
        this.zze = str2;
        this.zzf = str3;
        this.zzg = bundle;
        this.zzh = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.zza);
        SafeParcelWriter.writeLong(parcel, 2, this.zzb);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 5, this.zze, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzf, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.zzg, false);
        SafeParcelWriter.writeString(parcel, 8, this.zzh, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
