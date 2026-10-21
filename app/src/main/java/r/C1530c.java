package r;

import androidx.constraintlayout.core.SolverVariable$Type;
import java.util.ArrayList;

/* renamed from: r.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1530c implements InterfaceC1532e {

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC1529b f19669d;

    /* renamed from: a, reason: collision with root package name */
    public m f19666a = null;

    /* renamed from: b, reason: collision with root package name */
    public float f19667b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f19668c = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public boolean f19670e = false;

    public C1530c(C1531d c1531d) {
        this.f19669d = new C1528a(this, c1531d);
    }

    public final m a(boolean[] zArr, m mVar) {
        SolverVariable$Type solverVariable$Type;
        int currentSize = this.f19669d.getCurrentSize();
        m mVar2 = null;
        float f3 = 0.0f;
        for (int i2 = 0; i2 < currentSize; i2++) {
            float variableValue = this.f19669d.getVariableValue(i2);
            if (variableValue < 0.0f) {
                m variable = this.f19669d.getVariable(i2);
                if ((zArr == null || !zArr[variable.f19700e]) && variable != mVar && (((solverVariable$Type = variable.f19707r) == SolverVariable$Type.f5226e || solverVariable$Type == SolverVariable$Type.f5227f) && variableValue < f3)) {
                    f3 = variableValue;
                    mVar2 = variable;
                }
            }
        }
        return mVar2;
    }

    public C1530c addError(C1533f c1533f, int i2) {
        this.f19669d.put(c1533f.createErrorVariable(i2, "ep"), 1.0f);
        this.f19669d.put(c1533f.createErrorVariable(i2, "em"), -1.0f);
        return this;
    }

    public final void b(m mVar) {
        m mVar2 = this.f19666a;
        if (mVar2 != null) {
            this.f19669d.put(mVar2, -1.0f);
            this.f19666a.f19701f = -1;
            this.f19666a = null;
        }
        float remove = this.f19669d.remove(mVar, true) * (-1.0f);
        this.f19666a = mVar;
        if (remove == 1.0f) {
            return;
        }
        this.f19667b /= remove;
        this.f19669d.divideByAmount(remove);
    }

    @Override // r.InterfaceC1532e
    public void clear() {
        this.f19669d.clear();
        this.f19666a = null;
        this.f19667b = 0.0f;
    }

    public C1530c createRowDimensionRatio(m mVar, m mVar2, m mVar3, m mVar4, float f3) {
        this.f19669d.put(mVar, -1.0f);
        this.f19669d.put(mVar2, 1.0f);
        this.f19669d.put(mVar3, f3);
        this.f19669d.put(mVar4, -f3);
        return this;
    }

    public C1530c createRowEqualMatchDimensions(float f3, float f7, float f8, m mVar, m mVar2, m mVar3, m mVar4) {
        this.f19667b = 0.0f;
        if (f7 == 0.0f || f3 == f8) {
            this.f19669d.put(mVar, 1.0f);
            this.f19669d.put(mVar2, -1.0f);
            this.f19669d.put(mVar4, 1.0f);
            this.f19669d.put(mVar3, -1.0f);
            return this;
        }
        if (f3 == 0.0f) {
            this.f19669d.put(mVar, 1.0f);
            this.f19669d.put(mVar2, -1.0f);
            return this;
        }
        if (f8 == 0.0f) {
            this.f19669d.put(mVar3, 1.0f);
            this.f19669d.put(mVar4, -1.0f);
            return this;
        }
        float f9 = (f3 / f7) / (f8 / f7);
        this.f19669d.put(mVar, 1.0f);
        this.f19669d.put(mVar2, -1.0f);
        this.f19669d.put(mVar4, f9);
        this.f19669d.put(mVar3, -f9);
        return this;
    }

    public C1530c createRowEquals(m mVar, int i2) {
        if (i2 < 0) {
            this.f19667b = i2 * (-1);
            this.f19669d.put(mVar, 1.0f);
            return this;
        }
        this.f19667b = i2;
        this.f19669d.put(mVar, -1.0f);
        return this;
    }

    public C1530c createRowGreaterThan(m mVar, m mVar2, m mVar3, int i2) {
        boolean z6 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z6 = true;
            }
            this.f19667b = i2;
        }
        if (z6) {
            this.f19669d.put(mVar, 1.0f);
            this.f19669d.put(mVar2, -1.0f);
            this.f19669d.put(mVar3, -1.0f);
            return this;
        }
        this.f19669d.put(mVar, -1.0f);
        this.f19669d.put(mVar2, 1.0f);
        this.f19669d.put(mVar3, 1.0f);
        return this;
    }

    public C1530c createRowLowerThan(m mVar, m mVar2, m mVar3, int i2) {
        boolean z6 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z6 = true;
            }
            this.f19667b = i2;
        }
        if (z6) {
            this.f19669d.put(mVar, 1.0f);
            this.f19669d.put(mVar2, -1.0f);
            this.f19669d.put(mVar3, 1.0f);
            return this;
        }
        this.f19669d.put(mVar, -1.0f);
        this.f19669d.put(mVar2, 1.0f);
        this.f19669d.put(mVar3, -1.0f);
        return this;
    }

    public C1530c createRowWithAngle(m mVar, m mVar2, m mVar3, m mVar4, float f3) {
        this.f19669d.put(mVar3, 0.5f);
        this.f19669d.put(mVar4, 0.5f);
        this.f19669d.put(mVar, -0.5f);
        this.f19669d.put(mVar2, -0.5f);
        this.f19667b = -f3;
        return this;
    }

    public m getKey() {
        return this.f19666a;
    }

    @Override // r.InterfaceC1532e
    public m getPivotCandidate(C1533f c1533f, boolean[] zArr) {
        return a(zArr, null);
    }

    public void initFromRow(InterfaceC1532e interfaceC1532e) {
        if (interfaceC1532e instanceof C1530c) {
            C1530c c1530c = (C1530c) interfaceC1532e;
            this.f19666a = null;
            this.f19669d.clear();
            for (int i2 = 0; i2 < c1530c.f19669d.getCurrentSize(); i2++) {
                this.f19669d.add(c1530c.f19669d.getVariable(i2), c1530c.f19669d.getVariableValue(i2), true);
            }
        }
    }

    @Override // r.InterfaceC1532e
    public boolean isEmpty() {
        return this.f19666a == null && this.f19667b == 0.0f && this.f19669d.getCurrentSize() == 0;
    }

    public m pickPivot(m mVar) {
        return a(null, mVar);
    }

    public void reset() {
        this.f19666a = null;
        this.f19669d.clear();
        this.f19667b = 0.0f;
        this.f19670e = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r10 = this;
            r.m r0 = r10.f19666a
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L17
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            r.m r1 = r10.f19666a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L17:
            java.lang.String r1 = " = "
            java.lang.String r0 = A.i.B(r0, r1)
            float r1 = r10.f19667b
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L35
            java.lang.StringBuilder r0 = b.c.o(r0)
            float r1 = r10.f19667b
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = r3
            goto L36
        L35:
            r1 = r4
        L36:
            r.b r5 = r10.f19669d
            int r5 = r5.getCurrentSize()
        L3c:
            if (r4 >= r5) goto L9c
            r.b r6 = r10.f19669d
            r.m r6 = r6.getVariable(r4)
            if (r6 != 0) goto L47
            goto L99
        L47:
            r.b r7 = r10.f19669d
            float r7 = r7.getVariableValue(r4)
            int r8 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r8 != 0) goto L52
            goto L99
        L52:
            java.lang.String r6 = r6.toString()
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L66
            int r1 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r1 >= 0) goto L76
            java.lang.String r1 = "- "
            java.lang.String r0 = A.i.B(r0, r1)
        L64:
            float r7 = r7 * r9
            goto L76
        L66:
            if (r8 <= 0) goto L6f
            java.lang.String r1 = " + "
            java.lang.String r0 = A.i.B(r0, r1)
            goto L76
        L6f:
            java.lang.String r1 = " - "
            java.lang.String r0 = A.i.B(r0, r1)
            goto L64
        L76:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r1 != 0) goto L81
            java.lang.String r0 = A.i.B(r0, r6)
            goto L98
        L81:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r7)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        L98:
            r1 = r3
        L99:
            int r4 = r4 + 1
            goto L3c
        L9c:
            if (r1 != 0) goto La4
            java.lang.String r1 = "0.0"
            java.lang.String r0 = A.i.B(r0, r1)
        La4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: r.C1530c.toString():java.lang.String");
    }

    public void updateFromFinalVariable(C1533f c1533f, m mVar, boolean z6) {
        if (mVar == null || !mVar.f19704n) {
            return;
        }
        float f3 = this.f19669d.get(mVar);
        this.f19667b = (mVar.f19703m * f3) + this.f19667b;
        this.f19669d.remove(mVar, z6);
        if (z6) {
            mVar.removeFromRow(this);
        }
        if (this.f19669d.getCurrentSize() == 0) {
            this.f19670e = true;
            c1533f.f19676a = true;
        }
    }

    public void updateFromRow(C1533f c1533f, C1530c c1530c, boolean z6) {
        float use = this.f19669d.use(c1530c, z6);
        this.f19667b = (c1530c.f19667b * use) + this.f19667b;
        if (z6) {
            c1530c.f19666a.removeFromRow(this);
        }
        if (this.f19666a == null || this.f19669d.getCurrentSize() != 0) {
            return;
        }
        this.f19670e = true;
        c1533f.f19676a = true;
    }

    public void updateFromSystem(C1533f c1533f) {
        ArrayList arrayList;
        if (c1533f.f19681f.length == 0) {
            return;
        }
        boolean z6 = false;
        while (!z6) {
            int currentSize = this.f19669d.getCurrentSize();
            int i2 = 0;
            while (true) {
                arrayList = this.f19668c;
                if (i2 >= currentSize) {
                    break;
                }
                m variable = this.f19669d.getVariable(i2);
                if (variable.f19701f != -1 || variable.f19704n) {
                    arrayList.add(variable);
                }
                i2++;
            }
            int size = arrayList.size();
            if (size > 0) {
                for (int i7 = 0; i7 < size; i7++) {
                    m mVar = (m) arrayList.get(i7);
                    if (mVar.f19704n) {
                        updateFromFinalVariable(c1533f, mVar, true);
                    } else {
                        updateFromRow(c1533f, c1533f.f19681f[mVar.f19701f], true);
                    }
                }
                arrayList.clear();
            } else {
                z6 = true;
            }
        }
        if (this.f19666a == null || this.f19669d.getCurrentSize() != 0) {
            return;
        }
        this.f19670e = true;
        c1533f.f19676a = true;
    }

    @Override // r.InterfaceC1532e
    public void addError(m mVar) {
        int i2 = mVar.f19702j;
        float f3 = 1.0f;
        if (i2 != 1) {
            if (i2 == 2) {
                f3 = 1000.0f;
            } else if (i2 == 3) {
                f3 = 1000000.0f;
            } else if (i2 == 4) {
                f3 = 1.0E9f;
            } else if (i2 == 5) {
                f3 = 1.0E12f;
            }
        }
        this.f19669d.put(mVar, f3);
    }

    public C1530c createRowEquals(m mVar, m mVar2, int i2) {
        boolean z6 = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z6 = true;
            }
            this.f19667b = i2;
        }
        if (!z6) {
            this.f19669d.put(mVar, -1.0f);
            this.f19669d.put(mVar2, 1.0f);
            return this;
        }
        this.f19669d.put(mVar, 1.0f);
        this.f19669d.put(mVar2, -1.0f);
        return this;
    }
}
