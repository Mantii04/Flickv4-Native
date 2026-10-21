package kotlinx.coroutines.internal;

import H5.p;
import R5.H;
import R5.N0;
import W5.G;
import W5.M;
import kotlin.jvm.internal.j;
import y5.InterfaceC1950i;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final G f17614a = new G("NO_THREAD_ELEMENTS");

    /* renamed from: b, reason: collision with root package name */
    public static final p f17615b = new p() { // from class: kotlinx.coroutines.internal.ThreadContextKt$countAll$1
        @Override // H5.p
        public final Object invoke(Object obj, InterfaceC1950i interfaceC1950i) {
            if (!(interfaceC1950i instanceof N0)) {
                return obj;
            }
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int intValue = num != null ? num.intValue() : 1;
            return intValue == 0 ? interfaceC1950i : Integer.valueOf(intValue + 1);
        }
    };

    /* renamed from: c, reason: collision with root package name */
    public static final p f17616c = new p() { // from class: kotlinx.coroutines.internal.ThreadContextKt$findOne$1
        @Override // H5.p
        public final N0 invoke(N0 n02, InterfaceC1950i interfaceC1950i) {
            if (n02 != null) {
                return n02;
            }
            if (interfaceC1950i instanceof N0) {
                return (N0) interfaceC1950i;
            }
            return null;
        }
    };

    /* renamed from: d, reason: collision with root package name */
    public static final p f17617d = new p() { // from class: kotlinx.coroutines.internal.ThreadContextKt$updateState$1
        @Override // H5.p
        public final M invoke(M m7, InterfaceC1950i interfaceC1950i) {
            if (interfaceC1950i instanceof N0) {
                N0 n02 = (N0) interfaceC1950i;
                m7.append(n02, ((H) n02).b(m7.f4180a));
            }
            return m7;
        }
    };

    public static final void restoreThreadContext(InterfaceC1952k interfaceC1952k, Object obj) {
        if (obj == f17614a) {
            return;
        }
        if (obj instanceof M) {
            ((M) obj).restore(interfaceC1952k);
            return;
        }
        Object fold = interfaceC1952k.fold(null, f17616c);
        j.checkNotNull(fold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((H) ((N0) fold)).a(interfaceC1952k, obj);
    }

    public static final Object threadContextElements(InterfaceC1952k interfaceC1952k) {
        Object fold = interfaceC1952k.fold(0, f17615b);
        j.checkNotNull(fold);
        return fold;
    }

    public static final Object updateThreadContext(InterfaceC1952k interfaceC1952k, Object obj) {
        if (obj == null) {
            obj = threadContextElements(interfaceC1952k);
        }
        if (obj == 0) {
            return f17614a;
        }
        if (obj instanceof Integer) {
            return interfaceC1952k.fold(new M(interfaceC1952k, ((Number) obj).intValue()), f17617d);
        }
        j.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((H) ((N0) obj)).b(interfaceC1952k);
    }
}
