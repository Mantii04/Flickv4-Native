package a3;

/* renamed from: a3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0383a extends AbstractC0387e {

    /* renamed from: b, reason: collision with root package name */
    public final long f4720b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4721c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4722d;

    /* renamed from: e, reason: collision with root package name */
    public final long f4723e;

    /* renamed from: f, reason: collision with root package name */
    public final int f4724f;

    public C0383a(long j7, int i2, int i7, long j8, int i8) {
        this.f4720b = j7;
        this.f4721c = i2;
        this.f4722d = i7;
        this.f4723e = j8;
        this.f4724f = i8;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0387e) {
            AbstractC0387e abstractC0387e = (AbstractC0387e) obj;
            if (this.f4720b == ((C0383a) abstractC0387e).f4720b) {
                C0383a c0383a = (C0383a) abstractC0387e;
                if (this.f4721c == c0383a.f4721c && this.f4722d == c0383a.f4722d && this.f4723e == c0383a.f4723e && this.f4724f == c0383a.f4724f) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        long j7 = this.f4720b;
        int i2 = (((((((int) (j7 ^ (j7 >>> 32))) ^ 1000003) * 1000003) ^ this.f4721c) * 1000003) ^ this.f4722d) * 1000003;
        long j8 = this.f4723e;
        return ((i2 ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003) ^ this.f4724f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb.append(this.f4720b);
        sb.append(", loadBatchSize=");
        sb.append(this.f4721c);
        sb.append(", criticalSectionEnterTimeoutMs=");
        sb.append(this.f4722d);
        sb.append(", eventCleanUpAge=");
        sb.append(this.f4723e);
        sb.append(", maxBlobByteSizePerRow=");
        return A.i.m(sb, this.f4724f, "}");
    }
}
