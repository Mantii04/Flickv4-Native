package r;

import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;

/* renamed from: r.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1538k {

    /* renamed from: a, reason: collision with root package name */
    public m f19693a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f19694b;

    public C1538k(l lVar, l lVar2) {
        this.f19694b = lVar;
    }

    public boolean addToGoal(m mVar, float f3) {
        boolean z6 = true;
        if (!this.f19693a.f19699b) {
            for (int i2 = 0; i2 < 9; i2++) {
                float f7 = mVar.f19706q[i2];
                if (f7 != 0.0f) {
                    float f8 = f7 * f3;
                    if (Math.abs(f8) < 1.0E-4f) {
                        f8 = 0.0f;
                    }
                    this.f19693a.f19706q[i2] = f8;
                } else {
                    this.f19693a.f19706q[i2] = 0.0f;
                }
            }
            return true;
        }
        for (int i7 = 0; i7 < 9; i7++) {
            float[] fArr = this.f19693a.f19706q;
            float f9 = (mVar.f19706q[i7] * f3) + fArr[i7];
            fArr[i7] = f9;
            if (Math.abs(f9) < 1.0E-4f) {
                this.f19693a.f19706q[i7] = 0.0f;
            } else {
                z6 = false;
            }
        }
        if (z6) {
            this.f19694b.d(this.f19693a);
        }
        return false;
    }

    public void init(m mVar) {
        this.f19693a = mVar;
    }

    public final boolean isNegative() {
        for (int i2 = 8; i2 >= 0; i2--) {
            float f3 = this.f19693a.f19706q[i2];
            if (f3 > 0.0f) {
                return false;
            }
            if (f3 < 0.0f) {
                return true;
            }
        }
        return false;
    }

    public final boolean isSmallerThan(m mVar) {
        int i2 = 8;
        while (true) {
            if (i2 < 0) {
                break;
            }
            float f3 = mVar.f19706q[i2];
            float f7 = this.f19693a.f19706q[i2];
            if (f7 == f3) {
                i2--;
            } else if (f7 < f3) {
                return true;
            }
        }
        return false;
    }

    public void reset() {
        Arrays.fill(this.f19693a.f19706q, 0.0f);
    }

    public String toString() {
        String str = "[ ";
        if (this.f19693a != null) {
            for (int i2 = 0; i2 < 9; i2++) {
                StringBuilder o6 = b.c.o(str);
                o6.append(this.f19693a.f19706q[i2]);
                o6.append(StringUtils.SPACE);
                str = o6.toString();
            }
        }
        StringBuilder s6 = A.i.s(str, "] ");
        s6.append(this.f19693a);
        return s6.toString();
    }
}
