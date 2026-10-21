package com.google.android.gms.cast.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.zzav;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new zzac();

    /* renamed from: b, reason: collision with root package name */
    public final double f10341b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10342e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10343f;

    /* renamed from: j, reason: collision with root package name */
    public final ApplicationMetadata f10344j;

    /* renamed from: m, reason: collision with root package name */
    public final int f10345m;

    /* renamed from: n, reason: collision with root package name */
    public final zzav f10346n;

    /* renamed from: p, reason: collision with root package name */
    public final double f10347p;

    public zzab() {
        this(Double.NaN, false, -1, null, -1, null, Double.NaN);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzab)) {
            return false;
        }
        zzab zzabVar = (zzab) obj;
        if (this.f10341b == zzabVar.f10341b && this.f10342e == zzabVar.f10342e && this.f10343f == zzabVar.f10343f && CastUtils.zze(this.f10344j, zzabVar.f10344j) && this.f10345m == zzabVar.f10345m) {
            zzav zzavVar = this.f10346n;
            if (CastUtils.zze(zzavVar, zzavVar) && this.f10347p == zzabVar.f10347p) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Double.valueOf(this.f10341b), Boolean.valueOf(this.f10342e), Integer.valueOf(this.f10343f), this.f10344j, Integer.valueOf(this.f10345m), this.f10346n, Double.valueOf(this.f10347p));
    }

    public final String toString() {
        return String.format(Locale.ROOT, "volume=%f", Double.valueOf(this.f10341b));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeDouble(parcel, 2, this.f10341b);
        SafeParcelWriter.writeBoolean(parcel, 3, this.f10342e);
        SafeParcelWriter.writeInt(parcel, 4, this.f10343f);
        SafeParcelWriter.writeParcelable(parcel, 5, this.f10344j, i2, false);
        SafeParcelWriter.writeInt(parcel, 6, this.f10345m);
        SafeParcelWriter.writeParcelable(parcel, 7, this.f10346n, i2, false);
        SafeParcelWriter.writeDouble(parcel, 8, this.f10347p);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final double zza() {
        return this.f10347p;
    }

    public final double zzb() {
        return this.f10341b;
    }

    public final int zzc() {
        return this.f10343f;
    }

    public final int zzd() {
        return this.f10345m;
    }

    public final ApplicationMetadata zze() {
        return this.f10344j;
    }

    public final zzav zzf() {
        return this.f10346n;
    }

    public final boolean zzg() {
        return this.f10342e;
    }

    public zzab(double d7, boolean z6, int i2, ApplicationMetadata applicationMetadata, int i7, zzav zzavVar, double d8) {
        this.f10341b = d7;
        this.f10342e = z6;
        this.f10343f = i2;
        this.f10344j = applicationMetadata;
        this.f10345m = i7;
        this.f10346n = zzavVar;
        this.f10347p = d8;
    }
}
