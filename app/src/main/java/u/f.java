package u;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
import r.C1533f;
import v.C1713b;
import v.InterfaceC1714c;
import x.C1795a;

/* loaded from: classes.dex */
public final class f extends n {

    /* renamed from: t0, reason: collision with root package name */
    public int f20159t0;

    /* renamed from: x0, reason: collision with root package name */
    public int f20163x0;

    /* renamed from: y0, reason: collision with root package name */
    public int f20164y0;

    /* renamed from: r0, reason: collision with root package name */
    public final v.d f20157r0 = new v.d(this);

    /* renamed from: s0, reason: collision with root package name */
    public final v.g f20158s0 = new v.g(this);

    /* renamed from: u0, reason: collision with root package name */
    public InterfaceC1714c f20160u0 = null;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f20161v0 = false;

    /* renamed from: w0, reason: collision with root package name */
    public final C1533f f20162w0 = new C1533f();

    /* renamed from: z0, reason: collision with root package name */
    public int f20165z0 = 0;

    /* renamed from: A0, reason: collision with root package name */
    public int f20145A0 = 0;

    /* renamed from: B0, reason: collision with root package name */
    public c[] f20146B0 = new c[4];

    /* renamed from: C0, reason: collision with root package name */
    public c[] f20147C0 = new c[4];

    /* renamed from: D0, reason: collision with root package name */
    public int f20148D0 = 257;

    /* renamed from: E0, reason: collision with root package name */
    public boolean f20149E0 = false;

    /* renamed from: F0, reason: collision with root package name */
    public boolean f20150F0 = false;

    /* renamed from: G0, reason: collision with root package name */
    public WeakReference f20151G0 = null;

    /* renamed from: H0, reason: collision with root package name */
    public WeakReference f20152H0 = null;

    /* renamed from: I0, reason: collision with root package name */
    public WeakReference f20153I0 = null;

    /* renamed from: J0, reason: collision with root package name */
    public WeakReference f20154J0 = null;

    /* renamed from: K0, reason: collision with root package name */
    public final HashSet f20155K0 = new HashSet();

    /* renamed from: L0, reason: collision with root package name */
    public final C1713b f20156L0 = new C1713b();

