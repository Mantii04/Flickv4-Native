package kotlin.coroutines.intrinsics;

import A5.f;
import H5.p;
import kotlin.b;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.o;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class IntrinsicsKt__IntrinsicsJvmKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static <R, T> InterfaceC1944c createCoroutineUnintercepted(final p pVar, final R r6, InterfaceC1944c completion) {
        j.checkNotNullParameter(pVar, "<this>");
        j.checkNotNullParameter(completion, "completion");
        final InterfaceC1944c probeCoroutineCreated = f.probeCoroutineCreated(completion);
        if (pVar instanceof BaseContinuationImpl) {
            return ((BaseContinuationImpl) pVar).create(r6, probeCoroutineCreated);
        }
        final InterfaceC1952k context = probeCoroutineCreated.getContext();
        return context == EmptyCoroutineContext.f17433b ? new RestrictedContinuationImpl(probeCoroutineCreated, pVar, r6) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3

            /* renamed from: b, reason: collision with root package name */
            public int f17436b;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ p f17437e;

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ Object f17438f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(probeCoroutineCreated);
                this.f17437e = pVar;
                this.f17438f = r6;
                j.checkNotNull(probeCoroutineCreated, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public Object invokeSuspend(Object obj) {
                int i2 = this.f17436b;
                if (i2 != 0) {
                    if (i2 != 1) {
                        throw new IllegalStateException("This coroutine had already completed");
                    }
                    this.f17436b = 2;
                    b.throwOnFailure(obj);
                    return obj;
                }
                this.f17436b = 1;
                b.throwOnFailure(obj);
                p pVar2 = this.f17437e;
                j.checkNotNull(pVar2, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                return ((p) o.beforeCheckcastToFunctionOfArity(pVar2, 2)).invoke(this.f17438f, this);
            }
        } : new ContinuationImpl(probeCoroutineCreated, context, pVar, r6) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4

            /* renamed from: b, reason: collision with root package name */
            public int f17439b;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ p f17440e;

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ Object f17441f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(probeCoroutineCreated, context);
                this.f17440e = pVar;
                this.f17441f = r6;
                j.checkNotNull(probeCoroutineCreated, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public Object invokeSuspend(Object obj) {
                int i2 = this.f17439b;
                if (i2 != 0) {
                    if (i2 != 1) {
                        throw new IllegalStateException("This coroutine had already completed");
                    }
                    this.f17439b = 2;
                    b.throwOnFailure(obj);
                    return obj;
                }
                this.f17439b = 1;
                b.throwOnFailure(obj);
                p pVar2 = this.f17440e;
                j.checkNotNull(pVar2, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                return ((p) o.beforeCheckcastToFunctionOfArity(pVar2, 2)).invoke(this.f17441f, this);
            }
        };
    }

    public static <T> InterfaceC1944c intercepted(InterfaceC1944c interfaceC1944c) {
        InterfaceC1944c intercepted;
        j.checkNotNullParameter(interfaceC1944c, "<this>");
        ContinuationImpl continuationImpl = interfaceC1944c instanceof ContinuationImpl ? (ContinuationImpl) interfaceC1944c : null;
        return (continuationImpl == null || (intercepted = continuationImpl.intercepted()) == null) ? interfaceC1944c : intercepted;
    }
}
