package com.google.common.base;

import P3.C;
import P3.v;
import java.io.Serializable;

/* loaded from: classes2.dex */
class Suppliers$MemoizingSupplier<T> implements C, Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final transient Object f13022b = new Object();

    /* renamed from: e, reason: collision with root package name */
    public final C f13023e;

    /* renamed from: f, reason: collision with root package name */
    public volatile transient boolean f13024f;

    /* renamed from: j, reason: collision with root package name */
    public transient Object f13025j;

    public Suppliers$MemoizingSupplier(C c7) {
        this.f13023e = (C) v.checkNotNull(c7);
    }

    @Override // P3.C
    public T get() {
        if (!this.f13024f) {
            synchronized (this.f13022b) {
                try {
                    if (!this.f13024f) {
                        T t6 = (T) this.f13023e.get();
                        this.f13025j = t6;
                        this.f13024f = true;
                        return t6;
                    }
                } finally {
                }
            }
        }
        return (T) this.f13025j;
    }

    public String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (this.f13024f) {
            obj = "<supplier that returned " + this.f13025j + ">";
        } else {
            obj = this.f13023e;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
