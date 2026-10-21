package W5;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* loaded from: classes2.dex */
public abstract class q extends AbstractC0355b {

    /* renamed from: b, reason: collision with root package name */
    public final LockFreeLinkedListNode f4207b;

    /* renamed from: c, reason: collision with root package name */
    public LockFreeLinkedListNode f4208c;

    public q(LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.f4207b = lockFreeLinkedListNode;
    }

    @Override // W5.AbstractC0355b
    public void complete(LockFreeLinkedListNode lockFreeLinkedListNode, Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        boolean z6 = obj == null;
        LockFreeLinkedListNode lockFreeLinkedListNode2 = this.f4207b;
        LockFreeLinkedListNode lockFreeLinkedListNode3 = z6 ? lockFreeLinkedListNode2 : this.f4208c;
        if (lockFreeLinkedListNode3 != null) {
            atomicReferenceFieldUpdater = LockFreeLinkedListNode.f17605b;
            while (!atomicReferenceFieldUpdater.compareAndSet(lockFreeLinkedListNode, this, lockFreeLinkedListNode3)) {
                if (atomicReferenceFieldUpdater.get(lockFreeLinkedListNode) != this) {
                    return;
                }
            }
            if (z6) {
                LockFreeLinkedListNode lockFreeLinkedListNode4 = this.f4208c;
                kotlin.jvm.internal.j.checkNotNull(lockFreeLinkedListNode4);
                lockFreeLinkedListNode2.b(lockFreeLinkedListNode4);
            }
        }
    }
}
