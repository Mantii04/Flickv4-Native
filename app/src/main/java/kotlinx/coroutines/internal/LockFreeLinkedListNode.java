package kotlinx.coroutines.internal;

import R5.K;
import W5.A;
import W5.p;
import W5.q;
import W5.z;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public class LockFreeLinkedListNode {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17605b = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next");

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17606e = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev");

    /* renamed from: f, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17607f = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef");
    private volatile Object _next = this;
    private volatile Object _prev = this;
    private volatile Object _removedRef;

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
    
        r6 = ((W5.A) r6).f4174a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
    
        if (r5.compareAndSet(r4, r3, r6) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        if (r5.get(r4) == r3) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.LockFreeLinkedListNode a() {
        /*
            r9 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f17606e
            java.lang.Object r1 = r0.get(r9)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
            r2 = 0
            r3 = r1
        La:
            r4 = r2
        Lb:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = kotlinx.coroutines.internal.LockFreeLinkedListNode.f17605b
            java.lang.Object r6 = r5.get(r3)
            if (r6 != r9) goto L24
            if (r1 != r3) goto L16
            goto L2d
        L16:
            boolean r2 = r0.compareAndSet(r9, r1, r3)
            if (r2 == 0) goto L1d
            goto L2d
        L1d:
            java.lang.Object r2 = r0.get(r9)
            if (r2 == r1) goto L16
            goto L0
        L24:
            boolean r7 = r9.isRemoved()
            if (r7 == 0) goto L2b
            return r2
        L2b:
            if (r6 != 0) goto L2e
        L2d:
            return r3
        L2e:
            boolean r7 = r6 instanceof W5.z
            if (r7 == 0) goto L38
            W5.z r6 = (W5.z) r6
            r6.perform(r3)
            goto L0
        L38:
            boolean r7 = r6 instanceof W5.A
            if (r7 == 0) goto L58
            if (r4 == 0) goto L51
            W5.A r6 = (W5.A) r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r6 = r6.f4174a
        L42:
            boolean r7 = r5.compareAndSet(r4, r3, r6)
            if (r7 == 0) goto L4a
            r3 = r4
            goto La
        L4a:
            java.lang.Object r7 = r5.get(r4)
            if (r7 == r3) goto L42
            goto L0
        L51:
            java.lang.Object r3 = r0.get(r3)
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            goto Lb
        L58:
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"
            kotlin.jvm.internal.j.checkNotNull(r6, r4)
            r4 = r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r4 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r4
            r8 = r4
            r4 = r3
            r3 = r8
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.a():kotlinx.coroutines.internal.LockFreeLinkedListNode");
    }

    public final boolean addOneIfEmpty(LockFreeLinkedListNode lockFreeLinkedListNode) {
        f17606e.lazySet(lockFreeLinkedListNode, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17605b;
        atomicReferenceFieldUpdater.lazySet(lockFreeLinkedListNode, this);
        while (getNext() == this) {
            while (!atomicReferenceFieldUpdater.compareAndSet(this, this, lockFreeLinkedListNode)) {
                if (atomicReferenceFieldUpdater.get(this) != this) {
                    break;
                }
            }
            lockFreeLinkedListNode.b(this);
            return true;
        }
        return false;
    }

    public final void b(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17606e;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (getNext() != lockFreeLinkedListNode) {
                return;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(lockFreeLinkedListNode, lockFreeLinkedListNode2, this)) {
                if (atomicReferenceFieldUpdater.get(lockFreeLinkedListNode) != lockFreeLinkedListNode2) {
                    break;
                }
            }
            if (isRemoved()) {
                lockFreeLinkedListNode.a();
                return;
            }
            return;
        }
    }

    public final Object getNext() {
        while (true) {
            Object obj = f17605b.get(this);
            if (!(obj instanceof z)) {
                return obj;
            }
            ((z) obj).perform(this);
        }
    }

    public final LockFreeLinkedListNode getNextNode() {
        return p.unwrap(getNext());
    }

    public final LockFreeLinkedListNode getPrevNode() {
        LockFreeLinkedListNode a7 = a();
        if (a7 != null) {
            return a7;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17606e;
        Object obj = atomicReferenceFieldUpdater.get(this);
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
            if (!lockFreeLinkedListNode.isRemoved()) {
                return lockFreeLinkedListNode;
            }
            obj = atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
        }
    }

    public boolean isRemoved() {
        return getNext() instanceof A;
    }

    public boolean remove() {
        return removeOrNext() == null;
    }

    public final LockFreeLinkedListNode removeOrNext() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        while (true) {
            Object next = getNext();
            if (next instanceof A) {
                return ((A) next).f4174a;
            }
            if (next == this) {
                return (LockFreeLinkedListNode) next;
            }
            j.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
            lockFreeLinkedListNode.getClass();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f17607f;
            A a7 = (A) atomicReferenceFieldUpdater2.get(lockFreeLinkedListNode);
            if (a7 == null) {
                a7 = new A(lockFreeLinkedListNode);
                atomicReferenceFieldUpdater2.lazySet(lockFreeLinkedListNode, a7);
            }
            do {
                atomicReferenceFieldUpdater = f17605b;
                if (atomicReferenceFieldUpdater.compareAndSet(this, next, a7)) {
                    lockFreeLinkedListNode.a();
                    return null;
                }
            } while (atomicReferenceFieldUpdater.get(this) == next);
        }
    }

    public String toString() {
        return new LockFreeLinkedListNode$toString$1(this, K.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + K.getHexAddress(this);
    }

    public final int tryCondAddNext(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2, q qVar) {
        f17606e.lazySet(lockFreeLinkedListNode, this);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17605b;
        atomicReferenceFieldUpdater.lazySet(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        qVar.f4208c = lockFreeLinkedListNode2;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, lockFreeLinkedListNode2, qVar)) {
            if (atomicReferenceFieldUpdater.get(this) != lockFreeLinkedListNode2) {
                return 0;
            }
        }
        return qVar.perform(this) == null ? 1 : 2;
    }
}
