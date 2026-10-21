package V3;

/* loaded from: classes2.dex */
public abstract class v extends w {

    /* renamed from: b, reason: collision with root package name */
    public final F f4019b;

    public v(F f3) {
        this.f4019b = (F) P3.v.checkNotNull(f3);
    }

    @Override // V3.u, Q3.AbstractC0246p
    public final F delegate() {
        return this.f4019b;
    }
}
