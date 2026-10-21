package l;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class n2 implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public o2[] newArray(int i2) {
        return new o2[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public o2 createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new o2(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public o2 createFromParcel(Parcel parcel) {
        return new o2(parcel, null);
    }
}
