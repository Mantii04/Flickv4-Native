package B2;

import G2.q;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import n2.C1388J;
import n2.C1410o;
import z2.C1991h;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public static final C1388J f202c = new C1388J(Object.class, Object.class, Object.class, Collections.singletonList(new C1410o(Object.class, Object.class, Object.class, Collections.EMPTY_LIST, new C1991h(), null)), null);

    /* renamed from: a, reason: collision with root package name */
    public final p.g f203a = new p.g();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference f204b = new AtomicReference();

    public <Data, TResource, Transcode> C1388J get(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C1388J c1388j;
        q qVar = (q) this.f204b.getAndSet(null);
        if (qVar == null) {
            qVar = new q();
        }
        qVar.set(cls, cls2, cls3);
        synchronized (this.f203a) {
            c1388j = (C1388J) this.f203a.get(qVar);
        }
        this.f204b.set(qVar);
        return c1388j;
    }

    public boolean isEmptyLoadPath(C1388J c1388j) {
        return f202c.equals(c1388j);
    }

    public void put(Class<?> cls, Class<?> cls2, Class<?> cls3, C1388J c1388j) {
        synchronized (this.f203a) {
            p.g gVar = this.f203a;
            q qVar = new q(cls, cls2, cls3);
            if (c1388j == null) {
                c1388j = f202c;
            }
            gVar.put(qVar, c1388j);
        }
    }
}
