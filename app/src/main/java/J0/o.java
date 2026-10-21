package J0;

import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class o extends k {

    /* renamed from: b, reason: collision with root package name */
    public final String f1473b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f1474c;

    public o(String str, byte[] bArr) {
        super("PRIV");
        this.f1473b = str;
        this.f1474c = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && o.class == obj.getClass()) {
            o oVar = (o) obj;
            if (Objects.equals(this.f1473b, oVar.f1473b) && Arrays.equals(this.f1474c, oVar.f1474c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f1473b;
        return Arrays.hashCode(this.f1474c) + ((527 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // J0.k
    public String toString() {
        return this.f1463a + ": owner=" + this.f1473b;
    }
}
