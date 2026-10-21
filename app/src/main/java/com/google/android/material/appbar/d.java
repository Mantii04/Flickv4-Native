package com.google.android.material.appbar;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class d extends V.c {
    public static final Parcelable.Creator<d> CREATOR = new c();

    /* renamed from: f, reason: collision with root package name */
    public boolean f12431f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f12432j;

    /* renamed from: m, reason: collision with root package name */
    public int f12433m;

    /* renamed from: n, reason: collision with root package name */
    public float f12434n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f12435p;

    public d(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f12431f = parcel.readByte() != 0;
        this.f12432j = parcel.readByte() != 0;
        this.f12433m = parcel.readInt();
        this.f12434n = parcel.readFloat();
        this.f12435p = parcel.readByte() != 0;
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeByte(this.f12431f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12432j ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f12433m);
        parcel.writeFloat(this.f12434n);
        parcel.writeByte(this.f12435p ? (byte) 1 : (byte) 0);
    }

    public d(Parcelable parcelable) {
        super(parcelable);
    }
}
