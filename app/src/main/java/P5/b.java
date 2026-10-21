package P5;

/* loaded from: classes2.dex */
public abstract class b extends a {
    public static final boolean equals(char c7, char c8, boolean z6) {
        if (c7 == c8) {
            return true;
        }
        if (!z6) {
            return false;
        }
        char upperCase = Character.toUpperCase(c7);
        char upperCase2 = Character.toUpperCase(c8);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }
}
