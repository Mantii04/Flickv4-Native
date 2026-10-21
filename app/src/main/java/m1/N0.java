package m1;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class N0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public O0 createFromParcel(Parcel parcel) {
        O0 o02 = new O0();
        o02.f18308b = parcel.readInt();
        o02.f18309e = parcel.readInt();
        int readInt = parcel.readInt();
        o02.f18310f = readInt;
        if (readInt > 0) {
            int[] iArr = new int[readInt];
            o02.f18311j = iArr;
            parcel.readIntArray(iArr);
        }
        int readInt2 = parcel.readInt();
        o02.f18312m = readInt2;
        if (readInt2 > 0) {
            int[] iArr2 = new int[readInt2];
            o02.f18313n = iArr2;
            parcel.readIntArray(iArr2);
        }
        o02.f18315q = parcel.readInt() == 1;
        o02.f18316r = parcel.readInt() == 1;
        o02.f18317s = parcel.readInt() == 1;
        o02.f18314p = parcel.readArrayList(L0.class.getClassLoader());
        return o02;
    }

    @Override // android.os.Parcelable.Creator
    public O0[] newArray(int i2) {
        return new O0[i2];
    }
}
