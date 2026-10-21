package l;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class S1 implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public T1[] newArray(int i2) {
        return new T1[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public T1 createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new T1(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public T1 createFromParcel(Parcel parcel) {
        return new T1(parcel, null);
    }
}
