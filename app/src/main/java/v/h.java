package v;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import u.C1658a;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final C1713b f20353a = new C1713b();

    public static boolean a(u.e eVar) {
        ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = eVar.getHorizontalDimensionBehaviour();
        ConstraintWidget$DimensionBehaviour verticalDimensionBehaviour = eVar.getVerticalDimensionBehaviour();
        u.f fVar = eVar.getParent() != null ? (u.f) eVar.getParent() : null;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5239b;
        if (fVar != null) {
            fVar.getHorizontalDimensionBehaviour();
        }
        if (fVar != null) {
            fVar.getVerticalDimensionBehaviour();
        }
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5241f;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.f5240e;
        boolean z6 = horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour || eVar.isResolvedHorizontally() || horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour3 || (horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour2 && eVar.f20136r == 0 && eVar.f20100X == 0.0f && eVar.hasDanglingDimension(0)) || (horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour2 && eVar.f20136r == 1 && eVar.hasResolvedTargets(0, eVar.getWidth()));
        boolean z7 = verticalDimensionBehaviour == constraintWidget$DimensionBehaviour || eVar.isResolvedVertically() || verticalDimensionBehaviour == constraintWidget$DimensionBehaviour3 || (verticalDimensionBehaviour == constraintWidget$DimensionBehaviour2 && eVar.f20137s == 0 && eVar.f20100X == 0.0f && eVar.hasDanglingDimension(1)) || (verticalDimensionBehaviour == constraintWidget$DimensionBehaviour2 && eVar.f20137s == 1 && eVar.hasResolvedTargets(1, eVar.getHeight()));
        return (eVar.f20100X > 0.0f && (z6 || z7)) || (z6 && z7);
    }

    public static void b(int i2, u.e eVar, InterfaceC1714c interfaceC1714c, boolean z6) {
        boolean z7;
        u.d dVar;
        u.d dVar2;
        boolean z8;
        u.d dVar3;
        u.d dVar4;
        if (eVar.isHorizontalSolvingPassDone()) {
            return;
        }
        int i7 = 0;
        if (!(eVar instanceof u.f) && eVar.isMeasureRequested()) {
            int i8 = i2 + 1;
            if (a(eVar)) {
                u.f.measure(i8, eVar, interfaceC1714c, new C1713b(), 0);
            }
        }
        u.d anchor = eVar.getAnchor(ConstraintAnchor$Type.f5230b);
        u.d anchor2 = eVar.getAnchor(ConstraintAnchor$Type.f5232f);
        int finalValue = anchor.getFinalValue();
        int finalValue2 = anchor2.getFinalValue();
        HashSet<u.d> dependents = anchor.getDependents();
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5241f;
        if (dependents != null && anchor.hasFinalValue()) {
            Iterator<u.d> it = anchor.getDependents().iterator();
            while (it.hasNext()) {
                u.d next = it.next();
                u.e eVar2 = next.f20071d;
                int i9 = i2 + 1;
                boolean a7 = a(eVar2);
                if (eVar2.isMeasureRequested() && a7) {
                    z8 = true;
                    u.f.measure(i9, eVar2, interfaceC1714c, new C1713b(), i7);
                } else {
                    z8 = true;
                }
                u.d dVar5 = eVar2.f20085I;
                u.d dVar6 = eVar2.f20087K;
                boolean z9 = ((next == dVar5 && (dVar4 = dVar6.f20073f) != null && dVar4.hasFinalValue()) || (next == dVar6 && (dVar3 = dVar5.f20073f) != null && dVar3.hasFinalValue())) ? z8 : false;
                if (eVar2.getHorizontalDimensionBehaviour() != constraintWidget$DimensionBehaviour || a7) {
                    if (!eVar2.isMeasureRequested()) {
                        if (next == dVar5 && dVar6.f20073f == null) {
                            int margin = dVar5.getMargin() + finalValue;
                            eVar2.setFinalHorizontal(margin, eVar2.getWidth() + margin);
                            b(i9, eVar2, interfaceC1714c, z6);
                        } else if (next == dVar6 && dVar5.f20073f == null) {
                            int margin2 = finalValue - dVar6.getMargin();
                            eVar2.setFinalHorizontal(margin2 - eVar2.getWidth(), margin2);
                            b(i9, eVar2, interfaceC1714c, z6);
                        } else if (z9 && !eVar2.isInHorizontalChain()) {
                            c(i9, eVar2, interfaceC1714c, z6);
                        }
                    }
                } else if (eVar2.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour && eVar2.f20140v >= 0 && eVar2.f20139u >= 0 && ((eVar2.getVisibility() == 8 || (eVar2.f20136r == 0 && eVar2.getDimensionRatio() == 0.0f)) && !eVar2.isInHorizontalChain() && !eVar2.isInVirtualLayout() && z9 && !eVar2.isInHorizontalChain())) {
                    d(i9, eVar, interfaceC1714c, eVar2, z6);
                }
                i7 = 0;
            }
        }
        if (eVar instanceof u.i) {
            return;
        }
        if (anchor2.getDependents() != null && anchor2.hasFinalValue()) {
            Iterator<u.d> it2 = anchor2.getDependents().iterator();
            while (it2.hasNext()) {
                u.d next2 = it2.next();
                u.e eVar3 = next2.f20071d;
                int i10 = i2 + 1;
                boolean a8 = a(eVar3);
                if (eVar3.isMeasureRequested() && a8) {
                    z7 = false;
                    u.f.measure(i10, eVar3, interfaceC1714c, new C1713b(), 0);
                } else {
                    z7 = false;
                }
                u.d dVar7 = eVar3.f20085I;
                u.d dVar8 = eVar3.f20087K;
                boolean z10 = ((next2 == dVar7 && (dVar2 = dVar8.f20073f) != null && dVar2.hasFinalValue()) || (next2 == dVar8 && (dVar = dVar7.f20073f) != null && dVar.hasFinalValue())) ? true : z7;
                if (eVar3.getHorizontalDimensionBehaviour() != constraintWidget$DimensionBehaviour || a8) {
                    if (!eVar3.isMeasureRequested()) {
                        if (next2 == dVar7 && dVar8.f20073f == null) {
                            int margin3 = dVar7.getMargin() + finalValue2;
                            eVar3.setFinalHorizontal(margin3, eVar3.getWidth() + margin3);
                            b(i10, eVar3, interfaceC1714c, z6);
                        } else if (next2 == dVar8 && dVar7.f20073f == null) {
                            int margin4 = finalValue2 - dVar8.getMargin();
                            eVar3.setFinalHorizontal(margin4 - eVar3.getWidth(), margin4);
                            b(i10, eVar3, interfaceC1714c, z6);
                        } else if (z10 && !eVar3.isInHorizontalChain()) {
                            c(i10, eVar3, interfaceC1714c, z6);
                        }
                    }
                } else if (eVar3.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour && eVar3.f20140v >= 0 && eVar3.f20139u >= 0) {
                    if (eVar3.getVisibility() == 8 || (eVar3.f20136r == 0 && eVar3.getDimensionRatio() == 0.0f)) {
                        if (!eVar3.isInHorizontalChain() && !eVar3.isInVirtualLayout() && z10 && !eVar3.isInHorizontalChain()) {
                            d(i10, eVar, interfaceC1714c, eVar3, z6);
                        }
                    }
                }
            }
        }
        eVar.markHorizontalSolvingPassDone();
    }

    public static void c(int i2, u.e eVar, InterfaceC1714c interfaceC1714c, boolean z6) {
        float horizontalBiasPercent = eVar.getHorizontalBiasPercent();
        u.d dVar = eVar.f20085I;
        int finalValue = dVar.f20073f.getFinalValue();
        u.d dVar2 = eVar.f20087K;
        int finalValue2 = dVar2.f20073f.getFinalValue();
        int margin = dVar.getMargin() + finalValue;
        int margin2 = finalValue2 - dVar2.getMargin();
        if (finalValue == finalValue2) {
            horizontalBiasPercent = 0.5f;
        } else {
            finalValue = margin;
            finalValue2 = margin2;
        }
        int width = eVar.getWidth();
        int i7 = (finalValue2 - finalValue) - width;
        if (finalValue > finalValue2) {
            i7 = (finalValue - finalValue2) - width;
        }
        int i8 = ((int) (i7 > 0 ? (horizontalBiasPercent * i7) + 0.5f : horizontalBiasPercent * i7)) + finalValue;
        int i9 = i8 + width;
        if (finalValue > finalValue2) {
            i9 = i8 - width;
        }
        eVar.setFinalHorizontal(i8, i9);
        b(i2 + 1, eVar, interfaceC1714c, z6);
    }

    public static void d(int i2, u.e eVar, InterfaceC1714c interfaceC1714c, u.e eVar2, boolean z6) {
        float horizontalBiasPercent = eVar2.getHorizontalBiasPercent();
        u.d dVar = eVar2.f20085I;
        int margin = dVar.getMargin() + dVar.f20073f.getFinalValue();
        u.d dVar2 = eVar2.f20087K;
        int finalValue = dVar2.f20073f.getFinalValue() - dVar2.getMargin();
        if (finalValue >= margin) {
            int width = eVar2.getWidth();
            if (eVar2.getVisibility() != 8) {
                int i7 = eVar2.f20136r;
                if (i7 == 2) {
                    width = (int) (eVar2.getHorizontalBiasPercent() * 0.5f * (eVar instanceof u.f ? eVar.getWidth() : eVar.getParent().getWidth()));
                } else if (i7 == 0) {
                    width = finalValue - margin;
                }
                width = Math.max(eVar2.f20139u, width);
                int i8 = eVar2.f20140v;
                if (i8 > 0) {
                    width = Math.min(i8, width);
                }
            }
            int i9 = margin + ((int) ((horizontalBiasPercent * ((finalValue - margin) - width)) + 0.5f));
            eVar2.setFinalHorizontal(i9, width + i9);
            b(i2 + 1, eVar2, interfaceC1714c, z6);
        }
    }

    public static void e(int i2, u.e eVar, InterfaceC1714c interfaceC1714c) {
        float verticalBiasPercent = eVar.getVerticalBiasPercent();
        u.d dVar = eVar.f20086J;
        int finalValue = dVar.f20073f.getFinalValue();
        u.d dVar2 = eVar.f20088L;
        int finalValue2 = dVar2.f20073f.getFinalValue();
        int margin = dVar.getMargin() + finalValue;
        int margin2 = finalValue2 - dVar2.getMargin();
        if (finalValue == finalValue2) {
            verticalBiasPercent = 0.5f;
        } else {
            finalValue = margin;
            finalValue2 = margin2;
        }
        int height = eVar.getHeight();
        int i7 = (finalValue2 - finalValue) - height;
        if (finalValue > finalValue2) {
            i7 = (finalValue - finalValue2) - height;
        }
        int i8 = (int) (i7 > 0 ? (verticalBiasPercent * i7) + 0.5f : verticalBiasPercent * i7);
        int i9 = finalValue + i8;
        int i10 = i9 + height;
        if (finalValue > finalValue2) {
            i9 = finalValue - i8;
            i10 = i9 - height;
        }
        eVar.setFinalVertical(i9, i10);
        g(i2 + 1, eVar, interfaceC1714c);
    }

    public static void f(int i2, u.e eVar, InterfaceC1714c interfaceC1714c, u.e eVar2) {
        float verticalBiasPercent = eVar2.getVerticalBiasPercent();
        u.d dVar = eVar2.f20086J;
        int margin = dVar.getMargin() + dVar.f20073f.getFinalValue();
        u.d dVar2 = eVar2.f20088L;
        int finalValue = dVar2.f20073f.getFinalValue() - dVar2.getMargin();
        if (finalValue >= margin) {
            int height = eVar2.getHeight();
            if (eVar2.getVisibility() != 8) {
                int i7 = eVar2.f20137s;
                if (i7 == 2) {
                    height = (int) (verticalBiasPercent * 0.5f * (eVar instanceof u.f ? eVar.getHeight() : eVar.getParent().getHeight()));
                } else if (i7 == 0) {
                    height = finalValue - margin;
                }
                height = Math.max(eVar2.f20142x, height);
                int i8 = eVar2.f20143y;
                if (i8 > 0) {
                    height = Math.min(i8, height);
                }
            }
            int i9 = margin + ((int) ((verticalBiasPercent * ((finalValue - margin) - height)) + 0.5f));
            eVar2.setFinalVertical(i9, height + i9);
            g(i2 + 1, eVar2, interfaceC1714c);
        }
    }

    public static void g(int i2, u.e eVar, InterfaceC1714c interfaceC1714c) {
        u.d dVar;
        u.d dVar2;
        u.d dVar3;
        u.d dVar4;
        if (eVar.isVerticalSolvingPassDone()) {
            return;
        }
        int i7 = 0;
        if (!(eVar instanceof u.f) && eVar.isMeasureRequested()) {
            int i8 = i2 + 1;
            if (a(eVar)) {
                u.f.measure(i8, eVar, interfaceC1714c, new C1713b(), 0);
            }
        }
        u.d anchor = eVar.getAnchor(ConstraintAnchor$Type.f5231e);
        u.d anchor2 = eVar.getAnchor(ConstraintAnchor$Type.f5233j);
        int finalValue = anchor.getFinalValue();
        int finalValue2 = anchor2.getFinalValue();
        HashSet<u.d> dependents = anchor.getDependents();
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5241f;
        if (dependents != null && anchor.hasFinalValue()) {
            Iterator<u.d> it = anchor.getDependents().iterator();
            while (it.hasNext()) {
                u.d next = it.next();
                u.e eVar2 = next.f20071d;
                int i9 = i2 + 1;
                boolean a7 = a(eVar2);
                if (eVar2.isMeasureRequested() && a7) {
                    u.f.measure(i9, eVar2, interfaceC1714c, new C1713b(), i7);
                }
                u.d dVar5 = eVar2.f20086J;
                u.d dVar6 = eVar2.f20088L;
                int i10 = ((next == dVar5 && (dVar4 = dVar6.f20073f) != null && dVar4.hasFinalValue()) || (next == dVar6 && (dVar3 = dVar5.f20073f) != null && dVar3.hasFinalValue())) ? 1 : i7;
                if (eVar2.getVerticalDimensionBehaviour() != constraintWidget$DimensionBehaviour || a7) {
                    if (!eVar2.isMeasureRequested()) {
                        if (next == dVar5 && dVar6.f20073f == null) {
                            int margin = dVar5.getMargin() + finalValue;
                            eVar2.setFinalVertical(margin, eVar2.getHeight() + margin);
                            g(i9, eVar2, interfaceC1714c);
                        } else if (next == dVar6 && dVar5.f20073f == null) {
                            int margin2 = finalValue - dVar6.getMargin();
                            eVar2.setFinalVertical(margin2 - eVar2.getHeight(), margin2);
                            g(i9, eVar2, interfaceC1714c);
                        } else if (i10 != 0 && !eVar2.isInVerticalChain()) {
                            e(i9, eVar2, interfaceC1714c);
                        }
                    }
                } else if (eVar2.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour && eVar2.f20143y >= 0 && eVar2.f20142x >= 0 && ((eVar2.getVisibility() == 8 || (eVar2.f20137s == 0 && eVar2.getDimensionRatio() == 0.0f)) && !eVar2.isInVerticalChain() && !eVar2.isInVirtualLayout() && i10 != 0 && !eVar2.isInVerticalChain())) {
                    f(i9, eVar, interfaceC1714c, eVar2);
                }
                i7 = 0;
            }
        }
        if (eVar instanceof u.i) {
            return;
        }
        if (anchor2.getDependents() != null && anchor2.hasFinalValue()) {
            Iterator<u.d> it2 = anchor2.getDependents().iterator();
            while (it2.hasNext()) {
                u.d next2 = it2.next();
                u.e eVar3 = next2.f20071d;
                int i11 = i2 + 1;
                boolean a8 = a(eVar3);
                if (eVar3.isMeasureRequested() && a8) {
                    u.f.measure(i11, eVar3, interfaceC1714c, new C1713b(), 0);
                }
                u.d dVar7 = eVar3.f20086J;
                u.d dVar8 = eVar3.f20088L;
                boolean z6 = (next2 == dVar7 && (dVar2 = dVar8.f20073f) != null && dVar2.hasFinalValue()) || (next2 == dVar8 && (dVar = dVar7.f20073f) != null && dVar.hasFinalValue());
                if (eVar3.getVerticalDimensionBehaviour() != constraintWidget$DimensionBehaviour || a8) {
                    if (!eVar3.isMeasureRequested()) {
                        if (next2 == dVar7 && dVar8.f20073f == null) {
                            int margin3 = dVar7.getMargin() + finalValue2;
                            eVar3.setFinalVertical(margin3, eVar3.getHeight() + margin3);
                            g(i11, eVar3, interfaceC1714c);
                        } else if (next2 == dVar8 && dVar7.f20073f == null) {
                            int margin4 = finalValue2 - dVar8.getMargin();
                            eVar3.setFinalVertical(margin4 - eVar3.getHeight(), margin4);
                            g(i11, eVar3, interfaceC1714c);
                        } else if (z6 && !eVar3.isInVerticalChain()) {
                            e(i11, eVar3, interfaceC1714c);
                        }
                    }
                } else if (eVar3.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour && eVar3.f20143y >= 0 && eVar3.f20142x >= 0 && (eVar3.getVisibility() == 8 || (eVar3.f20137s == 0 && eVar3.getDimensionRatio() == 0.0f))) {
                    if (!eVar3.isInVerticalChain() && !eVar3.isInVirtualLayout() && z6 && !eVar3.isInVerticalChain()) {
                        f(i11, eVar, interfaceC1714c, eVar3);
                    }
                }
            }
        }
        u.d anchor3 = eVar.getAnchor(ConstraintAnchor$Type.f5234m);
        if (anchor3.getDependents() != null && anchor3.hasFinalValue()) {
            int finalValue3 = anchor3.getFinalValue();
            Iterator<u.d> it3 = anchor3.getDependents().iterator();
            while (it3.hasNext()) {
                u.d next3 = it3.next();
                u.e eVar4 = next3.f20071d;
                int i12 = i2 + 1;
                boolean a9 = a(eVar4);
                if (eVar4.isMeasureRequested() && a9) {
                    u.f.measure(i12, eVar4, interfaceC1714c, new C1713b(), 0);
                }
                if (eVar4.getVerticalDimensionBehaviour() != constraintWidget$DimensionBehaviour || a9) {
                    if (!eVar4.isMeasureRequested() && next3 == eVar4.f20089M) {
                        eVar4.setFinalBaseline(next3.getMargin() + finalValue3);
                        g(i12, eVar4, interfaceC1714c);
                    }
                }
            }
        }
        eVar.markVerticalSolvingPassDone();
    }

    public static void solvingPass(u.f fVar, InterfaceC1714c interfaceC1714c) {
        ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = fVar.getHorizontalDimensionBehaviour();
        ConstraintWidget$DimensionBehaviour verticalDimensionBehaviour = fVar.getVerticalDimensionBehaviour();
        fVar.resetFinalResolution();
        ArrayList<u.e> children = fVar.getChildren();
        int size = children.size();
        for (int i2 = 0; i2 < size; i2++) {
            children.get(i2).resetFinalResolution();
        }
        boolean isRtl = fVar.isRtl();
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5239b;
        if (horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour) {
            fVar.setFinalHorizontal(0, fVar.getWidth());
        } else {
            fVar.setFinalLeft(0);
        }
        boolean z6 = false;
        boolean z7 = false;
        for (int i7 = 0; i7 < size; i7++) {
            u.e eVar = children.get(i7);
            if (eVar instanceof u.i) {
                u.i iVar = (u.i) eVar;
                if (iVar.getOrientation() == 1) {
                    if (iVar.getRelativeBegin() != -1) {
                        iVar.setFinalValue(iVar.getRelativeBegin());
                    } else if (iVar.getRelativeEnd() != -1 && fVar.isResolvedHorizontally()) {
                        iVar.setFinalValue(fVar.getWidth() - iVar.getRelativeEnd());
                    } else if (fVar.isResolvedHorizontally()) {
                        iVar.setFinalValue((int) ((iVar.getRelativePercent() * fVar.getWidth()) + 0.5f));
                    }
                    z6 = true;
                }
            } else if ((eVar instanceof C1658a) && ((C1658a) eVar).getOrientation() == 0) {
                z7 = true;
            }
        }
        if (z6) {
            for (int i8 = 0; i8 < size; i8++) {
                u.e eVar2 = children.get(i8);
                if (eVar2 instanceof u.i) {
                    u.i iVar2 = (u.i) eVar2;
                    if (iVar2.getOrientation() == 1) {
                        b(0, iVar2, interfaceC1714c, isRtl);
                    }
                }
            }
        }
        b(0, fVar, interfaceC1714c, isRtl);
        if (z7) {
            for (int i9 = 0; i9 < size; i9++) {
                u.e eVar3 = children.get(i9);
                if (eVar3 instanceof C1658a) {
                    C1658a c1658a = (C1658a) eVar3;
                    if (c1658a.getOrientation() == 0 && c1658a.allSolved()) {
                        b(1, c1658a, interfaceC1714c, isRtl);
                    }
                }
            }
        }
        if (verticalDimensionBehaviour == constraintWidget$DimensionBehaviour) {
            fVar.setFinalVertical(0, fVar.getHeight());
        } else {
            fVar.setFinalTop(0);
        }
        boolean z8 = false;
        boolean z9 = false;
        for (int i10 = 0; i10 < size; i10++) {
            u.e eVar4 = children.get(i10);
            if (eVar4 instanceof u.i) {
                u.i iVar3 = (u.i) eVar4;
                if (iVar3.getOrientation() == 0) {
                    if (iVar3.getRelativeBegin() != -1) {
                        iVar3.setFinalValue(iVar3.getRelativeBegin());
                    } else if (iVar3.getRelativeEnd() != -1 && fVar.isResolvedVertically()) {
                        iVar3.setFinalValue(fVar.getHeight() - iVar3.getRelativeEnd());
                    } else if (fVar.isResolvedVertically()) {
                        iVar3.setFinalValue((int) ((iVar3.getRelativePercent() * fVar.getHeight()) + 0.5f));
                    }
                    z8 = true;
                }
            } else if ((eVar4 instanceof C1658a) && ((C1658a) eVar4).getOrientation() == 1) {
                z9 = true;
            }
        }
        if (z8) {
            for (int i11 = 0; i11 < size; i11++) {
                u.e eVar5 = children.get(i11);
                if (eVar5 instanceof u.i) {
                    u.i iVar4 = (u.i) eVar5;
                    if (iVar4.getOrientation() == 0) {
                        g(1, iVar4, interfaceC1714c);
                    }
                }
            }
        }
        g(0, fVar, interfaceC1714c);
        if (z9) {
            for (int i12 = 0; i12 < size; i12++) {
                u.e eVar6 = children.get(i12);
                if (eVar6 instanceof C1658a) {
                    C1658a c1658a2 = (C1658a) eVar6;
                    if (c1658a2.getOrientation() == 1 && c1658a2.allSolved()) {
                        g(1, c1658a2, interfaceC1714c);
                    }
                }
            }
        }
        for (int i13 = 0; i13 < size; i13++) {
            u.e eVar7 = children.get(i13);
            if (eVar7.isMeasureRequested() && a(eVar7)) {
                u.f.measure(0, eVar7, interfaceC1714c, f20353a, 0);
                if (!(eVar7 instanceof u.i)) {
                    b(0, eVar7, interfaceC1714c, isRtl);
                    g(0, eVar7, interfaceC1714c);
                } else if (((u.i) eVar7).getOrientation() == 0) {
                    g(0, eVar7, interfaceC1714c);
                } else {
                    b(0, eVar7, interfaceC1714c, isRtl);
                }
            }
        }
    }
}
