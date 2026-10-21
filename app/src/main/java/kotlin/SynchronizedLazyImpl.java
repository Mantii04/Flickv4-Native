package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import u5.C1710i;
import u5.InterfaceC1707f;

/* loaded from: classes2.dex */
final class SynchronizedLazyImpl<T> implements InterfaceC1707f, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public H5.a f17392b;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f17393e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f17394f;

    public SynchronizedLazyImpl(H5.a initializer, Object obj) {
        j.checkNotNullParameter(initializer, "initializer");
        this.f17392b = initializer;
        this.f17393e = C1710i.f20328a;
        this.f17394f = obj == null ? this : obj;
    }

    @Override // u5.InterfaceC1707f
    public T getValue() {
        T t6;
        T t7 = (T) this.f17393e;
        C1710i c1710i = C1710i.f20328a;
        if (t7 != c1710i) {
            return t7;
        }
        synchronized (this.f17394f) {
            t6 = (T) this.f17393e;
            if (t6 == c1710i) {
                H5.a aVar = this.f17392b;
                j.checkNotNull(aVar);
                t6 = (T) aVar.invoke();
                this.f17393e = t6;
                this.f17392b = null;
            }
        }
        return t6;
    }

    @Override // u5.InterfaceC1707f
    public boolean isInitialized() {
        return this.f17393e != C1710i.f20328a;
    }

    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ SynchronizedLazyImpl(H5.a aVar, Object obj, int i2, g gVar) {
        this(aVar, (i2 & 2) != 0 ? null : obj);
    }
}
