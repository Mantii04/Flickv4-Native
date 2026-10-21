package com.google.common.collect;

import Q3.AbstractC0234d;
import java.util.Map;

/* loaded from: classes2.dex */
public final class u extends AbstractC0234d {

    /* renamed from: b, reason: collision with root package name */
    public final Object f13168b;

    /* renamed from: e, reason: collision with root package name */
    public int f13169e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CompactHashMap f13170f;

    public u(CompactHashMap compactHashMap, int i2) {
        this.f13170f = compactHashMap;
        Object obj = CompactHashMap.f13041s;
        this.f13168b = compactHashMap.i()[i2];
        this.f13169e = i2;
    }

    public final void a() {
        int i2 = this.f13169e;
        Object obj = this.f13168b;
        CompactHashMap compactHashMap = this.f13170f;
        if (i2 != -1 && i2 < compactHashMap.size()) {
            if (P3.u.equal(obj, compactHashMap.i()[this.f13169e])) {
                return;
            }
        }
        Object obj2 = CompactHashMap.f13041s;
        this.f13169e = compactHashMap.d(obj);
    }

    @Override // Q3.AbstractC0234d, java.util.Map.Entry
    public Object getKey() {
        return this.f13168b;
    }

    @Override // Q3.AbstractC0234d, java.util.Map.Entry
    public Object getValue() {
        CompactHashMap compactHashMap = this.f13170f;
        Map a7 = compactHashMap.a();
        if (a7 != null) {
            return a7.get(this.f13168b);
        }
        a();
        int i2 = this.f13169e;
        if (i2 == -1) {
            return null;
        }
        return compactHashMap.j()[i2];
    }

    @Override // Q3.AbstractC0234d, java.util.Map.Entry
    public Object setValue(Object obj) {
        CompactHashMap compactHashMap = this.f13170f;
        Map a7 = compactHashMap.a();
        Object obj2 = this.f13168b;
        if (a7 != null) {
            return a7.put(obj2, obj);
        }
        a();
        int i2 = this.f13169e;
        if (i2 == -1) {
            compactHashMap.put(obj2, obj);
            return null;
        }
        Object obj3 = compactHashMap.j()[i2];
        compactHashMap.j()[this.f13169e] = obj;
        return obj3;
    }
}
