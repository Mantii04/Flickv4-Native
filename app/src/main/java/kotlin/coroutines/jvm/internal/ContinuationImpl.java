package kotlin.coroutines.jvm.internal;

import A5.b;
import R5.E;
import kotlin.jvm.internal.j;
import y5.C1946e;
import y5.InterfaceC1944c;
import y5.InterfaceC1947f;
import y5.InterfaceC1950i;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class ContinuationImpl extends BaseContinuationImpl {
    private final InterfaceC1952k _context;
    private transient InterfaceC1944c intercepted;

    public ContinuationImpl(InterfaceC1944c interfaceC1944c, InterfaceC1952k interfaceC1952k) {
        super(interfaceC1944c);
        this._context = interfaceC1952k;
    }

    @Override // y5.InterfaceC1944c
    public InterfaceC1952k getContext() {
        InterfaceC1952k interfaceC1952k = this._context;
        j.checkNotNull(interfaceC1952k);
        return interfaceC1952k;
    }

    public final InterfaceC1944c intercepted() {
        InterfaceC1944c interfaceC1944c = this.intercepted;
        if (interfaceC1944c == null) {
            InterfaceC1947f interfaceC1947f = (InterfaceC1947f) getContext().get(C1946e.f21324b);
            if (interfaceC1947f == null || (interfaceC1944c = ((E) interfaceC1947f).interceptContinuation(this)) == null) {
                interfaceC1944c = this;
            }
            this.intercepted = interfaceC1944c;
        }
        return interfaceC1944c;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        InterfaceC1944c interfaceC1944c = this.intercepted;
        if (interfaceC1944c != null && interfaceC1944c != this) {
            InterfaceC1950i interfaceC1950i = getContext().get(C1946e.f21324b);
            j.checkNotNull(interfaceC1950i);
            ((E) ((InterfaceC1947f) interfaceC1950i)).releaseInterceptedContinuation(interfaceC1944c);
        }
        this.intercepted = b.f106b;
    }

    public ContinuationImpl(InterfaceC1944c interfaceC1944c) {
        this(interfaceC1944c, interfaceC1944c != null ? interfaceC1944c.getContext() : null);
    }
}
