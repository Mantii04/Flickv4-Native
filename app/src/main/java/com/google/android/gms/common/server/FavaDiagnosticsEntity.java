package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes.dex */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new zaa();

    /* renamed from: b, reason: collision with root package name */
    public final int f10981b;

    /* renamed from: e, reason: collision with root package name */
    public final String f10982e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10983f;

    @SafeParcelable.Constructor
    public FavaDiagnosticsEntity(@SafeParcelable.Param int i2, @SafeParcelable.Param String str, @SafeParcelable.Param int i7) {
        this.f10981b = i2;
        this.f10982e = str;
        this.f10983f = i7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10981b);
        SafeParcelWriter.writeString(parcel, 2, this.f10982e, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f10983f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
