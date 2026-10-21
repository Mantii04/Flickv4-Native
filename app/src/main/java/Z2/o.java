package Z2;

import a3.InterfaceC0386d;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f4511a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0386d f4512b;

    /* renamed from: c, reason: collision with root package name */
    public final q f4513c;

    /* renamed from: d, reason: collision with root package name */
    public final b3.b f4514d;

    public o(Executor executor, InterfaceC0386d interfaceC0386d, q qVar, b3.b bVar) {
        this.f4511a = executor;
        this.f4512b = interfaceC0386d;
        this.f4513c = qVar;
        this.f4514d = bVar;
    }

    public void ensureContextsScheduled() {
        this.f4511a.execute(new A3.d(this, 14));
    }
}
