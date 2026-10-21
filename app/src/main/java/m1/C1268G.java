package m1;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: m1.G, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1268G implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public H createFromParcel(Parcel parcel) {
        H h7 = new H();
        h7.f18275b = parcel.readInt();
        h7.f18276e = parcel.readInt();
        h7.f18277f = parcel.readInt() == 1;
        return h7;
    }

    @Override // android.os.Parcelable.Creator
    public H[] newArray(int i2) {
        return new H[i2];
    }
}
