package o3;

import java.util.ArrayList;

/* renamed from: o3.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1459l {

    /* renamed from: a, reason: collision with root package name */
    public final float f19102a;

    /* renamed from: b, reason: collision with root package name */
    public final float f19103b;

    /* renamed from: d, reason: collision with root package name */
    public C1460m f19105d;

    /* renamed from: e, reason: collision with root package name */
    public C1460m f19106e;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f19104c = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public int f19107f = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f19108g = -1;

    /* renamed from: h, reason: collision with root package name */
    public float f19109h = 0.0f;

    /* renamed from: i, reason: collision with root package name */
    public int f19110i = -1;

    public C1459l(float f3, float f7) {
        this.f19102a = f3;
        this.f19103b = f7;
    }

    public final void a(float f3, float f7, float f8, boolean z6, boolean z7) {
        float f9;
        float f10 = f8 / 2.0f;
        float f11 = f3 - f10;
        float f12 = f10 + f3;
        float f13 = this.f19103b;
        if (f12 > f13) {
            f9 = Math.abs(f12 - Math.max(f12 - f8, f13));
        } else {
            f9 = 0.0f;
            if (f11 < 0.0f) {
                f9 = Math.abs(f11 - Math.min(f11 + f8, 0.0f));
            }
        }
        b(f3, f7, f8, z6, z7, f9, 0.0f, 0.0f);
    }

    public final void b(float f3, float f7, float f8, boolean z6, boolean z7, float f9, float f10, float f11) {
        if (f8 <= 0.0f) {
            return;
        }
        ArrayList arrayList = this.f19104c;
        if (z7) {
            if (z6) {
                throw new IllegalArgumentException("Anchor keylines cannot be focal.");
            }
            int i2 = this.f19110i;
            if (i2 != -1 && i2 != 0) {
                throw new IllegalArgumentException("Anchor keylines must be either the first or last keyline.");
            }
            this.f19110i = arrayList.size();
        }
        C1460m c1460m = new C1460m(Float.MIN_VALUE, f3, f7, f8, z7, f9, f10, f11);
        if (z6) {
            if (this.f19105d == null) {
                this.f19105d = c1460m;
                this.f19107f = arrayList.size();
            }
            if (this.f19108g != -1 && arrayList.size() - this.f19108g > 1) {
                throw new IllegalArgumentException("Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines.");
            }
            if (f8 != this.f19105d.f19114d) {
                throw new IllegalArgumentException("Keylines that are marked as focal must all have the same masked item size.");
            }
            this.f19106e = c1460m;
            this.f19108g = arrayList.size();
        } else {
            if (this.f19105d == null && f8 < this.f19109h) {
                throw new IllegalArgumentException("Keylines before the first focal keyline must be ordered by incrementing masked item size.");
            }
            if (this.f19106e != null && f8 > this.f19109h) {
                throw new IllegalArgumentException("Keylines after the last focal keyline must be ordered by decreasing masked item size.");
            }
        }
        this.f19109h = f8;
        arrayList.add(c1460m);
    }

    public final void c(float f3, float f7, float f8, int i2, boolean z6) {
        if (i2 <= 0 || f8 <= 0.0f) {
            return;
        }
        int i7 = 0;
        while (i7 < i2) {
            float f9 = f7;
            float f10 = f8;
            boolean z7 = z6;
            a((i7 * f8) + f3, f9, f10, z7, false);
            i7++;
            f7 = f9;
            f8 = f10;
            z6 = z7;
        }
    }

    public final C1461n d() {
        if (this.f19105d == null) {
            throw new IllegalStateException("There must be a keyline marked as focal.");
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            ArrayList arrayList2 = this.f19104c;
            int size = arrayList2.size();
            float f3 = this.f19102a;
            if (i2 >= size) {
                return new C1461n(f3, arrayList, this.f19107f, this.f19108g);
            }
            C1460m c1460m = (C1460m) arrayList2.get(i2);
            arrayList.add(new C1460m((i2 * f3) + (this.f19105d.f19112b - (this.f19107f * f3)), c1460m.f19112b, c1460m.f19113c, c1460m.f19114d, c1460m.f19115e, c1460m.f19116f, c1460m.f19117g, c1460m.f19118h));
            i2++;
        }
    }
}
