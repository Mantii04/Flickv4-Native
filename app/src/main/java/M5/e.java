package M5;

/* loaded from: classes2.dex */
public final class e extends b {

    /* renamed from: m, reason: collision with root package name */
    public static final d f2115m = new d(null);

    /* renamed from: n, reason: collision with root package name */
    public static final e f2116n = new e(1, 0);

    public e(int i2, int i7) {
        super(i2, i7, 1);
    }

    public boolean contains(int i2) {
        return getFirst() <= i2 && i2 <= getLast();
    }

    @Override // M5.b
    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        if (isEmpty() && ((e) obj).isEmpty()) {
            return true;
        }
        e eVar = (e) obj;
        return getFirst() == eVar.getFirst() && getLast() == eVar.getLast();
    }

    public Integer getEndInclusive() {
        return Integer.valueOf(getLast());
    }

    public Integer getStart() {
        return Integer.valueOf(getFirst());
    }

    @Override // M5.b
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return getLast() + (getFirst() * 31);
    }

    @Override // M5.b
    public boolean isEmpty() {
        return getFirst() > getLast();
    }

    @Override // M5.b
    public String toString() {
        return getFirst() + ".." + getLast();
    }
}
