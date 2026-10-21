package com.google.common.collect;

import a.AbstractC0373c;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes2.dex */
class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: s, reason: collision with root package name */
    public static final Object f13041s = new Object();

    /* renamed from: b, reason: collision with root package name */
    public transient Object f13042b;

    /* renamed from: e, reason: collision with root package name */
    public transient int[] f13043e;

    /* renamed from: f, reason: collision with root package name */
    public transient Object[] f13044f;

    /* renamed from: j, reason: collision with root package name */
    public transient Object[] f13045j;

    /* renamed from: m, reason: collision with root package name */
    public transient int f13046m;

    /* renamed from: n, reason: collision with root package name */
    public transient int f13047n;

    /* renamed from: p, reason: collision with root package name */
    public transient t f13048p;

    /* renamed from: q, reason: collision with root package name */
    public transient r f13049q;

    /* renamed from: r, reason: collision with root package name */
    public transient v f13050r;

    public CompactHashMap() {
        P3.v.checkArgument(true, "Expected size must be >= 0");
        this.f13046m = com.google.common.primitives.a.constrainToRange(3, 1, 1073741823);
    }

    public static <K, V> CompactHashMap<K, V> create() {
        return new CompactHashMap<>();
    }

    public static <K, V> CompactHashMap<K, V> createWithExpectedSize(int i2) {
        CompactHashMap<K, V> compactHashMap = new CompactHashMap<>();
        P3.v.checkArgument(i2 >= 0, "Expected size must be >= 0");
        compactHashMap.f13046m = com.google.common.primitives.a.constrainToRange(i2, 1, 1073741823);
        return compactHashMap;
    }

    public final Map a() {
        Object obj = this.f13042b;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final int c() {
        return (1 << (this.f13046m & 31)) - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (f()) {
            return;
        }
        this.f13046m += 32;
        Map a7 = a();
        if (a7 != null) {
            this.f13046m = com.google.common.primitives.a.constrainToRange(size(), 3, 1073741823);
            a7.clear();
            this.f13042b = null;
            this.f13047n = 0;
            return;
        }
        Arrays.fill(i(), 0, this.f13047n, (Object) null);
        Arrays.fill(j(), 0, this.f13047n, (Object) null);
        Object obj = this.f13042b;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(h(), 0, this.f13047n, 0);
        this.f13047n = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Map a7 = a();
        return a7 != null ? a7.containsKey(obj) : d(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Map a7 = a();
        if (a7 != null) {
            return a7.containsValue(obj);
        }
        for (int i2 = 0; i2 < this.f13047n; i2++) {
            if (P3.u.equal(obj, j()[i2])) {
                return true;
            }
        }
        return false;
    }

    public final int d(Object obj) {
        if (f()) {
            return -1;
        }
        int e3 = AbstractC0373c.e(obj);
        int c7 = c();
        Object obj2 = this.f13042b;
        Objects.requireNonNull(obj2);
        int s6 = V3.s.s(e3 & c7, obj2);
        if (s6 == 0) {
            return -1;
        }
        int i2 = ~c7;
        int i7 = e3 & i2;
        do {
            int i8 = s6 - 1;
            int i9 = h()[i8];
            if ((i9 & i2) == i7 && P3.u.equal(obj, i()[i8])) {
                return i8;
            }
            s6 = i9 & c7;
        } while (s6 != 0);
        return -1;
    }

    public final void e(int i2, int i7) {
        Object obj = this.f13042b;
        Objects.requireNonNull(obj);
        int[] h7 = h();
        Object[] i8 = i();
        Object[] j7 = j();
        int size = size();
        int i9 = size - 1;
        if (i2 >= i9) {
            i8[i2] = null;
            j7[i2] = null;
            h7[i2] = 0;
            return;
        }
        Object obj2 = i8[i9];
        i8[i2] = obj2;
        j7[i2] = j7[i9];
        i8[i9] = null;
        j7[i9] = null;
        h7[i2] = h7[i9];
        h7[i9] = 0;
        int e3 = AbstractC0373c.e(obj2) & i7;
        int s6 = V3.s.s(e3, obj);
        if (s6 == size) {
            V3.s.t(obj, e3, i2 + 1);
            return;
        }
        while (true) {
            int i10 = s6 - 1;
            int i11 = h7[i10];
            int i12 = i11 & i7;
            if (i12 == size) {
                h7[i10] = V3.s.o(i11, i2 + 1, i7);
                return;
            }
            s6 = i12;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        r rVar = this.f13049q;
        if (rVar != null) {
            return rVar;
        }
        r rVar2 = new r(this);
        this.f13049q = rVar2;
        return rVar2;
    }

    public final boolean f() {
        return this.f13042b == null;
    }

    public final Object g(Object obj) {
        boolean f3 = f();
        Object obj2 = f13041s;
        if (!f3) {
            int c7 = c();
            Object obj3 = this.f13042b;
            Objects.requireNonNull(obj3);
            int q6 = V3.s.q(obj, null, c7, obj3, h(), i(), null);
            if (q6 != -1) {
                Object obj4 = j()[q6];
                e(q6, c7);
                this.f13047n--;
                this.f13046m += 32;
                return obj4;
            }
        }
        return obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Map a7 = a();
        if (a7 != null) {
            return (V) a7.get(obj);
        }
        int d7 = d(obj);
        if (d7 == -1) {
            return null;
        }
        return (V) j()[d7];
    }

    public final int[] h() {
        int[] iArr = this.f13043e;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] i() {
        Object[] objArr = this.f13044f;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    public final Object[] j() {
        Object[] objArr = this.f13045j;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final int k(int i2, int i7, int i8, int i9) {
        Object c7 = V3.s.c(i7);
        int i10 = i7 - 1;
        if (i9 != 0) {
            V3.s.t(c7, i8 & i10, i9 + 1);
        }
        Object obj = this.f13042b;
        Objects.requireNonNull(obj);
        int[] h7 = h();
        for (int i11 = 0; i11 <= i2; i11++) {
            int s6 = V3.s.s(i11, obj);
            while (s6 != 0) {
                int i12 = s6 - 1;
                int i13 = h7[i12];
                int i14 = ((~i2) & i13) | i11;
                int i15 = i14 & i10;
                int s7 = V3.s.s(i15, c7);
                V3.s.t(c7, i15, s6);
                h7[i12] = V3.s.o(i14, s7, i10);
                s6 = i13 & i2;
            }
        }
        this.f13042b = c7;
        this.f13046m = V3.s.o(this.f13046m, 32 - Integer.numberOfLeadingZeros(i10), 31);
        return i10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        t tVar = this.f13048p;
        if (tVar != null) {
            return tVar;
        }
        t tVar2 = new t(this);
        this.f13048p = tVar2;
        return tVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00eb  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00fe -> B:43:0x00e4). Please report as a decompilation issue!!! */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V put(K r23, V r24) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.CompactHashMap.put(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        Map a7 = a();
        if (a7 != null) {
            return (V) a7.remove(obj);
        }
        V v6 = (V) g(obj);
        if (v6 == f13041s) {
            return null;
        }
        return v6;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map a7 = a();
        return a7 != null ? a7.size() : this.f13047n;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        v vVar = this.f13050r;
        if (vVar != null) {
            return vVar;
        }
        v vVar2 = new v(this);
        this.f13050r = vVar2;
        return vVar2;
    }
}
