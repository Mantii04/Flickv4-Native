package P3;

/* loaded from: classes2.dex */
public class l extends o {

    /* renamed from: b, reason: collision with root package name */
    public final o f2703b;

    public l(o oVar) {
        this.f2703b = (o) v.checkNotNull(oVar);
    }

    @Override // P3.w
    @Deprecated
    public /* bridge */ /* synthetic */ boolean apply(Object obj) {
        return apply((Character) obj);
    }

    @Override // P3.o
    public boolean matches(char c7) {
        return !this.f2703b.matches(c7);
    }

    @Override // P3.o
    public boolean matchesAllOf(CharSequence charSequence) {
        return this.f2703b.matchesNoneOf(charSequence);
    }

    @Override // P3.o
    public boolean matchesNoneOf(CharSequence charSequence) {
        return this.f2703b.matchesAllOf(charSequence);
    }

    @Override // P3.o
    public o negate() {
        return this.f2703b;
    }

    public String toString() {
        return this.f2703b + ".negate()";
    }
}
