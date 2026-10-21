package P2;

import A.i;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f2683a;

    public b(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f2683a = str;
    }

    public static b of(String str) {
        return new b(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        return this.f2683a.equals(((b) obj).f2683a);
    }

    public String getName() {
        return this.f2683a;
    }

    public int hashCode() {
        return this.f2683a.hashCode() ^ 1000003;
    }

    public String toString() {
        return i.o(new StringBuilder("Encoding{name=\""), this.f2683a, "\"}");
    }
}
