package V3;

/* renamed from: V3.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC0343d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final com.google.common.util.concurrent.b f3999b;

    /* renamed from: e, reason: collision with root package name */
    public final F f4000e;

    public RunnableC0343d(com.google.common.util.concurrent.b bVar, F f3) {
        this.f3999b = bVar;
        this.f4000e = f3;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3999b.f13206b != this) {
            return;
        }
        if (com.google.common.util.concurrent.b.f13204n.b(this.f3999b, this, com.google.common.util.concurrent.b.f(this.f4000e))) {
            com.google.common.util.concurrent.b.c(this.f3999b, false);
        }
    }
}
