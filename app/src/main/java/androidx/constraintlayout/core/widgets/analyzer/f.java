package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import v.k;

/* loaded from: classes.dex */
public abstract class f implements v.f {

    /* renamed from: a, reason: collision with root package name */
    public int f5272a;

    /* renamed from: b, reason: collision with root package name */
    public u.e f5273b;

    /* renamed from: c, reason: collision with root package name */
    public k f5274c;

    /* renamed from: d, reason: collision with root package name */
    public ConstraintWidget$DimensionBehaviour f5275d;

    /* renamed from: e, reason: collision with root package name */
    public final b f5276e = new b(this);

    /* renamed from: f, reason: collision with root package name */
    public int f5277f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5278g = false;

    /* renamed from: h, reason: collision with root package name */
    public final a f5279h = new a(this);

    /* renamed from: i, reason: collision with root package name */
    public final a f5280i = new a(this);

    /* renamed from: j, reason: collision with root package name */
    public WidgetRun$RunType f5281j = WidgetRun$RunType.f5253b;

    public f(u.e eVar) {
        this.f5273b = eVar;
    }

    public abstract void a();

    public final void addTarget(a aVar, a aVar2, int i2) {
        aVar.f5267l.add(aVar2);
        aVar.f5261f = i2;
        aVar2.f5266k.add(aVar);
    }

    public abstract void applyToWidget();

    public abstract void b();

    public abstract boolean c();

    public final int getLimitedDimension(int i2, int i7) {
        if (i7 == 0) {
            u.e eVar = this.f5273b;
            int i8 = eVar.f20140v;
            int max = Math.max(eVar.f20139u, i2);
            if (i8 > 0) {
                max = Math.min(i8, i2);
            }
            if (max != i2) {
                return max;
            }
        } else {
            u.e eVar2 = this.f5273b;
            int i9 = eVar2.f20143y;
            int max2 = Math.max(eVar2.f20142x, i2);
            if (i9 > 0) {
                max2 = Math.min(i9, i2);
            }
            if (max2 != i2) {
                return max2;
            }
        }
        return i2;
    }

    public final a getTarget(u.d dVar) {
        u.d dVar2 = dVar.f20073f;
        if (dVar2 == null) {
            return null;
        }
        u.e eVar = dVar2.f20071d;
        int ordinal = dVar2.f20072e.ordinal();
        if (ordinal == 1) {
            return eVar.f20109d.f5279h;
        }
        if (ordinal == 2) {
            return eVar.f20111e.f5279h;
        }
        if (ordinal == 3) {
            return eVar.f20109d.f5280i;
        }
        if (ordinal == 4) {
            return eVar.f20111e.f5280i;
        }
        if (ordinal != 5) {
            return null;
        }
        return eVar.f20111e.f5270k;
    }

    public long getWrapDimension() {
        if (this.f5276e.f5265j) {
            return r0.f5262g;
        }
        return 0L;
    }

    public boolean isResolved() {
        return this.f5278g;
    }

    @Override // v.f
    public abstract void update(v.f fVar);

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
    
        if (r9.f5272a == 3) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateRunCenter(v.f r12, u.d r13, u.d r14, int r15) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.f.updateRunCenter(v.f, u.d, u.d, int):void");
    }

    public final void addTarget(a aVar, a aVar2, int i2, b bVar) {
        aVar.f5267l.add(aVar2);
        aVar.f5267l.add(this.f5276e);
        aVar.f5263h = i2;
        aVar.f5264i = bVar;
        aVar2.f5266k.add(aVar);
        bVar.f5266k.add(aVar);
    }

    public final a getTarget(u.d dVar, int i2) {
        u.d dVar2 = dVar.f20073f;
        if (dVar2 == null) {
            return null;
        }
        u.e eVar = dVar2.f20071d;
        f fVar = i2 == 0 ? eVar.f20109d : eVar.f20111e;
        int ordinal = dVar2.f20072e.ordinal();
        if (ordinal == 1 || ordinal == 2) {
            return fVar.f5279h;
        }
        if (ordinal == 3 || ordinal == 4) {
            return fVar.f5280i;
        }
        return null;
    }

    public void updateRunEnd(v.f fVar) {
    }

    public void updateRunStart(v.f fVar) {
    }
}
