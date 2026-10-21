package l;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: l.l0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1161l0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public C1164m0 createFromParcel(Parcel parcel) {
        C1164m0 c1164m0 = new C1164m0(parcel);
        c1164m0.f17949b = parcel.readByte() != 0;
        return c1164m0;
    }

    @Override // android.os.Parcelable.Creator
    public C1164m0[] newArray(int i2) {
        return new C1164m0[i2];
    }
}
