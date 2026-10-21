package W5;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public class r {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4209a = AtomicReferenceFieldUpdater.newUpdater(r.class, Object.class, "_cur");
    private volatile Object _cur;

    public r(boolean z6) {
        this._cur = new u(8, z6);
    }

    public final boolean addLast(Object obj) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4209a;
            u uVar = (u) atomicReferenceFieldUpdater.get(this);
            int addLast = uVar.addLast(obj);
            if (addLast == 0) {
                return true;
            }
            if (addLast == 1) {
                u next = uVar.next();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, uVar, next) && atomicReferenceFieldUpdater.get(this) == uVar) {
                }
            } else if (addLast == 2) {
                return false;
            }
        }
    }

    public final void close() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4209a;
            u uVar = (u) atomicReferenceFieldUpdater.get(this);
            if (uVar.close()) {
                return;
            }
            u next = uVar.next();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, uVar, next) && atomicReferenceFieldUpdater.get(this) == uVar) {
            }
        }
    }

    public final int getSize() {
        return ((u) f4209a.get(this)).getSize();
    }

    public final Object removeFirstOrNull() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4209a;
            u uVar = (u) atomicReferenceFieldUpdater.get(this);
            Object removeFirstOrNull = uVar.removeFirstOrNull();
            if (removeFirstOrNull != u.f4214h) {
                return removeFirstOrNull;
            }
            u next = uVar.next();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, uVar, next) && atomicReferenceFieldUpdater.get(this) == uVar) {
            }
        }
    }
}
