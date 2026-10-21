package H3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class g implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public h[] newArray(int i2) {
        return new h[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public h createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new h(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public h createFromParcel(Parcel parcel) {
        return new h(parcel, (ClassLoader) null);
    }
}
