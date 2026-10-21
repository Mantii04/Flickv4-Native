package K;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f1547e = new byte[1792];

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f1548a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1549b;

    /* renamed from: c, reason: collision with root package name */
    public int f1550c;

    /* renamed from: d, reason: collision with root package name */
    public char f1551d;

    static {
        for (int i2 = 0; i2 < 1792; i2++) {
            f1547e[i2] = Character.getDirectionality(i2);
        }
    }

    public b(CharSequence charSequence) {
        this.f1548a = charSequence;
        this.f1549b = charSequence.length();
    }

    public final byte a() {
        int i2 = this.f1550c - 1;
        CharSequence charSequence = this.f1548a;
        char charAt = charSequence.charAt(i2);
        this.f1551d = charAt;
        if (Character.isLowSurrogate(charAt)) {
            int codePointBefore = Character.codePointBefore(charSequence, this.f1550c);
            this.f1550c -= Character.charCount(codePointBefore);
            return Character.getDirectionality(codePointBefore);
        }
        this.f1550c--;
        char c7 = this.f1551d;
        return c7 < 1792 ? f1547e[c7] : Character.getDirectionality(c7);
    }
}
