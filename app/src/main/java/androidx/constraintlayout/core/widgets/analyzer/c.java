package androidx.constraintlayout.core.widgets.analyzer;

import java.util.Iterator;
import u.C1658a;

/* loaded from: classes.dex */
public final class c extends f {
    public c(u.e eVar) {
        super(eVar);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void a() {
        u.e eVar = this.f5273b;
        if (eVar instanceof C1658a) {
            a aVar = this.f5279h;
            aVar.f5257b = true;
            C1658a c1658a = (C1658a) eVar;
            int barrierType = c1658a.getBarrierType();
            boolean allowsGoneWidget = c1658a.getAllowsGoneWidget();
            int i2 = 0;
            if (barrierType == 0) {
                aVar.f5260e = DependencyNode$Type.f5247j;
                while (i2 < c1658a.f20216r0) {
                    u.e eVar2 = c1658a.f20215q0[i2];
                    if (allowsGoneWidget || eVar2.getVisibility() != 8) {
                        a aVar2 = eVar2.f20109d.f5279h;
                        aVar2.f5266k.add(aVar);
                        aVar.f5267l.add(aVar2);
                    }
                    i2++;
                }
                d(this.f5273b.f20109d.f5279h);
                d(this.f5273b.f20109d.f5280i);
                return;
            }
            if (barrierType == 1) {
                aVar.f5260e = DependencyNode$Type.f5248m;
                while (i2 < c1658a.f20216r0) {
                    u.e eVar3 = c1658a.f20215q0[i2];
                    if (allowsGoneWidget || eVar3.getVisibility() != 8) {
                        a aVar3 = eVar3.f20109d.f5280i;
                        aVar3.f5266k.add(aVar);
                        aVar.f5267l.add(aVar3);
                    }
                    i2++;
                }
                d(this.f5273b.f20109d.f5279h);
                d(this.f5273b.f20109d.f5280i);
                return;
            }
            if (barrierType == 2) {
                aVar.f5260e = DependencyNode$Type.f5249n;
                while (i2 < c1658a.f20216r0) {
                    u.e eVar4 = c1658a.f20215q0[i2];
                    if (allowsGoneWidget || eVar4.getVisibility() != 8) {
                        a aVar4 = eVar4.f20111e.f5279h;
                        aVar4.f5266k.add(aVar);
                        aVar.f5267l.add(aVar4);
                    }
                    i2++;
                }
                d(this.f5273b.f20111e.f5279h);
                d(this.f5273b.f20111e.f5280i);
                return;
            }
            if (barrierType != 3) {
                return;
            }
            aVar.f5260e = DependencyNode$Type.f5250p;
            while (i2 < c1658a.f20216r0) {
                u.e eVar5 = c1658a.f20215q0[i2];
                if (allowsGoneWidget || eVar5.getVisibility() != 8) {
                    a aVar5 = eVar5.f20111e.f5280i;
                    aVar5.f5266k.add(aVar);
                    aVar.f5267l.add(aVar5);
                }
                i2++;
            }
            d(this.f5273b.f20111e.f5279h);
            d(this.f5273b.f20111e.f5280i);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public void applyToWidget() {
        u.e eVar = this.f5273b;
        if (eVar instanceof C1658a) {
            int barrierType = ((C1658a) eVar).getBarrierType();
            a aVar = this.f5279h;
            if (barrierType == 0 || barrierType == 1) {
                this.f5273b.setX(aVar.f5262g);
            } else {
                this.f5273b.setY(aVar.f5262g);
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void b() {
        this.f5274c = null;
        this.f5279h.clear();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final boolean c() {
        return false;
    }

    public final void d(a aVar) {
        a aVar2 = this.f5279h;
        aVar2.f5266k.add(aVar);
        aVar.f5267l.add(aVar2);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f, v.f
    public void update(v.f fVar) {
        C1658a c1658a = (C1658a) this.f5273b;
        int barrierType = c1658a.getBarrierType();
        a aVar = this.f5279h;
        Iterator it = aVar.f5267l.iterator();
        int i2 = 0;
        int i7 = -1;
        while (it.hasNext()) {
            int i8 = ((a) it.next()).f5262g;
            if (i7 == -1 || i8 < i7) {
                i7 = i8;
            }
            if (i2 < i8) {
                i2 = i8;
            }
        }
        if (barrierType == 0 || barrierType == 2) {
            aVar.resolve(c1658a.getMargin() + i7);
        } else {
            aVar.resolve(c1658a.getMargin() + i2);
        }
    }
}
