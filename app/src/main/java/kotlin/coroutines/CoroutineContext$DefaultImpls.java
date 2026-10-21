package kotlin.coroutines;

import H5.p;
import kotlin.jvm.internal.j;
import y5.C1946e;
import y5.InterfaceC1947f;
import y5.InterfaceC1950i;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class CoroutineContext$DefaultImpls {
    public static InterfaceC1952k plus(InterfaceC1952k interfaceC1952k, InterfaceC1952k context) {
        j.checkNotNullParameter(context, "context");
        return context == EmptyCoroutineContext.f17433b ? interfaceC1952k : (InterfaceC1952k) context.fold(interfaceC1952k, new p() { // from class: kotlin.coroutines.CoroutineContext$plus$1
            @Override // H5.p
            public final InterfaceC1952k invoke(InterfaceC1952k acc, InterfaceC1950i element) {
                j.checkNotNullParameter(acc, "acc");
                j.checkNotNullParameter(element, "element");
                InterfaceC1952k minusKey = acc.minusKey(element.getKey());
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f17433b;
                if (minusKey == emptyCoroutineContext) {
                    return element;
                }
                C1946e c1946e = C1946e.f21324b;
                InterfaceC1947f interfaceC1947f = (InterfaceC1947f) minusKey.get(c1946e);
                if (interfaceC1947f == null) {
                    return new CombinedContext(minusKey, element);
                }
                InterfaceC1952k minusKey2 = minusKey.minusKey(c1946e);
                return minusKey2 == emptyCoroutineContext ? new CombinedContext(element, interfaceC1947f) : new CombinedContext(new CombinedContext(minusKey2, element), interfaceC1947f);
            }
        });
    }
}
