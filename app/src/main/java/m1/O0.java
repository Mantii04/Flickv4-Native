package m1;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class O0 implements Parcelable {
    public static final Parcelable.Creator<O0> CREATOR = new N0();

    /* renamed from: b, reason: collision with root package name */
    public int f18308b;

    /* renamed from: e, reason: collision with root package name */
    public int f18309e;

    /* renamed from: f, reason: collision with root package name */
    public int f18310f;

    /* renamed from: j, reason: collision with root package name */
    public int[] f18311j;

    /* renamed from: m, reason: collision with root package name */
    public int f18312m;

    /* renamed from: n, reason: collision with root package name */
    public int[] f18313n;

    /* renamed from: p, reason: collision with root package name */
    public ArrayList f18314p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f18315q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f18316r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f18317s;

    public O0() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f18308b);
        parcel.writeInt(this.f18309e);
        parcel.writeInt(this.f18310f);
        if (this.f18310f > 0) {
            parcel.writeIntArray(this.f18311j);
        }
        parcel.writeInt(this.f18312m);
        if (this.f18312m > 0) {
            parcel.writeIntArray(this.f18313n);
        }
        parcel.writeInt(this.f18315q ? 1 : 0);
        parcel.writeInt(this.f18316r ? 1 : 0);
        parcel.writeInt(this.f18317s ? 1 : 0);
        parcel.writeList(this.f18314p);
    }

    public O0(O0 o02) {
        this.f18310f = o02.f18310f;
        this.f18308b = o02.f18308b;
        this.f18309e = o02.f18309e;
        this.f18311j = o02.f18311j;
        this.f18312m = o02.f18312m;
        this.f18313n = o02.f18313n;
        this.f18315q = o02.f18315q;
        this.f18316r = o02.f18316r;
        this.f18317s = o02.f18317s;
        this.f18314p = o02.f18314p;
    }
}
