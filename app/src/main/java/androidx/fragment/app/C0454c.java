package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.lifecycle.Lifecycle$State;
import java.util.ArrayList;

/* renamed from: androidx.fragment.app.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0454c implements Parcelable {
    public static final Parcelable.Creator<C0454c> CREATOR = new C0452b();

    /* renamed from: b, reason: collision with root package name */
    public final int[] f6177b;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f6178e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f6179f;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f6180j;

    /* renamed from: m, reason: collision with root package name */
    public final int f6181m;

    /* renamed from: n, reason: collision with root package name */
    public final String f6182n;

    /* renamed from: p, reason: collision with root package name */
    public final int f6183p;

    /* renamed from: q, reason: collision with root package name */
    public final int f6184q;

    /* renamed from: r, reason: collision with root package name */
    public final CharSequence f6185r;

    /* renamed from: s, reason: collision with root package name */
    public final int f6186s;

    /* renamed from: t, reason: collision with root package name */
    public final CharSequence f6187t;

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f6188u;

    /* renamed from: v, reason: collision with root package name */
    public final ArrayList f6189v;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f6190w;

    public C0454c(C0450a c0450a) {
        int size = c0450a.f6333a.size();
        this.f6177b = new int[size * 6];
        if (!c0450a.f6339g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f6178e = new ArrayList(size);
        this.f6179f = new int[size];
        this.f6180j = new int[size];
        int i2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            u0 u0Var = (u0) c0450a.f6333a.get(i7);
            int i8 = i2 + 1;
            this.f6177b[i2] = u0Var.f6323a;
            ArrayList arrayList = this.f6178e;
            C c7 = u0Var.f6324b;
            arrayList.add(c7 != null ? c7.f6087n : null);
            int[] iArr = this.f6177b;
            iArr[i8] = u0Var.f6325c ? 1 : 0;
            iArr[i2 + 2] = u0Var.f6326d;
            iArr[i2 + 3] = u0Var.f6327e;
            int i9 = i2 + 5;
            iArr[i2 + 4] = u0Var.f6328f;
            i2 += 6;
            iArr[i9] = u0Var.f6329g;
            this.f6179f[i7] = u0Var.f6330h.ordinal();
            this.f6180j[i7] = u0Var.f6331i.ordinal();
        }
        this.f6181m = c0450a.f6338f;
        this.f6182n = c0450a.f6340h;
        this.f6183p = c0450a.f6174r;
        this.f6184q = c0450a.f6341i;
        this.f6185r = c0450a.f6342j;
        this.f6186s = c0450a.f6343k;
        this.f6187t = c0450a.f6344l;
        this.f6188u = c0450a.f6345m;
        this.f6189v = c0450a.f6346n;
        this.f6190w = c0450a.f6347o;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public C0450a instantiate(AbstractC0467i0 abstractC0467i0) {
        C0450a c0450a = new C0450a(abstractC0467i0);
        int i2 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int[] iArr = this.f6177b;
            boolean z6 = true;
            if (i7 >= iArr.length) {
                break;
            }
            u0 u0Var = new u0();
            int i9 = i7 + 1;
            u0Var.f6323a = iArr[i7];
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Instantiate " + c0450a + " op #" + i8 + " base fragment #" + iArr[i9]);
            }
            u0Var.f6330h = Lifecycle$State.values()[this.f6179f[i8]];
            u0Var.f6331i = Lifecycle$State.values()[this.f6180j[i8]];
            int i10 = i7 + 2;
            if (iArr[i9] == 0) {
                z6 = false;
            }
            u0Var.f6325c = z6;
            int i11 = iArr[i10];
            u0Var.f6326d = i11;
            int i12 = iArr[i7 + 3];
            u0Var.f6327e = i12;
            int i13 = i7 + 5;
            int i14 = iArr[i7 + 4];
            u0Var.f6328f = i14;
            i7 += 6;
            int i15 = iArr[i13];
            u0Var.f6329g = i15;
            c0450a.f6334b = i11;
            c0450a.f6335c = i12;
            c0450a.f6336d = i14;
            c0450a.f6337e = i15;
            c0450a.a(u0Var);
            i8++;
        }
        c0450a.f6338f = this.f6181m;
        c0450a.f6340h = this.f6182n;
        c0450a.f6339g = true;
        c0450a.f6341i = this.f6184q;
        c0450a.f6342j = this.f6185r;
        c0450a.f6343k = this.f6186s;
        c0450a.f6344l = this.f6187t;
        c0450a.f6345m = this.f6188u;
        c0450a.f6346n = this.f6189v;
        c0450a.f6347o = this.f6190w;
        c0450a.f6174r = this.f6183p;
        while (true) {
            ArrayList arrayList = this.f6178e;
            if (i2 >= arrayList.size()) {
                c0450a.c(1);
                return c0450a;
            }
            String str = (String) arrayList.get(i2);
            if (str != null) {
                ((u0) c0450a.f6333a.get(i2)).f6324b = abstractC0467i0.f6224c.b(str);
            }
            i2++;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.f6177b);
        parcel.writeStringList(this.f6178e);
        parcel.writeIntArray(this.f6179f);
        parcel.writeIntArray(this.f6180j);
        parcel.writeInt(this.f6181m);
        parcel.writeString(this.f6182n);
        parcel.writeInt(this.f6183p);
        parcel.writeInt(this.f6184q);
        TextUtils.writeToParcel(this.f6185r, parcel, 0);
        parcel.writeInt(this.f6186s);
        TextUtils.writeToParcel(this.f6187t, parcel, 0);
        parcel.writeStringList(this.f6188u);
        parcel.writeStringList(this.f6189v);
        parcel.writeInt(this.f6190w ? 1 : 0);
    }

    public C0454c(Parcel parcel) {
        this.f6177b = parcel.createIntArray();
        this.f6178e = parcel.createStringArrayList();
        this.f6179f = parcel.createIntArray();
        this.f6180j = parcel.createIntArray();
        this.f6181m = parcel.readInt();
        this.f6182n = parcel.readString();
        this.f6183p = parcel.readInt();
        this.f6184q = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f6185r = (CharSequence) creator.createFromParcel(parcel);
        this.f6186s = parcel.readInt();
        this.f6187t = (CharSequence) creator.createFromParcel(parcel);
        this.f6188u = parcel.createStringArrayList();
        this.f6189v = parcel.createStringArrayList();
        this.f6190w = parcel.readInt() != 0;
    }
}
