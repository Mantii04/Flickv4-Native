package J0;

import java.util.Objects;

/* loaded from: classes.dex */
public final class m extends k {

    /* renamed from: b, reason: collision with root package name */
    public final String f1465b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1466c;

    /* renamed from: d, reason: collision with root package name */
    public final String f1467d;

    public m(String str, String str2, String str3) {
        super("----");
        this.f1465b = str;
        this.f1466c = str2;
        this.f1467d = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && m.class == obj.getClass()) {
            m mVar = (m) obj;
            if (Objects.equals(this.f1466c, mVar.f1466c) && Objects.equals(this.f1465b, mVar.f1465b) && Objects.equals(this.f1467d, mVar.f1467d)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f1465b;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f1466c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f1467d;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // J0.k
    public String toString() {
        return this.f1463a + ": domain=" + this.f1465b + ", description=" + this.f1466c;
    }
}
