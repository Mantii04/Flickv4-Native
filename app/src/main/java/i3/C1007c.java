package i3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;

/* renamed from: i3.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1007c implements Parcelable {
    public static final Parcelable.Creator<C1007c> CREATOR = new C1006b();

    /* renamed from: A, reason: collision with root package name */
    public int f16675A;

    /* renamed from: B, reason: collision with root package name */
    public Integer f16676B;

    /* renamed from: D, reason: collision with root package name */
    public Integer f16678D;

    /* renamed from: E, reason: collision with root package name */
    public Integer f16679E;

    /* renamed from: F, reason: collision with root package name */
    public Integer f16680F;

    /* renamed from: G, reason: collision with root package name */
    public Integer f16681G;

    /* renamed from: H, reason: collision with root package name */
    public Integer f16682H;

    /* renamed from: I, reason: collision with root package name */
    public Integer f16683I;

    /* renamed from: J, reason: collision with root package name */
    public Integer f16684J;

    /* renamed from: K, reason: collision with root package name */
    public Integer f16685K;

    /* renamed from: L, reason: collision with root package name */
    public Integer f16686L;

    /* renamed from: M, reason: collision with root package name */
    public Boolean f16687M;

    /* renamed from: b, reason: collision with root package name */
    public int f16688b;

    /* renamed from: e, reason: collision with root package name */
    public Integer f16689e;

    /* renamed from: f, reason: collision with root package name */
    public Integer f16690f;

    /* renamed from: j, reason: collision with root package name */
    public Integer f16691j;

    /* renamed from: m, reason: collision with root package name */
    public Integer f16692m;

    /* renamed from: n, reason: collision with root package name */
    public Integer f16693n;

    /* renamed from: p, reason: collision with root package name */
    public Integer f16694p;

    /* renamed from: q, reason: collision with root package name */
    public Integer f16695q;

    /* renamed from: s, reason: collision with root package name */
    public String f16697s;

    /* renamed from: w, reason: collision with root package name */
    public Locale f16701w;

    /* renamed from: x, reason: collision with root package name */
    public String f16702x;

    /* renamed from: y, reason: collision with root package name */
    public CharSequence f16703y;

    /* renamed from: z, reason: collision with root package name */
    public int f16704z;

    /* renamed from: r, reason: collision with root package name */
    public int f16696r = 255;

    /* renamed from: t, reason: collision with root package name */
    public int f16698t = -2;

    /* renamed from: u, reason: collision with root package name */
    public int f16699u = -2;

    /* renamed from: v, reason: collision with root package name */
    public int f16700v = -2;

    /* renamed from: C, reason: collision with root package name */
    public Boolean f16677C = Boolean.TRUE;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f16688b);
        parcel.writeSerializable(this.f16689e);
        parcel.writeSerializable(this.f16690f);
        parcel.writeSerializable(this.f16691j);
        parcel.writeSerializable(this.f16692m);
        parcel.writeSerializable(this.f16693n);
        parcel.writeSerializable(this.f16694p);
        parcel.writeSerializable(this.f16695q);
        parcel.writeInt(this.f16696r);
        parcel.writeString(this.f16697s);
        parcel.writeInt(this.f16698t);
        parcel.writeInt(this.f16699u);
        parcel.writeInt(this.f16700v);
        String str = this.f16702x;
        parcel.writeString(str != null ? str.toString() : null);
        CharSequence charSequence = this.f16703y;
        parcel.writeString(charSequence != null ? charSequence.toString() : null);
        parcel.writeInt(this.f16704z);
        parcel.writeSerializable(this.f16676B);
        parcel.writeSerializable(this.f16678D);
        parcel.writeSerializable(this.f16679E);
        parcel.writeSerializable(this.f16680F);
        parcel.writeSerializable(this.f16681G);
        parcel.writeSerializable(this.f16682H);
        parcel.writeSerializable(this.f16683I);
        parcel.writeSerializable(this.f16686L);
        parcel.writeSerializable(this.f16684J);
        parcel.writeSerializable(this.f16685K);
        parcel.writeSerializable(this.f16677C);
        parcel.writeSerializable(this.f16701w);
        parcel.writeSerializable(this.f16687M);
    }
}
