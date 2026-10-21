package y5;

import H5.l;

/* renamed from: y5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1943b implements InterfaceC1951j {

    /* renamed from: b, reason: collision with root package name */
    public final l f21322b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1951j f21323e;

    public AbstractC1943b(InterfaceC1951j baseKey, l safeCast) {
        kotlin.jvm.internal.j.checkNotNullParameter(baseKey, "baseKey");
        kotlin.jvm.internal.j.checkNotNullParameter(safeCast, "safeCast");
        this.f21322b = safeCast;
        this.f21323e = baseKey instanceof AbstractC1943b ? ((AbstractC1943b) baseKey).f21323e : baseKey;
    }

    public final boolean isSubKey$kotlin_stdlib(InterfaceC1951j key) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        return key == this || this.f21323e == key;
    }

    public final Object tryCast$kotlin_stdlib(InterfaceC1950i element) {
        kotlin.jvm.internal.j.checkNotNullParameter(element, "element");
        return (InterfaceC1950i) this.f21322b.invoke(element);
    }
}
