package l;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: l.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1183t implements Parcelable {
    public static final Parcelable.Creator<C1183t> CREATOR = new C1180s();

    /* renamed from: b, reason: collision with root package name */
    public int f18003b;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f18003b);
    }
}
