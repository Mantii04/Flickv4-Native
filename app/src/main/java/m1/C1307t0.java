package m1;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: m1.t0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1307t0 extends V.c {
    public static final Parcelable.Creator<C1307t0> CREATOR = new C1305s0();

    /* renamed from: f, reason: collision with root package name */
    public Parcelable f18469f;

    public C1307t0(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f18469f = parcel.readParcelable(classLoader == null ? AbstractC1286i0.class.getClassLoader() : classLoader);
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeParcelable(this.f18469f, 0);
    }
}
