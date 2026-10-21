package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2.dex */
public final class zzbf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbf> CREATOR = new zzbe();

    /* renamed from: b, reason: collision with root package name */
    public final String f11257b;

    /* renamed from: e, reason: collision with root package name */
    public final zzba f11258e;

    /* renamed from: f, reason: collision with root package name */
    public final String f11259f;

    /* renamed from: j, reason: collision with root package name */
    public final long f11260j;

    public zzbf(zzbf zzbfVar, long j7) {
        Preconditions.checkNotNull(zzbfVar);
        this.f11257b = zzbfVar.f11257b;
        this.f11258e = zzbfVar.f11258e;
        this.f11259f = zzbfVar.f11259f;
        this.f11260j = j7;
    }

    public final String toString() {
        return "origin=" + this.f11259f + ",name=" + this.f11257b + ",params=" + String.valueOf(this.f11258e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f11257b, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f11258e, i2, false);
        SafeParcelWriter.writeString(parcel, 4, this.f11259f, false);
        SafeParcelWriter.writeLong(parcel, 5, this.f11260j);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzbf(@SafeParcelable.Param String str, @SafeParcelable.Param zzba zzbaVar, @SafeParcelable.Param String str2, @SafeParcelable.Param long j7) {
        this.f11257b = str;
        this.f11258e = zzbaVar;
        this.f11259f = str2;
        this.f11260j = j7;
    }
}
