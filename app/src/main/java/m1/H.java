package m1;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class H implements Parcelable {
    public static final Parcelable.Creator<H> CREATOR = new C1268G();

    /* renamed from: b, reason: collision with root package name */
    public int f18275b;

    /* renamed from: e, reason: collision with root package name */
    public int f18276e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18277f;

    public H() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f18275b);
        parcel.writeInt(this.f18276e);
        parcel.writeInt(this.f18277f ? 1 : 0);
    }

    @SuppressLint({"UnknownNullness"})
    public H(H h7) {
        this.f18275b = h7.f18275b;
        this.f18276e = h7.f18276e;
        this.f18277f = h7.f18277f;
    }
}
