package com.google.android.material.appbar;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class c implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public d[] newArray(int i2) {
        return new d[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public d createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new d(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public d createFromParcel(Parcel parcel) {
        return new d(parcel, null);
    }
}
