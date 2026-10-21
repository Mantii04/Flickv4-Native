package com.google.common.base;

import P3.C;
import P3.E;
import java.io.Serializable;

/* loaded from: classes2.dex */
public abstract class c {
    public static <T> C memoize(C c7) {
        return !(c7 instanceof E) ? c7 instanceof Suppliers$MemoizingSupplier ? c7 : c7 instanceof Serializable ? new Suppliers$MemoizingSupplier(c7) : new E(c7) : c7;
    }

    public static <T> C ofInstance(T t6) {
        return new Suppliers$SupplierOfInstance(t6);
    }
}
