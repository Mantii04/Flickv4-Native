package com.google.common.collect;

import Q3.x0;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {

    /* renamed from: p, reason: collision with root package name */
    public static final ImmutableMap f13099p = new RegularImmutableMap(null, new Object[0], 0);
    private static final long serialVersionUID = 0;

    /* renamed from: j, reason: collision with root package name */
    public final transient Object f13100j;

    /* renamed from: m, reason: collision with root package name */
    public final transient Object[] f13101m;

    /* renamed from: n, reason: collision with root package name */
    public final transient int f13102n;

    public static class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {

        /* renamed from: f, reason: collision with root package name */
        public final transient ImmutableMap f13103f;

        /* renamed from: j, reason: collision with root package name */
        public final transient Object[] f13104j;

        /* renamed from: m, reason: collision with root package name */
        public final transient int f13105m;

        public EntrySet(ImmutableMap immutableMap, Object[] objArr, int i2) {
            this.f13103f = immutableMap;
            this.f13104j = objArr;
            this.f13105m = i2;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int a(int i2, Object[] objArr) {
            return asList().a(i2, objArr);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (value != null && value.equals(this.f13103f.get(key))) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableSet
        public final ImmutableList g() {
            return new ImmutableList<Map.Entry<Object, Object>>() { // from class: com.google.common.collect.RegularImmutableMap.EntrySet.1
                @Override // java.util.List
                public Map.Entry<Object, Object> get(int i2) {
                    EntrySet entrySet = EntrySet.this;
                    P3.v.checkElementIndex(i2, entrySet.f13105m);
                    int i7 = i2 * 2;
                    Object[] objArr = entrySet.f13104j;
                    Object obj = objArr[i7];
                    Objects.requireNonNull(obj);
                    Object obj2 = objArr[i7 + 1];
                    Objects.requireNonNull(obj2);
                    return new AbstractMap.SimpleImmutableEntry(obj, obj2);
                }

                @Override // com.google.common.collect.ImmutableCollection
                public boolean isPartialView() {
                    return true;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return EntrySet.this.f13105m;
                }
            };
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f13105m;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public x0 iterator() {
            return asList().iterator();
        }
    }

    public static final class KeySet<K> extends ImmutableSet<K> {

        /* renamed from: f, reason: collision with root package name */
        public final transient ImmutableMap f13107f;

        /* renamed from: j, reason: collision with root package name */
        public final transient ImmutableList f13108j;

        public KeySet(ImmutableMap immutableMap, ImmutableList immutableList) {
            this.f13107f = immutableMap;
            this.f13108j = immutableList;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int a(int i2, Object[] objArr) {
            return asList().a(i2, objArr);
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public ImmutableList<K> asList() {
            return this.f13108j;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f13107f.get(obj) != null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f13107f.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public x0 iterator() {
            return asList().iterator();
        }
    }

    public static final class KeysOrValuesAsList extends ImmutableList<Object> {

        /* renamed from: f, reason: collision with root package name */
        public final transient Object[] f13109f;

        /* renamed from: j, reason: collision with root package name */
        public final transient int f13110j;

        /* renamed from: m, reason: collision with root package name */
        public final transient int f13111m;

        public KeysOrValuesAsList(Object[] objArr, int i2, int i7) {
            this.f13109f = objArr;
            this.f13110j = i2;
            this.f13111m = i7;
        }

        @Override // java.util.List
        public Object get(int i2) {
            P3.v.checkElementIndex(i2, this.f13111m);
            Object obj = this.f13109f[(i2 * 2) + this.f13110j];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13111m;
        }
    }

    public RegularImmutableMap(Object obj, Object[] objArr, int i2) {
        this.f13100j = obj;
        this.f13101m = objArr;
        this.f13102n = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x019b  */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.common.collect.RegularImmutableMap a(int r19, java.lang.Object[] r20, com.google.common.collect.w r21) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.RegularImmutableMap.a(int, java.lang.Object[], com.google.common.collect.w):com.google.common.collect.RegularImmutableMap");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x009f A[RETURN] */
    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(java.lang.Object r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 != 0) goto L6
        L3:
            r9 = r0
            goto L9c
        L6:
            r1 = 1
            java.lang.Object[] r2 = r8.f13101m
            int r3 = r8.f13102n
            if (r3 != r1) goto L20
            r3 = 0
            r3 = r2[r3]
            java.util.Objects.requireNonNull(r3)
            boolean r9 = r3.equals(r9)
            if (r9 == 0) goto L3
            r9 = r2[r1]
            java.util.Objects.requireNonNull(r9)
            goto L9c
        L20:
            java.lang.Object r3 = r8.f13100j
            if (r3 != 0) goto L25
            goto L3
        L25:
            boolean r4 = r3 instanceof byte[]
            if (r4 == 0) goto L50
            r4 = r3
            byte[] r4 = (byte[]) r4
            int r3 = r4.length
            int r5 = r3 + (-1)
            int r3 = r9.hashCode()
            int r3 = a.AbstractC0373c.d(r3)
        L37:
            r3 = r3 & r5
            r6 = r4[r3]
            r7 = 255(0xff, float:3.57E-43)
            r6 = r6 & r7
            if (r6 != r7) goto L40
            goto L3
        L40:
            r7 = r2[r6]
            boolean r7 = r9.equals(r7)
            if (r7 == 0) goto L4d
            r9 = r6 ^ 1
            r9 = r2[r9]
            goto L9c
        L4d:
            int r3 = r3 + 1
            goto L37
        L50:
            boolean r4 = r3 instanceof short[]
            if (r4 == 0) goto L7c
            r4 = r3
            short[] r4 = (short[]) r4
            int r3 = r4.length
            int r5 = r3 + (-1)
            int r3 = r9.hashCode()
            int r3 = a.AbstractC0373c.d(r3)
        L62:
            r3 = r3 & r5
            short r6 = r4[r3]
            r7 = 65535(0xffff, float:9.1834E-41)
            r6 = r6 & r7
            if (r6 != r7) goto L6c
            goto L3
        L6c:
            r7 = r2[r6]
            boolean r7 = r9.equals(r7)
            if (r7 == 0) goto L79
            r9 = r6 ^ 1
            r9 = r2[r9]
            goto L9c
        L79:
            int r3 = r3 + 1
            goto L62
        L7c:
            int[] r3 = (int[]) r3
            int r4 = r3.length
            int r4 = r4 - r1
            int r5 = r9.hashCode()
            int r5 = a.AbstractC0373c.d(r5)
        L88:
            r5 = r5 & r4
            r6 = r3[r5]
            r7 = -1
            if (r6 != r7) goto L90
            goto L3
        L90:
            r7 = r2[r6]
            boolean r7 = r9.equals(r7)
            if (r7 == 0) goto La0
            r9 = r6 ^ 1
            r9 = r2[r9]
        L9c:
            if (r9 != 0) goto L9f
            return r0
        L9f:
            return r9
        La0:
            int r5 = r5 + 1
            goto L88
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.RegularImmutableMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public int size() {
        return this.f13102n;
    }
}
