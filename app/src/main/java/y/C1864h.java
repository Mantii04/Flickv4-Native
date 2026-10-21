package y;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: y.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1864h implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.Creator
    public C1865i[] newArray(int i2) {
        return new C1865i[i2];
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public C1865i createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new C1865i(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public C1865i createFromParcel(Parcel parcel) {
        return new C1865i(parcel, null);
    }
}
