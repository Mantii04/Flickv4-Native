package com.google.android.gms.cast;

import A.i;
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
public final class zzbu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbu> CREATOR = new zzbv();

    /* renamed from: b, reason: collision with root package name */
    public final int f10532b;

    public zzbu() {
        this.f10532b = 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof zzbu) && this.f10532b == ((zzbu) obj).f10532b;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f10532b));
    }

    public final String toString() {
        int i2 = this.f10532b;
        return i.l("joinOptions(connectionType=", i2 != 0 ? i2 != 2 ? "UNKNOWN" : "INVISIBLE" : "STRONG", ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f10532b);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzbu(int i2) {
        this.f10532b = i2;
    }
}
