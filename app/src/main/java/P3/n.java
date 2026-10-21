package P3;

/* loaded from: classes2.dex */
public final class n extends k {

    /* renamed from: e, reason: collision with root package name */
    public static final n f2704e = new n("CharMatcher.none()");

    @Override // P3.o
    public o and(o oVar) {
        v.checkNotNull(oVar);
        return this;
    }

    @Override // P3.o
    public int indexIn(CharSequence charSequence) {
        v.checkNotNull(charSequence);
        return -1;
    }

    @Override // P3.o
    public boolean matches(char c7) {
        return false;
    }

    @Override // P3.o
    public boolean matchesAllOf(CharSequence charSequence) {
        return charSequence.length() == 0;
    }

    @Override // P3.o
    public boolean matchesNoneOf(CharSequence charSequence) {
        v.checkNotNull(charSequence);
        return true;
    }

    @Override // P3.f, P3.o
    public o negate() {
        return o.any();
    }

    @Override // P3.o
    public int indexIn(CharSequence charSequence, int i2) {
        v.checkPositionIndex(i2, charSequence.length());
        return -1;
    }
}
