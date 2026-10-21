package A3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class i implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public j[] newArray(int i2) {
        return new j[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public j createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new j(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public j createFromParcel(Parcel parcel) {
        return new j(parcel, null);
    }
}
