package U0;

import android.util.SparseArray;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final int f3761a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3762b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3763c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3764d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3765e;

    /* renamed from: f, reason: collision with root package name */
    public final int f3766f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3767g;

    /* renamed from: h, reason: collision with root package name */
    public final int f3768h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3769i;

    /* renamed from: j, reason: collision with root package name */
    public final SparseArray f3770j;

    public f(int i2, boolean z6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, SparseArray<g> sparseArray) {
        this.f3761a = i2;
        this.f3762b = z6;
        this.f3763c = i7;
        this.f3764d = i8;
        this.f3765e = i10;
        this.f3766f = i11;
        this.f3767g = i12;
        this.f3768h = i13;
        this.f3769i = i14;
        this.f3770j = sparseArray;
    }

    public void mergeFrom(f fVar) {
        SparseArray sparseArray = fVar.f3770j;
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            this.f3770j.put(sparseArray.keyAt(i2), (g) sparseArray.valueAt(i2));
        }
    }
}
