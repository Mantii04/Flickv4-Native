package kotlin;

import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import u5.InterfaceC1707f;

/* loaded from: classes2.dex */
public abstract class a {
    public static <T> InterfaceC1707f lazy(H5.a initializer) {
        j.checkNotNullParameter(initializer, "initializer");
        g gVar = null;
        return new SynchronizedLazyImpl(initializer, gVar, 2, gVar);
    }
}
