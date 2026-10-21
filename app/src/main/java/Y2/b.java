package Y2;

import P2.g;
import S2.E;
import S2.H;
import S2.u;
import Z2.q;
import a3.InterfaceC0386d;
import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class b implements d {

    /* renamed from: f, reason: collision with root package name */
    public static final Logger f4372f = Logger.getLogger(H.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final q f4373a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f4374b;

    /* renamed from: c, reason: collision with root package name */
    public final T2.f f4375c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0386d f4376d;

    /* renamed from: e, reason: collision with root package name */
    public final b3.b f4377e;

    public b(Executor executor, T2.f fVar, q qVar, InterfaceC0386d interfaceC0386d, b3.b bVar) {
        this.f4374b = executor;
        this.f4375c = fVar;
        this.f4373a = qVar;
        this.f4376d = interfaceC0386d;
        this.f4377e = bVar;
    }

    public void schedule(E e3, u uVar, g gVar) {
        this.f4374b.execute(new a(this, e3, gVar, uVar, 0));
    }
}
