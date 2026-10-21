package y5;

import kotlin.coroutines.EmptyCoroutineContext;

/* renamed from: y5.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1945d {
    /* JADX WARN: Multi-variable type inference failed */
    public static <E extends InterfaceC1950i> E get(InterfaceC1947f interfaceC1947f, InterfaceC1951j key) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        if (!(key instanceof AbstractC1943b)) {
            if (C1946e.f21324b != key) {
                return null;
            }
            kotlin.jvm.internal.j.checkNotNull(interfaceC1947f, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
            return interfaceC1947f;
        }
        AbstractC1943b abstractC1943b = (AbstractC1943b) key;
        if (!abstractC1943b.isSubKey$kotlin_stdlib(((AbstractC1942a) interfaceC1947f).getKey())) {
            return null;
        }
        E e3 = (E) abstractC1943b.tryCast$kotlin_stdlib(interfaceC1947f);
        if (e3 instanceof InterfaceC1950i) {
            return e3;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static InterfaceC1952k minusKey(InterfaceC1947f interfaceC1947f, InterfaceC1951j key) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        if (!(key instanceof AbstractC1943b)) {
            return C1946e.f21324b == key ? EmptyCoroutineContext.f17433b : interfaceC1947f;
        }
        AbstractC1943b abstractC1943b = (AbstractC1943b) key;
        return (!abstractC1943b.isSubKey$kotlin_stdlib(((AbstractC1942a) interfaceC1947f).getKey()) || abstractC1943b.tryCast$kotlin_stdlib(interfaceC1947f) == null) ? interfaceC1947f : EmptyCoroutineContext.f17433b;
    }
}
