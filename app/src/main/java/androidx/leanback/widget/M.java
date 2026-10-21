package androidx.leanback.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class M implements Parcelable {
    public static final Parcelable.Creator<M> CREATOR = new L();

    /* renamed from: b, reason: collision with root package name */
    public int f6594b;

    /* renamed from: e, reason: collision with root package name */
    public Bundle f6595e;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f6594b);
        parcel.writeBundle(this.f6595e);
    }
}
