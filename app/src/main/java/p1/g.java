package p1;

/* loaded from: classes.dex */
public final class g implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public final int f19438b;

    /* renamed from: e, reason: collision with root package name */
    public final int f19439e;

    /* renamed from: f, reason: collision with root package name */
    public final String f19440f;

    /* renamed from: j, reason: collision with root package name */
    public final String f19441j;

    public g(int i2, int i7, String from, String to) {
        kotlin.jvm.internal.j.checkNotNullParameter(from, "from");
        kotlin.jvm.internal.j.checkNotNullParameter(to, "to");
        this.f19438b = i2;
        this.f19439e = i7;
        this.f19440f = from;
        this.f19441j = to;
    }

    public final String getFrom() {
        return this.f19440f;
    }

    public final int getId() {
        return this.f19438b;
    }

    public final String getTo() {
        return this.f19441j;
    }

    @Override // java.lang.Comparable
    public int compareTo(g other) {
        kotlin.jvm.internal.j.checkNotNullParameter(other, "other");
        int i2 = this.f19438b - other.f19438b;
        return i2 == 0 ? this.f19439e - other.f19439e : i2;
    }
}
