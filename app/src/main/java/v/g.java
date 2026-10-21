package v;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import x.C1795a;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final u.f f20345a;

    /* renamed from: d, reason: collision with root package name */
    public final u.f f20348d;

    /* renamed from: f, reason: collision with root package name */
    public InterfaceC1714c f20350f;

    /* renamed from: g, reason: collision with root package name */
    public final C1713b f20351g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f20352h;

    /* renamed from: b, reason: collision with root package name */
    public boolean f20346b = true;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20347c = true;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f20349e = new ArrayList();

    public g(u.f fVar) {
        new ArrayList();
        this.f20350f = null;
        this.f20351g = new C1713b();
        this.f20352h = new ArrayList();
        this.f20345a = fVar;
        this.f20348d = fVar;
    }

    public final void a(androidx.constraintlayout.core.widgets.analyzer.a aVar, int i2, int i7, ArrayList arrayList, k kVar) {
        int i8;
        ArrayList arrayList2;
        androidx.constraintlayout.core.widgets.analyzer.f fVar = aVar.f5259d;
        if (fVar.f5274c == null) {
            u.f fVar2 = this.f20345a;
            if (fVar == fVar2.f20109d || fVar == fVar2.f20111e) {
                return;
            }
            if (kVar == null) {
                kVar = new k(fVar, i7);
                arrayList.add(kVar);
            }
            k kVar2 = kVar;
            fVar.f5274c = kVar2;
            kVar2.add(fVar);
            androidx.constraintlayout.core.widgets.analyzer.a aVar2 = fVar.f5279h;
            Iterator it = aVar2.f5266k.iterator();
            while (it.hasNext()) {
                f fVar3 = (f) it.next();
                if (fVar3 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                    i8 = i2;
                    arrayList2 = arrayList;
                    a((androidx.constraintlayout.core.widgets.analyzer.a) fVar3, i8, 0, arrayList2, kVar2);
                } else {
                    i8 = i2;
                    arrayList2 = arrayList;
                }
                i2 = i8;
                arrayList = arrayList2;
            }
            int i9 = i2;
            ArrayList arrayList3 = arrayList;
            androidx.constraintlayout.core.widgets.analyzer.a aVar3 = fVar.f5280i;
            Iterator it2 = aVar3.f5266k.iterator();
            while (it2.hasNext()) {
                f fVar4 = (f) it2.next();
                if (fVar4 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                    a((androidx.constraintlayout.core.widgets.analyzer.a) fVar4, i9, 1, arrayList3, kVar2);
                }
            }
            if (i9 == 1 && (fVar instanceof androidx.constraintlayout.core.widgets.analyzer.e)) {
                Iterator it3 = ((androidx.constraintlayout.core.widgets.analyzer.e) fVar).f5270k.f5266k.iterator();
                while (it3.hasNext()) {
                    f fVar5 = (f) it3.next();
                    if (fVar5 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                        a((androidx.constraintlayout.core.widgets.analyzer.a) fVar5, i9, 2, arrayList3, kVar2);
                    }
                }
            }
            Iterator it4 = aVar2.f5267l.iterator();
            while (it4.hasNext()) {
                a((androidx.constraintlayout.core.widgets.analyzer.a) it4.next(), i9, 0, arrayList3, kVar2);
            }
            Iterator it5 = aVar3.f5267l.iterator();
            while (it5.hasNext()) {
                a((androidx.constraintlayout.core.widgets.analyzer.a) it5.next(), i9, 1, arrayList3, kVar2);
            }
            if (i9 == 1 && (fVar instanceof androidx.constraintlayout.core.widgets.analyzer.e)) {
                Iterator it6 = ((androidx.constraintlayout.core.widgets.analyzer.e) fVar).f5270k.f5267l.iterator();
                while (it6.hasNext()) {
                    a((androidx.constraintlayout.core.widgets.analyzer.a) it6.next(), i9, 2, arrayList3, kVar2);
                }
            }
        }
    }

    public final void b(u.f fVar) {
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6;
        Iterator it = fVar.f20229q0.iterator();
        while (it.hasNext()) {
            u.e eVar = (u.e) it.next();
            ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = eVar.f20096T;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour7 = constraintWidget$DimensionBehaviourArr[0];
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour8 = constraintWidget$DimensionBehaviourArr[1];
            if (eVar.getVisibility() == 8) {
                eVar.f20103a = true;
            } else {
                float f3 = eVar.f20141w;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour9 = ConstraintWidget$DimensionBehaviour.f5241f;
                if (f3 < 1.0f && constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour9) {
                    eVar.f20136r = 2;
                }
                if (eVar.f20144z < 1.0f && constraintWidget$DimensionBehaviour8 == constraintWidget$DimensionBehaviour9) {
                    eVar.f20137s = 2;
                }
                float dimensionRatio = eVar.getDimensionRatio();
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour10 = ConstraintWidget$DimensionBehaviour.f5240e;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour11 = ConstraintWidget$DimensionBehaviour.f5239b;
                if (dimensionRatio > 0.0f) {
                    if (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour9 && (constraintWidget$DimensionBehaviour8 == constraintWidget$DimensionBehaviour10 || constraintWidget$DimensionBehaviour8 == constraintWidget$DimensionBehaviour11)) {
                        eVar.f20136r = 3;
                    } else if (constraintWidget$DimensionBehaviour8 == constraintWidget$DimensionBehaviour9 && (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour10 || constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour11)) {
                        eVar.f20137s = 3;
                    } else if (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour9 && constraintWidget$DimensionBehaviour8 == constraintWidget$DimensionBehaviour9) {
                        if (eVar.f20136r == 0) {
                            eVar.f20136r = 3;
                        }
                        if (eVar.f20137s == 0) {
                            eVar.f20137s = 3;
                        }
                    }
                }
                u.d dVar = eVar.f20087K;
                u.d dVar2 = eVar.f20085I;
                if (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour9 && eVar.f20136r == 1 && (dVar2.f20073f == null || dVar.f20073f == null)) {
                    constraintWidget$DimensionBehaviour7 = constraintWidget$DimensionBehaviour10;
                }
                u.d dVar3 = eVar.f20088L;
                u.d dVar4 = eVar.f20086J;
                if (constraintWidget$DimensionBehaviour8 == constraintWidget$DimensionBehaviour9 && eVar.f20137s == 1 && (dVar4.f20073f == null || dVar3.f20073f == null)) {
                    constraintWidget$DimensionBehaviour8 = constraintWidget$DimensionBehaviour10;
                }
                androidx.constraintlayout.core.widgets.analyzer.d dVar5 = eVar.f20109d;
                dVar5.f5275d = constraintWidget$DimensionBehaviour7;
                int i2 = eVar.f20136r;
                dVar5.f5272a = i2;
                androidx.constraintlayout.core.widgets.analyzer.e eVar2 = eVar.f20111e;
                eVar2.f5275d = constraintWidget$DimensionBehaviour8;
                int i7 = eVar.f20137s;
                eVar2.f5272a = i7;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour12 = ConstraintWidget$DimensionBehaviour.f5242j;
                if ((constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour12 || constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour11 || constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour10) && (constraintWidget$DimensionBehaviour8 == constraintWidget$DimensionBehaviour12 || constraintWidget$DimensionBehaviour8 == constraintWidget$DimensionBehaviour11 || constraintWidget$DimensionBehaviour8 == constraintWidget$DimensionBehaviour10)) {
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour13 = constraintWidget$DimensionBehaviour8;
                    int width = eVar.getWidth();
                    if (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour12) {
                        width = (fVar.getWidth() - dVar2.f20074g) - dVar.f20074g;
                        constraintWidget$DimensionBehaviour7 = constraintWidget$DimensionBehaviour11;
                    }
                    int i8 = width;
                    int height = eVar.getHeight();
                    if (constraintWidget$DimensionBehaviour13 == constraintWidget$DimensionBehaviour12) {
                        height = (fVar.getHeight() - dVar4.f20074g) - dVar3.f20074g;
                        constraintWidget$DimensionBehaviour13 = constraintWidget$DimensionBehaviour11;
                    }
                    e(eVar, constraintWidget$DimensionBehaviour7, i8, constraintWidget$DimensionBehaviour13, height);
                    eVar.f20109d.f5276e.resolve(eVar.getWidth());
                    eVar.f20111e.f5276e.resolve(eVar.getHeight());
                    eVar.f20103a = true;
                } else {
                    ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr2 = fVar.f20096T;
                    u.d[] dVarArr = eVar.f20093Q;
                    if (constraintWidget$DimensionBehaviour7 != constraintWidget$DimensionBehaviour9 || (constraintWidget$DimensionBehaviour8 != constraintWidget$DimensionBehaviour10 && constraintWidget$DimensionBehaviour8 != constraintWidget$DimensionBehaviour11)) {
                        constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour7;
                        constraintWidget$DimensionBehaviour4 = constraintWidget$DimensionBehaviour10;
                        constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviour9;
                        constraintWidget$DimensionBehaviour3 = constraintWidget$DimensionBehaviour8;
                    } else if (i2 == 3) {
                        if (constraintWidget$DimensionBehaviour8 == constraintWidget$DimensionBehaviour10) {
                            e(eVar, constraintWidget$DimensionBehaviour10, 0, constraintWidget$DimensionBehaviour10, 0);
                        }
                        int height2 = eVar.getHeight();
                        e(eVar, constraintWidget$DimensionBehaviour11, (int) ((height2 * eVar.f20100X) + 0.5f), constraintWidget$DimensionBehaviour11, height2);
                        eVar.f20109d.f5276e.resolve(eVar.getWidth());
                        eVar.f20111e.f5276e.resolve(eVar.getHeight());
                        eVar.f20103a = true;
                    } else {
                        constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour7;
                        constraintWidget$DimensionBehaviour4 = constraintWidget$DimensionBehaviour10;
                        if (i2 == 1) {
                            e(eVar, constraintWidget$DimensionBehaviour4, 0, constraintWidget$DimensionBehaviour8, 0);
                            eVar.f20109d.f5276e.f5268m = eVar.getWidth();
                        } else {
                            constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviour9;
                            constraintWidget$DimensionBehaviour3 = constraintWidget$DimensionBehaviour8;
                            if (i2 == 2) {
                                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour14 = constraintWidget$DimensionBehaviourArr2[0];
                                if (constraintWidget$DimensionBehaviour14 == constraintWidget$DimensionBehaviour11 || constraintWidget$DimensionBehaviour14 == constraintWidget$DimensionBehaviour12) {
                                    e(eVar, constraintWidget$DimensionBehaviour11, (int) ((eVar.f20141w * fVar.getWidth()) + 0.5f), constraintWidget$DimensionBehaviour3, eVar.getHeight());
                                    eVar.f20109d.f5276e.resolve(eVar.getWidth());
                                    eVar.f20111e.f5276e.resolve(eVar.getHeight());
                                    eVar.f20103a = true;
                                }
                            } else if (dVarArr[0].f20073f == null || dVarArr[1].f20073f == null) {
                                e(eVar, constraintWidget$DimensionBehaviour4, 0, constraintWidget$DimensionBehaviour3, 0);
                                eVar.f20109d.f5276e.resolve(eVar.getWidth());
                                eVar.f20111e.f5276e.resolve(eVar.getHeight());
                                eVar.f20103a = true;
                            }
                        }
                    }
                    if (constraintWidget$DimensionBehaviour3 != constraintWidget$DimensionBehaviour2 || (constraintWidget$DimensionBehaviour != constraintWidget$DimensionBehaviour4 && constraintWidget$DimensionBehaviour != constraintWidget$DimensionBehaviour11)) {
                        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour15 = constraintWidget$DimensionBehaviour;
                        constraintWidget$DimensionBehaviour5 = constraintWidget$DimensionBehaviour4;
                        constraintWidget$DimensionBehaviour6 = constraintWidget$DimensionBehaviour15;
                    } else if (i7 == 3) {
                        if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour4) {
                            e(eVar, constraintWidget$DimensionBehaviour4, 0, constraintWidget$DimensionBehaviour4, 0);
                        }
                        int width2 = eVar.getWidth();
                        float f7 = eVar.f20100X;
                        if (eVar.getDimensionRatioSide() == -1) {
                            f7 = 1.0f / f7;
                        }
                        e(eVar, constraintWidget$DimensionBehaviour11, width2, constraintWidget$DimensionBehaviour11, (int) ((width2 * f7) + 0.5f));
                        eVar.f20109d.f5276e.resolve(eVar.getWidth());
                        eVar.f20111e.f5276e.resolve(eVar.getHeight());
                        eVar.f20103a = true;
                    } else if (i7 == 1) {
                        e(eVar, constraintWidget$DimensionBehaviour, 0, constraintWidget$DimensionBehaviour4, 0);
                        eVar.f20111e.f5276e.f5268m = eVar.getHeight();
                    } else {
                        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour16 = constraintWidget$DimensionBehaviour;
                        constraintWidget$DimensionBehaviour5 = constraintWidget$DimensionBehaviour4;
                        if (i7 == 2) {
                            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour17 = constraintWidget$DimensionBehaviourArr2[1];
                            if (constraintWidget$DimensionBehaviour17 == constraintWidget$DimensionBehaviour11 || constraintWidget$DimensionBehaviour17 == constraintWidget$DimensionBehaviour12) {
                                e(eVar, constraintWidget$DimensionBehaviour16, eVar.getWidth(), constraintWidget$DimensionBehaviour11, (int) ((eVar.f20144z * fVar.getHeight()) + 0.5f));
                                eVar.f20109d.f5276e.resolve(eVar.getWidth());
                                eVar.f20111e.f5276e.resolve(eVar.getHeight());
                                eVar.f20103a = true;
                            } else {
                                constraintWidget$DimensionBehaviour6 = constraintWidget$DimensionBehaviour16;
                            }
                        } else {
                            constraintWidget$DimensionBehaviour6 = constraintWidget$DimensionBehaviour16;
                            if (dVarArr[2].f20073f == null || dVarArr[3].f20073f == null) {
                                e(eVar, constraintWidget$DimensionBehaviour5, 0, constraintWidget$DimensionBehaviour3, 0);
                                eVar.f20109d.f5276e.resolve(eVar.getWidth());
                                eVar.f20111e.f5276e.resolve(eVar.getHeight());
                                eVar.f20103a = true;
                            }
                        }
                    }
                    if (constraintWidget$DimensionBehaviour6 == constraintWidget$DimensionBehaviour2 && constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour2) {
                        if (i2 == 1 || i7 == 1) {
                            e(eVar, constraintWidget$DimensionBehaviour5, 0, constraintWidget$DimensionBehaviour5, 0);
                            eVar.f20109d.f5276e.f5268m = eVar.getWidth();
                            eVar.f20111e.f5276e.f5268m = eVar.getHeight();
                        } else if (i7 == 2 && i2 == 2 && constraintWidget$DimensionBehaviourArr2[0] == constraintWidget$DimensionBehaviour11 && constraintWidget$DimensionBehaviourArr2[1] == constraintWidget$DimensionBehaviour11) {
                            e(eVar, constraintWidget$DimensionBehaviour11, (int) ((eVar.f20141w * fVar.getWidth()) + 0.5f), constraintWidget$DimensionBehaviour11, (int) ((eVar.f20144z * fVar.getHeight()) + 0.5f));
                            eVar.f20109d.f5276e.resolve(eVar.getWidth());
                            eVar.f20111e.f5276e.resolve(eVar.getHeight());
                            eVar.f20103a = true;
                        }
                    }
                }
            }
        }
    }

    public void buildGraph() {
        buildGraph(this.f20349e);
        ArrayList arrayList = this.f20352h;
        arrayList.clear();
        u.f fVar = this.f20345a;
        d(fVar.f20109d, 0, arrayList);
        d(fVar.f20111e, 1, arrayList);
        this.f20346b = false;
    }

    public final int c(u.f fVar, int i2) {
        ArrayList arrayList = this.f20352h;
        int size = arrayList.size();
        long j7 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            j7 = Math.max(j7, ((k) arrayList.get(i7)).computeWrapSize(fVar, i2));
        }
        return (int) j7;
    }

    public final void d(androidx.constraintlayout.core.widgets.analyzer.f fVar, int i2, ArrayList arrayList) {
        androidx.constraintlayout.core.widgets.analyzer.a aVar;
        Iterator it = fVar.f5279h.f5266k.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            aVar = fVar.f5280i;
            if (!hasNext) {
                break;
            }
            f fVar2 = (f) it.next();
            if (fVar2 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                a((androidx.constraintlayout.core.widgets.analyzer.a) fVar2, i2, 0, arrayList, null);
            } else if (fVar2 instanceof androidx.constraintlayout.core.widgets.analyzer.f) {
                a(((androidx.constraintlayout.core.widgets.analyzer.f) fVar2).f5279h, i2, 0, arrayList, null);
            }
        }
        Iterator it2 = aVar.f5266k.iterator();
        while (it2.hasNext()) {
            f fVar3 = (f) it2.next();
            if (fVar3 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                a((androidx.constraintlayout.core.widgets.analyzer.a) fVar3, i2, 1, arrayList, null);
            } else if (fVar3 instanceof androidx.constraintlayout.core.widgets.analyzer.f) {
                a(((androidx.constraintlayout.core.widgets.analyzer.f) fVar3).f5280i, i2, 1, arrayList, null);
            }
        }
        int i7 = i2;
        if (i7 == 1) {
            Iterator it3 = ((androidx.constraintlayout.core.widgets.analyzer.e) fVar).f5270k.f5266k.iterator();
            while (it3.hasNext()) {
                f fVar4 = (f) it3.next();
                if (fVar4 instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                    a((androidx.constraintlayout.core.widgets.analyzer.a) fVar4, i7, 2, arrayList, null);
                }
                i7 = i2;
            }
        }
    }

    public boolean directMeasure(boolean z6) {
        boolean z7;
        boolean z8 = this.f20346b;
        u.f fVar = this.f20345a;
        boolean z9 = false;
        if (z8 || this.f20347c) {
            Iterator it = fVar.f20229q0.iterator();
            while (it.hasNext()) {
                u.e eVar = (u.e) it.next();
                eVar.ensureWidgetRuns();
                eVar.f20103a = false;
                eVar.f20109d.e();
                eVar.f20111e.d();
            }
            fVar.ensureWidgetRuns();
            fVar.f20103a = false;
            fVar.f20109d.e();
            fVar.f20111e.d();
            this.f20347c = false;
        }
        b(this.f20348d);
        fVar.setX(0);
        fVar.setY(0);
        ConstraintWidget$DimensionBehaviour dimensionBehaviour = fVar.getDimensionBehaviour(0);
        ConstraintWidget$DimensionBehaviour dimensionBehaviour2 = fVar.getDimensionBehaviour(1);
        if (this.f20346b) {
            buildGraph();
        }
        int x6 = fVar.getX();
        int y6 = fVar.getY();
        fVar.f20109d.f5279h.resolve(x6);
        fVar.f20111e.f5279h.resolve(y6);
        measureWidgets();
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5240e;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5239b;
        ArrayList arrayList = this.f20349e;
        if (dimensionBehaviour == constraintWidget$DimensionBehaviour || dimensionBehaviour2 == constraintWidget$DimensionBehaviour) {
            if (z6) {
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (!((androidx.constraintlayout.core.widgets.analyzer.f) it2.next()).c()) {
                        z6 = false;
                        break;
                    }
                }
            }
            if (z6 && dimensionBehaviour == constraintWidget$DimensionBehaviour) {
                fVar.setHorizontalDimensionBehaviour(constraintWidget$DimensionBehaviour2);
                fVar.setWidth(c(fVar, 0));
                fVar.f20109d.f5276e.resolve(fVar.getWidth());
            }
            if (z6 && dimensionBehaviour2 == constraintWidget$DimensionBehaviour) {
                fVar.setVerticalDimensionBehaviour(constraintWidget$DimensionBehaviour2);
                fVar.setHeight(c(fVar, 1));
                fVar.f20111e.f5276e.resolve(fVar.getHeight());
            }
        }
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = fVar.f20096T[0];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.f5242j;
        if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour4) {
            int width = fVar.getWidth() + x6;
            fVar.f20109d.f5280i.resolve(width);
            fVar.f20109d.f5276e.resolve(width - x6);
            measureWidgets();
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = fVar.f20096T[1];
            if (constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour4) {
                int height = fVar.getHeight() + y6;
                fVar.f20111e.f5280i.resolve(height);
                fVar.f20111e.f5276e.resolve(height - y6);
            }
            measureWidgets();
            z7 = true;
        } else {
            z7 = false;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar2 = (androidx.constraintlayout.core.widgets.analyzer.f) it3.next();
            if (fVar2.f5273b != fVar || fVar2.f5278g) {
                fVar2.applyToWidget();
            }
        }
        Iterator it4 = arrayList.iterator();
        while (true) {
            if (!it4.hasNext()) {
                z9 = true;
                break;
            }
            androidx.constraintlayout.core.widgets.analyzer.f fVar3 = (androidx.constraintlayout.core.widgets.analyzer.f) it4.next();
            if (z7 || fVar3.f5273b != fVar) {
                if (!fVar3.f5279h.f5265j) {
                    break;
                }
                if (!fVar3.f5280i.f5265j) {
                    if (!(fVar3 instanceof j)) {
                        break;
                    }
                }
                if (!fVar3.f5276e.f5265j && !(fVar3 instanceof e) && !(fVar3 instanceof j)) {
                    break;
                }
            }
        }
        fVar.setHorizontalDimensionBehaviour(dimensionBehaviour);
        fVar.setVerticalDimensionBehaviour(dimensionBehaviour2);
        return z9;
    }

    public boolean directMeasureSetup(boolean z6) {
        boolean z7 = this.f20346b;
        u.f fVar = this.f20345a;
        if (z7) {
            Iterator it = fVar.f20229q0.iterator();
            while (it.hasNext()) {
                u.e eVar = (u.e) it.next();
                eVar.ensureWidgetRuns();
                eVar.f20103a = false;
                androidx.constraintlayout.core.widgets.analyzer.d dVar = eVar.f20109d;
                dVar.f5276e.f5265j = false;
                dVar.f5278g = false;
                dVar.e();
                androidx.constraintlayout.core.widgets.analyzer.e eVar2 = eVar.f20111e;
                eVar2.f5276e.f5265j = false;
                eVar2.f5278g = false;
                eVar2.d();
            }
            fVar.ensureWidgetRuns();
            fVar.f20103a = false;
            androidx.constraintlayout.core.widgets.analyzer.d dVar2 = fVar.f20109d;
            dVar2.f5276e.f5265j = false;
            dVar2.f5278g = false;
            dVar2.e();
            androidx.constraintlayout.core.widgets.analyzer.e eVar3 = fVar.f20111e;
            eVar3.f5276e.f5265j = false;
            eVar3.f5278g = false;
            eVar3.d();
            buildGraph();
        }
        b(this.f20348d);
        fVar.setX(0);
        fVar.setY(0);
        fVar.f20109d.f5279h.resolve(0);
        fVar.f20111e.f5279h.resolve(0);
        return true;
    }

    public boolean directMeasureWithOrientation(boolean z6, int i2) {
        boolean z7;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        u.f fVar = this.f20345a;
        boolean z8 = false;
        ConstraintWidget$DimensionBehaviour dimensionBehaviour = fVar.getDimensionBehaviour(0);
        ConstraintWidget$DimensionBehaviour dimensionBehaviour2 = fVar.getDimensionBehaviour(1);
        int x6 = fVar.getX();
        int y6 = fVar.getY();
        ArrayList arrayList = this.f20349e;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5239b;
        if (z6 && (dimensionBehaviour == (constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5240e) || dimensionBehaviour2 == constraintWidget$DimensionBehaviour)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                androidx.constraintlayout.core.widgets.analyzer.f fVar2 = (androidx.constraintlayout.core.widgets.analyzer.f) it.next();
                if (fVar2.f5277f == i2 && !fVar2.c()) {
                    z6 = false;
                    break;
                }
            }
            if (i2 == 0) {
                if (z6 && dimensionBehaviour == constraintWidget$DimensionBehaviour) {
                    fVar.setHorizontalDimensionBehaviour(constraintWidget$DimensionBehaviour2);
                    fVar.setWidth(c(fVar, 0));
                    fVar.f20109d.f5276e.resolve(fVar.getWidth());
                }
            } else if (z6 && dimensionBehaviour2 == constraintWidget$DimensionBehaviour) {
                fVar.setVerticalDimensionBehaviour(constraintWidget$DimensionBehaviour2);
                fVar.setHeight(c(fVar, 1));
                fVar.f20111e.f5276e.resolve(fVar.getHeight());
            }
        }
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.f5242j;
        if (i2 == 0) {
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = fVar.f20096T[0];
            if (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour3) {
                int width = fVar.getWidth() + x6;
                fVar.f20109d.f5280i.resolve(width);
                fVar.f20109d.f5276e.resolve(width - x6);
                z7 = true;
            }
            z7 = false;
        } else {
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = fVar.f20096T[1];
            if (constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour3) {
                int height = fVar.getHeight() + y6;
                fVar.f20111e.f5280i.resolve(height);
                fVar.f20111e.f5276e.resolve(height - y6);
                z7 = true;
            }
            z7 = false;
        }
        measureWidgets();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar3 = (androidx.constraintlayout.core.widgets.analyzer.f) it2.next();
            if (fVar3.f5277f == i2 && (fVar3.f5273b != fVar || fVar3.f5278g)) {
                fVar3.applyToWidget();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z8 = true;
                break;
            }
            androidx.constraintlayout.core.widgets.analyzer.f fVar4 = (androidx.constraintlayout.core.widgets.analyzer.f) it3.next();
            if (fVar4.f5277f == i2 && (z7 || fVar4.f5273b != fVar)) {
                if (!fVar4.f5279h.f5265j) {
                    break;
                }
                if (!fVar4.f5280i.f5265j) {
                    break;
                }
                if (!(fVar4 instanceof e) && !fVar4.f5276e.f5265j) {
                    break;
                }
            }
        }
        fVar.setHorizontalDimensionBehaviour(dimensionBehaviour);
        fVar.setVerticalDimensionBehaviour(dimensionBehaviour2);
        return z8;
    }

    public final void e(u.e eVar, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, int i2, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2, int i7) {
        C1713b c1713b = this.f20351g;
        c1713b.f20330a = constraintWidget$DimensionBehaviour;
        c1713b.f20331b = constraintWidget$DimensionBehaviour2;
        c1713b.f20332c = i2;
        c1713b.f20333d = i7;
        ((C1795a) this.f20350f).measure(eVar, c1713b);
        eVar.setWidth(c1713b.f20334e);
        eVar.setHeight(c1713b.f20335f);
        eVar.setHasBaseline(c1713b.f20337h);
        eVar.setBaselineDistance(c1713b.f20336g);
    }

    public void invalidateGraph() {
        this.f20346b = true;
    }

    public void invalidateMeasures() {
        this.f20347c = true;
    }

    public void measureWidgets() {
        C1712a c1712a;
        Iterator it = this.f20345a.f20229q0.iterator();
        while (it.hasNext()) {
            u.e eVar = (u.e) it.next();
            if (!eVar.f20103a) {
                ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = eVar.f20096T;
                boolean z6 = false;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviourArr[1];
                int i2 = eVar.f20136r;
                int i7 = eVar.f20137s;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.f5240e;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.f5241f;
                boolean z7 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour3 || (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour4 && i2 == 1);
                if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3 || (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4 && i7 == 1)) {
                    z6 = true;
                }
                androidx.constraintlayout.core.widgets.analyzer.b bVar = eVar.f20109d.f5276e;
                boolean z8 = bVar.f5265j;
                androidx.constraintlayout.core.widgets.analyzer.b bVar2 = eVar.f20111e.f5276e;
                boolean z9 = bVar2.f5265j;
                boolean z10 = z7;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = ConstraintWidget$DimensionBehaviour.f5239b;
                if (z8 && z9) {
                    e(eVar, constraintWidget$DimensionBehaviour5, bVar.f5262g, constraintWidget$DimensionBehaviour5, bVar2.f5262g);
                    eVar.f20103a = true;
                } else if (z8 && z6) {
                    e(eVar, constraintWidget$DimensionBehaviour5, bVar.f5262g, constraintWidget$DimensionBehaviour3, bVar2.f5262g);
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour4) {
                        eVar.f20111e.f5276e.f5268m = eVar.getHeight();
                    } else {
                        eVar.f20111e.f5276e.resolve(eVar.getHeight());
                        eVar.f20103a = true;
                    }
                } else if (z9 && z10) {
                    e(eVar, constraintWidget$DimensionBehaviour3, bVar.f5262g, constraintWidget$DimensionBehaviour5, bVar2.f5262g);
                    if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour4) {
                        eVar.f20109d.f5276e.f5268m = eVar.getWidth();
                    } else {
                        eVar.f20109d.f5276e.resolve(eVar.getWidth());
                        eVar.f20103a = true;
                    }
                }
                if (eVar.f20103a && (c1712a = eVar.f20111e.f5271l) != null) {
                    c1712a.resolve(eVar.getBaselineDistance());
                }
            }
        }
    }

    public void setMeasurer(InterfaceC1714c interfaceC1714c) {
        this.f20350f = interfaceC1714c;
    }

    public void buildGraph(ArrayList<androidx.constraintlayout.core.widgets.analyzer.f> arrayList) {
        arrayList.clear();
        u.f fVar = this.f20348d;
        fVar.f20109d.b();
        fVar.f20111e.b();
        arrayList.add(fVar.f20109d);
        arrayList.add(fVar.f20111e);
        Iterator it = fVar.f20229q0.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            u.e eVar = (u.e) it.next();
            if (eVar instanceof u.i) {
                arrayList.add(new j(eVar));
            } else {
                if (eVar.isInHorizontalChain()) {
                    if (eVar.f20105b == null) {
                        eVar.f20105b = new e(eVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(eVar.f20105b);
                } else {
                    arrayList.add(eVar.f20109d);
                }
                if (eVar.isInVerticalChain()) {
                    if (eVar.f20107c == null) {
                        eVar.f20107c = new e(eVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(eVar.f20107c);
                } else {
                    arrayList.add(eVar.f20111e);
                }
                if (eVar instanceof u.k) {
                    arrayList.add(new androidx.constraintlayout.core.widgets.analyzer.c(eVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<androidx.constraintlayout.core.widgets.analyzer.f> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().b();
        }
        Iterator<androidx.constraintlayout.core.widgets.analyzer.f> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            androidx.constraintlayout.core.widgets.analyzer.f next = it3.next();
            if (next.f5273b != fVar) {
                next.a();
            }
        }
    }
}
