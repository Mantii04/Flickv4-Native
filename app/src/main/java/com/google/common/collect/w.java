package com.google.common.collect;

import Q3.C0251v;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f13172a;

    /* renamed from: b, reason: collision with root package name */
    public int f13173b;

    /* renamed from: c, reason: collision with root package name */
    public C0251v f13174c;

    public w() {
        this(4);
    }

    public final ImmutableMap a(boolean z6) {
        C0251v c0251v;
        C0251v c0251v2;
        if (z6 && (c0251v2 = this.f13174c) != null) {
            throw c0251v2.a();
        }
        RegularImmutableMap a7 = RegularImmutableMap.a(this.f13173b, this.f13172a, this);
        if (!z6 || (c0251v = this.f13174c) == null) {
            return a7;
        }
        throw c0251v.a();
    }

    public ImmutableMap<Object, Object> build() {
        return buildOrThrow();
    }

    public ImmutableMap<Object, Object> buildKeepingLast() {
        return a(false);
    }

    public ImmutableMap<Object, Object> buildOrThrow() {
        return a(true);
    }

    public w put(Object obj, Object obj2) {
        int i2 = (this.f13173b + 1) * 2;
        Object[] objArr = this.f13172a;
        if (i2 > objArr.length) {
            this.f13172a = Arrays.copyOf(objArr, Q3.r.a(objArr.length, i2));
        }
        V3.r.a(obj, obj2);
        Object[] objArr2 = this.f13172a;
        int i7 = this.f13173b;
        int i8 = i7 * 2;
        objArr2[i8] = obj;
        objArr2[i8 + 1] = obj2;
        this.f13173b = i7 + 1;
        return this;
    }

    public w putAll(Map<Object, Object> map) {
        return putAll(map.entrySet());
    }

    public w(int i2) {
        this.f13172a = new Object[i2 * 2];
        this.f13173b = 0;
    }

    public w putAll(Iterable<? extends Map.Entry<Object, Object>> iterable) {
        if (iterable instanceof Collection) {
            int size = (((Collection) iterable).size() + this.f13173b) * 2;
            Object[] objArr = this.f13172a;
            if (size > objArr.length) {
                this.f13172a = Arrays.copyOf(objArr, Q3.r.a(objArr.length, size));
            }
        }
        Iterator<? extends Map.Entry<Object, Object>> it = iterable.iterator();
        while (it.hasNext()) {
            put(it.next());
        }
        return this;
    }

    public w put(Map.Entry<Object, Object> entry) {
        return put(entry.getKey(), entry.getValue());
    }
}
