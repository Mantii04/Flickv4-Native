package v;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.constraintlayout.core.widgets.analyzer.f f20354a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f20355b = new ArrayList();

    public k(androidx.constraintlayout.core.widgets.analyzer.f fVar, int i2) {
        this.f20354a = null;
        this.f20354a = fVar;
    }

    public static long a(androidx.constraintlayout.core.widgets.analyzer.a aVar, long j7) {
        androidx.constraintlayout.core.widgets.analyzer.f fVar = aVar.f5259d;
        if (fVar instanceof androidx.constraintlayout.core.widgets.analyzer.c) {
            return j7;
        }
        ArrayList arrayList = aVar.f5266k;
        int size = arrayList.size();
        long j8 = j7;
        for (int i2 = 0; i2 < size; i2++) {
            f fVar2 = (f) arrayList.get(i2);
            if (fVar2 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                androidx.constraintlayout.core.widgets.analyzer.a aVar2 = (androidx.constraintlayout.core.widgets.analyzer.a) fVar2;
                if (aVar2.f5259d != fVar) {
                    j8 = Math.min(j8, a(aVar2, aVar2.f5261f + j7));
                }
            }
        }
        if (aVar != fVar.f5280i) {
            return j8;
        }
        long wrapDimension = fVar.getWrapDimension();
        long j9 = j7 - wrapDimension;
        return Math.min(Math.min(j8, a(fVar.f5279h, j9)), j9 - r9.f5261f);
    }

    public static long b(androidx.constraintlayout.core.widgets.analyzer.a aVar, long j7) {
        androidx.constraintlayout.core.widgets.analyzer.f fVar = aVar.f5259d;
        if (fVar instanceof androidx.constraintlayout.core.widgets.analyzer.c) {
            return j7;
        }
        ArrayList arrayList = aVar.f5266k;
        int size = arrayList.size();
        long j8 = j7;
        for (int i2 = 0; i2 < size; i2++) {
            f fVar2 = (f) arrayList.get(i2);
            if (fVar2 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                androidx.constraintlayout.core.widgets.analyzer.a aVar2 = (androidx.constraintlayout.core.widgets.analyzer.a) fVar2;
                if (aVar2.f5259d != fVar) {
                    j8 = Math.max(j8, b(aVar2, aVar2.f5261f + j7));
                }
            }
        }
        if (aVar != fVar.f5279h) {
            return j8;
        }
        long wrapDimension = fVar.getWrapDimension();
        long j9 = j7 + wrapDimension;
        return Math.max(Math.max(j8, b(fVar.f5280i, j9)), j9 - r9.f5261f);
    }

    public void add(androidx.constraintlayout.core.widgets.analyzer.f fVar) {
        this.f20355b.add(fVar);
    }

    public long computeWrapSize(u.f fVar, int i2) {
        androidx.constraintlayout.core.widgets.analyzer.f fVar2 = this.f20354a;
        if (!(fVar2 instanceof e) ? i2 != 0 ? (fVar2 instanceof androidx.constraintlayout.core.widgets.analyzer.e) : (fVar2 instanceof androidx.constraintlayout.core.widgets.analyzer.d) : ((e) fVar2).f5277f == i2) {
            return 0L;
        }
        androidx.constraintlayout.core.widgets.analyzer.a aVar = (i2 == 0 ? fVar.f20109d : fVar.f20111e).f5279h;
        androidx.constraintlayout.core.widgets.analyzer.a aVar2 = (i2 == 0 ? fVar.f20109d : fVar.f20111e).f5280i;
        boolean contains = fVar2.f5279h.f5267l.contains(aVar);
        boolean contains2 = fVar2.f5280i.f5267l.contains(aVar2);
        long wrapDimension = fVar2.getWrapDimension();
        if (!contains || !contains2) {
            if (contains) {
                return Math.max(b(fVar2.f5279h, r13.f5261f), fVar2.f5279h.f5261f + wrapDimension);
            }
            if (!contains2) {
                return (fVar2.getWrapDimension() + fVar2.f5279h.f5261f) - fVar2.f5280i.f5261f;
            }
            return Math.max(-a(fVar2.f5280i, r13.f5261f), (-fVar2.f5280i.f5261f) + wrapDimension);
        }
        long b7 = b(fVar2.f5279h, 0L);
        long a7 = a(fVar2.f5280i, 0L);
        long j7 = b7 - wrapDimension;
        int i7 = fVar2.f5280i.f5261f;
        if (j7 >= (-i7)) {
            j7 += i7;
        }
        long j8 = fVar2.f5279h.f5261f;
        long j9 = ((-a7) - wrapDimension) - j8;
        if (j9 >= j8) {
            j9 -= j8;
        }
        float biasPercent = fVar2.f5273b.getBiasPercent(i2);
        float f3 = biasPercent > 0.0f ? (long) ((j7 / (1.0f - biasPercent)) + (j9 / biasPercent)) : 0L;
        return (fVar2.f5279h.f5261f + ((((long) ((f3 * biasPercent) + 0.5f)) + wrapDimension) + ((long) b.c.a(1.0f, biasPercent, f3, 0.5f)))) - fVar2.f5280i.f5261f;
    }
}
