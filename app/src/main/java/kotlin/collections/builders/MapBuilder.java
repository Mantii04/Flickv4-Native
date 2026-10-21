package kotlin.collections.builders;

import M5.g;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.j;
import v5.AbstractC1769e;
import w5.AbstractC1784d;
import w5.C1785e;
import w5.C1786f;
import w5.C1789i;
import w5.C1790j;
import w5.C1791k;
import w5.C1792l;
import w5.C1793m;

/* loaded from: classes2.dex */
public final class MapBuilder<K, V> implements Map<K, V>, Serializable, I5.a {

    /* renamed from: w, reason: collision with root package name */
    public static final C1785e f17408w = new C1785e(null);

    /* renamed from: x, reason: collision with root package name */
    public static final MapBuilder f17409x;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f17410b;

    /* renamed from: e, reason: collision with root package name */
    public Object[] f17411e;

    /* renamed from: f, reason: collision with root package name */
    public int[] f17412f;

    /* renamed from: j, reason: collision with root package name */
    public int[] f17413j;

    /* renamed from: m, reason: collision with root package name */
    public int f17414m;

    /* renamed from: n, reason: collision with root package name */
    public int f17415n;

    /* renamed from: p, reason: collision with root package name */
    public int f17416p;

    /* renamed from: q, reason: collision with root package name */
    public int f17417q;

    /* renamed from: r, reason: collision with root package name */
    public int f17418r;

    /* renamed from: s, reason: collision with root package name */
    public C1792l f17419s;

    /* renamed from: t, reason: collision with root package name */
    public C1793m f17420t;

    /* renamed from: u, reason: collision with root package name */
    public C1791k f17421u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f17422v;

    static {
        MapBuilder mapBuilder = new MapBuilder(0);
        mapBuilder.f17422v = true;
        f17409x = mapBuilder;
    }

    public MapBuilder() {
        this(8);
    }

    public static final Object[] access$allocateValuesArray(MapBuilder mapBuilder) {
        Object[] objArr = mapBuilder.f17411e;
        if (objArr != null) {
            return objArr;
        }
        Object[] arrayOfUninitializedElements = AbstractC1784d.arrayOfUninitializedElements(mapBuilder.getCapacity$kotlin_stdlib());
        mapBuilder.f17411e = arrayOfUninitializedElements;
        return arrayOfUninitializedElements;
    }

