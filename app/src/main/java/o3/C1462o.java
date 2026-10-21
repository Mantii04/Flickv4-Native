package o3;

import g3.AbstractC0951a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: o3.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1462o {

    /* renamed from: a, reason: collision with root package name */
    public final C1461n f19123a;

    /* renamed from: b, reason: collision with root package name */
    public final List f19124b;

    /* renamed from: c, reason: collision with root package name */
    public final List f19125c;

    /* renamed from: d, reason: collision with root package name */
    public final float[] f19126d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f19127e;

    /* renamed from: f, reason: collision with root package name */
    public final float f19128f;

    /* renamed from: g, reason: collision with root package name */
    public final float f19129g;

    public C1462o(C1461n c1461n, ArrayList arrayList, ArrayList arrayList2) {
        this.f19123a = c1461n;
        this.f19124b = Collections.unmodifiableList(arrayList);
        this.f19125c = Collections.unmodifiableList(arrayList2);
        float f3 = ((C1461n) b.c.h(1, arrayList)).b().f19111a - c1461n.b().f19111a;
        this.f19128f = f3;
        float f7 = c1461n.d().f19111a - ((C1461n) b.c.h(1, arrayList2)).d().f19111a;
        this.f19129g = f7;
        this.f19126d = c(f3, arrayList, true);
        this.f19127e = c(f7, arrayList2, false);
    }

    public static float[] c(float f3, ArrayList arrayList, boolean z6) {
        int size = arrayList.size();
        float[] fArr = new float[size];
        int i2 = 1;
        while (i2 < size) {
            int i7 = i2 - 1;
            C1461n c1461n = (C1461n) arrayList.get(i7);
            C1461n c1461n2 = (C1461n) arrayList.get(i2);
            fArr[i2] = i2 == size + (-1) ? 1.0f : fArr[i7] + ((z6 ? c1461n2.b().f19111a - c1461n.b().f19111a : c1461n.d().f19111a - c1461n2.d().f19111a) / f3);
            i2++;
        }
        return fArr;
    }

    public static C1461n d(C1461n c1461n, int i2, int i7, float f3, int i8, int i9, float f7) {
        ArrayList arrayList = new ArrayList(c1461n.f19120b);
        arrayList.add(i7, (C1460m) arrayList.remove(i2));
        C1459l c1459l = new C1459l(c1461n.f19119a, f7);
        float f8 = f3;
        int i10 = 0;
        while (i10 < arrayList.size()) {
            C1460m c1460m = (C1460m) arrayList.get(i10);
            float f9 = c1460m.f19114d;
            c1459l.b((f9 / 2.0f) + f8, c1460m.f19113c, f9, i10 >= i8 && i10 <= i9, c1460m.f19115e, c1460m.f19116f, 0.0f, 0.0f);
            f8 += c1460m.f19114d;
            i10++;
        }
        return c1459l.d();
    }

    public static C1461n e(C1461n c1461n, float f3, float f7, boolean z6, float f8) {
        int i2;
        List list = c1461n.f19120b;
        ArrayList arrayList = new ArrayList(list);
        float f9 = c1461n.f19119a;
        C1459l c1459l = new C1459l(f9, f7);
        Iterator it = list.iterator();
        int i7 = 0;
        while (it.hasNext()) {
            if (((C1460m) it.next()).f19115e) {
                i7++;
            }
        }
        float size = f3 / (list.size() - i7);
        float f10 = z6 ? f3 : 0.0f;
        int i8 = 0;
        while (i8 < arrayList.size()) {
            C1460m c1460m = (C1460m) arrayList.get(i8);
            if (c1460m.f19115e) {
                i2 = i8;
                c1459l.b(c1460m.f19112b, c1460m.f19113c, c1460m.f19114d, false, true, c1460m.f19116f, 0.0f, 0.0f);
            } else {
                i2 = i8;
                boolean z7 = i2 >= c1461n.f19121c && i2 <= c1461n.f19122d;
                float f11 = c1460m.f19114d - size;
                float a7 = AbstractC1457j.a(f11, f9, f8);
                float f12 = (f11 / 2.0f) + f10;
                float f13 = f12 - c1460m.f19112b;
                float f14 = f13;
                if (!z6) {
                    f13 = 0.0f;
                }
                if (z6) {
                    f14 = 0.0f;
                }
                c1459l.b(f12, a7, f11, z7, false, c1460m.f19116f, f13, f14);
                f10 += f11;
            }
            i8 = i2 + 1;
        }
        return c1459l.d();
    }

    public final C1461n a() {
        return (C1461n) A.i.c(1, this.f19125c);
    }

    public final C1461n b() {
        return (C1461n) A.i.c(1, this.f19124b);
    }

    public C1461n getShiftedState(float f3, float f7, float f8) {
        float lerp;
        List list;
        float[] fArr;
        float[] fArr2;
        float f9 = this.f19128f;
        float f10 = f7 + f9;
        float f11 = this.f19129g;
        float f12 = f8 - f11;
        float f13 = b().a().f19117g;
        float f14 = a().c().f19118h;
        if (f9 == f13) {
            f10 += f13;
        }
        if (f11 == f14) {
            f12 -= f14;
        }
        if (f3 < f10) {
            lerp = AbstractC0951a.lerp(1.0f, 0.0f, f7, f10, f3);
            list = this.f19124b;
            fArr = this.f19126d;
        } else {
            if (f3 <= f12) {
                return this.f19123a;
            }
            lerp = AbstractC0951a.lerp(0.0f, 1.0f, f12, f8, f3);
            list = this.f19125c;
            fArr = this.f19127e;
        }
        int size = list.size();
        float f15 = fArr[0];
        int i2 = 1;
        while (true) {
            if (i2 >= size) {
                fArr2 = new float[]{0.0f, 0.0f, 0.0f};
                break;
            }
            float f16 = fArr[i2];
            if (lerp <= f16) {
                fArr2 = new float[]{AbstractC0951a.lerp(0.0f, 1.0f, f15, f16, lerp), i2 - 1, i2};
                break;
            }
            i2++;
            f15 = f16;
        }
        C1461n c1461n = (C1461n) list.get((int) fArr2[1]);
        C1461n c1461n2 = (C1461n) list.get((int) fArr2[2]);
        float f17 = fArr2[0];
        if (c1461n.f19119a != c1461n2.f19119a) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same item size.");
        }
        List list2 = c1461n.f19120b;
        int size2 = list2.size();
        List list3 = c1461n2.f19120b;
        if (size2 != list3.size()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same number of keylines.");
        }
        ArrayList arrayList = new ArrayList();
        for (int i7 = 0; i7 < list2.size(); i7++) {
            C1460m c1460m = (C1460m) list2.get(i7);
            C1460m c1460m2 = (C1460m) list3.get(i7);
            arrayList.add(new C1460m(AbstractC0951a.lerp(c1460m.f19111a, c1460m2.f19111a, f17), AbstractC0951a.lerp(c1460m.f19112b, c1460m2.f19112b, f17), AbstractC0951a.lerp(c1460m.f19113c, c1460m2.f19113c, f17), AbstractC0951a.lerp(c1460m.f19114d, c1460m2.f19114d, f17), false, 0.0f, 0.0f, 0.0f));
        }
        return new C1461n(c1461n.f19119a, arrayList, AbstractC0951a.lerp(c1461n.f19121c, c1461n2.f19121c, f17), AbstractC0951a.lerp(c1461n.f19122d, c1461n2.f19122d, f17));
    }
}
