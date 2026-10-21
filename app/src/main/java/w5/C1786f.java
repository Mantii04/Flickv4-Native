package w5;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.collections.builders.MapBuilder;

/* renamed from: w5.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1786f extends AbstractC1788h implements Iterator, I5.a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1786f(MapBuilder<Object, Object> map) {
        super(map);
        kotlin.jvm.internal.j.checkNotNullParameter(map, "map");
    }

    public final void nextAppendString(StringBuilder sb) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        kotlin.jvm.internal.j.checkNotNullParameter(sb, "sb");
        int index$kotlin_stdlib = getIndex$kotlin_stdlib();
        i2 = getMap$kotlin_stdlib().f17415n;
        if (index$kotlin_stdlib >= i2) {
            throw new NoSuchElementException();
        }
        int index$kotlin_stdlib2 = getIndex$kotlin_stdlib();
        setIndex$kotlin_stdlib(index$kotlin_stdlib2 + 1);
        setLastIndex$kotlin_stdlib(index$kotlin_stdlib2);
        objArr = getMap$kotlin_stdlib().f17410b;
        Object obj = objArr[getLastIndex$kotlin_stdlib()];
        if (obj == getMap$kotlin_stdlib()) {
            sb.append("(this Map)");
        } else {
            sb.append(obj);
        }
        sb.append('=');
        objArr2 = getMap$kotlin_stdlib().f17411e;
        kotlin.jvm.internal.j.checkNotNull(objArr2);
        Object obj2 = objArr2[getLastIndex$kotlin_stdlib()];
        if (obj2 == getMap$kotlin_stdlib()) {
            sb.append("(this Map)");
        } else {
            sb.append(obj2);
        }
        initNext$kotlin_stdlib();
    }

    public final int nextHashCode$kotlin_stdlib() {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        int index$kotlin_stdlib = getIndex$kotlin_stdlib();
        i2 = getMap$kotlin_stdlib().f17415n;
        if (index$kotlin_stdlib >= i2) {
            throw new NoSuchElementException();
        }
        int index$kotlin_stdlib2 = getIndex$kotlin_stdlib();
        setIndex$kotlin_stdlib(index$kotlin_stdlib2 + 1);
        setLastIndex$kotlin_stdlib(index$kotlin_stdlib2);
        objArr = getMap$kotlin_stdlib().f17410b;
        Object obj = objArr[getLastIndex$kotlin_stdlib()];
        int hashCode = obj != null ? obj.hashCode() : 0;
        objArr2 = getMap$kotlin_stdlib().f17411e;
        kotlin.jvm.internal.j.checkNotNull(objArr2);
        Object obj2 = objArr2[getLastIndex$kotlin_stdlib()];
        int hashCode2 = hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
        initNext$kotlin_stdlib();
        return hashCode2;
    }

    @Override // java.util.Iterator
    public C1787g next() {
        int i2;
        checkForComodification$kotlin_stdlib();
        int index$kotlin_stdlib = getIndex$kotlin_stdlib();
        i2 = getMap$kotlin_stdlib().f17415n;
        if (index$kotlin_stdlib >= i2) {
            throw new NoSuchElementException();
        }
        int index$kotlin_stdlib2 = getIndex$kotlin_stdlib();
        setIndex$kotlin_stdlib(index$kotlin_stdlib2 + 1);
        setLastIndex$kotlin_stdlib(index$kotlin_stdlib2);
        C1787g c1787g = new C1787g(getMap$kotlin_stdlib(), getLastIndex$kotlin_stdlib());
        initNext$kotlin_stdlib();
        return c1787g;
    }
}
