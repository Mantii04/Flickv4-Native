package G1;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f1014a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f1015b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1016c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1017d;

    public b(boolean z6, boolean z7, boolean z8, boolean z9) {
        this.f1014a = z6;
        this.f1015b = z7;
        this.f1016c = z8;
        this.f1017d = z9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f1014a == bVar.f1014a && this.f1015b == bVar.f1015b && this.f1016c == bVar.f1016c && this.f1017d == bVar.f1017d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        boolean z6 = this.f1014a;
        int i2 = z6;
        if (z6 != 0) {
            i2 = 1;
        }
        int i7 = i2 * 31;
        boolean z7 = this.f1015b;
        int i8 = z7;
        if (z7 != 0) {
            i8 = 1;
        }
        int i9 = (i7 + i8) * 31;
        boolean z8 = this.f1016c;
        int i10 = z8;
        if (z8 != 0) {
            i10 = 1;
        }
        int i11 = (i9 + i10) * 31;
        boolean z9 = this.f1017d;
        return i11 + (z9 ? 1 : z9 ? 1 : 0);
    }

    public final boolean isConnected() {
        return this.f1014a;
    }

    public final boolean isMetered() {
        return this.f1016c;
    }

    public final boolean isNotRoaming() {
        return this.f1017d;
    }

    public final boolean isValidated() {
        return this.f1015b;
    }

    public String toString() {
        return "NetworkState(isConnected=" + this.f1014a + ", isValidated=" + this.f1015b + ", isMetered=" + this.f1016c + ", isNotRoaming=" + this.f1017d + ')';
    }
}
