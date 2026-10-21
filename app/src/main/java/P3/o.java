package P3;

import cz.msebera.android.httpclient.message.TokenParser;

/* loaded from: classes2.dex */
public abstract class o implements w {
    public static String a(char c7) {
        char[] cArr = new char[6];
        cArr[0] = TokenParser.ESCAPE;
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(c7 & 15);
            c7 = (char) (c7 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public static o any() {
        return C0228c.f2694e;
    }

    public static o anyOf(CharSequence charSequence) {
        int length = charSequence.length();
        return length != 0 ? length != 1 ? length != 2 ? new C0229d(charSequence) : new h(charSequence.charAt(0), charSequence.charAt(1)) : is(charSequence.charAt(0)) : none();
    }

    public static o ascii() {
        return C0230e.f2696e;
    }

    public static o is(char c7) {
        return new g(c7);
    }

    public static o isNot(char c7) {
        return new i(c7);
    }

    public static o javaIsoControl() {
        return j.f2701e;
    }

    public static o none() {
        return n.f2704e;
    }

    public static o noneOf(CharSequence charSequence) {
        return anyOf(charSequence).negate();
    }

    public o and(o oVar) {
        return new C0227b(this, oVar);
    }

    @Deprecated
    public boolean apply(Character ch) {
        return matches(ch.charValue());
    }

    public int indexIn(CharSequence charSequence) {
        return indexIn(charSequence, 0);
    }

    public abstract boolean matches(char c7);

    public boolean matchesAllOf(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!matches(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean matchesNoneOf(CharSequence charSequence) {
        return indexIn(charSequence) == -1;
    }

    public o negate() {
        return new l(this);
    }

    public int indexIn(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        v.checkPositionIndex(i2, length);
        while (i2 < length) {
            if (matches(charSequence.charAt(i2))) {
                return i2;
            }
            i2++;
        }
        return -1;
    }
}
