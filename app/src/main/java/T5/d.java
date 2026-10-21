package T5;

import R5.A0;
import R5.AbstractC0261a;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.JobCancellationException;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class d extends AbstractC0261a implements c {

    /* renamed from: j, reason: collision with root package name */
    public final c f3730j;

    public d(InterfaceC1952k interfaceC1952k, c cVar, boolean z6, boolean z7) {
        super(interfaceC1952k, z6, z7);
        this.f3730j = cVar;
    }

    @Override // R5.A0, R5.InterfaceC0294q0
    public final void cancel(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    @Override // R5.A0
    public void cancelInternal(Throwable th) {
        CancellationException cancellationException$default = A0.toCancellationException$default(this, th, null, 1, null);
        this.f3730j.cancel(cancellationException$default);
        cancelCoroutine(cancellationException$default);
    }

    @Override // T5.s
    public boolean close(Throwable th) {
        return this.f3730j.close(th);
    }

    public final c get_channel() {
        return this.f3730j;
    }

    @Override // T5.s
    public void invokeOnClose(H5.l lVar) {
        this.f3730j.invokeOnClose(lVar);
    }

    @Override // T5.s
    public boolean isClosedForSend() {
        return this.f3730j.isClosedForSend();
    }

    @Override // T5.q
    public e iterator() {
        return this.f3730j.iterator();
    }

    @Override // T5.q
    public Object receive(InterfaceC1944c interfaceC1944c) {
        return this.f3730j.receive(interfaceC1944c);
    }

    @Override // T5.s
    public Object send(Object obj, InterfaceC1944c interfaceC1944c) {
        return this.f3730j.send(obj, interfaceC1944c);
    }

    @Override // T5.q
    /* renamed from: tryReceive-PtdJZtk, reason: not valid java name */
    public Object mo28tryReceivePtdJZtk() {
        return this.f3730j.mo28tryReceivePtdJZtk();
    }

    @Override // T5.s
    /* renamed from: trySend-JP2dKIU, reason: not valid java name */
    public Object mo29trySendJP2dKIU(Object obj) {
        return this.f3730j.mo29trySendJP2dKIU(obj);
    }
}
