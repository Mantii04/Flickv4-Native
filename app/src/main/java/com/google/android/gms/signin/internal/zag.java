package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class
/* loaded from: classes2.dex */
public final class zag extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zag> CREATOR = new zah();

    /* renamed from: b, reason: collision with root package name */
    public final List f12287b;

    /* renamed from: e, reason: collision with root package name */
    public final String f12288e;

    @SafeParcelable.Constructor
    public zag(@SafeParcelable.Param List<String> list, @SafeParcelable.Param String str) {
        this.f12287b = list;
        this.f12288e = str;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f12288e != null ? Status.f10605m : Status.f10609r;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 1, this.f12287b, false);
        SafeParcelWriter.writeString(parcel, 2, this.f12288e, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
