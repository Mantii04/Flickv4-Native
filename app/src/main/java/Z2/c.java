package Z2;

import java.util.Set;

/* loaded from: classes.dex */
public final class c extends g {

    /* renamed from: a, reason: collision with root package name */
    public final long f4471a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4472b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f4473c;

    public c(long j7, long j8, Set set) {
        this.f4471a = j7;
        this.f4472b = j8;
        this.f4473c = set;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (this.f4471a == ((c) gVar).f4471a) {
                c cVar = (c) gVar;
                if (this.f4472b == cVar.f4472b && this.f4473c.equals(cVar.f4473c)) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        long j7 = this.f4471a;
        int i2 = (((int) (j7 ^ (j7 >>> 32))) ^ 1000003) * 1000003;
        long j8 = this.f4472b;
        return ((i2 ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003) ^ this.f4473c.hashCode();
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f4471a + ", maxAllowedDelay=" + this.f4472b + ", flags=" + this.f4473c + "}";
    }
}
