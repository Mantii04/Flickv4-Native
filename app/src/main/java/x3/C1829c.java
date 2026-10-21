package x3;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: x3.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1829c extends V.c {
    public static final Parcelable.Creator<C1829c> CREATOR = new C1828b();

    /* renamed from: f, reason: collision with root package name */
    public boolean f20896f;

    public C1829c(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f20896f ? 1 : 0);
    }

    public C1829c(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f20896f = parcel.readInt() == 1;
    }
}
