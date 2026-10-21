package M5;

import v5.w;

/* loaded from: classes2.dex */
public class b implements Iterable, I5.a {

    /* renamed from: j, reason: collision with root package name */
    public static final a f2107j = new a(null);

    /* renamed from: b, reason: collision with root package name */
    public final int f2108b;

    /* renamed from: e, reason: collision with root package name */
    public final int f2109e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2110f;

    public b(int i2, int i7, int i8) {
        if (i8 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i8 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f2108b = i2;
        this.f2109e = C5.d.getProgressionLastElement(i2, i7, i8);
        this.f2110f = i8;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        if (isEmpty() && ((b) obj).isEmpty()) {
            return true;
        }
        b bVar = (b) obj;
        return this.f2108b == bVar.f2108b && this.f2109e == bVar.f2109e && this.f2110f == bVar.f2110f;
    }

    public final int getFirst() {
        return this.f2108b;
    }

    public final int getLast() {
        return this.f2109e;
    }

    public final int getStep() {
        return this.f2110f;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f2108b * 31) + this.f2109e) * 31) + this.f2110f;
    }

    public boolean isEmpty() {
        int i2 = this.f2110f;
        int i7 = this.f2109e;
        int i8 = this.f2108b;
        return i2 > 0 ? i8 > i7 : i8 < i7;
    }

    public String toString() {
        StringBuilder sb;
        int i2 = this.f2109e;
        int i7 = this.f2108b;
        int i8 = this.f2110f;
        if (i8 > 0) {
            sb = new StringBuilder();
            sb.append(i7);
            sb.append("..");
            sb.append(i2);
            sb.append(" step ");
            sb.append(i8);
        } else {
            sb = new StringBuilder();
            sb.append(i7);
            sb.append(" downTo ");
            sb.append(i2);
            sb.append(" step ");
            sb.append(-i8);
        }
        return sb.toString();
    }

    @Override // java.lang.Iterable
    public w iterator() {
        return new c(this.f2108b, this.f2109e, this.f2110f);
    }
}
