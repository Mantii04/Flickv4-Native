package m1;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: m1.s0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1305s0 implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public C1307t0[] newArray(int i2) {
        return new C1307t0[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public C1307t0 createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new C1307t0(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public C1307t0 createFromParcel(Parcel parcel) {
        return new C1307t0(parcel, null);
    }
}
