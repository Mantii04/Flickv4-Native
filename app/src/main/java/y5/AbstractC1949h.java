package y5;

import H5.p;
import kotlin.coroutines.CoroutineContext$DefaultImpls;
import kotlin.coroutines.EmptyCoroutineContext;

/* renamed from: y5.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1949h {
    public static <R> R fold(InterfaceC1950i interfaceC1950i, R r6, p operation) {
        kotlin.jvm.internal.j.checkNotNullParameter(operation, "operation");
        return (R) operation.invoke(r6, interfaceC1950i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E extends InterfaceC1950i> E get(InterfaceC1950i interfaceC1950i, InterfaceC1951j key) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        if (!kotlin.jvm.internal.j.areEqual(interfaceC1950i.getKey(), key)) {
            return null;
        }
        kotlin.jvm.internal.j.checkNotNull(interfaceC1950i, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
        return interfaceC1950i;
    }

    public static InterfaceC1952k minusKey(InterfaceC1950i interfaceC1950i, InterfaceC1951j key) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        return kotlin.jvm.internal.j.areEqual(interfaceC1950i.getKey(), key) ? EmptyCoroutineContext.f17433b : interfaceC1950i;
    }

    public static InterfaceC1952k plus(InterfaceC1950i interfaceC1950i, InterfaceC1952k context) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        return CoroutineContext$DefaultImpls.plus(interfaceC1950i, context);
    }
}
