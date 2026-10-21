package L1;

import B1.Q;

/* loaded from: classes.dex */
public final class u implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final C1.G f1890b;

    /* renamed from: e, reason: collision with root package name */
    public final C1.v f1891e;

    /* renamed from: f, reason: collision with root package name */
    public final Q f1892f;

    public u(C1.G g7, C1.v vVar, Q q6) {
        this.f1890b = g7;
        this.f1891e = vVar;
        this.f1892f = q6;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1890b.getProcessor().startWork(this.f1891e, this.f1892f);
    }
}
