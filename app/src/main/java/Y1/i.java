package Y1;

import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public Object f4365a;

    /* renamed from: b, reason: collision with root package name */
    public Object f4366b;

    public boolean equals(Object obj) {
        if (!(obj instanceof L.d)) {
            return false;
        }
        L.d dVar = (L.d) obj;
        Object obj2 = dVar.f1820a;
        Object obj3 = this.f4365a;
        if (obj2 != obj3 && (obj2 == null || !obj2.equals(obj3))) {
            return false;
        }
        Object obj4 = this.f4366b;
        Object obj5 = dVar.f1821b;
        if (obj5 != obj4) {
            return obj5 != null && obj5.equals(obj4);
        }
        return true;
    }

    public int hashCode() {
        Object obj = this.f4365a;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f4366b;
        return hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public void set(Object obj, Object obj2) {
        this.f4365a = obj;
        this.f4366b = obj2;
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f4365a) + StringUtils.SPACE + String.valueOf(this.f4366b) + "}";
    }
}
