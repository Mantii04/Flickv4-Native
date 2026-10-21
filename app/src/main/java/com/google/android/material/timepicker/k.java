package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class k implements Parcelable {
    public static final Parcelable.Creator<k> CREATOR = new j();

    /* renamed from: b, reason: collision with root package name */
    public final int f12983b;

    /* renamed from: e, reason: collision with root package name */
    public final int f12984e;

    /* renamed from: f, reason: collision with root package name */
    public final int f12985f;

    /* renamed from: j, reason: collision with root package name */
    public final int f12986j;

    public k(int i2, int i7, int i8, int i9) {
        this.f12984e = i2;
        this.f12985f = i7;
        this.f12986j = i8;
        this.f12983b = i9;
        new g(59);
        new g(i9 == 1 ? 23 : 12);
    }

    public static String formatText(Resources resources, CharSequence charSequence) {
        return formatText(resources, charSequence, "%02d");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f12984e == kVar.f12984e && this.f12985f == kVar.f12985f && this.f12983b == kVar.f12983b && this.f12986j == kVar.f12986j;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f12983b), Integer.valueOf(this.f12984e), Integer.valueOf(this.f12985f), Integer.valueOf(this.f12986j)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12984e);
        parcel.writeInt(this.f12985f);
        parcel.writeInt(this.f12986j);
        parcel.writeInt(this.f12983b);
    }

    public static String formatText(Resources resources, CharSequence charSequence, String str) {
        try {
            return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public k(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
