package r;

import androidx.constraintlayout.core.SolverVariable$Type;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class m implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public boolean f19699b;

    /* renamed from: m, reason: collision with root package name */
    public float f19703m;

    /* renamed from: r, reason: collision with root package name */
    public SolverVariable$Type f19707r;

    /* renamed from: e, reason: collision with root package name */
    public int f19700e = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f19701f = -1;

    /* renamed from: j, reason: collision with root package name */
    public int f19702j = 0;

    /* renamed from: n, reason: collision with root package name */
    public boolean f19704n = false;

    /* renamed from: p, reason: collision with root package name */
    public final float[] f19705p = new float[9];

    /* renamed from: q, reason: collision with root package name */
    public final float[] f19706q = new float[9];

    /* renamed from: s, reason: collision with root package name */
    public C1530c[] f19708s = new C1530c[16];

    /* renamed from: t, reason: collision with root package name */
    public int f19709t = 0;

    /* renamed from: u, reason: collision with root package name */
    public int f19710u = 0;

    public m(SolverVariable$Type solverVariable$Type, String str) {
        this.f19707r = solverVariable$Type;
    }

    public final void addToRow(C1530c c1530c) {
        int i2 = 0;
        while (true) {
            int i7 = this.f19709t;
            if (i2 >= i7) {
                C1530c[] c1530cArr = this.f19708s;
                if (i7 >= c1530cArr.length) {
                    this.f19708s = (C1530c[]) Arrays.copyOf(c1530cArr, c1530cArr.length * 2);
                }
                C1530c[] c1530cArr2 = this.f19708s;
                int i8 = this.f19709t;
                c1530cArr2[i8] = c1530c;
                this.f19709t = i8 + 1;
                return;
            }
            if (this.f19708s[i2] == c1530c) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final void removeFromRow(C1530c c1530c) {
        int i2 = this.f19709t;
        int i7 = 0;
        while (i7 < i2) {
            if (this.f19708s[i7] == c1530c) {
                while (i7 < i2 - 1) {
                    C1530c[] c1530cArr = this.f19708s;
                    int i8 = i7 + 1;
                    c1530cArr[i7] = c1530cArr[i8];
                    i7 = i8;
                }
                this.f19709t--;
                return;
            }
            i7++;
        }
    }

    public void reset() {
        this.f19707r = SolverVariable$Type.f5228j;
        this.f19702j = 0;
        this.f19700e = -1;
        this.f19701f = -1;
        this.f19703m = 0.0f;
        this.f19704n = false;
        int i2 = this.f19709t;
        for (int i7 = 0; i7 < i2; i7++) {
            this.f19708s[i7] = null;
        }
        this.f19709t = 0;
        this.f19710u = 0;
        this.f19699b = false;
        Arrays.fill(this.f19706q, 0.0f);
    }

    public void setFinalValue(C1533f c1533f, float f3) {
        this.f19703m = f3;
        this.f19704n = true;
        int i2 = this.f19709t;
        this.f19701f = -1;
        for (int i7 = 0; i7 < i2; i7++) {
            this.f19708s[i7].updateFromFinalVariable(c1533f, this, false);
        }
        this.f19709t = 0;
    }

    public void setType(SolverVariable$Type solverVariable$Type, String str) {
        this.f19707r = solverVariable$Type;
    }

    public String toString() {
        return "" + this.f19700e;
    }

    public final void updateReferencesWithNewDefinition(C1533f c1533f, C1530c c1530c) {
        int i2 = this.f19709t;
        for (int i7 = 0; i7 < i2; i7++) {
            this.f19708s[i7].updateFromRow(c1533f, c1530c, false);
        }
        this.f19709t = 0;
    }

    @Override // java.lang.Comparable
    public int compareTo(m mVar) {
        return this.f19700e - mVar.f19700e;
    }
}
