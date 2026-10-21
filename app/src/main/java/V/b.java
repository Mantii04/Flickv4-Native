package V;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class b implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public c[] newArray(int i2) {
        return new c[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public c createFromParcel(Parcel parcel, ClassLoader classLoader) {
        if (parcel.readParcelable(classLoader) == null) {
            return c.f3805e;
        }
        throw new IllegalStateException("superState must be null");
    }

    @Override // android.os.Parcelable.Creator
    public c createFromParcel(Parcel parcel) {
        return createFromParcel(parcel, (ClassLoader) null);
    }
}
