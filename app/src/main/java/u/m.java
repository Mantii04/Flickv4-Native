package u;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.HashSet;
import v.C1713b;
import v.InterfaceC1714c;
import x.C1795a;

/* loaded from: classes.dex */
public abstract class m extends k {

    /* renamed from: s0, reason: collision with root package name */
    public int f20221s0 = 0;

    /* renamed from: t0, reason: collision with root package name */
    public int f20222t0 = 0;

    /* renamed from: u0, reason: collision with root package name */
    public int f20223u0 = 0;

    /* renamed from: v0, reason: collision with root package name */
    public int f20224v0 = 0;

    /* renamed from: w0, reason: collision with root package name */
    public int f20225w0 = 0;

    /* renamed from: x0, reason: collision with root package name */
    public int f20226x0 = 0;

    /* renamed from: y0, reason: collision with root package name */
    public boolean f20227y0 = false;

    /* renamed from: z0, reason: collision with root package name */
    public int f20228z0 = 0;

    /* renamed from: A0, reason: collision with root package name */
    public int f20218A0 = 0;

    /* renamed from: B0, reason: collision with root package name */
    public final C1713b f20219B0 = new C1713b();

    /* renamed from: C0, reason: collision with root package name */
    public InterfaceC1714c f20220C0 = null;

    public void applyRtl(boolean z6) {
        int i2 = this.f20223u0;
        if (i2 > 0 || this.f20224v0 > 0) {
            if (z6) {
                this.f20225w0 = this.f20224v0;
                this.f20226x0 = i2;
            } else {
                this.f20225w0 = i2;
                this.f20226x0 = this.f20224v0;
            }
        }
    }

    public void captureWidgets() {
        for (int i2 = 0; i2 < this.f20216r0; i2++) {
            e eVar = this.f20215q0[i2];
            if (eVar != null) {
                eVar.setInVirtualLayout(true);
            }
        }
    }

    public boolean contains(HashSet<e> hashSet) {
        for (int i2 = 0; i2 < this.f20216r0; i2++) {
            if (hashSet.contains(this.f20215q0[i2])) {
                return true;
            }
        }
        return false;
    }

    public int getMeasuredHeight() {
        return this.f20218A0;
    }

    public int getMeasuredWidth() {
        return this.f20228z0;
    }

    public int getPaddingBottom() {
        return this.f20222t0;
    }

    public int getPaddingLeft() {
        return this.f20225w0;
    }

    public int getPaddingRight() {
        return this.f20226x0;
    }

    public int getPaddingTop() {
        return this.f20221s0;
    }

    public abstract void measure(int i2, int i7, int i8, int i9);

    public void measure(e eVar, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, int i2, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2, int i7) {
        while (this.f20220C0 == null && getParent() != null) {
            this.f20220C0 = ((f) getParent()).getMeasurer();
        }
        C1713b c1713b = this.f20219B0;
        c1713b.f20330a = constraintWidget$DimensionBehaviour;
        c1713b.f20331b = constraintWidget$DimensionBehaviour2;
        c1713b.f20332c = i2;
        c1713b.f20333d = i7;
        ((C1795a) this.f20220C0).measure(eVar, c1713b);
        eVar.setWidth(c1713b.f20334e);
        eVar.setHeight(c1713b.f20335f);
        eVar.setHasBaseline(c1713b.f20337h);
        eVar.setBaselineDistance(c1713b.f20336g);
    }

    public boolean measureChildren() {
        e eVar = this.f20097U;
        InterfaceC1714c measurer = eVar != null ? ((f) eVar).getMeasurer() : null;
        if (measurer == null) {
            return false;
        }
        for (int i2 = 0; i2 < this.f20216r0; i2++) {
            e eVar2 = this.f20215q0[i2];
            if (eVar2 != null && !(eVar2 instanceof i)) {
                ConstraintWidget$DimensionBehaviour dimensionBehaviour = eVar2.getDimensionBehaviour(0);
                ConstraintWidget$DimensionBehaviour dimensionBehaviour2 = eVar2.getDimensionBehaviour(1);
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5241f;
                if (dimensionBehaviour != constraintWidget$DimensionBehaviour || eVar2.f20136r == 1 || dimensionBehaviour2 != constraintWidget$DimensionBehaviour || eVar2.f20137s == 1) {
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5240e;
                    if (dimensionBehaviour == constraintWidget$DimensionBehaviour) {
                        dimensionBehaviour = constraintWidget$DimensionBehaviour2;
                    }
                    if (dimensionBehaviour2 == constraintWidget$DimensionBehaviour) {
                        dimensionBehaviour2 = constraintWidget$DimensionBehaviour2;
                    }
                    C1713b c1713b = this.f20219B0;
                    c1713b.f20330a = dimensionBehaviour;
                    c1713b.f20331b = dimensionBehaviour2;
                    c1713b.f20332c = eVar2.getWidth();
                    c1713b.f20333d = eVar2.getHeight();
                    ((C1795a) measurer).measure(eVar2, c1713b);
                    eVar2.setWidth(c1713b.f20334e);
                    eVar2.setHeight(c1713b.f20335f);
                    eVar2.setBaselineDistance(c1713b.f20336g);
                }
            }
        }
        return true;
    }

    public boolean needSolverPass() {
        return this.f20227y0;
    }

    public void needsCallbackFromSolver(boolean z6) {
        this.f20227y0 = z6;
    }

    public void setMeasure(int i2, int i7) {
        this.f20228z0 = i2;
        this.f20218A0 = i7;
    }

    public void setPadding(int i2) {
        this.f20221s0 = i2;
        this.f20222t0 = i2;
        this.f20223u0 = i2;
        this.f20224v0 = i2;
    }

    public void setPaddingBottom(int i2) {
        this.f20222t0 = i2;
    }

    public void setPaddingEnd(int i2) {
        this.f20224v0 = i2;
    }

    public void setPaddingLeft(int i2) {
        this.f20225w0 = i2;
    }

    public void setPaddingRight(int i2) {
        this.f20226x0 = i2;
    }

    public void setPaddingStart(int i2) {
        this.f20223u0 = i2;
        this.f20225w0 = i2;
        this.f20226x0 = i2;
    }

    public void setPaddingTop(int i2) {
        this.f20221s0 = i2;
    }

    @Override // u.k, u.j
    public void updateConstraints(f fVar) {
        captureWidgets();
    }
}
