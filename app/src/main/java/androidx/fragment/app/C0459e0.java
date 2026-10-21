package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: androidx.fragment.app.e0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0459e0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public C0461f0 createFromParcel(Parcel parcel) {
        C0461f0 c0461f0 = new C0461f0();
        c0461f0.f6197b = parcel.readString();
        c0461f0.f6198e = parcel.readInt();
        return c0461f0;
    }

    @Override // android.os.Parcelable.Creator
    public C0461f0[] newArray(int i2) {
        return new C0461f0[i2];
    }
}
