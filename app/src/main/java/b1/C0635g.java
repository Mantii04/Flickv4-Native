package b1;

/* renamed from: b1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0635g implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public final int f8369b;

    /* renamed from: e, reason: collision with root package name */
    public final C0631c f8370e;

    public C0635g(int i2, C0631c c0631c) {
        this.f8369b = i2;
        this.f8370e = c0631c;
    }

    @Override // java.lang.Comparable
    public int compareTo(C0635g c0635g) {
        return Integer.compare(this.f8369b, c0635g.f8369b);
    }
}
