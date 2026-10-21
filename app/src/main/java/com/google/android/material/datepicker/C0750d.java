package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* renamed from: com.google.android.material.datepicker.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0750d implements Parcelable {
    public static final Parcelable.Creator<C0750d> CREATOR = new C0747a();

    /* renamed from: b, reason: collision with root package name */
    public final C f12626b;

    /* renamed from: e, reason: collision with root package name */
    public final C f12627e;

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC0749c f12628f;

    /* renamed from: j, reason: collision with root package name */
    public final C f12629j;

    /* renamed from: m, reason: collision with root package name */
    public final int f12630m;

    /* renamed from: n, reason: collision with root package name */
    public final int f12631n;

    /* renamed from: p, reason: collision with root package name */
    public final int f12632p;

    public C0750d(C c7, C c8, InterfaceC0749c interfaceC0749c, C c9, int i2) {
        Objects.requireNonNull(c7, "start cannot be null");
        Objects.requireNonNull(c8, "end cannot be null");
        Objects.requireNonNull(interfaceC0749c, "validator cannot be null");
        this.f12626b = c7;
        this.f12627e = c8;
        this.f12629j = c9;
        this.f12630m = i2;
        this.f12628f = interfaceC0749c;
        if (c9 != null && c7.compareTo(c9) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (c9 != null && c9.compareTo(c8) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i2 < 0 || i2 > M.c(null).getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.f12632p = c7.f(c8) + 1;
        this.f12631n = (c8.f12583f - c7.f12583f) + 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0750d)) {
            return false;
        }
        C0750d c0750d = (C0750d) obj;
        return this.f12626b.equals(c0750d.f12626b) && this.f12627e.equals(c0750d.f12627e) && L.c.equals(this.f12629j, c0750d.f12629j) && this.f12630m == c0750d.f12630m && this.f12628f.equals(c0750d.f12628f);
    }

    public InterfaceC0749c getDateValidator() {
        return this.f12628f;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f12626b, this.f12627e, this.f12629j, Integer.valueOf(this.f12630m), this.f12628f});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f12626b, 0);
        parcel.writeParcelable(this.f12627e, 0);
        parcel.writeParcelable(this.f12629j, 0);
        parcel.writeParcelable(this.f12628f, 0);
        parcel.writeInt(this.f12630m);
    }
}
