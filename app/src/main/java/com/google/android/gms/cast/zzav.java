package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public final class zzav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzav> CREATOR = new zzaw();

    /* renamed from: b, reason: collision with root package name */
    public final zzat f10463b;

    /* renamed from: e, reason: collision with root package name */
    public final zzat f10464e;

    @SafeParcelable.Constructor
    public zzav(@SafeParcelable.Param zzat zzatVar, @SafeParcelable.Param zzat zzatVar2) {
        this.f10463b = zzatVar;
        this.f10464e = zzatVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzav)) {
            return false;
        }
        zzav zzavVar = (zzav) obj;
        return CastUtils.zze(this.f10463b, zzavVar.f10463b) && CastUtils.zze(this.f10464e, zzavVar.f10464e);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f10463b, this.f10464e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f10463b, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f10464e, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
