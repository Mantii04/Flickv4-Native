package w5;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.collections.builders.MapBuilder;

/* renamed from: w5.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1790j extends AbstractC1788h implements Iterator, I5.a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1790j(MapBuilder<Object, Object> map) {
        super(map);
        kotlin.jvm.internal.j.checkNotNullParameter(map, "map");
    }

    @Override // java.util.Iterator
    public Object next() {
        int i2;
        Object[] objArr;
        checkForComodification$kotlin_stdlib();
        int index$kotlin_stdlib = getIndex$kotlin_stdlib();
        i2 = getMap$kotlin_stdlib().f17415n;
        if (index$kotlin_stdlib >= i2) {
            throw new NoSuchElementException();
        }
        int index$kotlin_stdlib2 = getIndex$kotlin_stdlib();
        setIndex$kotlin_stdlib(index$kotlin_stdlib2 + 1);
        setLastIndex$kotlin_stdlib(index$kotlin_stdlib2);
        objArr = getMap$kotlin_stdlib().f17411e;
        kotlin.jvm.internal.j.checkNotNull(objArr);
        Object obj = objArr[getLastIndex$kotlin_stdlib()];
        initNext$kotlin_stdlib();
        return obj;
    }
}
