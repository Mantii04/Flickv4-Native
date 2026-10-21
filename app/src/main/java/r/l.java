package r;

import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class l extends C1530c {

    /* renamed from: f, reason: collision with root package name */
    public m[] f19695f;

    /* renamed from: g, reason: collision with root package name */
    public m[] f19696g;

    /* renamed from: h, reason: collision with root package name */
    public int f19697h;

    /* renamed from: i, reason: collision with root package name */
    public final C1538k f19698i;

    public l(C1531d c1531d) {
        super(c1531d);
        this.f19695f = new m[128];
        this.f19696g = new m[128];
        this.f19697h = 0;
        this.f19698i = new C1538k(this, this);
    }

    @Override // r.C1530c, r.InterfaceC1532e
    public void addError(m mVar) {
        C1538k c1538k = this.f19698i;
        c1538k.init(mVar);
        c1538k.reset();
        mVar.f19706q[mVar.f19702j] = 1.0f;
        c(mVar);
    }

    public final void c(m mVar) {
        int i2;
        int i7 = this.f19697h + 1;
        m[] mVarArr = this.f19695f;
        if (i7 > mVarArr.length) {
            m[] mVarArr2 = (m[]) Arrays.copyOf(mVarArr, mVarArr.length * 2);
            this.f19695f = mVarArr2;
            this.f19696g = (m[]) Arrays.copyOf(mVarArr2, mVarArr2.length * 2);
        }
        m[] mVarArr3 = this.f19695f;
        int i8 = this.f19697h;
        mVarArr3[i8] = mVar;
        int i9 = i8 + 1;
        this.f19697h = i9;
        if (i9 > 1 && mVarArr3[i8].f19700e > mVar.f19700e) {
            int i10 = 0;
            while (true) {
                i2 = this.f19697h;
                if (i10 >= i2) {
                    break;
                }
                this.f19696g[i10] = this.f19695f[i10];
                i10++;
            }
            Arrays.sort(this.f19696g, 0, i2, new C1537j());
            for (int i11 = 0; i11 < this.f19697h; i11++) {
                this.f19695f[i11] = this.f19696g[i11];
            }
        }
        mVar.f19699b = true;
        mVar.addToRow(this);
    }

    @Override // r.C1530c, r.InterfaceC1532e
    public void clear() {
        this.f19697h = 0;
        this.f19667b = 0.0f;
    }

    public final void d(m mVar) {
        int i2 = 0;
        while (i2 < this.f19697h) {
            if (this.f19695f[i2] == mVar) {
                while (true) {
                    int i7 = this.f19697h;
                    if (i2 >= i7 - 1) {
                        this.f19697h = i7 - 1;
                        mVar.f19699b = false;
                        return;
                    } else {
                        m[] mVarArr = this.f19695f;
                        int i8 = i2 + 1;
                        mVarArr[i2] = mVarArr[i8];
                        i2 = i8;
                    }
                }
            } else {
                i2++;
            }
        }
    }

    @Override // r.C1530c, r.InterfaceC1532e
    public m getPivotCandidate(C1533f c1533f, boolean[] zArr) {
        int i2 = -1;
        for (int i7 = 0; i7 < this.f19697h; i7++) {
            m mVar = this.f19695f[i7];
            if (!zArr[mVar.f19700e]) {
                C1538k c1538k = this.f19698i;
                c1538k.init(mVar);
                if (i2 == -1) {
                    if (!c1538k.isNegative()) {
                    }
                    i2 = i7;
                } else {
                    if (!c1538k.isSmallerThan(this.f19695f[i2])) {
                    }
                    i2 = i7;
                }
            }
        }
        if (i2 == -1) {
            return null;
        }
        return this.f19695f[i2];
    }

    @Override // r.C1530c, r.InterfaceC1532e
    public boolean isEmpty() {
        return this.f19697h == 0;
    }

    @Override // r.C1530c
    public String toString() {
        String str = " goal -> (" + this.f19667b + ") : ";
        for (int i2 = 0; i2 < this.f19697h; i2++) {
            m mVar = this.f19695f[i2];
            C1538k c1538k = this.f19698i;
            c1538k.init(mVar);
            str = str + c1538k + StringUtils.SPACE;
        }
        return str;
    }

    @Override // r.C1530c
    public void updateFromRow(C1533f c1533f, C1530c c1530c, boolean z6) {
        m mVar = c1530c.f19666a;
        if (mVar == null) {
            return;
        }
        InterfaceC1529b interfaceC1529b = c1530c.f19669d;
        int currentSize = interfaceC1529b.getCurrentSize();
        for (int i2 = 0; i2 < currentSize; i2++) {
            m variable = interfaceC1529b.getVariable(i2);
            float variableValue = interfaceC1529b.getVariableValue(i2);
            C1538k c1538k = this.f19698i;
            c1538k.init(variable);
            if (c1538k.addToGoal(mVar, variableValue)) {
                c(variable);
            }
            this.f19667b = (c1530c.f19667b * variableValue) + this.f19667b;
        }
        d(mVar);
    }
}
