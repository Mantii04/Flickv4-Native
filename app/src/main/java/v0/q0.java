package v0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class q0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f20513a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f20514b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20515c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20516d;

    public q0(int i2, byte[] bArr, int i7, int i8) {
        this.f20513a = i2;
        this.f20514b = bArr;
        this.f20515c = i7;
        this.f20516d = i8;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && q0.class == obj.getClass()) {
            q0 q0Var = (q0) obj;
            if (this.f20513a == q0Var.f20513a && this.f20515c == q0Var.f20515c && this.f20516d == q0Var.f20516d && Arrays.equals(this.f20514b, q0Var.f20514b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((Arrays.hashCode(this.f20514b) + (this.f20513a * 31)) * 31) + this.f20515c) * 31) + this.f20516d;
    }
}
