package R5;

import kotlin.Result;

/* renamed from: R5.x, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0304x {
    public static final <T> InterfaceC0302v CompletableDeferred(InterfaceC0294q0 interfaceC0294q0) {
        return new C0303w(interfaceC0294q0);
    }

    public static /* synthetic */ InterfaceC0302v CompletableDeferred$default(InterfaceC0294q0 interfaceC0294q0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            interfaceC0294q0 = null;
        }
        return CompletableDeferred(interfaceC0294q0);
    }

    public static final <T> boolean completeWith(InterfaceC0302v interfaceC0302v, Object obj) {
        Throwable m104exceptionOrNullimpl = Result.m104exceptionOrNullimpl(obj);
        C0303w c0303w = (C0303w) interfaceC0302v;
        return m104exceptionOrNullimpl == null ? c0303w.complete(obj) : c0303w.completeExceptionally(m104exceptionOrNullimpl);
    }
}
