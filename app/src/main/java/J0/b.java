package J0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class b extends k {

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f1438b;

    public b(String str, byte[] bArr) {
        super(str);
        this.f1438b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && b.class == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f1463a.equals(bVar.f1463a) && Arrays.equals(this.f1438b, bVar.f1438b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1438b) + A.i.b(527, 31, this.f1463a);
    }
}
