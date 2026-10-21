package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.google.android.material.datepicker.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0754h implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public C0755i createFromParcel(Parcel parcel) {
        return new C0755i(parcel.readLong());
    }

    @Override // android.os.Parcelable.Creator
    public C0755i[] newArray(int i2) {
        return new C0755i[i2];
    }
}
