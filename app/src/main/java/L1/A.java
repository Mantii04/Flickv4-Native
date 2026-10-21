package L1;

import B1.InterfaceC0030j;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public final class A implements Runnable {

    /* renamed from: p, reason: collision with root package name */
    public static final String f1837p = B1.t.tagWithPrefix("WorkForegroundRunnable");

    /* renamed from: b, reason: collision with root package name */
    public final M1.g f1838b = M1.g.create();

    /* renamed from: e, reason: collision with root package name */
    public final Context f1839e;

    /* renamed from: f, reason: collision with root package name */
    public final K1.E f1840f;

    /* renamed from: j, reason: collision with root package name */
    public final B1.r f1841j;

    /* renamed from: m, reason: collision with root package name */
    public final InterfaceC0030j f1842m;

    /* renamed from: n, reason: collision with root package name */
    public final N1.c f1843n;

    @SuppressLint({"LambdaLast"})
    public A(Context context, K1.E e3, B1.r rVar, InterfaceC0030j interfaceC0030j, N1.c cVar) {
        this.f1839e = context;
        this.f1840f = e3;
        this.f1841j = rVar;
        this.f1842m = interfaceC0030j;
        this.f1843n = cVar;
    }

    public V3.F getFuture() {
        return this.f1838b;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"UnsafeExperimentalUsageError"})
    public void run() {
        if (!this.f1840f.f1610q || Build.VERSION.SDK_INT >= 31) {
            this.f1838b.set(null);
            return;
        }
        M1.g create = M1.g.create();
        N1.e eVar = (N1.e) this.f1843n;
        eVar.getMainThreadExecutor().execute(new A4.n(10, this, create));
        create.addListener(new z(this, create), eVar.getMainThreadExecutor());
    }
}
