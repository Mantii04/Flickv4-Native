package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes2.dex */
public final class zzmv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzmv> CREATOR = new zzmu();

    /* renamed from: b, reason: collision with root package name */
    public final String f12130b;

    /* renamed from: e, reason: collision with root package name */
    public final long f12131e;

    /* renamed from: f, reason: collision with root package name */
    public final int f12132f;

    public zzmv(int i2, String str, long j7) {
        this.f12130b = str;
        this.f12131e = j7;
        this.f12132f = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f12130b, false);
        SafeParcelWriter.writeLong(parcel, 2, this.f12131e);
        SafeParcelWriter.writeInt(parcel, 3, this.f12132f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
