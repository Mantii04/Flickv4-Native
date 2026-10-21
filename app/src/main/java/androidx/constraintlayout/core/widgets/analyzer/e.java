package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import u.j;
import v.C1712a;

/* loaded from: classes.dex */
public final class e extends f {

    /* renamed from: k, reason: collision with root package name */
    public final a f5270k;

    /* renamed from: l, reason: collision with root package name */
    public C1712a f5271l;

    public e(u.e eVar) {
        super(eVar);
        a aVar = new a(this);
        this.f5270k = aVar;
        this.f5271l = null;
        this.f5279h.f5260e = DependencyNode$Type.f5249n;
        this.f5280i.f5260e = DependencyNode$Type.f5250p;
        aVar.f5260e = DependencyNode$Type.f5251q;
        this.f5277f = 1;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void a() {
        u.e parent;
        u.e parent2;
        u.e eVar = this.f5273b;
        boolean z6 = eVar.f20103a;
        b bVar = this.f5276e;
        if (z6) {
            bVar.resolve(eVar.getHeight());
        }
        boolean z7 = bVar.f5265j;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5242j;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5239b;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.f5241f;
        a aVar = this.f5280i;
        a aVar2 = this.f5279h;
        if (!z7) {
            this.f5275d = this.f5273b.getVerticalDimensionBehaviour();
            if (this.f5273b.hasBaseline()) {
                this.f5271l = new C1712a(this);
            }
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = this.f5275d;
            if (constraintWidget$DimensionBehaviour4 != constraintWidget$DimensionBehaviour3) {
                if (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour && (parent2 = this.f5273b.getParent()) != null && parent2.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour2) {
                    int height = (parent2.getHeight() - this.f5273b.f20086J.getMargin()) - this.f5273b.f20088L.getMargin();
                    addTarget(aVar2, parent2.f20111e.f5279h, this.f5273b.f20086J.getMargin());
                    addTarget(aVar, parent2.f20111e.f5280i, -this.f5273b.f20088L.getMargin());
                    bVar.resolve(height);
                    return;
                }
                if (this.f5275d == constraintWidget$DimensionBehaviour2) {
                    bVar.resolve(this.f5273b.getHeight());
                }
            }
        } else if (this.f5275d == constraintWidget$DimensionBehaviour && (parent = this.f5273b.getParent()) != null && parent.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour2) {
            addTarget(aVar2, parent.f20111e.f5279h, this.f5273b.f20086J.getMargin());
            addTarget(aVar, parent.f20111e.f5280i, -this.f5273b.f20088L.getMargin());
            return;
        }
        boolean z8 = bVar.f5265j;
        a aVar3 = this.f5270k;
        if (z8) {
            u.e eVar2 = this.f5273b;
            if (eVar2.f20103a) {
                u.d[] dVarArr = eVar2.f20093Q;
                u.d dVar = dVarArr[2];
                u.d dVar2 = dVar.f20073f;
                if (dVar2 != null && dVarArr[3].f20073f != null) {
                    if (eVar2.isInVerticalChain()) {
                        aVar2.f5261f = this.f5273b.f20093Q[2].getMargin();
                        aVar.f5261f = -this.f5273b.f20093Q[3].getMargin();
                    } else {
                        a target = getTarget(this.f5273b.f20093Q[2]);
                        if (target != null) {
                            addTarget(aVar2, target, this.f5273b.f20093Q[2].getMargin());
                        }
                        a target2 = getTarget(this.f5273b.f20093Q[3]);
                        if (target2 != null) {
                            addTarget(aVar, target2, -this.f5273b.f20093Q[3].getMargin());
                        }
                        aVar2.f5257b = true;
                        aVar.f5257b = true;
                    }
                    if (this.f5273b.hasBaseline()) {
                        addTarget(aVar3, aVar2, this.f5273b.getBaselineDistance());
                        return;
                    }
                    return;
                }
                if (dVar2 != null) {
                    a target3 = getTarget(dVar);
                    if (target3 != null) {
                        addTarget(aVar2, target3, this.f5273b.f20093Q[2].getMargin());
                        addTarget(aVar, aVar2, bVar.f5262g);
                        if (this.f5273b.hasBaseline()) {
                            addTarget(aVar3, aVar2, this.f5273b.getBaselineDistance());
                            return;
                        }
                        return;
                    }
                    return;
                }
                u.d dVar3 = dVarArr[3];
                if (dVar3.f20073f != null) {
                    a target4 = getTarget(dVar3);
                    if (target4 != null) {
                        addTarget(aVar, target4, -this.f5273b.f20093Q[3].getMargin());
                        addTarget(aVar2, aVar, -bVar.f5262g);
                    }
                    if (this.f5273b.hasBaseline()) {
                        addTarget(aVar3, aVar2, this.f5273b.getBaselineDistance());
                        return;
                    }
                    return;
                }
                u.d dVar4 = dVarArr[4];
                if (dVar4.f20073f != null) {
                    a target5 = getTarget(dVar4);
                    if (target5 != null) {
                        addTarget(aVar3, target5, 0);
                        addTarget(aVar2, aVar3, -this.f5273b.getBaselineDistance());
                        addTarget(aVar, aVar2, bVar.f5262g);
                        return;
                    }
                    return;
                }
                if ((eVar2 instanceof j) || eVar2.getParent() == null || this.f5273b.getAnchor(ConstraintAnchor$Type.f5235n).f20073f != null) {
                    return;
                }
                addTarget(aVar2, this.f5273b.getParent().f20111e.f5279h, this.f5273b.getY());
                addTarget(aVar, aVar2, bVar.f5262g);
                if (this.f5273b.hasBaseline()) {
                    addTarget(aVar3, aVar2, this.f5273b.getBaselineDistance());
                    return;
                }
                return;
            }
        }
        if (z8 || this.f5275d != constraintWidget$DimensionBehaviour3) {
            bVar.addDependency(this);
        } else {
            u.e eVar3 = this.f5273b;
            int i2 = eVar3.f20137s;
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
            } else if (i2 == 3 && !eVar3.isInVerticalChain()) {
                u.e eVar4 = this.f5273b;
                if (eVar4.f20136r != 3) {
                    b bVar3 = eVar4.f20109d.f5276e;
                    bVar.f5267l.add(bVar3);
                    bVar3.f5266k.add(bVar);
                    bVar.f5257b = true;
                    bVar.f5266k.add(aVar2);
                    bVar.f5266k.add(aVar);
                }
            }
        }
        u.e eVar5 = this.f5273b;
        u.d[] dVarArr2 = eVar5.f20093Q;
        u.d dVar5 = dVarArr2[2];
        u.d dVar6 = dVar5.f20073f;
        if (dVar6 != null && dVarArr2[3].f20073f != null) {
            if (eVar5.isInVerticalChain()) {
                aVar2.f5261f = this.f5273b.f20093Q[2].getMargin();
                aVar.f5261f = -this.f5273b.f20093Q[3].getMargin();
            } else {
                a target6 = getTarget(this.f5273b.f20093Q[2]);
                a target7 = getTarget(this.f5273b.f20093Q[3]);
                if (target6 != null) {
                    target6.addDependency(this);
                }
                if (target7 != null) {
                    target7.addDependency(this);
                }
                this.f5281j = WidgetRun$RunType.f5254e;
            }
            if (this.f5273b.hasBaseline()) {
                addTarget(aVar3, aVar2, 1, this.f5271l);
            }
        } else if (dVar6 != null) {
            a target8 = getTarget(dVar5);
            if (target8 != null) {
                addTarget(aVar2, target8, this.f5273b.f20093Q[2].getMargin());
                addTarget(aVar, aVar2, 1, bVar);
                if (this.f5273b.hasBaseline()) {
                    addTarget(aVar3, aVar2, 1, this.f5271l);
                }
                if (this.f5275d == constraintWidget$DimensionBehaviour3 && this.f5273b.getDimensionRatio() > 0.0f) {
                    d dVar7 = this.f5273b.f20109d;
                    if (dVar7.f5275d == constraintWidget$DimensionBehaviour3) {
                        dVar7.f5276e.f5266k.add(bVar);
                        bVar.f5267l.add(this.f5273b.f20109d.f5276e);
                        bVar.f5256a = this;
                    }
                }
            }
        } else {
            u.d dVar8 = dVarArr2[3];
            if (dVar8.f20073f != null) {
                a target9 = getTarget(dVar8);
                if (target9 != null) {
                    addTarget(aVar, target9, -this.f5273b.f20093Q[3].getMargin());
                    addTarget(aVar2, aVar, -1, bVar);
                    if (this.f5273b.hasBaseline()) {
                        addTarget(aVar3, aVar2, 1, this.f5271l);
                    }
                }
            } else {
                u.d dVar9 = dVarArr2[4];
                if (dVar9.f20073f != null) {
                    a target10 = getTarget(dVar9);
                    if (target10 != null) {
                        addTarget(aVar3, target10, 0);
                        addTarget(aVar2, aVar3, -1, this.f5271l);
                        addTarget(aVar, aVar2, 1, bVar);
                    }
                } else if (!(eVar5 instanceof j) && eVar5.getParent() != null) {
                    addTarget(aVar2, this.f5273b.getParent().f20111e.f5279h, this.f5273b.getY());
                    addTarget(aVar, aVar2, 1, bVar);
                    if (this.f5273b.hasBaseline()) {
                        addTarget(aVar3, aVar2, 1, this.f5271l);
                    }
                    if (this.f5275d == constraintWidget$DimensionBehaviour3 && this.f5273b.getDimensionRatio() > 0.0f) {
                        d dVar10 = this.f5273b.f20109d;
                        if (dVar10.f5275d == constraintWidget$DimensionBehaviour3) {
                            dVar10.f5276e.f5266k.add(bVar);
                            bVar.f5267l.add(this.f5273b.f20109d.f5276e);
                            bVar.f5256a = this;
                        }
                    }
                }
            }
        }
        if (bVar.f5267l.size() == 0) {
            bVar.f5258c = true;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public void applyToWidget() {
        a aVar = this.f5279h;
        if (aVar.f5265j) {
            this.f5273b.setY(aVar.f5262g);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void b() {
        this.f5274c = null;
        this.f5279h.clear();
        this.f5280i.clear();
        this.f5270k.clear();
        this.f5276e.clear();
        this.f5278g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final boolean c() {
        return this.f5275d != ConstraintWidget$DimensionBehaviour.f5241f || this.f5273b.f20137s == 0;
    }

    public final void d() {
        this.f5278g = false;
        a aVar = this.f5279h;
        aVar.clear();
        aVar.f5265j = false;
        a aVar2 = this.f5280i;
        aVar2.clear();
        aVar2.f5265j = false;
        a aVar3 = this.f5270k;
        aVar3.clear();
        aVar3.f5265j = false;
        this.f5276e.f5265j = false;
    }

    public String toString() {
        return "VerticalRun " + this.f5273b.getDebugName();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f, v.f
    public void update(v.f fVar) {
        float f3;
        float dimensionRatio;
        int i2;
        int ordinal = this.f5281j.ordinal();
        if (ordinal == 1) {
            updateRunStart(fVar);
        } else if (ordinal == 2) {
            updateRunEnd(fVar);
        } else if (ordinal == 3) {
            u.e eVar = this.f5273b;
            updateRunCenter(fVar, eVar.f20086J, eVar.f20088L, 1);
            return;
        }
        b bVar = this.f5276e;
        boolean z6 = bVar.f5258c;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5241f;
        if (z6 && !bVar.f5265j && this.f5275d == constraintWidget$DimensionBehaviour) {
            u.e eVar2 = this.f5273b;
            int i7 = eVar2.f20137s;
            if (i7 == 2) {
                u.e parent = eVar2.getParent();
                if (parent != null) {
                    if (parent.f20111e.f5276e.f5265j) {
                        bVar.resolve((int) ((r0.f5262g * this.f5273b.f20144z) + 0.5f));
                    }
                }
            } else if (i7 == 3 && eVar2.f20109d.f5276e.f5265j) {
                int dimensionRatioSide = eVar2.getDimensionRatioSide();
                if (dimensionRatioSide != -1) {
                    if (dimensionRatioSide == 0) {
                        i2 = (int) ((this.f5273b.getDimensionRatio() * r0.f20109d.f5276e.f5262g) + 0.5f);
                    } else if (dimensionRatioSide != 1) {
                        i2 = 0;
                    } else {
                        u.e eVar3 = this.f5273b;
                        f3 = eVar3.f20109d.f5276e.f5262g;
                        dimensionRatio = eVar3.getDimensionRatio();
                    }
                    bVar.resolve(i2);
                } else {
                    u.e eVar4 = this.f5273b;
                    f3 = eVar4.f20109d.f5276e.f5262g;
                    dimensionRatio = eVar4.getDimensionRatio();
                }
                i2 = (int) ((f3 / dimensionRatio) + 0.5f);
                bVar.resolve(i2);
            }
        }
        a aVar = this.f5279h;
        if (aVar.f5258c) {
            a aVar2 = this.f5280i;
            if (aVar2.f5258c) {
                if (aVar.f5265j && aVar2.f5265j && bVar.f5265j) {
                    return;
                }
                if (!bVar.f5265j && this.f5275d == constraintWidget$DimensionBehaviour) {
                    u.e eVar5 = this.f5273b;
                    if (eVar5.f20136r == 0 && !eVar5.isInVerticalChain()) {
                        a aVar3 = (a) aVar.f5267l.get(0);
                        a aVar4 = (a) aVar2.f5267l.get(0);
                        int i8 = aVar3.f5262g + aVar.f5261f;
                        int i9 = aVar4.f5262g + aVar2.f5261f;
                        aVar.resolve(i8);
                        aVar2.resolve(i9);
                        bVar.resolve(i9 - i8);
                        return;
                    }
                }
                if (!bVar.f5265j && this.f5275d == constraintWidget$DimensionBehaviour && this.f5272a == 1 && aVar.f5267l.size() > 0 && aVar2.f5267l.size() > 0) {
                    a aVar5 = (a) aVar.f5267l.get(0);
                    int i10 = (((a) aVar2.f5267l.get(0)).f5262g + aVar2.f5261f) - (aVar5.f5262g + aVar.f5261f);
                    int i11 = bVar.f5268m;
                    if (i10 < i11) {
                        bVar.resolve(i10);
                    } else {
                        bVar.resolve(i11);
                    }
                }
                if (bVar.f5265j && aVar.f5267l.size() > 0 && aVar2.f5267l.size() > 0) {
                    a aVar6 = (a) aVar.f5267l.get(0);
                    a aVar7 = (a) aVar2.f5267l.get(0);
                    int i12 = aVar6.f5262g + aVar.f5261f;
                    int i13 = aVar7.f5262g + aVar2.f5261f;
                    float verticalBiasPercent = this.f5273b.getVerticalBiasPercent();
                    if (aVar6 == aVar7) {
                        i12 = aVar6.f5262g;
                        i13 = aVar7.f5262g;
                        verticalBiasPercent = 0.5f;
                    }
                    aVar.resolve((int) ((((i13 - i12) - bVar.f5262g) * verticalBiasPercent) + i12 + 0.5f));
                    aVar2.resolve(aVar.f5262g + bVar.f5262g);
                }
            }
        }
    }
}
