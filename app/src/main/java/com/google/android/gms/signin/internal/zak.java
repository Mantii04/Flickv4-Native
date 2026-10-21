package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zav;

@SafeParcelable.Class
/* loaded from: classes2.dex */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new zal();

    /* renamed from: b, reason: collision with root package name */
    public final int f12291b;

    /* renamed from: e, reason: collision with root package name */
    public final ConnectionResult f12292e;

    /* renamed from: f, reason: collision with root package name */
    public final zav f12293f;

    public zak(int i2, ConnectionResult connectionResult, zav zavVar) {
        this.f12291b = i2;
        this.f12292e = connectionResult;
        this.f12293f = zavVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f12291b);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f12292e, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f12293f, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final ConnectionResult zaa() {
        return this.f12292e;
    }

    public final zav zab() {
        return this.f12293f;
    }
}
