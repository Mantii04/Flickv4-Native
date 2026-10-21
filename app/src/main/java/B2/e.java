package B2;

import G2.q;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f205a = new AtomicReference();

    /* renamed from: b, reason: collision with root package name */
    public final p.g f206b = new p.g();

    public List<Class<?>> get(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        List<Class<?>> list;
        q qVar = (q) this.f205a.getAndSet(null);
        if (qVar == null) {
            qVar = new q(cls, cls2, cls3);
        } else {
            qVar.set(cls, cls2, cls3);
        }
        synchronized (this.f206b) {
            list = (List) this.f206b.get(qVar);
        }
        this.f205a.set(qVar);
        return list;
    }

    public void put(Class<?> cls, Class<?> cls2, Class<?> cls3, List<Class<?>> list) {
        synchronized (this.f206b) {
            this.f206b.put(new q(cls, cls2, cls3), list);
        }
    }
}
