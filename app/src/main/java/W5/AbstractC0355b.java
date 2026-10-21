package W5;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: W5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0355b extends z {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4185a = AtomicReferenceFieldUpdater.newUpdater(AbstractC0355b.class, Object.class, "_consensus");
    private volatile Object _consensus = AbstractC0354a.f4184a;

    public abstract void complete(Object obj, Object obj2);

    @Override // W5.z
    public final Object perform(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4185a;
        Object obj2 = atomicReferenceFieldUpdater.get(this);
        G g7 = AbstractC0354a.f4184a;
        if (obj2 == g7) {
            Object prepare = prepare(obj);
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 == g7) {
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, g7, prepare)) {
                        obj2 = prepare;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != g7) {
                        obj2 = atomicReferenceFieldUpdater.get(this);
                        break;
                    }
                }
            }
        }
        complete(obj, obj2);
        return obj2;
    }

    public abstract Object prepare(Object obj);
}
