package P3;

/* loaded from: classes2.dex */
public final class j extends k {

    /* renamed from: e, reason: collision with root package name */
    public static final j f2701e = new j("CharMatcher.javaIsoControl()");

    @Override // P3.o
    public boolean matches(char c7) {
        if (c7 > 31) {
            return c7 >= 127 && c7 <= 159;
        }
        return true;
    }
}
