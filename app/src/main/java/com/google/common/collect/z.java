package com.google.common.collect;

import Q3.AbstractC0247q;
import a.AbstractC0373c;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes2.dex */
public class z extends AbstractC0247q {

    /* renamed from: d, reason: collision with root package name */
    public Object[] f13178d;

    /* renamed from: e, reason: collision with root package name */
    public int f13179e;

    public z() {
        super(4);
    }

    @Override // Q3.AbstractC0247q, Q3.r
    public z addAll(Iterable<Object> iterable) {
        P3.v.checkNotNull(iterable);
        if (this.f13178d == null) {
            addAll(iterable);
            return this;
        }
        Iterator<Object> it = iterable.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return this;
    }

    public ImmutableSet<Object> build() {
        ImmutableSet<Object> f3;
        int i2 = this.f2909b;
        if (i2 == 0) {
            return ImmutableSet.of();
        }
        if (i2 == 1) {
            Object obj = this.f2908a[0];
            Objects.requireNonNull(obj);
            return ImmutableSet.of(obj);
        }
        if (this.f13178d == null || ImmutableSet.e(i2) != this.f13178d.length) {
            f3 = ImmutableSet.f(this.f2909b, this.f2908a);
            this.f2909b = f3.size();
        } else {
            int i7 = this.f2909b;
            Object[] objArr = this.f2908a;
            int length = objArr.length;
            if (i7 < (length >> 1) + (length >> 2)) {
                objArr = Arrays.copyOf(objArr, i7);
            }
            f3 = new RegularImmutableSet<>(objArr, this.f13179e, this.f13178d, r6.length - 1, this.f2909b);
        }
        this.f2910c = true;
        this.f13178d = null;
        return f3;
    }

    @Override // Q3.r
    public z add(Object obj) {
        P3.v.checkNotNull(obj);
        if (this.f13178d != null) {
            int e3 = ImmutableSet.e(this.f2909b);
            Object[] objArr = this.f13178d;
            if (e3 <= objArr.length) {
                Objects.requireNonNull(objArr);
                int length = this.f13178d.length - 1;
                int hashCode = obj.hashCode();
                int d7 = AbstractC0373c.d(hashCode);
                while (true) {
                    int i2 = d7 & length;
                    Object[] objArr2 = this.f13178d;
                    Object obj2 = objArr2[i2];
                    if (obj2 == null) {
                        objArr2[i2] = obj;
                        this.f13179e += hashCode;
                        add(obj);
                        return this;
                    }
                    if (obj2.equals(obj)) {
                        return this;
                    }
                    d7 = i2 + 1;
                }
            }
        }
        this.f13178d = null;
        add(obj);
        return this;
    }

    @Override // Q3.AbstractC0247q
    public z add(Object... objArr) {
        if (this.f13178d != null) {
            for (Object obj : objArr) {
                add(obj);
            }
            return this;
        }
        add(objArr);
        return this;
    }
}
