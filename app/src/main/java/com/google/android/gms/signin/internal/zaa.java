package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes2.dex */
public final class zaa extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zaa> CREATOR = new zab();

    /* renamed from: b, reason: collision with root package name */
    public final int f12284b;

    /* renamed from: e, reason: collision with root package name */
    public final int f12285e;

    /* renamed from: f, reason: collision with root package name */
    public final Intent f12286f;

    public zaa() {
        this(2, 0, null);
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f12285e == 0 ? Status.f10605m : Status.f10609r;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f12284b);
        SafeParcelWriter.writeInt(parcel, 2, this.f12285e);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f12286f, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zaa(int i2, int i7, Intent intent) {
        this.f12284b = i2;
        this.f12285e = i7;
        this.f12286f = intent;
    }
}
