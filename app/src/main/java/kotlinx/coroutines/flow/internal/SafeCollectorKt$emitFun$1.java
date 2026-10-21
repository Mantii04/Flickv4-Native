package kotlinx.coroutines.flow.internal;

import H5.q;
import U5.c;
import kotlin.jvm.internal.FunctionReferenceImpl;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
final /* synthetic */ class SafeCollectorKt$emitFun$1 extends FunctionReferenceImpl implements q {

    /* renamed from: b, reason: collision with root package name */
    public static final SafeCollectorKt$emitFun$1 f17601b = new SafeCollectorKt$emitFun$1();

    public SafeCollectorKt$emitFun$1() {
        super(3, c.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // H5.q
    public final Object invoke(c cVar, Object obj, InterfaceC1944c interfaceC1944c) {
        return cVar.emit(obj, interfaceC1944c);
    }
}
