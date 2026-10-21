package x3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class C implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public D[] newArray(int i2) {
        return new D[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public D createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new D(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public D createFromParcel(Parcel parcel) {
        return new D(parcel, null);
    }
}
