package P3;

import java.util.Arrays;

/* renamed from: P3.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0229d extends o {

    /* renamed from: b, reason: collision with root package name */
    public final char[] f2695b;

    public C0229d(CharSequence charSequence) {
        char[] charArray = charSequence.toString().toCharArray();
        this.f2695b = charArray;
        Arrays.sort(charArray);
    }

    @Override // P3.w
    @Deprecated
    public /* bridge */ /* synthetic */ boolean apply(Object obj) {
        return super.apply((Character) obj);
    }

    @Override // P3.o
    public boolean matches(char c7) {
        return Arrays.binarySearch(this.f2695b, c7) >= 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
        for (char c7 : this.f2695b) {
            sb.append(o.a(c7));
        }
        sb.append("\")");
        return sb.toString();
    }
}
