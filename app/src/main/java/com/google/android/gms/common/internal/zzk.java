package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class
/* loaded from: classes.dex */
public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new zzl();

    /* renamed from: b, reason: collision with root package name */
    public Bundle f10956b;

    /* renamed from: e, reason: collision with root package name */
    public Feature[] f10957e;

    /* renamed from: f, reason: collision with root package name */
    public int f10958f;

    /* renamed from: j, reason: collision with root package name */
    public ConnectionTelemetryConfiguration f10959j;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.f10956b, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.f10957e, i2, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f10958f);
        SafeParcelWriter.writeParcelable(parcel, 4, this.f10959j, i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
