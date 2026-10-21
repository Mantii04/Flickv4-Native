package p3;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: p3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1498b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public C1499c createFromParcel(Parcel parcel) {
        C1499c c1499c = new C1499c(parcel);
        c1499c.f19477b = ((Integer) parcel.readValue(C1499c.class.getClassLoader())).intValue();
        return c1499c;
    }

    @Override // android.os.Parcelable.Creator
    public C1499c[] newArray(int i2) {
        return new C1499c[i2];
    }
}
