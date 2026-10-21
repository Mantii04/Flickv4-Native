package T1;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class L {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3583a;

    /* renamed from: b, reason: collision with root package name */
    public final Throwable f3584b;

    public L(Object obj) {
        this.f3583a = obj;
        this.f3584b = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof L)) {
            return false;
        }
        L l7 = (L) obj;
        if (getValue() != null && getValue().equals(l7.getValue())) {
            return true;
        }
        if (getException() == null || l7.getException() == null) {
            return false;
        }
        return getException().toString().equals(getException().toString());
    }

    public Throwable getException() {
        return this.f3584b;
    }

    public Object getValue() {
        return this.f3583a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{getValue(), getException()});
    }

    public L(Throwable th) {
        this.f3584b = th;
        this.f3583a = null;
    }
}
