package W5;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: W5.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0358e {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4188b = AtomicReferenceFieldUpdater.newUpdater(AbstractC0358e.class, Object.class, "_next");

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4189e = AtomicReferenceFieldUpdater.newUpdater(AbstractC0358e.class, Object.class, "_prev");
    private volatile Object _next;
    private volatile Object _prev;

    public AbstractC0358e(AbstractC0358e abstractC0358e) {
        this._prev = abstractC0358e;
    }

    public static final Object access$getNextOrClosed(AbstractC0358e abstractC0358e) {
        abstractC0358e.getClass();
        return f4188b.get(abstractC0358e);
    }

    public final void cleanPrev() {
        f4189e.lazySet(this, null);
    }

    public final AbstractC0358e getNext() {
        Object access$getNextOrClosed = access$getNextOrClosed(this);
        if (access$getNextOrClosed == AbstractC0357d.f4187a) {
            return null;
        }
        return (AbstractC0358e) access$getNextOrClosed;
    }

    public final AbstractC0358e getPrev() {
        return (AbstractC0358e) f4189e.get(this);
    }

    public abstract boolean isRemoved();

    public final boolean isTail() {
        return getNext() == null;
    }

    public final boolean markAsClosed() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        G g7 = AbstractC0357d.f4187a;
        do {
            atomicReferenceFieldUpdater = f4188b;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, g7)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return false;
    }

    public final void remove() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        AbstractC0358e next;
        if (isTail()) {
            return;
        }
        while (true) {
            AbstractC0358e prev = getPrev();
            while (true) {
                atomicReferenceFieldUpdater = f4189e;
                if (prev == null || !prev.isRemoved()) {
                    break;
                } else {
                    prev = (AbstractC0358e) atomicReferenceFieldUpdater.get(prev);
                }
            }
            AbstractC0358e next2 = getNext();
            kotlin.jvm.internal.j.checkNotNull(next2);
            while (next2.isRemoved() && (next = next2.getNext()) != null) {
                next2 = next;
            }
            while (true) {
                Object obj = atomicReferenceFieldUpdater.get(next2);
                AbstractC0358e abstractC0358e = ((AbstractC0358e) obj) == null ? null : prev;
                while (!atomicReferenceFieldUpdater.compareAndSet(next2, obj, abstractC0358e)) {
                    if (atomicReferenceFieldUpdater.get(next2) != obj) {
                        break;
                    }
                }
            }
            if (prev != null) {
                f4188b.set(prev, next2);
            }
            if (!next2.isRemoved() || next2.isTail()) {
                if (prev == null || !prev.isRemoved()) {
                    return;
                }
            }
        }
    }

    public final boolean trySetNext(AbstractC0358e abstractC0358e) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = f4188b;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, abstractC0358e)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return false;
    }
}
