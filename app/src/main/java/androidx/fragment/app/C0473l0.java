package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* renamed from: androidx.fragment.app.l0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0473l0 implements Parcelable {
    public static final Parcelable.Creator<C0473l0> CREATOR = new C0471k0();

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f6259b;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f6260e;

    /* renamed from: f, reason: collision with root package name */
    public C0454c[] f6261f;

    /* renamed from: j, reason: collision with root package name */
    public int f6262j;

    /* renamed from: m, reason: collision with root package name */
    public String f6263m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f6264n;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f6265p;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f6266q;

    public C0473l0() {
        this.f6263m = null;
        this.f6264n = new ArrayList();
        this.f6265p = new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStringList(this.f6259b);
        parcel.writeStringList(this.f6260e);
        parcel.writeTypedArray(this.f6261f, i2);
        parcel.writeInt(this.f6262j);
        parcel.writeString(this.f6263m);
        parcel.writeStringList(this.f6264n);
        parcel.writeTypedList(this.f6265p);
        parcel.writeTypedList(this.f6266q);
    }

    public C0473l0(Parcel parcel) {
        this.f6263m = null;
        this.f6264n = new ArrayList();
        this.f6265p = new ArrayList();
        this.f6259b = parcel.createStringArrayList();
        this.f6260e = parcel.createStringArrayList();
        this.f6261f = (C0454c[]) parcel.createTypedArray(C0454c.CREATOR);
        this.f6262j = parcel.readInt();
        this.f6263m = parcel.readString();
        this.f6264n = parcel.createStringArrayList();
        this.f6265p = parcel.createTypedArrayList(C0458e.CREATOR);
        this.f6266q = parcel.createTypedArrayList(C0461f0.CREATOR);
    }
}
