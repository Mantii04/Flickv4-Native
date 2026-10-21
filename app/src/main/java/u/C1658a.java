package u;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import r.C1533f;

/* renamed from: u.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1658a extends k {

    /* renamed from: s0, reason: collision with root package name */
    public int f20047s0 = 0;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f20048t0 = true;

    /* renamed from: u0, reason: collision with root package name */
    public int f20049u0 = 0;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f20050v0 = false;

    @Override // u.e
    public void addToSolver(C1533f c1533f, boolean z6) {
        boolean z7;
        int i2;
        int i7;
        d[] dVarArr = this.f20093Q;
        d dVar = this.f20085I;
        dVarArr[0] = dVar;
        d dVar2 = this.f20086J;
        dVarArr[2] = dVar2;
        d dVar3 = this.f20087K;
        dVarArr[1] = dVar3;
        d dVar4 = this.f20088L;
        dVarArr[3] = dVar4;
        for (d dVar5 : dVarArr) {
            dVar5.f20076i = c1533f.createObjectVariable(dVar5);
        }
        int i8 = this.f20047s0;
        if (i8 < 0 || i8 >= 4) {
            return;
        }
        d dVar6 = dVarArr[i8];
        if (!this.f20050v0) {
            allSolved();
        }
        if (this.f20050v0) {
            this.f20050v0 = false;
            int i9 = this.f20047s0;
            if (i9 == 0 || i9 == 1) {
                c1533f.addEquality(dVar.f20076i, this.f20102Z);
                c1533f.addEquality(dVar3.f20076i, this.f20102Z);
                return;
            } else {
                if (i9 == 2 || i9 == 3) {
                    c1533f.addEquality(dVar2.f20076i, this.f20104a0);
                    c1533f.addEquality(dVar4.f20076i, this.f20104a0);
                    return;
                }
                return;
            }
        }
        for (int i10 = 0; i10 < this.f20216r0; i10++) {
            e eVar = this.f20215q0[i10];
            if (this.f20048t0 || eVar.allowedInBarrier()) {
                int i11 = this.f20047s0;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5241f;
                if (((i11 == 0 || i11 == 1) && eVar.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour && eVar.f20085I.f20073f != null && eVar.f20087K.f20073f != null) || (((i7 = this.f20047s0) == 2 || i7 == 3) && eVar.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour && eVar.f20086J.f20073f != null && eVar.f20088L.f20073f != null)) {
                    z7 = true;
                    break;
                }
            }
        }
        z7 = false;
        boolean z8 = dVar.hasCenteredDependents() || dVar3.hasCenteredDependents();
        boolean z9 = dVar2.hasCenteredDependents() || dVar4.hasCenteredDependents();
        int i12 = (z7 || !(((i2 = this.f20047s0) == 0 && z8) || ((i2 == 2 && z9) || ((i2 == 1 && z8) || (i2 == 3 && z9))))) ? 4 : 5;
        for (int i13 = 0; i13 < this.f20216r0; i13++) {
            e eVar2 = this.f20215q0[i13];
            if (this.f20048t0 || eVar2.allowedInBarrier()) {
                r.m createObjectVariable = c1533f.createObjectVariable(eVar2.f20093Q[this.f20047s0]);
                int i14 = this.f20047s0;
                d dVar7 = eVar2.f20093Q[i14];
                dVar7.f20076i = createObjectVariable;
                d dVar8 = dVar7.f20073f;
                int i15 = (dVar8 == null || dVar8.f20071d != this) ? 0 : dVar7.f20074g;
                if (i14 == 0 || i14 == 2) {
                    c1533f.addLowerBarrier(dVar6.f20076i, createObjectVariable, this.f20049u0 - i15, z7);
                } else {
                    c1533f.addGreaterBarrier(dVar6.f20076i, createObjectVariable, this.f20049u0 + i15, z7);
                }
                c1533f.addEquality(dVar6.f20076i, createObjectVariable, this.f20049u0 + i15, i12);
            }
        }
        int i16 = this.f20047s0;
        if (i16 == 0) {
            c1533f.addEquality(dVar3.f20076i, dVar.f20076i, 0, 8);
            c1533f.addEquality(dVar.f20076i, this.f20097U.f20087K.f20076i, 0, 4);
            c1533f.addEquality(dVar.f20076i, this.f20097U.f20085I.f20076i, 0, 0);
            return;
        }
        if (i16 == 1) {
            c1533f.addEquality(dVar.f20076i, dVar3.f20076i, 0, 8);
            c1533f.addEquality(dVar.f20076i, this.f20097U.f20085I.f20076i, 0, 4);
            c1533f.addEquality(dVar.f20076i, this.f20097U.f20087K.f20076i, 0, 0);
        } else if (i16 == 2) {
            c1533f.addEquality(dVar4.f20076i, dVar2.f20076i, 0, 8);
            c1533f.addEquality(dVar2.f20076i, this.f20097U.f20088L.f20076i, 0, 4);
            c1533f.addEquality(dVar2.f20076i, this.f20097U.f20086J.f20076i, 0, 0);
        } else if (i16 == 3) {
            c1533f.addEquality(dVar2.f20076i, dVar4.f20076i, 0, 8);
            c1533f.addEquality(dVar2.f20076i, this.f20097U.f20086J.f20076i, 0, 4);
            c1533f.addEquality(dVar2.f20076i, this.f20097U.f20088L.f20076i, 0, 0);
        }
    }

    public boolean allSolved() {
        int i2;
        int i7;
        int i8;
        boolean z6 = true;
        int i9 = 0;
        while (true) {
            i2 = this.f20216r0;
            if (i9 >= i2) {
                break;
            }
            e eVar = this.f20215q0[i9];
            if ((this.f20048t0 || eVar.allowedInBarrier()) && ((((i7 = this.f20047s0) == 0 || i7 == 1) && !eVar.isResolvedHorizontally()) || (((i8 = this.f20047s0) == 2 || i8 == 3) && !eVar.isResolvedVertically()))) {
                z6 = false;
            }
            i9++;
        }
        if (!z6 || i2 <= 0) {
            return false;
        }
        int i10 = 0;
        boolean z7 = false;
        for (int i11 = 0; i11 < this.f20216r0; i11++) {
            e eVar2 = this.f20215q0[i11];
            if (this.f20048t0 || eVar2.allowedInBarrier()) {
                ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.f5233j;
                ConstraintAnchor$Type constraintAnchor$Type2 = ConstraintAnchor$Type.f5231e;
                ConstraintAnchor$Type constraintAnchor$Type3 = ConstraintAnchor$Type.f5232f;
                ConstraintAnchor$Type constraintAnchor$Type4 = ConstraintAnchor$Type.f5230b;
                if (!z7) {
                    int i12 = this.f20047s0;
                    if (i12 == 0) {
                        i10 = eVar2.getAnchor(constraintAnchor$Type4).getFinalValue();
                    } else if (i12 == 1) {
                        i10 = eVar2.getAnchor(constraintAnchor$Type3).getFinalValue();
                    } else if (i12 == 2) {
                        i10 = eVar2.getAnchor(constraintAnchor$Type2).getFinalValue();
                    } else if (i12 == 3) {
                        i10 = eVar2.getAnchor(constraintAnchor$Type).getFinalValue();
                    }
                    z7 = true;
                }
                int i13 = this.f20047s0;
                if (i13 == 0) {
                    i10 = Math.min(i10, eVar2.getAnchor(constraintAnchor$Type4).getFinalValue());
                } else if (i13 == 1) {
                    i10 = Math.max(i10, eVar2.getAnchor(constraintAnchor$Type3).getFinalValue());
                } else if (i13 == 2) {
                    i10 = Math.min(i10, eVar2.getAnchor(constraintAnchor$Type2).getFinalValue());
                } else if (i13 == 3) {
                    i10 = Math.max(i10, eVar2.getAnchor(constraintAnchor$Type).getFinalValue());
                }
            }
        }
        int i14 = i10 + this.f20049u0;
        int i15 = this.f20047s0;
        if (i15 == 0 || i15 == 1) {
            setFinalHorizontal(i14, i14);
        } else {
            setFinalVertical(i14, i14);
        }
        this.f20050v0 = true;
        return true;
    }

    @Override // u.e
    public boolean allowedInBarrier() {
        return true;
    }

    public boolean getAllowsGoneWidget() {
        return this.f20048t0;
    }

    public int getBarrierType() {
        return this.f20047s0;
    }

    public int getMargin() {
        return this.f20049u0;
    }

    public int getOrientation() {
        int i2 = this.f20047s0;
        if (i2 == 0 || i2 == 1) {
            return 0;
        }
        return (i2 == 2 || i2 == 3) ? 1 : -1;
    }

    @Override // u.e
    public boolean isResolvedHorizontally() {
        return this.f20050v0;
    }

    @Override // u.e
    public boolean isResolvedVertically() {
        return this.f20050v0;
    }

    public void markWidgets() {
        for (int i2 = 0; i2 < this.f20216r0; i2++) {
            e eVar = this.f20215q0[i2];
            if (this.f20048t0 || eVar.allowedInBarrier()) {
                int i7 = this.f20047s0;
                if (i7 == 0 || i7 == 1) {
                    eVar.setInBarrier(0, true);
                } else if (i7 == 2 || i7 == 3) {
                    eVar.setInBarrier(1, true);
                }
            }
        }
    }

    public void setAllowsGoneWidget(boolean z6) {
        this.f20048t0 = z6;
    }

    public void setBarrierType(int i2) {
        this.f20047s0 = i2;
    }

    public void setMargin(int i2) {
        this.f20049u0 = i2;
    }

    @Override // u.e
    public String toString() {
        String str = "[Barrier] " + getDebugName() + " {";
        for (int i2 = 0; i2 < this.f20216r0; i2++) {
            e eVar = this.f20215q0[i2];
            if (i2 > 0) {
                str = A.i.B(str, ", ");
            }
            StringBuilder o6 = b.c.o(str);
            o6.append(eVar.getDebugName());
            str = o6.toString();
        }
        return A.i.B(str, "}");
    }
}
