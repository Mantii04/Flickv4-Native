package p;

import java.util.Arrays;
import q.AbstractC1506a;

/* loaded from: classes.dex */
public final class n implements Cloneable {

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ boolean f19399b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ long[] f19400e;

    /* renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object[] f19401f;

    /* renamed from: j, reason: collision with root package name */
    public /* synthetic */ int f19402j;

    public n() {
        this(0, 1, null);
    }

    public void append(long j7, Object obj) {
        Object obj2;
        int i2 = this.f19402j;
        if (i2 != 0 && j7 <= this.f19400e[i2 - 1]) {
            put(j7, obj);
            return;
        }
        if (this.f19399b) {
            long[] jArr = this.f19400e;
            if (i2 >= jArr.length) {
                Object[] objArr = this.f19401f;
                int i7 = 0;
                for (int i8 = 0; i8 < i2; i8++) {
                    Object obj3 = objArr[i8];
                    obj2 = o.f19403a;
                    if (obj3 != obj2) {
                        if (i8 != i7) {
                            jArr[i7] = jArr[i8];
                            objArr[i7] = obj3;
                            objArr[i8] = null;
                        }
                        i7++;
                    }
                }
                this.f19399b = false;
                this.f19402j = i7;
            }
        }
        int i9 = this.f19402j;
        if (i9 >= this.f19400e.length) {
            int idealLongArraySize = AbstractC1506a.idealLongArraySize(i9 + 1);
            long[] copyOf = Arrays.copyOf(this.f19400e, idealLongArraySize);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f19400e = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f19401f, idealLongArraySize);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f19401f = copyOf2;
        }
        this.f19400e[i9] = j7;
        this.f19401f[i9] = obj;
        this.f19402j = i9 + 1;
    }

    public void clear() {
        int i2 = this.f19402j;
        Object[] objArr = this.f19401f;
        for (int i7 = 0; i7 < i2; i7++) {
            objArr[i7] = null;
        }
        this.f19402j = 0;
        this.f19399b = false;
    }

    public boolean containsKey(long j7) {
        return indexOfKey(j7) >= 0;
    }

    public Object get(long j7) {
        Object obj;
        int binarySearch = AbstractC1506a.binarySearch(this.f19400e, this.f19402j, j7);
        if (binarySearch < 0) {
            return null;
        }
        Object obj2 = this.f19401f[binarySearch];
        obj = o.f19403a;
        if (obj2 == obj) {
            return null;
        }
        return this.f19401f[binarySearch];
    }

    public int indexOfKey(long j7) {
        Object obj;
        if (this.f19399b) {
            int i2 = this.f19402j;
            long[] jArr = this.f19400e;
            Object[] objArr = this.f19401f;
            int i7 = 0;
            for (int i8 = 0; i8 < i2; i8++) {
                Object obj2 = objArr[i8];
                obj = o.f19403a;
                if (obj2 != obj) {
                    if (i8 != i7) {
                        jArr[i7] = jArr[i8];
                        objArr[i7] = obj2;
                        objArr[i8] = null;
                    }
                    i7++;
                }
            }
            this.f19399b = false;
            this.f19402j = i7;
        }
        return AbstractC1506a.binarySearch(this.f19400e, this.f19402j, j7);
    }

    public long keyAt(int i2) {
        int i7;
        Object obj;
        if (i2 < 0 || i2 >= (i7 = this.f19402j)) {
            throw new IllegalArgumentException(A.i.f(i2, "Expected index to be within 0..size()-1, but was ").toString());
        }
        if (this.f19399b) {
            long[] jArr = this.f19400e;
            Object[] objArr = this.f19401f;
            int i8 = 0;
            for (int i9 = 0; i9 < i7; i9++) {
                Object obj2 = objArr[i9];
                obj = o.f19403a;
                if (obj2 != obj) {
                    if (i9 != i8) {
                        jArr[i8] = jArr[i9];
                        objArr[i8] = obj2;
                        objArr[i9] = null;
                    }
                    i8++;
                }
            }
            this.f19399b = false;
            this.f19402j = i8;
        }
        return this.f19400e[i2];
    }

    public void put(long j7, Object obj) {
        Object obj2;
        Object obj3;
        int binarySearch = AbstractC1506a.binarySearch(this.f19400e, this.f19402j, j7);
        if (binarySearch >= 0) {
            this.f19401f[binarySearch] = obj;
            return;
        }
        int i2 = ~binarySearch;
        if (i2 < this.f19402j) {
            Object obj4 = this.f19401f[i2];
            obj3 = o.f19403a;
            if (obj4 == obj3) {
                this.f19400e[i2] = j7;
                this.f19401f[i2] = obj;
                return;
            }
        }
        if (this.f19399b) {
            int i7 = this.f19402j;
            long[] jArr = this.f19400e;
            if (i7 >= jArr.length) {
                Object[] objArr = this.f19401f;
                int i8 = 0;
                for (int i9 = 0; i9 < i7; i9++) {
                    Object obj5 = objArr[i9];
                    obj2 = o.f19403a;
                    if (obj5 != obj2) {
                        if (i9 != i8) {
                            jArr[i8] = jArr[i9];
                            objArr[i8] = obj5;
                            objArr[i9] = null;
                        }
                        i8++;
                    }
                }
                this.f19399b = false;
                this.f19402j = i8;
                i2 = ~AbstractC1506a.binarySearch(this.f19400e, i8, j7);
            }
        }
        int i10 = this.f19402j;
        if (i10 >= this.f19400e.length) {
            int idealLongArraySize = AbstractC1506a.idealLongArraySize(i10 + 1);
            long[] copyOf = Arrays.copyOf(this.f19400e, idealLongArraySize);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f19400e = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f19401f, idealLongArraySize);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f19401f = copyOf2;
        }
        int i11 = this.f19402j;
        if (i11 - i2 != 0) {
            long[] jArr2 = this.f19400e;
            int i12 = i2 + 1;
            v5.m.copyInto(jArr2, jArr2, i12, i2, i11);
            Object[] objArr2 = this.f19401f;
            v5.m.copyInto(objArr2, objArr2, i12, i2, this.f19402j);
        }
        this.f19400e[i2] = j7;
        this.f19401f[i2] = obj;
        this.f19402j++;
    }

    public void remove(long j7) {
        Object obj;
        Object obj2;
        int binarySearch = AbstractC1506a.binarySearch(this.f19400e, this.f19402j, j7);
        if (binarySearch >= 0) {
            Object obj3 = this.f19401f[binarySearch];
            obj = o.f19403a;
            if (obj3 != obj) {
                Object[] objArr = this.f19401f;
                obj2 = o.f19403a;
                objArr[binarySearch] = obj2;
                this.f19399b = true;
            }
        }
    }

    public void removeAt(int i2) {
        Object obj;
        Object obj2;
        Object obj3 = this.f19401f[i2];
        obj = o.f19403a;
        if (obj3 != obj) {
            Object[] objArr = this.f19401f;
            obj2 = o.f19403a;
            objArr[i2] = obj2;
            this.f19399b = true;
        }
    }

    public int size() {
        Object obj;
        if (this.f19399b) {
            int i2 = this.f19402j;
            long[] jArr = this.f19400e;
            Object[] objArr = this.f19401f;
            int i7 = 0;
            for (int i8 = 0; i8 < i2; i8++) {
                Object obj2 = objArr[i8];
                obj = o.f19403a;
                if (obj2 != obj) {
                    if (i8 != i7) {
                        jArr[i7] = jArr[i8];
                        objArr[i7] = obj2;
                        objArr[i8] = null;
                    }
                    i7++;
                }
            }
            this.f19399b = false;
            this.f19402j = i7;
        }
        return this.f19402j;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f19402j * 28);
        sb.append('{');
        int i2 = this.f19402j;
        for (int i7 = 0; i7 < i2; i7++) {
            if (i7 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i7));
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
        int i7;
        Object obj;
        if (i2 < 0 || i2 >= (i7 = this.f19402j)) {
            throw new IllegalArgumentException(A.i.f(i2, "Expected index to be within 0..size()-1, but was ").toString());
        }
        if (this.f19399b) {
            long[] jArr = this.f19400e;
            Object[] objArr = this.f19401f;
            int i8 = 0;
            for (int i9 = 0; i9 < i7; i9++) {
                Object obj2 = objArr[i9];
                obj = o.f19403a;
                if (obj2 != obj) {
                    if (i9 != i8) {
                        jArr[i8] = jArr[i9];
                        objArr[i8] = obj2;
                        objArr[i9] = null;
                    }
                    i8++;
                }
            }
            this.f19399b = false;
            this.f19402j = i8;
        }
        return this.f19401f[i2];
    }

    public n(int i2) {
        if (i2 == 0) {
            this.f19400e = AbstractC1506a.f19545b;
            this.f19401f = AbstractC1506a.f19546c;
        } else {
            int idealLongArraySize = AbstractC1506a.idealLongArraySize(i2);
            this.f19400e = new long[idealLongArraySize];
            this.f19401f = new Object[idealLongArraySize];
        }
    }

    public n clone() {
        Object clone = super.clone();
        kotlin.jvm.internal.j.checkNotNull(clone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        n nVar = (n) clone;
        nVar.f19400e = (long[]) this.f19400e.clone();
        nVar.f19401f = (Object[]) this.f19401f.clone();
        return nVar;
    }

    public Object get(long j7, Object obj) {
        Object obj2;
        int binarySearch = AbstractC1506a.binarySearch(this.f19400e, this.f19402j, j7);
        if (binarySearch >= 0) {
            Object obj3 = this.f19401f[binarySearch];
            obj2 = o.f19403a;
            if (obj3 != obj2) {
                return this.f19401f[binarySearch];
            }
        }
        return obj;
    }

    public /* synthetic */ n(int i2, int i7, kotlin.jvm.internal.g gVar) {
        this((i7 & 1) != 0 ? 10 : i2);
    }
}
