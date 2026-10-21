package c1;

import s0.C1625u;

/* renamed from: c1.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0711p {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8804a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8805b;

    /* renamed from: c, reason: collision with root package name */
    public C1625u f8806c;

    /* renamed from: d, reason: collision with root package name */
    public int f8807d;

    /* renamed from: e, reason: collision with root package name */
    public int f8808e;

    /* renamed from: f, reason: collision with root package name */
    public int f8809f;

    /* renamed from: g, reason: collision with root package name */
    public int f8810g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f8811h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f8812i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8813j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8814k;

    /* renamed from: l, reason: collision with root package name */
    public int f8815l;

    /* renamed from: m, reason: collision with root package name */
    public int f8816m;

    /* renamed from: n, reason: collision with root package name */
    public int f8817n;

    /* renamed from: o, reason: collision with root package name */
    public int f8818o;

    /* renamed from: p, reason: collision with root package name */
    public int f8819p;

    public void clear() {
        this.f8805b = false;
        this.f8804a = false;
    }

    public boolean isISlice() {
        if (!this.f8805b) {
            return false;
        }
        int i2 = this.f8808e;
        return i2 == 7 || i2 == 2;
    }

    public void setAll(C1625u c1625u, int i2, int i7, int i8, int i9, boolean z6, boolean z7, boolean z8, boolean z9, int i10, int i11, int i12, int i13, int i14) {
        this.f8806c = c1625u;
        this.f8807d = i2;
        this.f8808e = i7;
        this.f8809f = i8;
        this.f8810g = i9;
        this.f8811h = z6;
        this.f8812i = z7;
        this.f8813j = z8;
        this.f8814k = z9;
        this.f8815l = i10;
        this.f8816m = i11;
        this.f8817n = i12;
        this.f8818o = i13;
        this.f8819p = i14;
        this.f8804a = true;
        this.f8805b = true;
    }

    public void setSliceType(int i2) {
        this.f8808e = i2;
        this.f8805b = true;
    }
}
