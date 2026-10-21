package com.google.android.gms.cast.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public final class zzz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzz> CREATOR = new zzaa();

    /* renamed from: b, reason: collision with root package name */
    public final int f10445b;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10446e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f10447f;

    public zzz(int i2, boolean z6, boolean z7) {
        this.f10445b = i2;
        this.f10446e = z6;
        this.f10447f = z7;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzz)) {
            return false;
        }
        zzz zzzVar = (zzz) obj;
        return this.f10445b == zzzVar.f10445b && this.f10446e == zzzVar.f10446e && this.f10447f == zzzVar.f10447f;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10445b), Boolean.valueOf(this.f10446e), Boolean.valueOf(this.f10447f));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f10445b);
        SafeParcelWriter.writeBoolean(parcel, 3, this.f10446e);
        SafeParcelWriter.writeBoolean(parcel, 4, this.f10447f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
