package kotlinx.coroutines.flow.internal;

import H5.p;
import H5.q;
import R5.AbstractC0299t0;
import U5.c;
import V5.d;
import V5.f;
import kotlin.Result;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.j;
import u5.C1711j;
import y5.InterfaceC1944c;
import y5.InterfaceC1950i;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class SafeCollector<T> extends ContinuationImpl implements c {

    /* renamed from: b, reason: collision with root package name */
    public final c f17595b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1952k f17596e;

    /* renamed from: f, reason: collision with root package name */
    public final int f17597f;

    /* renamed from: j, reason: collision with root package name */
    public InterfaceC1952k f17598j;

    /* renamed from: m, reason: collision with root package name */
    public InterfaceC1944c f17599m;

    public SafeCollector(c cVar, InterfaceC1952k interfaceC1952k) {
        super(f.f4029b, EmptyCoroutineContext.f17433b);
        this.f17595b = cVar;
        this.f17596e = interfaceC1952k;
        this.f17597f = ((Number) interfaceC1952k.fold(0, new p() { // from class: kotlinx.coroutines.flow.internal.SafeCollector$collectContextSize$1
            public final Integer invoke(int i2, InterfaceC1950i interfaceC1950i) {
                return Integer.valueOf(i2 + 1);
            }

            @Override // H5.p
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke(((Number) obj).intValue(), (InterfaceC1950i) obj2);
            }
        })).intValue();
    }

    public final Object a(InterfaceC1944c interfaceC1944c, Object obj) {
        q qVar;
        InterfaceC1952k context = interfaceC1944c.getContext();
        AbstractC0299t0.ensureActive(context);
        InterfaceC1952k interfaceC1952k = this.f17598j;
        if (interfaceC1952k != context) {
            if (interfaceC1952k instanceof d) {
                throw new IllegalStateException(kotlin.text.a.trimIndent("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((d) interfaceC1952k).f4027b + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
            SafeCollector_commonKt.checkContext(this, context);
            this.f17598j = context;
        }
        this.f17599m = interfaceC1944c;
        qVar = a.f17603a;
        c cVar = this.f17595b;
        j.checkNotNull(cVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        j.checkNotNull(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>");
        Object invoke = qVar.invoke(cVar, obj, this);
        if (!j.areEqual(invoke, AbstractC2008a.getCOROUTINE_SUSPENDED())) {
            this.f17599m = null;
        }
        return invoke;
    }

    @Override // U5.c
    public Object emit(T t6, InterfaceC1944c interfaceC1944c) {
        try {
            Object a7 = a(interfaceC1944c, t6);
            if (a7 == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                A5.f.probeCoroutineSuspended(interfaceC1944c);
            }
            return a7 == AbstractC2008a.getCOROUTINE_SUSPENDED() ? a7 : C1711j.f20329a;
        } catch (Throwable th) {
            this.f17598j = new d(th, interfaceC1944c.getContext());
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, A5.c
    public A5.c getCallerFrame() {
        InterfaceC1944c interfaceC1944c = this.f17599m;
        if (interfaceC1944c instanceof A5.c) {
            return (A5.c) interfaceC1944c;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, y5.InterfaceC1944c
    public InterfaceC1952k getContext() {
        InterfaceC1952k interfaceC1952k = this.f17598j;
        return interfaceC1952k == null ? EmptyCoroutineContext.f17433b : interfaceC1952k;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public Object invokeSuspend(Object obj) {
        Throwable m104exceptionOrNullimpl = Result.m104exceptionOrNullimpl(obj);
        if (m104exceptionOrNullimpl != null) {
            this.f17598j = new d(m104exceptionOrNullimpl, getContext());
        }
        InterfaceC1944c interfaceC1944c = this.f17599m;
        if (interfaceC1944c != null) {
            interfaceC1944c.resumeWith(obj);
        }
        return AbstractC2008a.getCOROUTINE_SUSPENDED();
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }
}
