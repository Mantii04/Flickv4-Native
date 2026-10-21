package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.google.android.material.datepicker.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0747a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public C0750d createFromParcel(Parcel parcel) {
        return new C0750d((C) parcel.readParcelable(C.class.getClassLoader()), (C) parcel.readParcelable(C.class.getClassLoader()), (InterfaceC0749c) parcel.readParcelable(InterfaceC0749c.class.getClassLoader()), (C) parcel.readParcelable(C.class.getClassLoader()), parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    public C0750d[] newArray(int i2) {
        return new C0750d[i2];
    }
}
