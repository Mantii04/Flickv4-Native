package L0;

import A.i;

/* loaded from: classes.dex */
public final class a extends b {

    /* renamed from: a, reason: collision with root package name */
    public final long f1825a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1826b;

    public a(long j7, long j8) {
        this.f1825a = j8;
        this.f1826b = j7;
    }

    @Override // L0.b
    public String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 PrivateCommand { ptsAdjustment=");
        sb.append(this.f1825a);
        sb.append(", identifier= ");
        return i.n(sb, this.f1826b, " }");
    }
}
