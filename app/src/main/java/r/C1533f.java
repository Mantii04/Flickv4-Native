package r;

import androidx.constraintlayout.core.SolverVariable$Type;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import java.util.Arrays;

/* renamed from: r.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1533f {

    /* renamed from: p, reason: collision with root package name */
    public static boolean f19674p = false;

    /* renamed from: q, reason: collision with root package name */
    public static int f19675q = 1000;

    /* renamed from: c, reason: collision with root package name */
    public final l f19678c;

    /* renamed from: f, reason: collision with root package name */
    public C1530c[] f19681f;

    /* renamed from: l, reason: collision with root package name */
    public final C1531d f19687l;

    /* renamed from: o, reason: collision with root package name */
    public C1530c f19690o;

    /* renamed from: a, reason: collision with root package name */
    public boolean f19676a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f19677b = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f19679d = 32;

    /* renamed from: e, reason: collision with root package name */
    public int f19680e = 32;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19682g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean[] f19683h = new boolean[32];

    /* renamed from: i, reason: collision with root package name */
    public int f19684i = 1;

    /* renamed from: j, reason: collision with root package name */
    public int f19685j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f19686k = 32;

    /* renamed from: m, reason: collision with root package name */
    public m[] f19688m = new m[f19675q];

    /* renamed from: n, reason: collision with root package name */
    public int f19689n = 0;

    public C1533f() {
        this.f19681f = null;
        this.f19681f = new C1530c[32];
        g();
        C1531d c1531d = new C1531d();
        this.f19687l = c1531d;
        this.f19678c = new l(c1531d);
        this.f19690o = new C1530c(c1531d);
    }

    public static C1530c createRowDimensionPercent(C1533f c1533f, m mVar, m mVar2, float f3) {
        C1530c createRow = c1533f.createRow();
        createRow.f19669d.put(mVar, -1.0f);
        createRow.f19669d.put(mVar2, f3);
        return createRow;
    }

    public static AbstractC1534g getMetrics() {
        return null;
    }

    public final m a(SolverVariable$Type solverVariable$Type, String str) {
        m mVar = (m) this.f19687l.f19672b.acquire();
        if (mVar == null) {
            mVar = new m(solverVariable$Type, str);
            mVar.setType(solverVariable$Type, str);
        } else {
            mVar.reset();
            mVar.setType(solverVariable$Type, str);
        }
        int i2 = this.f19689n;
        int i7 = f19675q;
        if (i2 >= i7) {
            int i8 = i7 * 2;
            f19675q = i8;
            this.f19688m = (m[]) Arrays.copyOf(this.f19688m, i8);
        }
        m[] mVarArr = this.f19688m;
        int i9 = this.f19689n;
        this.f19689n = i9 + 1;
        mVarArr[i9] = mVar;
        return mVar;
    }

    public void addCenterPoint(u.e eVar, u.e eVar2, float f3, int i2) {
        ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.f5230b;
        m createObjectVariable = createObjectVariable(eVar.getAnchor(constraintAnchor$Type));
        ConstraintAnchor$Type constraintAnchor$Type2 = ConstraintAnchor$Type.f5231e;
        m createObjectVariable2 = createObjectVariable(eVar.getAnchor(constraintAnchor$Type2));
        ConstraintAnchor$Type constraintAnchor$Type3 = ConstraintAnchor$Type.f5232f;
        m createObjectVariable3 = createObjectVariable(eVar.getAnchor(constraintAnchor$Type3));
        ConstraintAnchor$Type constraintAnchor$Type4 = ConstraintAnchor$Type.f5233j;
        m createObjectVariable4 = createObjectVariable(eVar.getAnchor(constraintAnchor$Type4));
        m createObjectVariable5 = createObjectVariable(eVar2.getAnchor(constraintAnchor$Type));
        m createObjectVariable6 = createObjectVariable(eVar2.getAnchor(constraintAnchor$Type2));
        m createObjectVariable7 = createObjectVariable(eVar2.getAnchor(constraintAnchor$Type3));
        m createObjectVariable8 = createObjectVariable(eVar2.getAnchor(constraintAnchor$Type4));
        C1530c createRow = createRow();
        double d7 = f3;
        double d8 = i2;
        createRow.createRowWithAngle(createObjectVariable2, createObjectVariable4, createObjectVariable6, createObjectVariable8, (float) (Math.sin(d7) * d8));
        addConstraint(createRow);
        C1530c createRow2 = createRow();
        createRow2.createRowWithAngle(createObjectVariable, createObjectVariable3, createObjectVariable5, createObjectVariable7, (float) (Math.cos(d7) * d8));
        addConstraint(createRow2);
    }

    public void addCentering(m mVar, m mVar2, int i2, float f3, m mVar3, m mVar4, int i7, int i8) {
        C1530c createRow = createRow();
        if (mVar2 == mVar3) {
            createRow.f19669d.put(mVar, 1.0f);
            createRow.f19669d.put(mVar4, 1.0f);
            createRow.f19669d.put(mVar2, -2.0f);
        } else if (f3 == 0.5f) {
            createRow.f19669d.put(mVar, 1.0f);
            createRow.f19669d.put(mVar2, -1.0f);
            createRow.f19669d.put(mVar3, -1.0f);
            createRow.f19669d.put(mVar4, 1.0f);
            if (i2 > 0 || i7 > 0) {
                createRow.f19667b = (-i2) + i7;
            }
        } else if (f3 <= 0.0f) {
            createRow.f19669d.put(mVar, -1.0f);
            createRow.f19669d.put(mVar2, 1.0f);
            createRow.f19667b = i2;
        } else if (f3 >= 1.0f) {
            createRow.f19669d.put(mVar4, -1.0f);
            createRow.f19669d.put(mVar3, 1.0f);
            createRow.f19667b = -i7;
        } else {
            float f7 = 1.0f - f3;
            createRow.f19669d.put(mVar, f7 * 1.0f);
            createRow.f19669d.put(mVar2, f7 * (-1.0f));
            createRow.f19669d.put(mVar3, (-1.0f) * f3);
            createRow.f19669d.put(mVar4, 1.0f * f3);
            if (i2 > 0 || i7 > 0) {
                createRow.f19667b = (i7 * f3) + ((-i2) * f7);
            }
        }
        if (i8 != 8) {
            createRow.addError(this, i8);
        }
        addConstraint(createRow);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
    
        if (r15.f19710u <= 1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006c, code lost:
    
        if (r15.f19710u <= 1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0081, code lost:
    
        if (r15.f19710u <= 1) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0084, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008e, code lost:
    
        if (r15.f19710u <= 1) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addConstraint(r.C1530c r17) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: r.C1533f.addConstraint(r.c):void");
    }

    public C1530c addEquality(m mVar, m mVar2, int i2, int i7) {
        if (i7 == 8 && mVar2.f19704n && mVar.f19701f == -1) {
            mVar.setFinalValue(this, mVar2.f19703m + i2);
            return null;
        }
        C1530c createRow = createRow();
        createRow.createRowEquals(mVar, mVar2, i2);
        if (i7 != 8) {
            createRow.addError(this, i7);
        }
        addConstraint(createRow);
        return createRow;
    }

    public void addGreaterBarrier(m mVar, m mVar2, int i2, boolean z6) {
        C1530c createRow = createRow();
        m createSlackVariable = createSlackVariable();
        createSlackVariable.f19702j = 0;
        createRow.createRowGreaterThan(mVar, mVar2, createSlackVariable, i2);
        addConstraint(createRow);
    }

    public void addGreaterThan(m mVar, m mVar2, int i2, int i7) {
        C1530c createRow = createRow();
        m createSlackVariable = createSlackVariable();
        createSlackVariable.f19702j = 0;
        createRow.createRowGreaterThan(mVar, mVar2, createSlackVariable, i2);
        if (i7 != 8) {
            createRow.f19669d.put(createErrorVariable(i7, null), (int) (createRow.f19669d.get(createSlackVariable) * (-1.0f)));
        }
        addConstraint(createRow);
    }

    public void addLowerBarrier(m mVar, m mVar2, int i2, boolean z6) {
        C1530c createRow = createRow();
        m createSlackVariable = createSlackVariable();
        createSlackVariable.f19702j = 0;
        createRow.createRowLowerThan(mVar, mVar2, createSlackVariable, i2);
        addConstraint(createRow);
    }

    public void addLowerThan(m mVar, m mVar2, int i2, int i7) {
        C1530c createRow = createRow();
        m createSlackVariable = createSlackVariable();
        createSlackVariable.f19702j = 0;
        createRow.createRowLowerThan(mVar, mVar2, createSlackVariable, i2);
        if (i7 != 8) {
            createRow.f19669d.put(createErrorVariable(i7, null), (int) (createRow.f19669d.get(createSlackVariable) * (-1.0f)));
        }
        addConstraint(createRow);
    }

    public void addRatio(m mVar, m mVar2, m mVar3, m mVar4, float f3, int i2) {
        C1530c createRow = createRow();
        createRow.createRowDimensionRatio(mVar, mVar2, mVar3, mVar4, f3);
        if (i2 != 8) {
            createRow.addError(this, i2);
        }
        addConstraint(createRow);
    }

    public final void b(C1530c c1530c) {
        int i2;
        if (c1530c.f19670e) {
            c1530c.f19666a.setFinalValue(this, c1530c.f19667b);
        } else {
            C1530c[] c1530cArr = this.f19681f;
            int i7 = this.f19685j;
            c1530cArr[i7] = c1530c;
            m mVar = c1530c.f19666a;
            mVar.f19701f = i7;
            this.f19685j = i7 + 1;
            mVar.updateReferencesWithNewDefinition(this, c1530c);
        }
        if (this.f19676a) {
            int i8 = 0;
            while (i8 < this.f19685j) {
                if (this.f19681f[i8] == null) {
                    System.out.println("WTF");
                }
                C1530c c1530c2 = this.f19681f[i8];
                if (c1530c2 != null && c1530c2.f19670e) {
                    c1530c2.f19666a.setFinalValue(this, c1530c2.f19667b);
                    this.f19687l.f19671a.release(c1530c2);
                    this.f19681f[i8] = null;
                    int i9 = i8 + 1;
                    int i10 = i9;
                    while (true) {
                        i2 = this.f19685j;
                        if (i9 >= i2) {
                            break;
                        }
                        C1530c[] c1530cArr2 = this.f19681f;
                        int i11 = i9 - 1;
                        C1530c c1530c3 = c1530cArr2[i9];
                        c1530cArr2[i11] = c1530c3;
                        m mVar2 = c1530c3.f19666a;
                        if (mVar2.f19701f == i9) {
                            mVar2.f19701f = i11;
                        }
                        i10 = i9;
                        i9++;
                    }
                    if (i10 < i2) {
                        this.f19681f[i10] = null;
                    }
                    this.f19685j = i2 - 1;
                    i8--;
                }
                i8++;
            }
            this.f19676a = false;
        }
    }

    public final void c() {
        for (int i2 = 0; i2 < this.f19685j; i2++) {
            C1530c c1530c = this.f19681f[i2];
            c1530c.f19666a.f19703m = c1530c.f19667b;
        }
    }

    public m createErrorVariable(int i2, String str) {
        if (this.f19684i + 1 >= this.f19680e) {
            d();
        }
        m a7 = a(SolverVariable$Type.f5227f, str);
        int i7 = this.f19677b + 1;
        this.f19677b = i7;
        this.f19684i++;
        a7.f19700e = i7;
        a7.f19702j = i2;
        this.f19687l.f19673c[i7] = a7;
        this.f19678c.addError(a7);
        return a7;
    }

    public m createExtraVariable() {
        if (this.f19684i + 1 >= this.f19680e) {
            d();
        }
        m a7 = a(SolverVariable$Type.f5226e, null);
        int i2 = this.f19677b + 1;
        this.f19677b = i2;
        this.f19684i++;
        a7.f19700e = i2;
        this.f19687l.f19673c[i2] = a7;
        return a7;
    }

    public m createObjectVariable(Object obj) {
        m mVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f19684i + 1 >= this.f19680e) {
            d();
        }
        if (obj instanceof u.d) {
            u.d dVar = (u.d) obj;
            mVar = dVar.getSolverVariable();
            C1531d c1531d = this.f19687l;
            if (mVar == null) {
                dVar.resetSolverVariable(c1531d);
                mVar = dVar.getSolverVariable();
            }
            int i2 = mVar.f19700e;
            if (i2 != -1 && i2 <= this.f19677b && c1531d.f19673c[i2] != null) {
                return mVar;
            }
            if (i2 != -1) {
                mVar.reset();
            }
            int i7 = this.f19677b + 1;
            this.f19677b = i7;
            this.f19684i++;
            mVar.f19700e = i7;
            mVar.f19707r = SolverVariable$Type.f5225b;
            c1531d.f19673c[i7] = mVar;
        }
        return mVar;
    }

    public C1530c createRow() {
        C1531d c1531d = this.f19687l;
        C1530c c1530c = (C1530c) c1531d.f19671a.acquire();
        if (c1530c == null) {
            return new C1530c(c1531d);
        }
        c1530c.reset();
        return c1530c;
    }

    public m createSlackVariable() {
        if (this.f19684i + 1 >= this.f19680e) {
            d();
        }
        m a7 = a(SolverVariable$Type.f5226e, null);
        int i2 = this.f19677b + 1;
        this.f19677b = i2;
        this.f19684i++;
        a7.f19700e = i2;
        this.f19687l.f19673c[i2] = a7;
        return a7;
    }

    public final void d() {
        int i2 = this.f19679d * 2;
        this.f19679d = i2;
        this.f19681f = (C1530c[]) Arrays.copyOf(this.f19681f, i2);
        C1531d c1531d = this.f19687l;
        c1531d.f19673c = (m[]) Arrays.copyOf(c1531d.f19673c, this.f19679d);
        int i7 = this.f19679d;
        this.f19683h = new boolean[i7];
        this.f19680e = i7;
        this.f19686k = i7;
    }

    public final void e(l lVar) {
        int i2 = 0;
        while (true) {
            if (i2 >= this.f19685j) {
                break;
            }
            C1530c c1530c = this.f19681f[i2];
            SolverVariable$Type solverVariable$Type = c1530c.f19666a.f19707r;
            SolverVariable$Type solverVariable$Type2 = SolverVariable$Type.f5225b;
            if (solverVariable$Type != solverVariable$Type2) {
                float f3 = 0.0f;
                if (c1530c.f19667b < 0.0f) {
                    boolean z6 = false;
                    int i7 = 0;
                    while (!z6) {
                        i7++;
                        float f7 = Float.MAX_VALUE;
                        int i8 = 0;
                        int i9 = -1;
                        int i10 = -1;
                        int i11 = 0;
                        while (i8 < this.f19685j) {
                            C1530c c1530c2 = this.f19681f[i8];
                            if (c1530c2.f19666a.f19707r != solverVariable$Type2 && !c1530c2.f19670e && c1530c2.f19667b < f3) {
                                int currentSize = c1530c2.f19669d.getCurrentSize();
                                int i12 = 0;
                                while (i12 < currentSize) {
                                    m variable = c1530c2.f19669d.getVariable(i12);
                                    float f8 = f3;
                                    float f9 = c1530c2.f19669d.get(variable);
                                    if (f9 > f8) {
                                        for (int i13 = 0; i13 < 9; i13++) {
                                            float f10 = variable.f19705p[i13] / f9;
                                            if ((f10 < f7 && i13 == i11) || i13 > i11) {
                                                i11 = i13;
                                                i10 = variable.f19700e;
                                                i9 = i8;
                                                f7 = f10;
                                            }
                                        }
                                    }
                                    i12++;
                                    f3 = f8;
                                }
                            }
                            i8++;
                            f3 = f3;
                        }
                        float f11 = f3;
                        if (i9 != -1) {
                            C1530c c1530c3 = this.f19681f[i9];
                            c1530c3.f19666a.f19701f = -1;
                            c1530c3.b(this.f19687l.f19673c[i10]);
                            m mVar = c1530c3.f19666a;
                            mVar.f19701f = i9;
                            mVar.updateReferencesWithNewDefinition(this, c1530c3);
                        } else {
                            z6 = true;
                        }
                        if (i7 > this.f19684i / 2) {
                            z6 = true;
                        }
                        f3 = f11;
                    }
                }
            }
            i2++;
        }
        f(lVar);
        c();
    }

    public final void f(C1530c c1530c) {
        for (int i2 = 0; i2 < this.f19684i; i2++) {
            this.f19683h[i2] = false;
        }
        boolean z6 = false;
        int i7 = 0;
        while (!z6) {
            i7++;
            if (i7 >= this.f19684i * 2) {
                return;
            }
            if (c1530c.getKey() != null) {
                this.f19683h[c1530c.getKey().f19700e] = true;
            }
            m pivotCandidate = c1530c.getPivotCandidate(this, this.f19683h);
            if (pivotCandidate != null) {
                boolean[] zArr = this.f19683h;
                int i8 = pivotCandidate.f19700e;
                if (zArr[i8]) {
                    return;
                } else {
                    zArr[i8] = true;
                }
            }
            if (pivotCandidate != null) {
                float f3 = Float.MAX_VALUE;
                int i9 = -1;
                for (int i10 = 0; i10 < this.f19685j; i10++) {
                    C1530c c1530c2 = this.f19681f[i10];
                    if (c1530c2.f19666a.f19707r != SolverVariable$Type.f5225b && !c1530c2.f19670e && c1530c2.f19669d.contains(pivotCandidate)) {
                        float f7 = c1530c2.f19669d.get(pivotCandidate);
                        if (f7 < 0.0f) {
                            float f8 = (-c1530c2.f19667b) / f7;
                            if (f8 < f3) {
                                i9 = i10;
                                f3 = f8;
                            }
                        }
                    }
                }
                if (i9 > -1) {
                    C1530c c1530c3 = this.f19681f[i9];
                    c1530c3.f19666a.f19701f = -1;
                    c1530c3.b(pivotCandidate);
                    m mVar = c1530c3.f19666a;
                    mVar.f19701f = i9;
                    mVar.updateReferencesWithNewDefinition(this, c1530c3);
                }
            } else {
                z6 = true;
            }
        }
    }

    public final void g() {
        for (int i2 = 0; i2 < this.f19685j; i2++) {
            C1530c c1530c = this.f19681f[i2];
            if (c1530c != null) {
                this.f19687l.f19671a.release(c1530c);
            }
            this.f19681f[i2] = null;
        }
    }

    public C1531d getCache() {
        return this.f19687l;
    }

    public int getObjectVariableValue(Object obj) {
        m solverVariable = ((u.d) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.f19703m + 0.5f);
        }
        return 0;
    }

    public void minimize() throws Exception {
        l lVar = this.f19678c;
        if (lVar.isEmpty()) {
            c();
            return;
        }
        if (!this.f19682g) {
            e(lVar);
            return;
        }
        for (int i2 = 0; i2 < this.f19685j; i2++) {
            if (!this.f19681f[i2].f19670e) {
                e(lVar);
                return;
            }
        }
        c();
    }

    public void reset() {
        C1531d c1531d;
        int i2 = 0;
        while (true) {
            c1531d = this.f19687l;
            m[] mVarArr = c1531d.f19673c;
            if (i2 >= mVarArr.length) {
                break;
            }
            m mVar = mVarArr[i2];
            if (mVar != null) {
                mVar.reset();
            }
            i2++;
        }
        c1531d.f19672b.releaseAll(this.f19688m, this.f19689n);
        this.f19689n = 0;
        Arrays.fill(c1531d.f19673c, (Object) null);
        this.f19677b = 0;
        this.f19678c.clear();
        this.f19684i = 1;
        for (int i7 = 0; i7 < this.f19685j; i7++) {
            C1530c c1530c = this.f19681f[i7];
        }
        g();
        this.f19685j = 0;
        this.f19690o = new C1530c(c1531d);
    }

    public void addEquality(m mVar, int i2) {
        int i7 = mVar.f19701f;
        if (i7 == -1) {
            mVar.setFinalValue(this, i2);
            for (int i8 = 0; i8 < this.f19677b + 1; i8++) {
                m mVar2 = this.f19687l.f19673c[i8];
            }
            return;
        }
        if (i7 != -1) {
            C1530c c1530c = this.f19681f[i7];
            if (c1530c.f19670e) {
                c1530c.f19667b = i2;
                return;
            }
            if (c1530c.f19669d.getCurrentSize() == 0) {
                c1530c.f19670e = true;
                c1530c.f19667b = i2;
                return;
            } else {
                C1530c createRow = createRow();
                createRow.createRowEquals(mVar, i2);
                addConstraint(createRow);
                return;
            }
        }
        C1530c createRow2 = createRow();
        createRow2.f19666a = mVar;
        float f3 = i2;
        mVar.f19703m = f3;
        createRow2.f19667b = f3;
        createRow2.f19670e = true;
        addConstraint(createRow2);
    }
}
