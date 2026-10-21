package com.google.common.base;

import P3.v;
import java.io.Serializable;

/* loaded from: classes2.dex */
public abstract class Optional<T> implements Serializable {
    private static final long serialVersionUID = 0;

    public static <T> Optional<T> absent() {
        return Absent.f13012b;
    }

    public static <T> Optional<T> of(T t6) {
        return new Present(v.checkNotNull(t6));
    }

    public abstract T get();

    public abstract boolean isPresent();
}
