package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class B implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public C createFromParcel(Parcel parcel) {
        return C.b(parcel.readInt(), parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    public C[] newArray(int i2) {
        return new C[i2];
    }
}
