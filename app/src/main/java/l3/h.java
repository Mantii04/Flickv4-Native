package l3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class h implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public i[] newArray(int i2) {
        return new i[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public i createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new i(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public i createFromParcel(Parcel parcel) {
        return new i(parcel, (ClassLoader) null);
    }
}
