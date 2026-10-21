package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import u.j;

/* loaded from: classes.dex */
public final class d extends f {

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f5269k = new int[2];

    public d(u.e eVar) {
        super(eVar);
        this.f5279h.f5260e = DependencyNode$Type.f5247j;
        this.f5280i.f5260e = DependencyNode$Type.f5248m;
        this.f5277f = 0;
    }

    public static void d(int[] iArr, int i2, int i7, int i8, int i9, float f3, int i10) {
        int i11 = i7 - i2;
        int i12 = i9 - i8;
        if (i10 != -1) {
            if (i10 == 0) {
                iArr[0] = (int) ((i12 * f3) + 0.5f);
                iArr[1] = i12;
                return;
            } else {
                if (i10 != 1) {
                    return;
                }
                iArr[0] = i11;
                iArr[1] = (int) ((i11 * f3) + 0.5f);
                return;
            }
        }
        int i13 = (int) ((i12 * f3) + 0.5f);
        int i14 = (int) ((i11 / f3) + 0.5f);
        if (i13 <= i11) {
            iArr[0] = i13;
            iArr[1] = i12;
        } else if (i14 <= i12) {
            iArr[0] = i11;
            iArr[1] = i14;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void a() {
        u.e parent;
        u.e parent2;
        u.e eVar = this.f5273b;
        boolean z6 = eVar.f20103a;
        b bVar = this.f5276e;
        if (z6) {
            bVar.resolve(eVar.getWidth());
        }
        boolean z7 = bVar.f5265j;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5242j;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5241f;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.f5239b;
        a aVar = this.f5280i;
        a aVar2 = this.f5279h;
        if (!z7) {
            ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = this.f5273b.getHorizontalDimensionBehaviour();
            this.f5275d = horizontalDimensionBehaviour;
            if (horizontalDimensionBehaviour != constraintWidget$DimensionBehaviour2) {
                if (horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour && (parent2 = this.f5273b.getParent()) != null && (parent2.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour3 || parent2.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour)) {
                    int width = (parent2.getWidth() - this.f5273b.f20085I.getMargin()) - this.f5273b.f20087K.getMargin();
                    addTarget(aVar2, parent2.f20109d.f5279h, this.f5273b.f20085I.getMargin());
                    addTarget(aVar, parent2.f20109d.f5280i, -this.f5273b.f20087K.getMargin());
                    bVar.resolve(width);
                    return;
                }
                if (this.f5275d == constraintWidget$DimensionBehaviour3) {
                    bVar.resolve(this.f5273b.getWidth());
                }
            }
        } else if (this.f5275d == constraintWidget$DimensionBehaviour && (parent = this.f5273b.getParent()) != null && (parent.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour3 || parent.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour)) {
            addTarget(aVar2, parent.f20109d.f5279h, this.f5273b.f20085I.getMargin());
            addTarget(aVar, parent.f20109d.f5280i, -this.f5273b.f20087K.getMargin());
            return;
        }
        if (bVar.f5265j) {
            u.e eVar2 = this.f5273b;
            if (eVar2.f20103a) {
                u.d[] dVarArr = eVar2.f20093Q;
                u.d dVar = dVarArr[0];
                u.d dVar2 = dVar.f20073f;
                if (dVar2 != null && dVarArr[1].f20073f != null) {
                    if (eVar2.isInHorizontalChain()) {
                        aVar2.f5261f = this.f5273b.f20093Q[0].getMargin();
                        aVar.f5261f = -this.f5273b.f20093Q[1].getMargin();
                        return;
                    }
                    a target = getTarget(this.f5273b.f20093Q[0]);
                    if (target != null) {
                        addTarget(aVar2, target, this.f5273b.f20093Q[0].getMargin());
                    }
                    a target2 = getTarget(this.f5273b.f20093Q[1]);
                    if (target2 != null) {
                        addTarget(aVar, target2, -this.f5273b.f20093Q[1].getMargin());
                    }
                    aVar2.f5257b = true;
                    aVar.f5257b = true;
                    return;
                }
                if (dVar2 != null) {
                    a target3 = getTarget(dVar);
                    if (target3 != null) {
                        addTarget(aVar2, target3, this.f5273b.f20093Q[0].getMargin());
                        addTarget(aVar, aVar2, bVar.f5262g);
                        return;
                    }
                    return;
                }
                u.d dVar3 = dVarArr[1];
                if (dVar3.f20073f != null) {
                    a target4 = getTarget(dVar3);
                    if (target4 != null) {
                        addTarget(aVar, target4, -this.f5273b.f20093Q[1].getMargin());
                        addTarget(aVar2, aVar, -bVar.f5262g);
                        return;
                    }
                    return;
                }
                if ((eVar2 instanceof j) || eVar2.getParent() == null || this.f5273b.getAnchor(ConstraintAnchor$Type.f5235n).f20073f != null) {
                    return;
                }
                addTarget(aVar2, this.f5273b.getParent().f20109d.f5279h, this.f5273b.getX());
                addTarget(aVar, aVar2, bVar.f5262g);
                return;
            }
        }
        if (this.f5275d == constraintWidget$DimensionBehaviour2) {
            u.e eVar3 = this.f5273b;
            int i2 = eVar3.f20136r;
            if (i2 == 2) {
                u.e parent3 = eVar3.getParent();
                if (parent3 != null) {
                    b bVar2 = parent3.f20111e.f5276e;
                    bVar.f5267l.add(bVar2);
                    bVar2.f5266k.add(bVar);
                    bVar.f5257b = true;
                    bVar.f5266k.add(aVar2);
                    bVar.f5266k.add(aVar);
                }
            } else if (i2 == 3) {
                if (eVar3.f20137s == 3) {
                    aVar2.f5256a = this;
                    aVar.f5256a = this;
                    e eVar4 = eVar3.f20111e;
                    eVar4.f5279h.f5256a = this;
                    eVar4.f5280i.f5256a = this;
                    bVar.f5256a = this;
                    if (eVar3.isInVerticalChain()) {
                        bVar.f5267l.add(this.f5273b.f20111e.f5276e);
                        this.f5273b.f20111e.f5276e.f5266k.add(bVar);
                        e eVar5 = this.f5273b.f20111e;
                        eVar5.f5276e.f5256a = this;
                        bVar.f5267l.add(eVar5.f5279h);
                        bVar.f5267l.add(this.f5273b.f20111e.f5280i);
                        this.f5273b.f20111e.f5279h.f5266k.add(bVar);
                        this.f5273b.f20111e.f5280i.f5266k.add(bVar);
                    } else if (this.f5273b.isInHorizontalChain()) {
                        this.f5273b.f20111e.f5276e.f5267l.add(bVar);
                        bVar.f5266k.add(this.f5273b.f20111e.f5276e);
                    } else {
                        this.f5273b.f20111e.f5276e.f5267l.add(bVar);
                    }
                } else {
                    b bVar3 = eVar3.f20111e.f5276e;
                    bVar.f5267l.add(bVar3);
                    bVar3.f5266k.add(bVar);
                    this.f5273b.f20111e.f5279h.f5266k.add(bVar);
                    this.f5273b.f20111e.f5280i.f5266k.add(bVar);
                    bVar.f5257b = true;
                    bVar.f5266k.add(aVar2);
                    bVar.f5266k.add(aVar);
                    aVar2.f5267l.add(bVar);
                    aVar.f5267l.add(bVar);
                }
            }
        }
        u.e eVar6 = this.f5273b;
        u.d[] dVarArr2 = eVar6.f20093Q;
        u.d dVar4 = dVarArr2[0];
        u.d dVar5 = dVar4.f20073f;
        if (dVar5 != null && dVarArr2[1].f20073f != null) {
            if (eVar6.isInHorizontalChain()) {
                aVar2.f5261f = this.f5273b.f20093Q[0].getMargin();
                aVar.f5261f = -this.f5273b.f20093Q[1].getMargin();
                return;
            }
            a target5 = getTarget(this.f5273b.f20093Q[0]);
            a target6 = getTarget(this.f5273b.f20093Q[1]);
            if (target5 != null) {
                target5.addDependency(this);
            }
            if (target6 != null) {
                target6.addDependency(this);
            }
            this.f5281j = WidgetRun$RunType.f5254e;
            return;
        }
        if (dVar5 != null) {
            a target7 = getTarget(dVar4);
            if (target7 != null) {
                addTarget(aVar2, target7, this.f5273b.f20093Q[0].getMargin());
                addTarget(aVar, aVar2, 1, bVar);
                return;
            }
            return;
        }
        u.d dVar6 = dVarArr2[1];
        if (dVar6.f20073f != null) {
            a target8 = getTarget(dVar6);
            if (target8 != null) {
                addTarget(aVar, target8, -this.f5273b.f20093Q[1].getMargin());
                addTarget(aVar2, aVar, -1, bVar);
                return;
            }
            return;
        }
        if ((eVar6 instanceof j) || eVar6.getParent() == null) {
            return;
        }
        addTarget(aVar2, this.f5273b.getParent().f20109d.f5279h, this.f5273b.getX());
        addTarget(aVar, aVar2, 1, bVar);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public void applyToWidget() {
        a aVar = this.f5279h;
        if (aVar.f5265j) {
            this.f5273b.setX(aVar.f5262g);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void b() {
        this.f5274c = null;
        this.f5279h.clear();
        this.f5280i.clear();
        this.f5276e.clear();
        this.f5278g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final boolean c() {
        return this.f5275d != ConstraintWidget$DimensionBehaviour.f5241f || this.f5273b.f20136r == 0;
    }

    public final void e() {
        this.f5278g = false;
        a aVar = this.f5279h;
        aVar.clear();
        aVar.f5265j = false;
        a aVar2 = this.f5280i;
        aVar2.clear();
        aVar2.f5265j = false;
        this.f5276e.f5265j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.f5273b.getDebugName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x0271, code lost:
    
        if (r22 != 1) goto L131;
     */
    @Override // androidx.constraintlayout.core.widgets.analyzer.f, v.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void update(v.f r24) {
        /*
            Method dump skipped, instructions count: 947
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.d.update(v.f):void");
    }
}
