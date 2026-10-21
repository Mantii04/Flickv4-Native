package S0;

/* loaded from: classes.dex */
public final class k implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public final long f3258b;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f3259e;

    public k(long j7, byte[] bArr) {
        this.f3258b = j7;
        this.f3259e = bArr;
    }

    @Override // java.lang.Comparable
    public int compareTo(k kVar) {
        return Long.compare(this.f3258b, kVar.f3258b);
    }
}
