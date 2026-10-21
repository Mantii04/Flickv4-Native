package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

@ShowFirstParty
@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new zak();

    /* renamed from: b, reason: collision with root package name */
    public final int f11013b;

    /* renamed from: e, reason: collision with root package name */
    public final String f11014e;

    /* renamed from: f, reason: collision with root package name */
    public final FastJsonResponse.Field f11015f;

    public zam(int i2, String str, FastJsonResponse.Field field) {
        this.f11013b = i2;
        this.f11014e = str;
        this.f11015f = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11013b);
        SafeParcelWriter.writeString(parcel, 2, this.f11014e, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f11015f, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zam(String str, FastJsonResponse.Field field) {
        this.f11013b = 1;
        this.f11014e = str;
        this.f11015f = field;
    }
}
