package J0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class n extends k {

    /* renamed from: b, reason: collision with root package name */
    public final int f1468b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1469c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1470d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f1471e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f1472f;

    public n(int i2, int i7, int i8, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f1468b = i2;
        this.f1469c = i7;
        this.f1470d = i8;
        this.f1471e = iArr;
        this.f1472f = iArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && n.class == obj.getClass()) {
            n nVar = (n) obj;
            if (this.f1468b == nVar.f1468b && this.f1469c == nVar.f1469c && this.f1470d == nVar.f1470d && Arrays.equals(this.f1471e, nVar.f1471e) && Arrays.equals(this.f1472f, nVar.f1472f)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1472f) + ((Arrays.hashCode(this.f1471e) + ((((((527 + this.f1468b) * 31) + this.f1469c) * 31) + this.f1470d) * 31)) * 31);
    }
}
