package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new zae();

    /* renamed from: b, reason: collision with root package name */
    public final int f10989b;

    /* renamed from: e, reason: collision with root package name */
    public final String f10990e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10991f;

    public zac(int i2, String str, int i7) {
        this.f10989b = i2;
        this.f10990e = str;
        this.f10991f = i7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10989b);
        SafeParcelWriter.writeString(parcel, 2, this.f10990e, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f10991f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zac(String str, int i2) {
        this.f10989b = 1;
        this.f10990e = str;
        this.f10991f = i2;
    }
}
