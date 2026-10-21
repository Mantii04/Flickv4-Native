package P3;

/* renamed from: P3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0227b extends o {

    /* renamed from: b, reason: collision with root package name */
    public final o f2692b;

    /* renamed from: e, reason: collision with root package name */
    public final o f2693e;

    public C0227b(o oVar, o oVar2) {
        this.f2692b = (o) v.checkNotNull(oVar);
        this.f2693e = (o) v.checkNotNull(oVar2);
    }

    @Override // P3.w
    @Deprecated
    public /* bridge */ /* synthetic */ boolean apply(Object obj) {
        return super.apply((Character) obj);
    }

    @Override // P3.o
    public boolean matches(char c7) {
        return this.f2692b.matches(c7) && this.f2693e.matches(c7);
    }

    public String toString() {
        return "CharMatcher.and(" + this.f2692b + ", " + this.f2693e + ")";
    }
}
