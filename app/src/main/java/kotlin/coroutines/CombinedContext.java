package kotlin.coroutines;

import H5.p;
import java.io.Serializable;
import kotlin.jvm.internal.j;
import y5.InterfaceC1950i;
import y5.InterfaceC1951j;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class CombinedContext implements InterfaceC1952k, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1952k f17429b;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC1950i f17430e;

    public CombinedContext(InterfaceC1952k left, InterfaceC1950i element) {
        j.checkNotNullParameter(left, "left");
        j.checkNotNullParameter(element, "element");
        this.f17429b = left;
        this.f17430e = element;
    }

    public boolean equals(Object obj) {
        boolean z6;
        if (this == obj) {
            return true;
        }
        if (obj instanceof CombinedContext) {
            CombinedContext combinedContext = (CombinedContext) obj;
            combinedContext.getClass();
            int i2 = 2;
            CombinedContext combinedContext2 = combinedContext;
            int i7 = 2;
            while (true) {
                InterfaceC1952k interfaceC1952k = combinedContext2.f17429b;
                combinedContext2 = interfaceC1952k instanceof CombinedContext ? (CombinedContext) interfaceC1952k : null;
                if (combinedContext2 == null) {
                    break;
                }
                i7++;
            }
            CombinedContext combinedContext3 = this;
            while (true) {
                InterfaceC1952k interfaceC1952k2 = combinedContext3.f17429b;
                combinedContext3 = interfaceC1952k2 instanceof CombinedContext ? (CombinedContext) interfaceC1952k2 : null;
                if (combinedContext3 == null) {
                    break;
                }
                i2++;
            }
            if (i7 == i2) {
                CombinedContext combinedContext4 = this;
                while (true) {
                    InterfaceC1950i interfaceC1950i = combinedContext4.f17430e;
                    if (!j.areEqual(combinedContext.get(interfaceC1950i.getKey()), interfaceC1950i)) {
                        z6 = false;
                        break;
                    }
                    InterfaceC1952k interfaceC1952k3 = combinedContext4.f17429b;
                    if (!(interfaceC1952k3 instanceof CombinedContext)) {
                        j.checkNotNull(interfaceC1952k3, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                        InterfaceC1950i interfaceC1950i2 = (InterfaceC1950i) interfaceC1952k3;
                        z6 = j.areEqual(combinedContext.get(interfaceC1950i2.getKey()), interfaceC1950i2);
                        break;
                    }
                    combinedContext4 = (CombinedContext) interfaceC1952k3;
                }
                if (z6) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // y5.InterfaceC1952k
    public <R> R fold(R r6, p operation) {
        j.checkNotNullParameter(operation, "operation");
        return (R) operation.invoke(this.f17429b.fold(r6, operation), this.f17430e);
    }

    @Override // y5.InterfaceC1952k
    public <E extends InterfaceC1950i> E get(InterfaceC1951j key) {
        j.checkNotNullParameter(key, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e3 = (E) combinedContext.f17430e.get(key);
            if (e3 != null) {
                return e3;
            }
            InterfaceC1952k interfaceC1952k = combinedContext.f17429b;
            if (!(interfaceC1952k instanceof CombinedContext)) {
                return (E) interfaceC1952k.get(key);
            }
            combinedContext = (CombinedContext) interfaceC1952k;
        }
    }

    public int hashCode() {
        return this.f17430e.hashCode() + this.f17429b.hashCode();
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k minusKey(InterfaceC1951j key) {
        j.checkNotNullParameter(key, "key");
        InterfaceC1950i interfaceC1950i = this.f17430e;
        InterfaceC1950i interfaceC1950i2 = interfaceC1950i.get(key);
        InterfaceC1952k interfaceC1952k = this.f17429b;
        if (interfaceC1950i2 != null) {
            return interfaceC1952k;
        }
        InterfaceC1952k minusKey = interfaceC1952k.minusKey(key);
        return minusKey == interfaceC1952k ? this : minusKey == EmptyCoroutineContext.f17433b ? interfaceC1950i : new CombinedContext(minusKey, interfaceC1950i);
    }

    @Override // y5.InterfaceC1952k
    public InterfaceC1952k plus(InterfaceC1952k interfaceC1952k) {
        return CoroutineContext$DefaultImpls.plus(this, interfaceC1952k);
    }

    public String toString() {
        return "[" + ((String) fold("", new p() { // from class: kotlin.coroutines.CombinedContext$toString$1
            @Override // H5.p
            public final String invoke(String acc, InterfaceC1950i element) {
                j.checkNotNullParameter(acc, "acc");
                j.checkNotNullParameter(element, "element");
                if (acc.length() == 0) {
                    return element.toString();
                }
                return acc + ", " + element;
            }
        })) + ']';
    }
}
