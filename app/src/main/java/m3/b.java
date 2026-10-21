package m3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class b implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public c[] newArray(int i2) {
        return new c[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public c createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new c(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public c createFromParcel(Parcel parcel) {
        return new c(parcel, null);
    }
}
