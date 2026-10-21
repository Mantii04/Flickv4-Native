package com.google.android.material.timepicker;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class j implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public k createFromParcel(Parcel parcel) {
        return new k(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public k[] newArray(int i2) {
        return new k[i2];
    }
}
