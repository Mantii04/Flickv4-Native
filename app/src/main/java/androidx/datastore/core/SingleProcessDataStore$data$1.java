package androidx.datastore.core;

import A5.a;
import A5.d;
import H5.p;
import U5.c;
import U5.k;
import Y.f;
import Y.o;
import kotlin.b;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.flow.StateFlowImpl;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

@d(c = "androidx.datastore.core.SingleProcessDataStore$data$1", f = "SingleProcessDataStore.kt", l = {117}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SingleProcessDataStore$data$1 extends SuspendLambda implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f5642b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f5643e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f5644f;

    @d(c = "androidx.datastore.core.SingleProcessDataStore$data$1$1", f = "SingleProcessDataStore.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.core.SingleProcessDataStore$data$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements p {

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f5645b;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Y.p f5646e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Y.p pVar, InterfaceC1944c interfaceC1944c) {
            super(2, interfaceC1944c);
            this.f5646e = pVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f5646e, interfaceC1944c);
            anonymousClass1.f5645b = obj;
            return anonymousClass1;
        }

        @Override // H5.p
        public final Object invoke(Y.p pVar, InterfaceC1944c interfaceC1944c) {
            return ((AnonymousClass1) create(pVar, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AbstractC2008a.getCOROUTINE_SUSPENDED();
            b.throwOnFailure(obj);
            Y.p pVar = (Y.p) this.f5645b;
            Y.p pVar2 = this.f5646e;
            boolean z6 = false;
            if (!(pVar2 instanceof Y.b) && !(pVar2 instanceof f) && pVar == pVar2) {
                z6 = true;
            }
            return a.boxBoolean(z6);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$data$1(SingleProcessDataStore singleProcessDataStore, InterfaceC1944c interfaceC1944c) {
        super(2, interfaceC1944c);
        this.f5644f = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final InterfaceC1944c create(Object obj, InterfaceC1944c interfaceC1944c) {
        SingleProcessDataStore$data$1 singleProcessDataStore$data$1 = new SingleProcessDataStore$data$1(this.f5644f, interfaceC1944c);
        singleProcessDataStore$data$1.f5643e = obj;
        return singleProcessDataStore$data$1;
    }

    @Override // H5.p
    public final Object invoke(c cVar, InterfaceC1944c interfaceC1944c) {
        return ((SingleProcessDataStore$data$1) create(cVar, interfaceC1944c)).invokeSuspend(C1711j.f20329a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        k kVar;
        k kVar2;
        SimpleActor simpleActor;
        Object coroutine_suspended = AbstractC2008a.getCOROUTINE_SUSPENDED();
        int i2 = this.f5642b;
        if (i2 == 0) {
            b.throwOnFailure(obj);
            c cVar = (c) this.f5643e;
            SingleProcessDataStore singleProcessDataStore = this.f5644f;
            kVar = singleProcessDataStore.f5630g;
            Y.p pVar = (Y.p) ((StateFlowImpl) kVar).getValue();
            if (!(pVar instanceof Y.b)) {
                simpleActor = singleProcessDataStore.f5632i;
                simpleActor.offer(new Y.k(pVar));
            }
            kVar2 = singleProcessDataStore.f5630g;
            o oVar = new o(U5.d.dropWhile(kVar2, new AnonymousClass1(pVar, null)));
            this.f5642b = 1;
            if (U5.d.emitAll(cVar, oVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            b.throwOnFailure(obj);
        }
        return C1711j.f20329a;
    }
}
