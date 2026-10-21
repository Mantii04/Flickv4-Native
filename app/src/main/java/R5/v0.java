package R5;

/* loaded from: classes2.dex */
public abstract class v0 extends C implements V, InterfaceC0282k0 {

    /* renamed from: j, reason: collision with root package name */
    public A0 f3195j;

    @Override // R5.V
    public void dispose() {
        getJob().removeNode$kotlinx_coroutines_core(this);
    }

    public final A0 getJob() {
        A0 a02 = this.f3195j;
        if (a02 != null) {
            return a02;
        }
        kotlin.jvm.internal.j.throwUninitializedPropertyAccessException("job");
        return null;
    }

    @Override // R5.InterfaceC0282k0
    public F0 getList() {
        return null;
    }

    @Override // R5.InterfaceC0282k0
    public boolean isActive() {
        return true;
    }

    public final void setJob(A0 a02) {
        this.f3195j = a02;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public String toString() {
        return K.getClassSimpleName(this) + '@' + K.getHexAddress(this) + "[job@" + K.getHexAddress(getJob()) + ']';
    }
}
