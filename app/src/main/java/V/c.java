package V;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public abstract class c implements Parcelable {

    /* renamed from: b, reason: collision with root package name */
    public final Parcelable f3806b;

    /* renamed from: e, reason: collision with root package name */
    public static final a f3805e = new a();
    public static final Parcelable.Creator<c> CREATOR = new b();

    public c() {
        this.f3806b = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Parcelable getSuperState() {
        return this.f3806b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f3806b, i2);
    }

    public c(Parcelable parcelable) {
        if (parcelable != null) {
            this.f3806b = parcelable == f3805e ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public c(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.f3806b = readParcelable == null ? f3805e : readParcelable;
    }
}
