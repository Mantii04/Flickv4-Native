package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: androidx.fragment.app.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0461f0 implements Parcelable {
    public static final Parcelable.Creator<C0461f0> CREATOR = new C0459e0();

    /* renamed from: b, reason: collision with root package name */
    public String f6197b;

    /* renamed from: e, reason: collision with root package name */
    public int f6198e;

    public C0461f0(String str, int i2) {
        this.f6197b = str;
        this.f6198e = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f6197b);
        parcel.writeInt(this.f6198e);
    }
}
