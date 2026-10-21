package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class q0 implements Parcelable {
    public static final Parcelable.Creator<q0> CREATOR = new p0();

    /* renamed from: b, reason: collision with root package name */
    public final String f6285b;

    /* renamed from: e, reason: collision with root package name */
    public final String f6286e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f6287f;

    /* renamed from: j, reason: collision with root package name */
    public final int f6288j;

    /* renamed from: m, reason: collision with root package name */
    public final int f6289m;

    /* renamed from: n, reason: collision with root package name */
    public final String f6290n;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f6291p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f6292q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f6293r;

    /* renamed from: s, reason: collision with root package name */
    public final Bundle f6294s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f6295t;

    /* renamed from: u, reason: collision with root package name */
    public final int f6296u;

    /* renamed from: v, reason: collision with root package name */
    public Bundle f6297v;

    public q0(C c7) {
        this.f6285b = c7.getClass().getName();
        this.f6286e = c7.f6087n;
        this.f6287f = c7.f6095w;
        this.f6288j = c7.f6057F;
        this.f6289m = c7.f6058G;
        this.f6290n = c7.f6059H;
        this.f6291p = c7.f6062K;
        this.f6292q = c7.f6094v;
        this.f6293r = c7.f6061J;
        this.f6294s = c7.f6088p;
        this.f6295t = c7.f6060I;
        this.f6296u = c7.f6075X.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f6285b);
        sb.append(" (");
        sb.append(this.f6286e);
        sb.append(")}:");
        if (this.f6287f) {
            sb.append(" fromLayout");
        }
        int i2 = this.f6289m;
        if (i2 != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i2));
        }
        String str = this.f6290n;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.f6291p) {
            sb.append(" retainInstance");
        }
        if (this.f6292q) {
            sb.append(" removing");
        }
        if (this.f6293r) {
            sb.append(" detached");
        }
        if (this.f6295t) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f6285b);
        parcel.writeString(this.f6286e);
        parcel.writeInt(this.f6287f ? 1 : 0);
        parcel.writeInt(this.f6288j);
        parcel.writeInt(this.f6289m);
        parcel.writeString(this.f6290n);
        parcel.writeInt(this.f6291p ? 1 : 0);
        parcel.writeInt(this.f6292q ? 1 : 0);
        parcel.writeInt(this.f6293r ? 1 : 0);
        parcel.writeBundle(this.f6294s);
        parcel.writeInt(this.f6295t ? 1 : 0);
        parcel.writeBundle(this.f6297v);
        parcel.writeInt(this.f6296u);
    }

    public q0(Parcel parcel) {
        this.f6285b = parcel.readString();
        this.f6286e = parcel.readString();
        this.f6287f = parcel.readInt() != 0;
        this.f6288j = parcel.readInt();
        this.f6289m = parcel.readInt();
        this.f6290n = parcel.readString();
        this.f6291p = parcel.readInt() != 0;
        this.f6292q = parcel.readInt() != 0;
        this.f6293r = parcel.readInt() != 0;
        this.f6294s = parcel.readBundle();
        this.f6295t = parcel.readInt() != 0;
        this.f6297v = parcel.readBundle();
        this.f6296u = parcel.readInt();
    }
}
