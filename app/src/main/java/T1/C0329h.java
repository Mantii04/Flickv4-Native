package T1;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* renamed from: T1.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0329h extends View.BaseSavedState {
    public static final Parcelable.Creator<C0329h> CREATOR = new C0328g();

    /* renamed from: b, reason: collision with root package name */
    public String f3598b;

    /* renamed from: e, reason: collision with root package name */
    public int f3599e;

    /* renamed from: f, reason: collision with root package name */
    public float f3600f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3601j;

    /* renamed from: m, reason: collision with root package name */
    public String f3602m;

    /* renamed from: n, reason: collision with root package name */
    public int f3603n;

    /* renamed from: p, reason: collision with root package name */
    public int f3604p;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.f3598b);
        parcel.writeFloat(this.f3600f);
        parcel.writeInt(this.f3601j ? 1 : 0);
        parcel.writeString(this.f3602m);
        parcel.writeInt(this.f3603n);
        parcel.writeInt(this.f3604p);
    }
}
