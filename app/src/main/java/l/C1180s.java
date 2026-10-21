package l;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: l.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1180s implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public C1183t createFromParcel(Parcel parcel) {
        C1183t c1183t = new C1183t();
        c1183t.f18003b = parcel.readInt();
        return c1183t;
    }

    @Override // android.os.Parcelable.Creator
    public C1183t[] newArray(int i2) {
        return new C1183t[i2];
    }
}
