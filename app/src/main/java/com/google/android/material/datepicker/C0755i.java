package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* renamed from: com.google.android.material.datepicker.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0755i implements InterfaceC0749c {
    public static final Parcelable.Creator<C0755i> CREATOR = new C0754h();

    /* renamed from: b, reason: collision with root package name */
    public final long f12635b;

    public C0755i(long j7) {
        this.f12635b = j7;
    }

    public static C0755i from(long j7) {
        return new C0755i(j7);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0755i) && this.f12635b == ((C0755i) obj).f12635b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f12635b)});
    }

    public boolean isValid(long j7) {
        return j7 >= this.f12635b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f12635b);
    }
}
