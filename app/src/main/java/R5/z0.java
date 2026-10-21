package R5;

import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* loaded from: classes2.dex */
public final class z0 extends W5.q {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ A0 f3210d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3211e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z0(LockFreeLinkedListNode lockFreeLinkedListNode, A0 a02, Object obj) {
        super(lockFreeLinkedListNode);
        this.f3210d = a02;
        this.f3211e = obj;
    }

    @Override // W5.AbstractC0355b
    public Object prepare(LockFreeLinkedListNode lockFreeLinkedListNode) {
        if (this.f3210d.getState$kotlinx_coroutines_core() == this.f3211e) {
            return null;
        }
        return W5.p.getCONDITION_FALSE();
    }
}
