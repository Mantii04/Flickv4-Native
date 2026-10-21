package x3;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: x3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1828b implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public C1829c[] newArray(int i2) {
        return new C1829c[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public C1829c createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new C1829c(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public C1829c createFromParcel(Parcel parcel) {
        return new C1829c(parcel, null);
    }
}
