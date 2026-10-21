package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public final class zzat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzat> CREATOR = new zzau();

    /* renamed from: b, reason: collision with root package name */
    public final float f10460b;

    /* renamed from: e, reason: collision with root package name */
    public final float f10461e;

    /* renamed from: f, reason: collision with root package name */
    public final float f10462f;

    @SafeParcelable.Constructor
    public zzat(@SafeParcelable.Param float f3, @SafeParcelable.Param float f7, @SafeParcelable.Param float f8) {
        this.f10460b = f3;
        this.f10461e = f7;
        this.f10462f = f8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzat)) {
            return false;
        }
        zzat zzatVar = (zzat) obj;
        return this.f10460b == zzatVar.f10460b && this.f10461e == zzatVar.f10461e && this.f10462f == zzatVar.f10462f;
    }

    public final int hashCode() {
        return Objects.hashCode(Float.valueOf(this.f10460b), Float.valueOf(this.f10461e), Float.valueOf(this.f10462f));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloat(parcel, 2, this.f10460b);
        SafeParcelWriter.writeFloat(parcel, 3, this.f10461e);
        SafeParcelWriter.writeFloat(parcel, 4, this.f10462f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
