package R2;

/* loaded from: classes.dex */
public final class s extends C {

    /* renamed from: a, reason: collision with root package name */
    public final long f3108a;

    public s(long j7) {
        this.f3108a = j7;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C) && this.f3108a == ((C) obj).getNextRequestWaitMillis();
    }

    @Override // R2.C
    public long getNextRequestWaitMillis() {
        return this.f3108a;
    }

    public int hashCode() {
        long j7 = this.f3108a;
        return ((int) (j7 ^ (j7 >>> 32))) ^ 1000003;
    }

    public String toString() {
        return A.i.n(new StringBuilder("LogResponse{nextRequestWaitMillis="), this.f3108a, "}");
    }
}
