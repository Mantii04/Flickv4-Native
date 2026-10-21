package W5;

import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* loaded from: classes2.dex */
public final class A {

    /* renamed from: a, reason: collision with root package name */
    public final LockFreeLinkedListNode f4174a;

    public A(LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.f4174a = lockFreeLinkedListNode;
    }

    public String toString() {
        return "Removed[" + this.f4174a + ']';
    }
}
