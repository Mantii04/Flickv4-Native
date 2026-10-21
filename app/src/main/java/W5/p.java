package W5;

import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* loaded from: classes2.dex */
public abstract class p {

    /* renamed from: a, reason: collision with root package name */
    public static final G f4206a = new G("CONDITION_FALSE");

    public static final Object getCONDITION_FALSE() {
        return f4206a;
    }

    public static final LockFreeLinkedListNode unwrap(Object obj) {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        A a7 = obj instanceof A ? (A) obj : null;
        if (a7 != null && (lockFreeLinkedListNode = a7.f4174a) != null) {
            return lockFreeLinkedListNode;
        }
        kotlin.jvm.internal.j.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (LockFreeLinkedListNode) obj;
    }
}
