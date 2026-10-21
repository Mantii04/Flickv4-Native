package n2;

import java.lang.ref.ReferenceQueue;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: n2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1400e {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f18943a;

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f18944b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f18945c;

    /* renamed from: d, reason: collision with root package name */
    public final ReferenceQueue f18946d;

    /* renamed from: e, reason: collision with root package name */
    public com.bumptech.glide.load.engine.b f18947e;

    public C1400e(boolean z6) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC1397b());
        this.f18945c = new HashMap();
        this.f18946d = new ReferenceQueue();
        this.f18943a = z6;
        this.f18944b = newSingleThreadExecutor;
        newSingleThreadExecutor.execute(new RunnableC1398c(this));
    }

    public final synchronized void a(l2.m mVar, C1385G c1385g) {
        C1399d c1399d = (C1399d) this.f18945c.put(mVar, new C1399d(mVar, c1385g, this.f18946d, this.f18943a));
        if (c1399d != null) {
            c1399d.f18942c = null;
            c1399d.clear();
        }
    }

    public final void b(C1399d c1399d) {
        InterfaceC1391M interfaceC1391M;
        synchronized (this) {
            this.f18945c.remove(c1399d.f18940a);
            if (c1399d.f18941b && (interfaceC1391M = c1399d.f18942c) != null) {
                this.f18947e.onResourceReleased(c1399d.f18940a, new C1385G(interfaceC1391M, true, false, c1399d.f18940a, this.f18947e));
            }
        }
    }
}
