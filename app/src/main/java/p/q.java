package p;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import q.AbstractC1506a;

/* loaded from: classes.dex */
public class q {

    /* renamed from: b, reason: collision with root package name */
    public int[] f19404b;

    /* renamed from: e, reason: collision with root package name */
    public Object[] f19405e;

    /* renamed from: f, reason: collision with root package name */
    public int f19406f;

    public q() {
        this(0, 1, null);
    }

    public final int __restricted$indexOfValue(Object obj) {
        int i2 = this.f19406f * 2;
        Object[] objArr = this.f19405e;
        if (obj == null) {
            for (int i7 = 1; i7 < i2; i7 += 2) {
                if (objArr[i7] == null) {
                    return i7 >> 1;
                }
            }
            return -1;
        }
        for (int i8 = 1; i8 < i2; i8 += 2) {
            if (kotlin.jvm.internal.j.areEqual(obj, objArr[i8])) {
                return i8 >> 1;
            }
        }
        return -1;
    }

    public final int a(int i2, Object obj) {
        int i7 = this.f19406f;
        if (i7 == 0) {
            return -1;
        }
        int binarySearch = AbstractC1506a.binarySearch(this.f19404b, i7, i2);
        if (binarySearch < 0 || kotlin.jvm.internal.j.areEqual(obj, this.f19405e[binarySearch << 1])) {
            return binarySearch;
        }
        int i8 = binarySearch + 1;
        while (i8 < i7 && this.f19404b[i8] == i2) {
            if (kotlin.jvm.internal.j.areEqual(obj, this.f19405e[i8 << 1])) {
                return i8;
            }
            i8++;
        }
        for (int i9 = binarySearch - 1; i9 >= 0 && this.f19404b[i9] == i2; i9--) {
            if (kotlin.jvm.internal.j.areEqual(obj, this.f19405e[i9 << 1])) {
                return i9;
            }
        }
        return ~i8;
    }

    public final int c() {
        int i2 = this.f19406f;
        if (i2 == 0) {
            return -1;
        }
        int binarySearch = AbstractC1506a.binarySearch(this.f19404b, i2, 0);
        if (binarySearch < 0 || this.f19405e[binarySearch << 1] == null) {
            return binarySearch;
        }
        int i7 = binarySearch + 1;
        while (i7 < i2 && this.f19404b[i7] == 0) {
            if (this.f19405e[i7 << 1] == null) {
                return i7;
            }
            i7++;
        }
        for (int i8 = binarySearch - 1; i8 >= 0 && this.f19404b[i8] == 0; i8--) {
            if (this.f19405e[i8 << 1] == null) {
                return i8;
            }
        }
        return ~i7;
    }

