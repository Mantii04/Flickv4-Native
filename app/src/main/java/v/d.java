package v;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
import u.C1658a;
import x.C1795a;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f20340a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final C1713b f20341b = new C1713b();

    /* renamed from: c, reason: collision with root package name */
    public final u.f f20342c;

    public d(u.f fVar) {
        this.f20342c = fVar;
    }

    public final boolean a(int i2, u.e eVar, InterfaceC1714c interfaceC1714c) {
        ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = eVar.getHorizontalDimensionBehaviour();
        C1713b c1713b = this.f20341b;
        c1713b.f20330a = horizontalDimensionBehaviour;
        c1713b.f20331b = eVar.getVerticalDimensionBehaviour();
        c1713b.f20332c = eVar.getWidth();
        c1713b.f20333d = eVar.getHeight();
        c1713b.f20338i = false;
        c1713b.f20339j = i2;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = c1713b.f20330a;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5241f;
        boolean z6 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2;
        boolean z7 = c1713b.f20331b == constraintWidget$DimensionBehaviour2;
        boolean z8 = z6 && eVar.f20100X > 0.0f;
        boolean z9 = z7 && eVar.f20100X > 0.0f;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.f5239b;
        int[] iArr = eVar.f20138t;
        if (z8 && iArr[0] == 4) {
            c1713b.f20330a = constraintWidget$DimensionBehaviour3;
        }
        if (z9 && iArr[1] == 4) {
            c1713b.f20331b = constraintWidget$DimensionBehaviour3;
        }
        ((C1795a) interfaceC1714c).measure(eVar, c1713b);
        eVar.setWidth(c1713b.f20334e);
        eVar.setHeight(c1713b.f20335f);
        eVar.setHasBaseline(c1713b.f20337h);
        eVar.setBaselineDistance(c1713b.f20336g);
        c1713b.f20339j = 0;
        return c1713b.f20338i;
    }

    public final void b(u.f fVar, int i2, int i7, int i8) {
        int minWidth = fVar.getMinWidth();
        int minHeight = fVar.getMinHeight();
        fVar.setMinWidth(0);
        fVar.setMinHeight(0);
        fVar.setWidth(i7);
        fVar.setHeight(i8);
        fVar.setMinWidth(minWidth);
        fVar.setMinHeight(minHeight);
        u.f fVar2 = this.f20342c;
        fVar2.setPass(i2);
        fVar2.layout();
    }

    public long solverMeasure(u.f fVar, int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14) {
        float f3;
        boolean z6;
        int i15;
        boolean z7;
        long j7;
        int i16;
        int i17;
        ConstraintAnchor$Type constraintAnchor$Type;
        ConstraintAnchor$Type constraintAnchor$Type2;
        ArrayList arrayList;
        int i18;
        int i19;
        InterfaceC1714c interfaceC1714c;
        boolean z8;
        boolean z9;
        int i20;
        boolean z10;
        int i21;
        boolean z11;
        int i22;
        androidx.constraintlayout.core.widgets.analyzer.d dVar;
        boolean z12;
        InterfaceC1714c measurer = fVar.getMeasurer();
        int size = fVar.f20229q0.size();
        int width = fVar.getWidth();
        int height = fVar.getHeight();
        boolean enabled = u.l.enabled(i2, 128);
        int i23 = 0;
        boolean z13 = enabled || u.l.enabled(i2, 64);
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5241f;
        if (z13) {
            for (int i24 = 0; i24 < size; i24++) {
                f3 = 0.0f;
                u.e eVar = (u.e) fVar.f20229q0.get(i24);
                boolean z14 = (eVar.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour) && (eVar.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour) && eVar.getDimensionRatio() > 0.0f;
                if ((eVar.isInHorizontalChain() && z14) || ((eVar.isInVerticalChain() && z14) || (eVar instanceof u.m) || eVar.isInHorizontalChain() || eVar.isInVerticalChain())) {
                    z13 = false;
                    break;
                }
            }
        }
        f3 = 0.0f;
        boolean z15 = z13 & ((i9 == 1073741824 && i11 == 1073741824) || enabled);
        if (z15) {
            int min = Math.min(fVar.getMaxWidth(), i10);
            int min2 = Math.min(fVar.getMaxHeight(), i12);
            if (i9 == 1073741824 && fVar.getWidth() != min) {
                fVar.setWidth(min);
                fVar.invalidateGraph();
            }
            if (i11 == 1073741824 && fVar.getHeight() != min2) {
                fVar.setHeight(min2);
                fVar.invalidateGraph();
            }
            if (i9 == 1073741824 && i11 == 1073741824) {
                z6 = fVar.directMeasure(enabled);
                i15 = 2;
            } else {
                boolean directMeasureSetup = fVar.directMeasureSetup(enabled);
                if (i9 == 1073741824) {
                    z12 = directMeasureSetup & fVar.directMeasureWithOrientation(enabled, 0);
                    i15 = 1;
                } else {
                    z12 = directMeasureSetup;
                    i15 = 0;
                }
                if (i11 == 1073741824) {
                    z6 = fVar.directMeasureWithOrientation(enabled, 1) & z12;
                    i15++;
                } else {
                    z6 = z12;
                }
            }
            if (z6) {
                fVar.updateFromRuns(i9 == 1073741824, i11 == 1073741824);
            }
        } else {
            z6 = false;
            i15 = 0;
        }
        long j8 = 0;
        if (z6 && i15 == 2) {
            return 0L;
        }
        int optimizationLevel = fVar.getOptimizationLevel();
        if (size > 0) {
            int size2 = fVar.f20229q0.size();
            boolean optimizeFor = fVar.optimizeFor(64);
            InterfaceC1714c measurer2 = fVar.getMeasurer();
            int i25 = 0;
            while (i25 < size2) {
                long j9 = j8;
                u.e eVar2 = (u.e) fVar.f20229q0.get(i25);
                if (!(eVar2 instanceof u.i) && !(eVar2 instanceof C1658a) && !eVar2.isInVirtualLayout()) {
                    if (!optimizeFor || (dVar = eVar2.f20109d) == null) {
                        i21 = i23;
                    } else {
                        androidx.constraintlayout.core.widgets.analyzer.e eVar3 = eVar2.f20111e;
                        if (eVar3 == null || !dVar.f5276e.f5265j || !eVar3.f5276e.f5265j) {
                            i21 = 0;
                        }
                    }
                    ConstraintWidget$DimensionBehaviour dimensionBehaviour = eVar2.getDimensionBehaviour(i21);
                    z11 = z15;
                    ConstraintWidget$DimensionBehaviour dimensionBehaviour2 = eVar2.getDimensionBehaviour(1);
                    i22 = size;
                    boolean z16 = dimensionBehaviour == constraintWidget$DimensionBehaviour && eVar2.f20136r != 1 && dimensionBehaviour2 == constraintWidget$DimensionBehaviour && eVar2.f20137s != 1;
                    if (!z16 && fVar.optimizeFor(1) && !(eVar2 instanceof u.m)) {
                        if (dimensionBehaviour == constraintWidget$DimensionBehaviour && eVar2.f20136r == 0 && dimensionBehaviour2 != constraintWidget$DimensionBehaviour && !eVar2.isInHorizontalChain()) {
                            z16 = true;
                        }
                        if (dimensionBehaviour2 == constraintWidget$DimensionBehaviour && eVar2.f20137s == 0 && dimensionBehaviour != constraintWidget$DimensionBehaviour && !eVar2.isInHorizontalChain()) {
                            z16 = true;
                        }
                        if ((dimensionBehaviour == constraintWidget$DimensionBehaviour || dimensionBehaviour2 == constraintWidget$DimensionBehaviour) && eVar2.f20100X > f3) {
                            z16 = true;
                        }
                    }
                    if (!z16) {
                        a(0, eVar2, measurer2);
                    }
                    i25++;
                    j8 = j9;
                    z15 = z11;
                    size = i22;
                    i23 = 0;
                }
                z11 = z15;
                i22 = size;
                i25++;
                j8 = j9;
                z15 = z11;
                size = i22;
                i23 = 0;
            }
            z7 = z15;
            j7 = j8;
            i16 = size;
            ((C1795a) measurer2).didMeasures();
        } else {
            z7 = z15;
            j7 = 0;
            i16 = size;
        }
        updateHierarchy(fVar);
        ArrayList arrayList2 = this.f20340a;
        int size3 = arrayList2.size();
        if (i16 > 0) {
            b(fVar, 0, width, height);
        }
        if (size3 > 0) {
            ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = fVar.getHorizontalDimensionBehaviour();
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5240e;
            boolean z17 = horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour2;
            boolean z18 = fVar.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour2;
            int width2 = fVar.getWidth();
            u.f fVar2 = this.f20342c;
            int max = Math.max(width2, fVar2.getMinWidth());
            int max2 = Math.max(fVar.getHeight(), fVar2.getMinHeight());
            int i26 = 0;
            boolean z19 = false;
            while (true) {
                constraintAnchor$Type = ConstraintAnchor$Type.f5233j;
                constraintAnchor$Type2 = ConstraintAnchor$Type.f5232f;
                if (i26 >= size3) {
                    break;
                }
                boolean z20 = z18;
                u.e eVar4 = (u.e) arrayList2.get(i26);
                int i27 = i26;
                if (eVar4 instanceof u.m) {
                    int width3 = eVar4.getWidth();
                    boolean z21 = z19;
                    int height2 = eVar4.getHeight();
                    z9 = z17;
                    boolean a7 = z21 | a(1, eVar4, measurer);
                    int width4 = eVar4.getWidth();
                    i20 = optimizationLevel;
                    int height3 = eVar4.getHeight();
                    if (width4 != width3) {
                        eVar4.setWidth(width4);
                        if (z9 && eVar4.getRight() > max) {
                            max = Math.max(max, eVar4.getAnchor(constraintAnchor$Type2).getMargin() + eVar4.getRight());
                        }
                        z10 = true;
                    } else {
                        z10 = a7;
                    }
                    if (height3 != height2) {
                        eVar4.setHeight(height3);
                        if (z20 && eVar4.getBottom() > max2) {
                            max2 = Math.max(max2, eVar4.getAnchor(constraintAnchor$Type).getMargin() + eVar4.getBottom());
                        }
                        z10 = true;
                    }
                    z19 = ((u.m) eVar4).needSolverPass() | z10;
                } else {
                    i20 = optimizationLevel;
                    z9 = z17;
                }
                i26 = i27 + 1;
                z18 = z20;
                z17 = z9;
                optimizationLevel = i20;
            }
            boolean z22 = z18;
            int i28 = optimizationLevel;
            boolean z23 = z17;
            boolean z24 = z19;
            int i29 = 0;
            while (i29 < 2) {
                boolean z25 = z24;
                int i30 = 0;
                while (i30 < size3) {
                    u.e eVar5 = (u.e) arrayList2.get(i30);
                    if ((!(eVar5 instanceof u.j) || (eVar5 instanceof u.m)) && !(eVar5 instanceof u.i)) {
                        arrayList = arrayList2;
                        if (eVar5.getVisibility() != 8 && ((!z7 || !eVar5.f20109d.f5276e.f5265j || !eVar5.f20111e.f5276e.f5265j) && !(eVar5 instanceof u.m))) {
                            int width5 = eVar5.getWidth();
                            int height4 = eVar5.getHeight();
                            i18 = size3;
                            int baselineDistance = eVar5.getBaselineDistance();
                            i19 = i30;
                            boolean a8 = a(i29 == 1 ? 2 : 1, eVar5, measurer) | z25;
                            int width6 = eVar5.getWidth();
                            interfaceC1714c = measurer;
                            int height5 = eVar5.getHeight();
                            if (width6 != width5) {
                                eVar5.setWidth(width6);
                                if (z23 && eVar5.getRight() > max) {
                                    max = Math.max(max, eVar5.getAnchor(constraintAnchor$Type2).getMargin() + eVar5.getRight());
                                }
                                a8 = true;
                            }
                            if (height5 != height4) {
                                eVar5.setHeight(height5);
                                if (z22 && eVar5.getBottom() > max2) {
                                    max2 = Math.max(max2, eVar5.getAnchor(constraintAnchor$Type).getMargin() + eVar5.getBottom());
                                }
                                z8 = true;
                            } else {
                                z8 = a8;
                            }
                            z25 = (!eVar5.hasBaseline() || baselineDistance == eVar5.getBaselineDistance()) ? z8 : true;
                            i30 = i19 + 1;
                            size3 = i18;
                            arrayList2 = arrayList;
                            measurer = interfaceC1714c;
                        }
                    } else {
                        arrayList = arrayList2;
                    }
                    i18 = size3;
                    interfaceC1714c = measurer;
                    i19 = i30;
                    i30 = i19 + 1;
                    size3 = i18;
                    arrayList2 = arrayList;
                    measurer = interfaceC1714c;
                }
                ArrayList arrayList3 = arrayList2;
                int i31 = size3;
                InterfaceC1714c interfaceC1714c2 = measurer;
                if (!z25) {
                    break;
                }
                i29++;
                b(fVar, i29, width, height);
                size3 = i31;
                arrayList2 = arrayList3;
                measurer = interfaceC1714c2;
                z24 = false;
            }
            i17 = i28;
        } else {
            i17 = optimizationLevel;
        }
        fVar.setOptimizationLevel(i17);
        return j7;
    }

    public void updateHierarchy(u.f fVar) {
        ArrayList arrayList = this.f20340a;
        arrayList.clear();
        int size = fVar.f20229q0.size();
        for (int i2 = 0; i2 < size; i2++) {
            u.e eVar = (u.e) fVar.f20229q0.get(i2);
            ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = eVar.getHorizontalDimensionBehaviour();
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5241f;
            if (horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour || eVar.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour) {
                arrayList.add(eVar);
            }
        }
        fVar.invalidateGraph();
    }
}
