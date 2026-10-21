package J0;

import java.util.Objects;

/* loaded from: classes.dex */
public final class q extends k {

    /* renamed from: b, reason: collision with root package name */
    public final String f1477b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1478c;

    public q(String str, String str2, String str3) {
        super(str);
        this.f1477b = str2;
        this.f1478c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && q.class == obj.getClass()) {
            q qVar = (q) obj;
            if (this.f1463a.equals(qVar.f1463a) && Objects.equals(this.f1477b, qVar.f1477b) && Objects.equals(this.f1478c, qVar.f1478c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int b7 = A.i.b(527, 31, this.f1463a);
        String str = this.f1477b;
        int hashCode = (b7 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f1478c;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // J0.k
    public String toString() {
        return this.f1463a + ": url=" + this.f1478c;
    }
}
