package m3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes2.dex */
public final class c extends V.c {
    public static final Parcelable.Creator<c> CREATOR = new b();

    /* renamed from: f, reason: collision with root package name */
    public boolean f18559f;

    public c(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f18559f ? 1 : 0);
    }

    public c(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            c.class.getClassLoader();
        }
        this.f18559f = parcel.readInt() == 1;
    }
}
