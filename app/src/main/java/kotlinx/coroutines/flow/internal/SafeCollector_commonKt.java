package kotlinx.coroutines.flow.internal;

import H5.p;
import R5.A0;
import R5.F;
import R5.InterfaceC0294q0;
import W5.C;
import kotlin.jvm.internal.j;
import y5.InterfaceC1950i;
import y5.InterfaceC1951j;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class SafeCollector_commonKt {
    public static final void checkContext(final SafeCollector<?> safeCollector, InterfaceC1952k interfaceC1952k) {
        if (((Number) interfaceC1952k.fold(0, new p() { // from class: kotlinx.coroutines.flow.internal.SafeCollector_commonKt$checkContext$result$1
            {
                super(2);
            }

            @Override // H5.p
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke(((Number) obj).intValue(), (InterfaceC1950i) obj2);
            }

            public final Integer invoke(int i2, InterfaceC1950i interfaceC1950i) {
                InterfaceC1951j key = interfaceC1950i.getKey();
                InterfaceC1950i interfaceC1950i2 = SafeCollector.this.f17596e.get(key);
                if (key != F.f3147e) {
                    return Integer.valueOf(interfaceC1950i != interfaceC1950i2 ? Integer.MIN_VALUE : i2 + 1);
                }
                InterfaceC0294q0 interfaceC0294q0 = (InterfaceC0294q0) interfaceC1950i2;
                j.checkNotNull(interfaceC1950i, "null cannot be cast to non-null type kotlinx.coroutines.Job");
                InterfaceC0294q0 transitiveCoroutineParent = SafeCollector_commonKt.transitiveCoroutineParent((InterfaceC0294q0) interfaceC1950i, interfaceC0294q0);
                if (transitiveCoroutineParent == interfaceC0294q0) {
                    if (interfaceC0294q0 != null) {
                        i2++;
                    }
                    return Integer.valueOf(i2);
                }
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + transitiveCoroutineParent + ", expected child of " + interfaceC0294q0 + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
            }
        })).intValue() == safeCollector.f17597f) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.f17596e + ",\n\t\tbut emission happened in " + interfaceC1952k + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    public static final InterfaceC0294q0 transitiveCoroutineParent(InterfaceC0294q0 interfaceC0294q0, InterfaceC0294q0 interfaceC0294q02) {
        while (interfaceC0294q0 != null) {
            if (interfaceC0294q0 == interfaceC0294q02 || !(interfaceC0294q0 instanceof C)) {
                return interfaceC0294q0;
            }
            interfaceC0294q0 = ((A0) interfaceC0294q0).getParent();
        }
        return null;
    }
}
