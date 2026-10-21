package com.google.common.collect;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public abstract class B {
    public static <E> ArrayList<E> newArrayList() {
        return new ArrayList<>();
    }

    public static <F, T> List<T> transform(List<F> list, P3.p pVar) {
        return list instanceof RandomAccess ? new Lists$TransformingRandomAccessList(list, pVar) : new Lists$TransformingSequentialList(list, pVar);
    }

    @SafeVarargs
    public static <E> ArrayList<E> newArrayList(E... eArr) {
        P3.v.checkNotNull(eArr);
        int length = eArr.length;
        V3.r.b(length, "arraySize");
        ArrayList<E> arrayList = new ArrayList<>(com.google.common.primitives.a.saturatedCast(length + 5 + (length / 10)));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    public static <E> ArrayList<E> newArrayList(Iterator<? extends E> it) {
        ArrayList<E> newArrayList = newArrayList();
        Q3.F.addAll(newArrayList, it);
        return newArrayList;
    }
}
