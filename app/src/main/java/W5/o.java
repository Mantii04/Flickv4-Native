package W5;

import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* loaded from: classes2.dex */
public abstract class o extends LockFreeLinkedListNode {
    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public boolean isRemoved() {
        return false;
    }
}