    public final void a(boolean z6) {
        int i2;
        Object[] objArr = this.f17411e;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            i2 = this.f17415n;
            if (i7 >= i2) {
                break;
            }
            int[] iArr = this.f17412f;
            int i9 = iArr[i7];
            if (i9 >= 0) {
                Object[] objArr2 = this.f17410b;
                objArr2[i8] = objArr2[i7];
                if (objArr != null) {
                    objArr[i8] = objArr[i7];
                }
                if (z6) {
                    iArr[i8] = i9;
                    this.f17413j[i9] = i8 + 1;
                }
                i8++;
            }
            i7++;
        }
        AbstractC1784d.resetRange(this.f17410b, i8, i2);
        if (objArr != null) {
            AbstractC1784d.resetRange(objArr, i8, this.f17415n);
        }
        this.f17415n = i8;
    }

    public final int addKey$kotlin_stdlib(K k7) {
        checkIsMutable$kotlin_stdlib();
        while (true) {
            int f3 = f(k7);
            int coerceAtMost = g.coerceAtMost(this.f17414m * 2, this.f17413j.length / 2);
            int i2 = 0;
            while (true) {
                int i7 = this.f17413j[f3];
                if (i7 <= 0) {
                    if (this.f17415n < getCapacity$kotlin_stdlib()) {
                        int i8 = this.f17415n;
                        int i9 = i8 + 1;
                        this.f17415n = i9;
                        this.f17410b[i8] = k7;
                        this.f17412f[i8] = f3;
                        this.f17413j[f3] = i9;
                        this.f17418r = size() + 1;
                        this.f17417q++;
                        if (i2 > this.f17414m) {
                            this.f17414m = i2;
                        }
                        return i8;
                    }
                    c(1);
                } else {
                    if (j.areEqual(this.f17410b[i7 - 1], k7)) {
                        return -i7;
                    }
                    i2++;
                    if (i2 > coerceAtMost) {
                        g(this.f17413j.length * 2);
                        break;
                    }
                    f3 = f3 == 0 ? this.f17413j.length - 1 : f3 - 1;
                }
            }
        }
    }

    public final Map<K, V> build() {
        checkIsMutable$kotlin_stdlib();
        this.f17422v = true;
        if (size() > 0) {
            return this;
        }
        MapBuilder mapBuilder = f17409x;
        j.checkNotNull(mapBuilder, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return mapBuilder;
    }

    public final void c(int i2) {
        int capacity$kotlin_stdlib = getCapacity$kotlin_stdlib();
        int i7 = this.f17415n;
        int i8 = capacity$kotlin_stdlib - i7;
        int size = i7 - size();
        if (i8 < i2 && i8 + size >= i2 && size >= getCapacity$kotlin_stdlib() / 4) {
            a(true);
            return;
        }
        int i9 = this.f17415n + i2;
        if (i9 < 0) {
            throw new OutOfMemoryError();
        }
        if (i9 > getCapacity$kotlin_stdlib()) {
            int newCapacity$kotlin_stdlib = AbstractC1769e.f20637b.newCapacity$kotlin_stdlib(getCapacity$kotlin_stdlib(), i9);
            this.f17410b = AbstractC1784d.copyOfUninitializedElements(this.f17410b, newCapacity$kotlin_stdlib);
            Object[] objArr = this.f17411e;
            this.f17411e = objArr != null ? AbstractC1784d.copyOfUninitializedElements(objArr, newCapacity$kotlin_stdlib) : null;
            int[] copyOf = Arrays.copyOf(this.f17412f, newCapacity$kotlin_stdlib);
            j.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f17412f = copyOf;
            int access$computeHashSize = C1785e.access$computeHashSize(f17408w, newCapacity$kotlin_stdlib);
            if (access$computeHashSize > this.f17413j.length) {
                g(access$computeHashSize);
            }
        }
    }

    public final void checkIsMutable$kotlin_stdlib() {
        if (this.f17422v) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public void clear() {
        checkIsMutable$kotlin_stdlib();
        int i2 = this.f17415n - 1;
        if (i2 >= 0) {
            int i7 = 0;
            while (true) {
                int[] iArr = this.f17412f;
                int i8 = iArr[i7];
                if (i8 >= 0) {
                    this.f17413j[i8] = 0;
                    iArr[i7] = -1;
                }
                if (i7 == i2) {
                    break;
                } else {
                    i7++;
                }
            }
        }
        AbstractC1784d.resetRange(this.f17410b, 0, this.f17415n);
        Object[] objArr = this.f17411e;
        if (objArr != null) {
            AbstractC1784d.resetRange(objArr, 0, this.f17415n);
        }
        this.f17418r = 0;
        this.f17415n = 0;
        this.f17417q++;
    }

    public final boolean containsAllEntries$kotlin_stdlib(Collection<?> m7) {
        j.checkNotNullParameter(m7, "m");
        for (Object obj : m7) {
            if (obj != null) {
                try {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean containsEntry$kotlin_stdlib(Map.Entry<? extends K, ? extends V> entry) {
        j.checkNotNullParameter(entry, "entry");
        int d7 = d(entry.getKey());
        if (d7 < 0) {
            return false;
        }
        Object[] objArr = this.f17411e;
        j.checkNotNull(objArr);
        return j.areEqual(objArr[d7], entry.getValue());
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return d(obj) >= 0;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return e(obj) >= 0;
    }

    public final int d(Object obj) {
        int f3 = f(obj);
        int i2 = this.f17414m;
        while (true) {
            int i7 = this.f17413j[f3];
            if (i7 == 0) {
                return -1;
            }
            if (i7 > 0) {
                int i8 = i7 - 1;
                if (j.areEqual(this.f17410b[i8], obj)) {
                    return i8;
                }
            }
            i2--;
            if (i2 < 0) {
                return -1;
            }
            f3 = f3 == 0 ? this.f17413j.length - 1 : f3 - 1;
        }
    }

    public final int e(Object obj) {
        int i2 = this.f17415n;
        while (true) {
            i2--;
            if (i2 < 0) {
                return -1;
            }
            if (this.f17412f[i2] >= 0) {
                Object[] objArr = this.f17411e;
                j.checkNotNull(objArr);
                if (j.areEqual(objArr[i2], obj)) {
                    return i2;
                }
            }
        }
    }

    public final C1786f entriesIterator$kotlin_stdlib() {
        return new C1786f(this);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        return size() == map.size() && containsAllEntries$kotlin_stdlib(map.entrySet());
    }

    public final int f(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.f17416p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0034, code lost:
    
        r3[r0] = r6;
        r5.f17412f[r2] = r0;
        r2 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(int r6) {
        /*
            r5 = this;
            int r0 = r5.f17417q
            int r0 = r0 + 1
            r5.f17417q = r0
            int r0 = r5.f17415n
            int r1 = r5.size()
            r2 = 0
            if (r0 <= r1) goto L12
            r5.a(r2)
        L12:
            int[] r0 = new int[r6]
            r5.f17413j = r0
            w5.e r0 = kotlin.collections.builders.MapBuilder.f17408w
            int r6 = w5.C1785e.access$computeShift(r0, r6)
            r5.f17416p = r6
        L1e:
            int r6 = r5.f17415n
            if (r2 >= r6) goto L52
            int r6 = r2 + 1
            java.lang.Object[] r0 = r5.f17410b
            r0 = r0[r2]
            int r0 = r5.f(r0)
            int r1 = r5.f17414m
        L2e:
            int[] r3 = r5.f17413j
            r4 = r3[r0]
            if (r4 != 0) goto L3c
            r3[r0] = r6
            int[] r1 = r5.f17412f
            r1[r2] = r0
            r2 = r6
            goto L1e
        L3c:
            int r1 = r1 + (-1)
            if (r1 < 0) goto L4a
            int r4 = r0 + (-1)
            if (r0 != 0) goto L48
            int r0 = r3.length
            int r0 = r0 + (-1)
            goto L2e
        L48:
            r0 = r4
            goto L2e
        L4a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"
            r6.<init>(r0)
            throw r6
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.builders.MapBuilder.g(int):void");
    }

    @Override // java.util.Map
    public V get(Object obj) {
        int d7 = d(obj);
        if (d7 < 0) {
            return null;
        }
        Object[] objArr = this.f17411e;
        j.checkNotNull(objArr);
        return (V) objArr[d7];
    }

    public final int getCapacity$kotlin_stdlib() {
        return this.f17410b.length;
    }

    public Set<Map.Entry<K, V>> getEntries() {
        C1791k c1791k = this.f17421u;
        if (c1791k != null) {
            return c1791k;
        }
        C1791k c1791k2 = new C1791k(this);
        this.f17421u = c1791k2;
        return c1791k2;
    }

    public Set<K> getKeys() {
        C1792l c1792l = this.f17419s;
        if (c1792l != null) {
            return c1792l;
        }
        C1792l c1792l2 = new C1792l(this);
        this.f17419s = c1792l2;
        return c1792l2;
    }

    public int getSize() {
        return this.f17418r;
    }

    public Collection<V> getValues() {
        C1793m c1793m = this.f17420t;
        if (c1793m != null) {
            return c1793m;
        }
        C1793m c1793m2 = new C1793m(this);
        this.f17420t = c1793m2;
        return c1793m2;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0065 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[LOOP:0: B:5:0x0021->B:22:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(int r12) {
        /*
            r11 = this;
            java.lang.Object[] r0 = r11.f17410b
            w5.AbstractC1784d.resetAt(r0, r12)
            java.lang.Object[] r0 = r11.f17411e
            if (r0 == 0) goto Lc
            w5.AbstractC1784d.resetAt(r0, r12)
        Lc:
            int[] r0 = r11.f17412f
            r0 = r0[r12]
            int r1 = r11.f17414m
            int r1 = r1 * 2
            int[] r2 = r11.f17413j
            int r2 = r2.length
            int r2 = r2 / 2
            int r1 = M5.g.coerceAtMost(r1, r2)
            r2 = 0
            r3 = r1
            r4 = r2
            r1 = r0
        L21:
            int r5 = r0 + (-1)
            if (r0 != 0) goto L2b
            int[] r0 = r11.f17413j
            int r0 = r0.length
            int r0 = r0 + (-1)
            goto L2c
        L2b:
            r0 = r5
        L2c:
            int r4 = r4 + 1
            int r5 = r11.f17414m
            r6 = -1
            if (r4 <= r5) goto L38
            int[] r0 = r11.f17413j
            r0[r1] = r2
            goto L69
        L38:
            int[] r5 = r11.f17413j
            r7 = r5[r0]
            if (r7 != 0) goto L41
            r5[r1] = r2
            goto L69
        L41:
            if (r7 >= 0) goto L48
            r5[r1] = r6
        L45:
            r1 = r0
            r4 = r2
            goto L62
        L48:
            java.lang.Object[] r5 = r11.f17410b
            int r8 = r7 + (-1)
            r5 = r5[r8]
            int r5 = r11.f(r5)
            int r5 = r5 - r0
            int[] r9 = r11.f17413j
            int r10 = r9.length
            int r10 = r10 + (-1)
            r5 = r5 & r10
            if (r5 < r4) goto L62
            r9[r1] = r7
            int[] r4 = r11.f17412f
            r4[r8] = r1
            goto L45
        L62:
            int r3 = r3 + r6
            if (r3 >= 0) goto L21
            int[] r0 = r11.f17413j
            r0[r1] = r6
        L69:
            int[] r0 = r11.f17412f
            r0[r12] = r6
            int r12 = r11.size()
            int r12 = r12 + r6
            r11.f17418r = r12
            int r12 = r11.f17417q
            int r12 = r12 + 1
            r11.f17417q = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.builders.MapBuilder.h(int):void");
    }

    @Override // java.util.Map
    public int hashCode() {
        C1786f entriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i2 = 0;
        while (entriesIterator$kotlin_stdlib.hasNext()) {
            i2 += entriesIterator$kotlin_stdlib.nextHashCode$kotlin_stdlib();
        }
        return i2;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    public final C1789i keysIterator$kotlin_stdlib() {
        return new C1789i(this);
    }

    @Override // java.util.Map
    public V put(K k7, V v6) {
        checkIsMutable$kotlin_stdlib();
        int addKey$kotlin_stdlib = addKey$kotlin_stdlib(k7);
        Object[] objArr = this.f17411e;
        if (objArr == null) {
            objArr = AbstractC1784d.arrayOfUninitializedElements(getCapacity$kotlin_stdlib());
            this.f17411e = objArr;
        }
        if (addKey$kotlin_stdlib >= 0) {
            objArr[addKey$kotlin_stdlib] = v6;
            return null;
        }
        int i2 = (-addKey$kotlin_stdlib) - 1;
        V v7 = (V) objArr[i2];
        objArr[i2] = v6;
        return v7;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> from) {
        j.checkNotNullParameter(from, "from");
        checkIsMutable$kotlin_stdlib();
        Set<Map.Entry<? extends K, ? extends V>> entrySet = from.entrySet();
        if (entrySet.isEmpty()) {
            return;
        }
        c(entrySet.size());
        for (Map.Entry<? extends K, ? extends V> entry : entrySet) {
            int addKey$kotlin_stdlib = addKey$kotlin_stdlib(entry.getKey());
            Object[] objArr = this.f17411e;
            if (objArr == null) {
                objArr = AbstractC1784d.arrayOfUninitializedElements(getCapacity$kotlin_stdlib());
                this.f17411e = objArr;
            }
            if (addKey$kotlin_stdlib >= 0) {
                objArr[addKey$kotlin_stdlib] = entry.getValue();
            } else {
                int i2 = (-addKey$kotlin_stdlib) - 1;
                if (!j.areEqual(entry.getValue(), objArr[i2])) {
                    objArr[i2] = entry.getValue();
                }
            }
        }
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        checkIsMutable$kotlin_stdlib();
        int d7 = d(obj);
        if (d7 < 0) {
            return null;
        }
        Object[] objArr = this.f17411e;
        j.checkNotNull(objArr);
        V v6 = (V) objArr[d7];
        h(d7);
        return v6;
    }

    public final boolean removeEntry$kotlin_stdlib(Map.Entry<? extends K, ? extends V> entry) {
        j.checkNotNullParameter(entry, "entry");
        checkIsMutable$kotlin_stdlib();
        int d7 = d(entry.getKey());
        if (d7 < 0) {
            return false;
        }
        Object[] objArr = this.f17411e;
        j.checkNotNull(objArr);
        if (!j.areEqual(objArr[d7], entry.getValue())) {
            return false;
        }
        h(d7);
        return true;
    }

    public final boolean removeKey$kotlin_stdlib(K k7) {
        checkIsMutable$kotlin_stdlib();
        int d7 = d(k7);
        if (d7 < 0) {
            return false;
        }
        h(d7);
        return true;
    }

    public final boolean removeValue$kotlin_stdlib(V v6) {
        checkIsMutable$kotlin_stdlib();
        int e3 = e(v6);
        if (e3 < 0) {
            return false;
        }
        h(e3);
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        C1786f entriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i2 = 0;
        while (entriesIterator$kotlin_stdlib.hasNext()) {
            if (i2 > 0) {
                sb.append(", ");
            }
            entriesIterator$kotlin_stdlib.nextAppendString(sb);
            i2++;
        }
        sb.append("}");
        String sb2 = sb.toString();
        j.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    public final C1790j valuesIterator$kotlin_stdlib() {
        return new C1790j(this);
    }

    public MapBuilder(int i2) {
        Object[] arrayOfUninitializedElements = AbstractC1784d.arrayOfUninitializedElements(i2);
        int[] iArr = new int[i2];
        C1785e c1785e = f17408w;
        int access$computeHashSize = C1785e.access$computeHashSize(c1785e, i2);
        this.f17410b = arrayOfUninitializedElements;
        this.f17411e = null;
        this.f17412f = iArr;
        this.f17413j = new int[access$computeHashSize];
        this.f17414m = 2;
        this.f17415n = 0;
        this.f17416p = C1785e.access$computeShift(c1785e, access$computeHashSize);
    }
}
