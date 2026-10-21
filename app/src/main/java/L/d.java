package L;

import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Object f1820a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f1821b;

    public d(Object obj, Object obj2) {
        this.f1820a = obj;
        this.f1821b = obj2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return c.equals(dVar.f1820a, this.f1820a) && c.equals(dVar.f1821b, this.f1821b);
    }

    public int hashCode() {
        Object obj = this.f1820a;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f1821b;
        return (obj2 != null ? obj2.hashCode() : 0) ^ hashCode;
    }

    public String toString() {
        return "Pair{" + this.f1820a + StringUtils.SPACE + this.f1821b + "}";
    }
}
