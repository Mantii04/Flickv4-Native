package R5;

import kotlinx.coroutines.CoroutineStart;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* renamed from: R5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0261a extends A0 implements InterfaceC1944c, I {

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC1952k f3168f;

    public AbstractC0261a(InterfaceC1952k interfaceC1952k, boolean z6, boolean z7) {
        super(z7);
        if (z6) {
            initParentJob((InterfaceC0294q0) interfaceC1952k.get(F.f3147e));
        }
        this.f3168f = interfaceC1952k.plus(this);
    }

    public void afterResume(Object obj) {
        afterCompletion(obj);
    }

    @Override // R5.A0
    public String cancellationExceptionMessage() {
        return K.getClassSimpleName(this) + " was cancelled";
    }

    @Override // y5.InterfaceC1944c
    public final InterfaceC1952k getContext() {
        return this.f3168f;
    }

    @Override // R5.I
    public InterfaceC1952k getCoroutineContext() {
        return this.f3168f;
    }

    @Override // R5.A0
    public final void handleOnCompletionException$kotlinx_coroutines_core(Throwable th) {
        G.handleCoroutineException(this.f3168f, th);
    }

    @Override // R5.A0, R5.InterfaceC0294q0
    public boolean isActive() {
        return super.isActive();
    }

    @Override // R5.A0
    public String nameString$kotlinx_coroutines_core() {
        String coroutineName = kotlinx.coroutines.a.getCoroutineName(this.f3168f);
        if (coroutineName == null) {
            return super.nameString$kotlinx_coroutines_core();
        }
        StringBuilder t6 = A.i.t("\"", coroutineName, "\":");
        t6.append(super.nameString$kotlinx_coroutines_core());
        return t6.toString();
    }

    @Override // R5.A0
    public final void onCompletionInternal(Object obj) {
        if (!(obj instanceof A)) {
            onCompleted(obj);
        } else {
            A a7 = (A) obj;
            onCancelled(a7.f3131a, a7.getHandled());
        }
    }

    @Override // y5.InterfaceC1944c
    public final void resumeWith(Object obj) {
        Object makeCompletingOnce$kotlinx_coroutines_core = makeCompletingOnce$kotlinx_coroutines_core(D.toState$default(obj, null, 1, null));
        if (makeCompletingOnce$kotlinx_coroutines_core == B0.f3137b) {
            return;
        }
        afterResume(makeCompletingOnce$kotlinx_coroutines_core);
    }

    public final <R> void start(CoroutineStart coroutineStart, R r6, H5.p pVar) {
        coroutineStart.invoke(pVar, r6, this);
    }

    public void onCompleted(Object obj) {
    }

    public void onCancelled(Throwable th, boolean z6) {
    }
}
