package Y;

/* loaded from: classes.dex */
public final class b extends p {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4251a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4252b;

    public b(Object obj, int i2) {
        super(null);
        this.f4251a = obj;
        this.f4252b = i2;
    }

    public final void checkHashCode() {
        Object obj = this.f4251a;
        if (!((obj != null ? obj.hashCode() : 0) == this.f4252b)) {
            throw new IllegalStateException("Data in DataStore was mutated but DataStore is only compatible with Immutable types.");
        }
    }

    public final Object getValue() {
        return this.f4251a;
    }
}
