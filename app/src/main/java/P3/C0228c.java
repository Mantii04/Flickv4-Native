package P3;

/* renamed from: P3.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0228c extends k {

    /* renamed from: e, reason: collision with root package name */
    public static final C0228c f2694e = new C0228c("CharMatcher.any()");

    @Override // P3.o
    public o and(o oVar) {
        return (o) v.checkNotNull(oVar);
    }

    @Override // P3.o
    public int indexIn(CharSequence charSequence) {
        return charSequence.length() == 0 ? -1 : 0;
    }

    @Override // P3.o
    public boolean matches(char c7) {
        return true;
    }

    @Override // P3.o
    public boolean matchesAllOf(CharSequence charSequence) {
        v.checkNotNull(charSequence);
        return true;
    }

    @Override // P3.o
    public boolean matchesNoneOf(CharSequence charSequence) {
        return charSequence.length() == 0;
    }

    @Override // P3.f, P3.o
    public o negate() {
        return o.none();
    }

    @Override // P3.o
    public int indexIn(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        v.checkPositionIndex(i2, length);
        if (i2 == length) {
            return -1;
        }
        return i2;
    }
}
