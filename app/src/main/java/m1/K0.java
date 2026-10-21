package m1;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class K0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public L0 createFromParcel(Parcel parcel) {
        L0 l02 = new L0();
        l02.f18298b = parcel.readInt();
        l02.f18299e = parcel.readInt();
        l02.f18301j = parcel.readInt() == 1;
        int readInt = parcel.readInt();
        if (readInt > 0) {
            int[] iArr = new int[readInt];
            l02.f18300f = iArr;
            parcel.readIntArray(iArr);
        }
        return l02;
    }

    @Override // android.os.Parcelable.Creator
    public L0[] newArray(int i2) {
        return new L0[i2];
    }
}
