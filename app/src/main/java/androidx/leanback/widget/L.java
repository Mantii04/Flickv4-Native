package androidx.leanback.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class L implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public M createFromParcel(Parcel parcel) {
        M m7 = new M();
        m7.f6595e = Bundle.EMPTY;
        m7.f6594b = parcel.readInt();
        m7.f6595e = parcel.readBundle(GridLayoutManager.class.getClassLoader());
        return m7;
    }

    @Override // android.os.Parcelable.Creator
    public M[] newArray(int i2) {
        return new M[i2];
    }
}
