package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* renamed from: androidx.fragment.app.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0458e implements Parcelable {
    public static final Parcelable.Creator<C0458e> CREATOR = new C0456d();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f6192b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f6193e;

    public C0458e(Parcel parcel) {
        this.f6192b = parcel.createStringArrayList();
        this.f6193e = parcel.createTypedArrayList(C0454c.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStringList(this.f6192b);
        parcel.writeTypedList(this.f6193e);
    }
}
