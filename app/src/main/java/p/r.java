package p;

import java.util.Arrays;
import q.AbstractC1506a;

/* loaded from: classes.dex */
public final class r implements Cloneable {

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ int[] f19407b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object[] f19408e;

    /* renamed from: f, reason: collision with root package name */
    public /* synthetic */ int f19409f;

    public r() {
        this(0, 1, null);
    }

    public void append(int i2, Object obj) {
        int i7 = this.f19409f;
        if (i7 != 0 && i2 <= this.f19407b[i7 - 1]) {
            put(i2, obj);
            return;
        }
        if (i7 >= this.f19407b.length) {
            int idealIntArraySize = AbstractC1506a.idealIntArraySize(i7 + 1);
            int[] copyOf = Arrays.copyOf(this.f19407b, idealIntArraySize);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f19407b = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f19408e, idealIntArraySize);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f19408e = copyOf2;
        }
        this.f19407b[i7] = i2;
        this.f19408e[i7] = obj;
        this.f19409f = i7 + 1;
    }

    public void clear() {
        int i2 = this.f19409f;
        Object[] objArr = this.f19408e;
        for (int i7 = 0; i7 < i2; i7++) {
            objArr[i7] = null;
        }
        this.f19409f = 0;
    }

    public Object get(int i2) {
        return s.commonGet(this, i2);
    }

    public int indexOfValue(Object obj) {
        int i2 = this.f19409f;
        for (int i7 = 0; i7 < i2; i7++) {
            if (this.f19408e[i7] == obj) {
                return i7;
            }
        }
        return -1;
    }

    public int keyAt(int i2) {
        return this.f19407b[i2];
    }

    public void put(int i2, Object obj) {
        Object obj2;
        int binarySearch = AbstractC1506a.binarySearch(this.f19407b, this.f19409f, i2);
        if (binarySearch >= 0) {
            this.f19408e[binarySearch] = obj;
            return;
        }
        int i7 = ~binarySearch;
        if (i7 < this.f19409f) {
            Object obj3 = this.f19408e[i7];
            obj2 = s.f19410a;
            if (obj3 == obj2) {
                this.f19407b[i7] = i2;
                this.f19408e[i7] = obj;
                return;
            }
        }
        int i8 = this.f19409f;
        if (i8 >= this.f19407b.length) {
            int idealIntArraySize = AbstractC1506a.idealIntArraySize(i8 + 1);
            int[] copyOf = Arrays.copyOf(this.f19407b, idealIntArraySize);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f19407b = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f19408e, idealIntArraySize);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f19408e = copyOf2;
        }
        int i9 = this.f19409f;
        if (i9 - i7 != 0) {
            int[] iArr = this.f19407b;
            int i10 = i7 + 1;
            v5.m.copyInto(iArr, iArr, i10, i7, i9);
            Object[] objArr = this.f19408e;
            v5.m.copyInto(objArr, objArr, i10, i7, this.f19409f);
        }
        this.f19407b[i7] = i2;
        this.f19408e[i7] = obj;
        this.f19409f++;
    }

    public int size() {
        return this.f19409f;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f19409f * 28);
        sb.append('{');
        int i2 = this.f19409f;
        for (int i7 = 0; i7 < i2; i7++) {
            if (i7 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i7));
            sb.append('=');
            Object valueAt = valueAt(i7);
            if (valueAt != this) {
                sb.append(valueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(sb2, "buffer.toString()");
        return sb2;
    }

    public Object valueAt(int i2) {
        return this.f19408e[i2];
    }

    public r(int i2) {
        if (i2 == 0) {
            this.f19407b = AbstractC1506a.f19544a;
            this.f19408e = AbstractC1506a.f19546c;
        } else {
            int idealIntArraySize = AbstractC1506a.idealIntArraySize(i2);
            this.f19407b = new int[idealIntArraySize];
            this.f19408e = new Object[idealIntArraySize];
        }
    }

    public r clone() {
        Object clone = super.clone();
        kotlin.jvm.internal.j.checkNotNull(clone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        r rVar = (r) clone;
        rVar.f19407b = (int[]) this.f19407b.clone();
        rVar.f19408e = (Object[]) this.f19408e.clone();
        return rVar;
    }

    public Object get(int i2, Object obj) {
        return s.commonGet(this, i2, obj);
    }

    public /* synthetic */ r(int i2, int i7, kotlin.jvm.internal.g gVar) {
        this((i7 & 1) != 0 ? 10 : i2);
    }
}