    public void clear() {
        if (this.f19406f > 0) {
            this.f19404b = AbstractC1506a.f19544a;
            this.f19405e = AbstractC1506a.f19546c;
            this.f19406f = 0;
        }
        if (this.f19406f > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return indexOfKey(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return __restricted$indexOfValue(obj) >= 0;
    }

    public void ensureCapacity(int i2) {
        int i7 = this.f19406f;
        int[] iArr = this.f19404b;
        if (iArr.length < i2) {
            int[] copyOf = Arrays.copyOf(iArr, i2);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f19404b = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f19405e, i2 * 2);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f19405e = copyOf2;
        }
        if (this.f19406f != i7) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof q) {
                if (size() != ((q) obj).size()) {
                    return false;
                }
                q qVar = (q) obj;
                int i2 = this.f19406f;
                for (int i7 = 0; i7 < i2; i7++) {
                    Object keyAt = keyAt(i7);
                    Object valueAt = valueAt(i7);
                    Object obj2 = qVar.get(keyAt);
                    if (valueAt == null) {
                        if (obj2 != null || !qVar.containsKey(keyAt)) {
                            return false;
                        }
                    } else if (!kotlin.jvm.internal.j.areEqual(valueAt, obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || size() != ((Map) obj).size()) {
                return false;
            }
            int i8 = this.f19406f;
            for (int i9 = 0; i9 < i8; i9++) {
                Object keyAt2 = keyAt(i9);
                Object valueAt2 = valueAt(i9);
                Object obj3 = ((Map) obj).get(keyAt2);
                if (valueAt2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(keyAt2)) {
                        return false;
                    }
                } else if (!kotlin.jvm.internal.j.areEqual(valueAt2, obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public Object get(Object obj) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey >= 0) {
            return this.f19405e[(indexOfKey << 1) + 1];
        }
        return null;
    }

    public Object getOrDefault(Object obj, Object obj2) {
        int indexOfKey = indexOfKey(obj);
        return indexOfKey >= 0 ? this.f19405e[(indexOfKey << 1) + 1] : obj2;
    }

    public int hashCode() {
        int[] iArr = this.f19404b;
        Object[] objArr = this.f19405e;
        int i2 = this.f19406f;
        int i7 = 1;
        int i8 = 0;
        int i9 = 0;
        while (i8 < i2) {
            Object obj = objArr[i7];
            i9 += (obj != null ? obj.hashCode() : 0) ^ iArr[i8];
            i8++;
            i7 += 2;
        }
        return i9;
    }

    public int indexOfKey(Object obj) {
        return obj == null ? c() : a(obj.hashCode(), obj);
    }

    public boolean isEmpty() {
        return this.f19406f <= 0;
    }

    public Object keyAt(int i2) {
        if (i2 < 0 || i2 >= this.f19406f) {
            throw new IllegalArgumentException(A.i.f(i2, "Expected index to be within 0..size()-1, but was ").toString());
        }
        return this.f19405e[i2 << 1];
    }

    public Object put(Object obj, Object obj2) {
        int i2 = this.f19406f;
        int hashCode = obj != null ? obj.hashCode() : 0;
        int a7 = obj != null ? a(hashCode, obj) : c();
        if (a7 >= 0) {
            int i7 = (a7 << 1) + 1;
            Object[] objArr = this.f19405e;
            Object obj3 = objArr[i7];
            objArr[i7] = obj2;
            return obj3;
        }
        int i8 = ~a7;
        int[] iArr = this.f19404b;
        if (i2 >= iArr.length) {
            int i9 = 8;
            if (i2 >= 8) {
                i9 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i9 = 4;
            }
            int[] copyOf = Arrays.copyOf(iArr, i9);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f19404b = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f19405e, i9 << 1);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f19405e = copyOf2;
            if (i2 != this.f19406f) {
                throw new ConcurrentModificationException();
            }
        }
        if (i8 < i2) {
            int[] iArr2 = this.f19404b;
            int i10 = i8 + 1;
            v5.m.copyInto(iArr2, iArr2, i10, i8, i2);
            Object[] objArr2 = this.f19405e;
            v5.m.copyInto(objArr2, objArr2, i10 << 1, i8 << 1, this.f19406f << 1);
        }
        int i11 = this.f19406f;
        if (i2 == i11) {
            int[] iArr3 = this.f19404b;
            if (i8 < iArr3.length) {
                iArr3[i8] = hashCode;
                Object[] objArr3 = this.f19405e;
                int i12 = i8 << 1;
                objArr3[i12] = obj;
                objArr3[i12 + 1] = obj2;
                this.f19406f = i11 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void putAll(q map) {
        kotlin.jvm.internal.j.checkNotNullParameter(map, "map");
        int i2 = map.f19406f;
        ensureCapacity(this.f19406f + i2);
        if (this.f19406f != 0) {
            for (int i7 = 0; i7 < i2; i7++) {
                put(map.keyAt(i7), map.valueAt(i7));
            }
        } else if (i2 > 0) {
            v5.m.copyInto(map.f19404b, this.f19404b, 0, 0, i2);
            v5.m.copyInto(map.f19405e, this.f19405e, 0, 0, i2 << 1);
            this.f19406f = i2;
        }
    }

    public Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public Object remove(Object obj) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey >= 0) {
            return removeAt(indexOfKey);
        }
        return null;
    }

    public Object removeAt(int i2) {
        int i7;
        if (i2 < 0 || i2 >= (i7 = this.f19406f)) {
            throw new IllegalArgumentException(A.i.f(i2, "Expected index to be within 0..size()-1, but was ").toString());
        }
        Object[] objArr = this.f19405e;
        int i8 = i2 << 1;
        Object obj = objArr[i8 + 1];
        if (i7 <= 1) {
            clear();
            return obj;
        }
        int i9 = i7 - 1;
        int[] iArr = this.f19404b;
        if (iArr.length <= 8 || i7 >= iArr.length / 3) {
            if (i2 < i9) {
                int i10 = i2 + 1;
                v5.m.copyInto(iArr, iArr, i2, i10, i7);
                Object[] objArr2 = this.f19405e;
                v5.m.copyInto(objArr2, objArr2, i8, i10 << 1, i7 << 1);
            }
            Object[] objArr3 = this.f19405e;
            int i11 = i9 << 1;
            objArr3[i11] = null;
            objArr3[i11 + 1] = null;
        } else {
            int i12 = i7 > 8 ? i7 + (i7 >> 1) : 8;
            int[] copyOf = Arrays.copyOf(iArr, i12);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f19404b = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f19405e, i12 << 1);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f19405e = copyOf2;
            if (i7 != this.f19406f) {
                throw new ConcurrentModificationException();
            }
            if (i2 > 0) {
                v5.m.copyInto(iArr, this.f19404b, 0, 0, i2);
                v5.m.copyInto(objArr, this.f19405e, 0, 0, i8);
            }
            if (i2 < i9) {
                int i13 = i2 + 1;
                v5.m.copyInto(iArr, this.f19404b, i2, i13, i7);
                v5.m.copyInto(objArr, this.f19405e, i8, i13 << 1, i7 << 1);
            }
        }
        if (i7 != this.f19406f) {
            throw new ConcurrentModificationException();
        }
        this.f19406f = i9;
        return obj;
    }

    public Object replace(Object obj, Object obj2) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey >= 0) {
            return setValueAt(indexOfKey, obj2);
        }
        return null;
    }

    public Object setValueAt(int i2, Object obj) {
        if (i2 < 0 || i2 >= this.f19406f) {
            throw new IllegalArgumentException(A.i.f(i2, "Expected index to be within 0..size()-1, but was ").toString());
        }
        int i7 = (i2 << 1) + 1;
        Object[] objArr = this.f19405e;
        Object obj2 = objArr[i7];
        objArr[i7] = obj;
        return obj2;
    }

    public int size() {
        return this.f19406f;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f19406f * 28);
        sb.append('{');
        int i2 = this.f19406f;
        for (int i7 = 0; i7 < i2; i7++) {
            if (i7 > 0) {
                sb.append(", ");
            }
            Object keyAt = keyAt(i7);
            if (keyAt != sb) {
                sb.append(keyAt);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object valueAt = valueAt(i7);
            if (valueAt != sb) {
                sb.append(valueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public Object valueAt(int i2) {
        if (i2 < 0 || i2 >= this.f19406f) {
            throw new IllegalArgumentException(A.i.f(i2, "Expected index to be within 0..size()-1, but was ").toString());
        }
        return this.f19405e[(i2 << 1) + 1];
    }

    public q(int i2) {
        this.f19404b = i2 == 0 ? AbstractC1506a.f19544a : new int[i2];
        this.f19405e = i2 == 0 ? AbstractC1506a.f19546c : new Object[i2 << 1];
    }

    public boolean remove(Object obj, Object obj2) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey < 0 || !kotlin.jvm.internal.j.areEqual(obj2, valueAt(indexOfKey))) {
            return false;
        }
        removeAt(indexOfKey);
        return true;
    }

    public boolean replace(Object obj, Object obj2, Object obj3) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey < 0 || !kotlin.jvm.internal.j.areEqual(obj2, valueAt(indexOfKey))) {
            return false;
        }
        setValueAt(indexOfKey, obj3);
        return true;
    }

    public /* synthetic */ q(int i2, int i7, kotlin.jvm.internal.g gVar) {
        this((i7 & 1) != 0 ? 0 : i2);
    }

    public q(q qVar) {
        this(0, 1, null);
        if (qVar != null) {
            putAll(qVar);
        }
    }
}
