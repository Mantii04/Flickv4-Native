package c0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class h extends V.c {
    public static final Parcelable.Creator<h> CREATOR = new g();

    /* renamed from: f, reason: collision with root package name */
    public int f8533f;

    /* renamed from: j, reason: collision with root package name */
    public int f8534j;

    /* renamed from: m, reason: collision with root package name */
    public int f8535m;

    /* renamed from: n, reason: collision with root package name */
    public int f8536n;

    /* renamed from: p, reason: collision with root package name */
    public int f8537p;

    public h(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f8533f = 0;
        this.f8533f = parcel.readInt();
        this.f8534j = parcel.readInt();
        this.f8535m = parcel.readInt();
        this.f8536n = parcel.readInt();
        this.f8537p = parcel.readInt();
    }

    @Override // V.c, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f8533f);
        parcel.writeInt(this.f8534j);
        parcel.writeInt(this.f8535m);
        parcel.writeInt(this.f8536n);
        parcel.writeInt(this.f8537p);
    }

    public h(Parcelable parcelable) {
        super(parcelable);
        this.f8533f = 0;
    }
}