    public boolean addChildrenToSolver(C1533f c1533f) {
        f fVar;
        C1533f c1533f2;
        boolean optimizeFor = optimizeFor(64);
        addToSolver(c1533f, optimizeFor);
        int size = this.f20229q0.size();
        boolean z6 = false;
        for (int i2 = 0; i2 < size; i2++) {
            e eVar = (e) this.f20229q0.get(i2);
            eVar.setInBarrier(0, false);
            eVar.setInBarrier(1, false);
            if (eVar instanceof C1658a) {
                z6 = true;
            }
        }
        if (z6) {
            for (int i7 = 0; i7 < size; i7++) {
                e eVar2 = (e) this.f20229q0.get(i7);
                if (eVar2 instanceof C1658a) {
                    ((C1658a) eVar2).markWidgets();
                }
            }
        }
        HashSet<e> hashSet = this.f20155K0;
        hashSet.clear();
        for (int i8 = 0; i8 < size; i8++) {
            e eVar3 = (e) this.f20229q0.get(i8);
            eVar3.getClass();
            boolean z7 = eVar3 instanceof m;
            if (z7 || (eVar3 instanceof i)) {
                if (z7) {
                    hashSet.add(eVar3);
                } else {
                    eVar3.addToSolver(c1533f, optimizeFor);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator<e> it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                m mVar = (m) it.next();
                if (mVar.contains(hashSet)) {
                    mVar.addToSolver(c1533f, optimizeFor);
                    hashSet.remove(mVar);
                    break;
                }
            }
            if (size2 == hashSet.size()) {
                Iterator<e> it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    it2.next().addToSolver(c1533f, optimizeFor);
                }
                hashSet.clear();
            }
        }
        boolean z8 = C1533f.f19674p;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.f5240e;
        if (z8) {
            HashSet<e> hashSet2 = new HashSet<>();
            for (int i9 = 0; i9 < size; i9++) {
                e eVar4 = (e) this.f20229q0.get(i9);
                eVar4.getClass();
                if (!(eVar4 instanceof m) && !(eVar4 instanceof i)) {
                    hashSet2.add(eVar4);
                }
            }
            fVar = this;
            c1533f2 = c1533f;
            fVar.addChildrenToSolverByDependency(this, c1533f2, hashSet2, getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour ? 0 : 1, false);
            Iterator<e> it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                e next = it3.next();
                l.a(this, c1533f2, next);
                next.addToSolver(c1533f2, optimizeFor);
            }
        } else {
            fVar = this;
            c1533f2 = c1533f;
            for (int i10 = 0; i10 < size; i10++) {
                e eVar5 = (e) fVar.f20229q0.get(i10);
                if (eVar5 instanceof f) {
                    ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = eVar5.f20096T;
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviourArr[0];
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = constraintWidget$DimensionBehaviourArr[1];
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.f5239b;
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour) {
                        eVar5.setHorizontalDimensionBehaviour(constraintWidget$DimensionBehaviour4);
                    }
                    if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour) {
                        eVar5.setVerticalDimensionBehaviour(constraintWidget$DimensionBehaviour4);
                    }
                    eVar5.addToSolver(c1533f2, optimizeFor);
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour) {
                        eVar5.setHorizontalDimensionBehaviour(constraintWidget$DimensionBehaviour2);
                    }
                    if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour) {
                        eVar5.setVerticalDimensionBehaviour(constraintWidget$DimensionBehaviour3);
                    }
                } else {
                    l.a(this, c1533f2, eVar5);
                    if (!(eVar5 instanceof m) && !(eVar5 instanceof i)) {
                        eVar5.addToSolver(c1533f2, optimizeFor);
                    }
                }
            }
        }
        if (fVar.f20165z0 > 0) {
            AbstractC1659b.applyChainConstraints(this, c1533f2, null, 0);
        }
        if (fVar.f20145A0 > 0) {
            AbstractC1659b.applyChainConstraints(this, c1533f2, null, 1);
        }
        return true;
    }

    public void addHorizontalWrapMaxVariable(d dVar) {
        WeakReference weakReference = this.f20154J0;
        if (weakReference == null || weakReference.get() == null || dVar.getFinalValue() > ((d) this.f20154J0.get()).getFinalValue()) {
            this.f20154J0 = new WeakReference(dVar);
        }
    }

    public void addHorizontalWrapMinVariable(d dVar) {
        WeakReference weakReference = this.f20152H0;
        if (weakReference == null || weakReference.get() == null || dVar.getFinalValue() > ((d) this.f20152H0.get()).getFinalValue()) {
            this.f20152H0 = new WeakReference(dVar);
        }
    }

    public boolean directMeasure(boolean z6) {
        return this.f20158s0.directMeasure(z6);
    }

    public boolean directMeasureSetup(boolean z6) {
        return this.f20158s0.directMeasureSetup(z6);
    }

    public boolean directMeasureWithOrientation(boolean z6, int i2) {
        return this.f20158s0.directMeasureWithOrientation(z6, i2);
    }

    public final void g(e eVar, int i2) {
        if (i2 == 0) {
            int i7 = this.f20165z0 + 1;
            c[] cVarArr = this.f20147C0;
            if (i7 >= cVarArr.length) {
                this.f20147C0 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
            }
            this.f20147C0[this.f20165z0] = new c(eVar, 0, isRtl());
            this.f20165z0++;
            return;
        }
        if (i2 == 1) {
            int i8 = this.f20145A0 + 1;
            c[] cVarArr2 = this.f20146B0;
            if (i8 >= cVarArr2.length) {
                this.f20146B0 = (c[]) Arrays.copyOf(cVarArr2, cVarArr2.length * 2);
            }
            this.f20146B0[this.f20145A0] = new c(eVar, 1, isRtl());
            this.f20145A0++;
        }
    }

    public InterfaceC1714c getMeasurer() {
        return this.f20160u0;
    }

    public int getOptimizationLevel() {
        return this.f20148D0;
    }

    @Override // u.e
    public void getSceneString(StringBuilder sb) {
        sb.append(this.f20121j + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.f20098V);
        sb.append(sb2.toString());
        sb.append(StringUtils.LF);
        sb.append("  actualHeight:" + this.f20099W);
        sb.append(StringUtils.LF);
        Iterator<e> it = getChildren().iterator();
        while (it.hasNext()) {
            it.next().getSceneString(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    public C1533f getSystem() {
        return this.f20162w0;
    }

    public boolean handlesInternalConstraints() {
        return false;
    }

    public void invalidateGraph() {
        this.f20158s0.invalidateGraph();
    }

    public void invalidateMeasures() {
        this.f20158s0.invalidateMeasures();
    }

    public boolean isHeightMeasuredTooSmall() {
        return this.f20150F0;
    }

    public boolean isRtl() {
        return this.f20161v0;
    }

    public boolean isWidthMeasuredTooSmall() {
        return this.f20149E0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0257 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0262 A[LOOP:4: B:129:0x0260->B:130:0x0262, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x023e  */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v37 */
    @Override // u.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void layout() {
        /*
            Method dump skipped, instructions count: 847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u.f.layout():void");
    }

    public long measure(int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14) {
        this.f20163x0 = i13;
        this.f20164y0 = i14;
        return this.f20157r0.solverMeasure(this, i2, i13, i14, i7, i8, i9, i10, i11, i12);
    }

    public boolean optimizeFor(int i2) {
        return (this.f20148D0 & i2) == i2;
    }

    @Override // u.n, u.e
    public void reset() {
        this.f20162w0.reset();
        this.f20163x0 = 0;
        this.f20164y0 = 0;
        super.reset();
    }

    public void setMeasurer(InterfaceC1714c interfaceC1714c) {
        this.f20160u0 = interfaceC1714c;
        this.f20158s0.setMeasurer(interfaceC1714c);
    }

    public void setOptimizationLevel(int i2) {
        this.f20148D0 = i2;
        C1533f.f19674p = optimizeFor(512);
    }

    public void setPass(int i2) {
        this.f20159t0 = i2;
    }

    public void setRtl(boolean z6) {
        this.f20161v0 = z6;
    }

    public boolean updateChildrenFromSolver(C1533f c1533f, boolean[] zArr) {
        zArr[2] = false;
        boolean optimizeFor = optimizeFor(64);
        updateFromSolver(c1533f, optimizeFor);
        int size = this.f20229q0.size();
        boolean z6 = false;
        for (int i2 = 0; i2 < size; i2++) {
            e eVar = (e) this.f20229q0.get(i2);
            eVar.updateFromSolver(c1533f, optimizeFor);
            if (eVar.hasDimensionOverride()) {
                z6 = true;
            }
        }
        return z6;
    }

    @Override // u.e
    public void updateFromRuns(boolean z6, boolean z7) {
        super.updateFromRuns(z6, z7);
        int size = this.f20229q0.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((e) this.f20229q0.get(i2)).updateFromRuns(z6, z7);
        }
    }

    public void updateHierarchy() {
        this.f20157r0.updateHierarchy(this);
    }

    public static boolean measure(int i2, e eVar, InterfaceC1714c interfaceC1714c, C1713b c1713b, int i7) {
        int i8;
        int i9;
        if (interfaceC1714c == null) {
            return false;
        }
        if (eVar.getVisibility() != 8 && !(eVar instanceof i) && !(eVar instanceof C1658a)) {
            c1713b.f20330a = eVar.getHorizontalDimensionBehaviour();
            c1713b.f20331b = eVar.getVerticalDimensionBehaviour();
            c1713b.f20332c = eVar.getWidth();
            c1713b.f20333d = eVar.getHeight();
            c1713b.f20338i = false;
            c1713b.f20339j = i7;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = c1713b.f20330a;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.f5241f;
            boolean z6 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2;
            boolean z7 = c1713b.f20331b == constraintWidget$DimensionBehaviour2;
            boolean z8 = z6 && eVar.f20100X > 0.0f;
            boolean z9 = z7 && eVar.f20100X > 0.0f;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.f5240e;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.f5239b;
            if (z6 && eVar.hasDanglingDimension(0) && eVar.f20136r == 0 && !z8) {
                c1713b.f20330a = constraintWidget$DimensionBehaviour3;
                if (z7 && eVar.f20137s == 0) {
                    c1713b.f20330a = constraintWidget$DimensionBehaviour4;
                }
                z6 = false;
            }
            if (z7 && eVar.hasDanglingDimension(1) && eVar.f20137s == 0 && !z9) {
                c1713b.f20331b = constraintWidget$DimensionBehaviour3;
                if (z6 && eVar.f20136r == 0) {
                    c1713b.f20331b = constraintWidget$DimensionBehaviour4;
                }
                z7 = false;
            }
            if (eVar.isResolvedHorizontally()) {
                c1713b.f20330a = constraintWidget$DimensionBehaviour4;
                z6 = false;
            }
            if (eVar.isResolvedVertically()) {
                c1713b.f20331b = constraintWidget$DimensionBehaviour4;
                z7 = false;
            }
            int[] iArr = eVar.f20138t;
            if (z8) {
                if (iArr[0] == 4) {
                    c1713b.f20330a = constraintWidget$DimensionBehaviour4;
                } else if (!z7) {
                    if (c1713b.f20331b == constraintWidget$DimensionBehaviour4) {
                        i9 = c1713b.f20333d;
                    } else {
                        c1713b.f20330a = constraintWidget$DimensionBehaviour3;
                        ((C1795a) interfaceC1714c).measure(eVar, c1713b);
                        i9 = c1713b.f20335f;
                    }
                    c1713b.f20330a = constraintWidget$DimensionBehaviour4;
                    c1713b.f20332c = (int) (eVar.getDimensionRatio() * i9);
                }
            }
            if (z9) {
                if (iArr[1] == 4) {
                    c1713b.f20331b = constraintWidget$DimensionBehaviour4;
                } else if (!z6) {
                    if (c1713b.f20330a == constraintWidget$DimensionBehaviour4) {
                        i8 = c1713b.f20332c;
                    } else {
                        c1713b.f20331b = constraintWidget$DimensionBehaviour3;
                        ((C1795a) interfaceC1714c).measure(eVar, c1713b);
                        i8 = c1713b.f20334e;
                    }
                    c1713b.f20331b = constraintWidget$DimensionBehaviour4;
                    if (eVar.getDimensionRatioSide() == -1) {
                        c1713b.f20333d = (int) (i8 / eVar.getDimensionRatio());
                    } else {
                        c1713b.f20333d = (int) (eVar.getDimensionRatio() * i8);
                    }
                }
            }
            ((C1795a) interfaceC1714c).measure(eVar, c1713b);
            eVar.setWidth(c1713b.f20334e);
            eVar.setHeight(c1713b.f20335f);
            eVar.setHasBaseline(c1713b.f20337h);
            eVar.setBaselineDistance(c1713b.f20336g);
            c1713b.f20339j = 0;
            return c1713b.f20338i;
        }
        c1713b.f20334e = 0;
        c1713b.f20335f = 0;
        return false;
    }
}
