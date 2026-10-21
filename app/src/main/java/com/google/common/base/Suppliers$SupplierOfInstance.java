package com.google.common.base;

import P3.C;
import P3.u;
import java.io.Serializable;

/* loaded from: classes2.dex */
class Suppliers$SupplierOfInstance<T> implements C, Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13026b;

    public Suppliers$SupplierOfInstance(Object obj) {
        this.f13026b = obj;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Suppliers$SupplierOfInstance) {
            return u.equal(this.f13026b, ((Suppliers$SupplierOfInstance) obj).f13026b);
        }
        return false;
    }

    @Override // P3.C
    public T get() {
        return (T) this.f13026b;
    }

    public int hashCode() {
        return u.hashCode(this.f13026b);
    }

    public String toString() {
        return "Suppliers.ofInstance(" + this.f13026b + ")";
    }
}
