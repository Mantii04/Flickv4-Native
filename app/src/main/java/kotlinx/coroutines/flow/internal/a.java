package kotlinx.coroutines.flow.internal;

import H5.q;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.o;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final q f17603a;

    static {
        SafeCollectorKt$emitFun$1 safeCollectorKt$emitFun$1 = SafeCollectorKt$emitFun$1.f17601b;
        j.checkNotNull(safeCollectorKt$emitFun$1, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>");
        f17603a = (q) o.beforeCheckcastToFunctionOfArity(safeCollectorKt$emitFun$1, 3);
    }
}
