package K3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class G implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public H[] newArray(int i2) {
        return new H[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public H createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new H(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public H createFromParcel(Parcel parcel) {
        return new H(parcel, null);
    }
}
