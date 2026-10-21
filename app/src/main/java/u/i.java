package u;

import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
import r.C1533f;

/* loaded from: classes.dex */
public final class i extends e {

    /* renamed from: q0, reason: collision with root package name */
    public float f20209q0 = -1.0f;

    /* renamed from: r0, reason: collision with root package name */
    public int f20210r0 = -1;

    /* renamed from: s0, reason: collision with root package name */
    public int f20211s0 = -1;

    /* renamed from: t0, reason: collision with root package name */
    public d f20212t0 = this.f20086J;

    /* renamed from: u0, reason: collision with root package name */
    public int f20213u0 = 0;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f20214v0;

    public i() {
        this.f20094R.clear();
        this.f20094R.add(this.f20212t0);
        int length = this.f20093Q.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f20093Q[i2] = this.f20212t0;
        }
    }

    @Override // u.e
    public void addToSolver(C1533f c1533f, boolean z6) {
        f fVar = (f) getParent();
        if (fVar == null) {
            return;
        }
        d anchor = fVar.getAnchor(ConstraintAnchor$Type.f5230b);
        d anchor2 = fVar.getAnchor(ConstraintAnchor$Type.f5232f);
        e eVar = this.f20097U;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5240e;
        boolean z7 = eVar != null && eVar.f20096T[0] == constraintWidget$DimensionBehaviour;
        if (this.f20213u0 == 0) {
            anchor = fVar.getAnchor(ConstraintAnchor$Type.f5231e);
            anchor2 = fVar.getAnchor(ConstraintAnchor$Type.f5233j);
            e eVar2 = this.f20097U;
            z7 = eVar2 != null && eVar2.f20096T[1] == constraintWidget$DimensionBehaviour;
        }
        if (this.f20214v0 && this.f20212t0.hasFinalValue()) {
            r.m createObjectVariable = c1533f.createObjectVariable(this.f20212t0);
            c1533f.addEquality(createObjectVariable, this.f20212t0.getFinalValue());
            if (this.f20210r0 != -1) {
                if (z7) {
                    c1533f.addGreaterThan(c1533f.createObjectVariable(anchor2), createObjectVariable, 0, 5);
                }
            } else if (this.f20211s0 != -1 && z7) {
                r.m createObjectVariable2 = c1533f.createObjectVariable(anchor2);
                c1533f.addGreaterThan(createObjectVariable, c1533f.createObjectVariable(anchor), 0, 5);
                c1533f.addGreaterThan(createObjectVariable2, createObjectVariable, 0, 5);
            }
            this.f20214v0 = false;
            return;
        }
        if (this.f20210r0 != -1) {
            r.m createObjectVariable3 = c1533f.createObjectVariable(this.f20212t0);
            c1533f.addEquality(createObjectVariable3, c1533f.createObjectVariable(anchor), this.f20210r0, 8);
            if (z7) {
                c1533f.addGreaterThan(c1533f.createObjectVariable(anchor2), createObjectVariable3, 0, 5);
                return;
            }
            return;
        }
        if (this.f20211s0 == -1) {
            if (this.f20209q0 != -1.0f) {
                c1533f.addConstraint(C1533f.createRowDimensionPercent(c1533f, c1533f.createObjectVariable(this.f20212t0), c1533f.createObjectVariable(anchor2), this.f20209q0));
                return;
            }
            return;
        }
        r.m createObjectVariable4 = c1533f.createObjectVariable(this.f20212t0);
        r.m createObjectVariable5 = c1533f.createObjectVariable(anchor2);
        c1533f.addEquality(createObjectVariable4, createObjectVariable5, -this.f20211s0, 8);
        if (z7) {
            c1533f.addGreaterThan(createObjectVariable4, c1533f.createObjectVariable(anchor), 0, 5);
            c1533f.addGreaterThan(createObjectVariable5, createObjectVariable4, 0, 5);
        }
    }

    @Override // u.e
    public boolean allowedInBarrier() {
        return true;
    }

    public d getAnchor() {
        return this.f20212t0;
    }

    public int getOrientation() {
        return this.f20213u0;
    }

    public int getRelativeBegin() {
        return this.f20210r0;
    }

    public int getRelativeEnd() {
        return this.f20211s0;
    }

    public float getRelativePercent() {
        return this.f20209q0;
    }

    @Override // u.e
    public boolean isResolvedHorizontally() {
        return this.f20214v0;
    }

    @Override // u.e
    public boolean isResolvedVertically() {
        return this.f20214v0;
    }

    public void setFinalValue(int i2) {
        this.f20212t0.setFinalValue(i2);
        this.f20214v0 = true;
    }

    public void setGuideBegin(int i2) {
        if (i2 > -1) {
            this.f20209q0 = -1.0f;
            this.f20210r0 = i2;
            this.f20211s0 = -1;
        }
    }

    public void setGuideEnd(int i2) {
        if (i2 > -1) {
            this.f20209q0 = -1.0f;
            this.f20210r0 = -1;
            this.f20211s0 = i2;
        }
    }

    public void setGuidePercent(float f3) {
        if (f3 > -1.0f) {
            this.f20209q0 = f3;
            this.f20210r0 = -1;
            this.f20211s0 = -1;
        }
    }

    public void setOrientation(int i2) {
        if (this.f20213u0 == i2) {
            return;
        }
        this.f20213u0 = i2;
        ArrayList arrayList = this.f20094R;
        arrayList.clear();
        if (this.f20213u0 == 1) {
            this.f20212t0 = this.f20085I;
        } else {
            this.f20212t0 = this.f20086J;
        }
        arrayList.add(this.f20212t0);
        d[] dVarArr = this.f20093Q;
        int length = dVarArr.length;
        for (int i7 = 0; i7 < length; i7++) {
            dVarArr[i7] = this.f20212t0;
        }
    }

    @Override // u.e
    public void updateFromSolver(C1533f c1533f, boolean z6) {
        if (getParent() == null) {
            return;
        }
        int objectVariableValue = c1533f.getObjectVariableValue(this.f20212t0);
        if (this.f20213u0 == 1) {
            setX(objectVariableValue);
            setY(0);
            setHeight(getParent().getHeight());
            setWidth(0);
            return;
        }
        setX(0);
        setY(objectVariableValue);
        setWidth(getParent().getWidth());
        setHeight(0);
    }

    @Override // u.e
    public d getAnchor(ConstraintAnchor$Type constraintAnchor$Type) {
        int ordinal = constraintAnchor$Type.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        return null;
                    }
                }
            }
            if (this.f20213u0 == 0) {
                return this.f20212t0;
            }
            return null;
        }
        if (this.f20213u0 == 1) {
            return this.f20212t0;
        }
        return null;
    }
}
