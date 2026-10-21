package P5;

import java.util.Comparator;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.ClassUtils;
import v5.AbstractC1769e;

/* loaded from: classes2.dex */
public abstract class p extends o {
    public static String concatToString(char[] cArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(cArr, "<this>");
        return new String(cArr);
    }

    public static byte[] encodeToByteArray(String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(c.f2725b);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return bytes;
    }

    public static final boolean endsWith(String str, String suffix, boolean z6) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(suffix, "suffix");
        return !z6 ? str.endsWith(suffix) : regionMatches(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    public static /* synthetic */ boolean endsWith$default(String str, String str2, boolean z6, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z6 = false;
        }
        return endsWith(str, str2, z6);
    }

    public static boolean equals(String str, String str2, boolean z6) {
        return str == null ? str2 == null : !z6 ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static Comparator<String> getCASE_INSENSITIVE_ORDER(kotlin.jvm.internal.n nVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(nVar, "<this>");
        Comparator<String> CASE_INSENSITIVE_ORDER = String.CASE_INSENSITIVE_ORDER;
        kotlin.jvm.internal.j.checkNotNullExpressionValue(CASE_INSENSITIVE_ORDER, "CASE_INSENSITIVE_ORDER");
        return CASE_INSENSITIVE_ORDER;
    }

    public static final boolean regionMatches(String str, int i2, String other, int i7, int i8, boolean z6) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(other, "other");
        return !z6 ? str.regionMatches(i2, other, i7, i8) : str.regionMatches(z6, i2, other, i7, i8);
    }

    public static /* synthetic */ boolean regionMatches$default(String str, int i2, String str2, int i7, int i8, boolean z6, int i9, Object obj) {
        if ((i9 & 16) != 0) {
            z6 = false;
        }
        return regionMatches(str, i2, str2, i7, i8, z6);
    }

    public static String repeat(CharSequence charSequence, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(charSequence, "<this>");
        if (i2 < 0) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i2 + ClassUtils.PACKAGE_SEPARATOR_CHAR).toString());
        }
        if (i2 == 0) {
            return "";
        }
        int i7 = 1;
        if (i2 == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char charAt = charSequence.charAt(0);
            char[] cArr = new char[i2];
            for (int i8 = 0; i8 < i2; i8++) {
                cArr[i8] = charAt;
            }
            return new String(cArr);
        }
        StringBuilder sb = new StringBuilder(charSequence.length() * i2);
        if (1 <= i2) {
            while (true) {
                sb.append(charSequence);
                if (i7 == i2) {
                    break;
                }
                i7++;
            }
        }
        String sb2 = sb.toString();
        kotlin.jvm.internal.j.checkNotNull(sb2);
        return sb2;
    }

    public static final String replace(String str, char c7, char c8, boolean z6) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        if (!z6) {
            String replace = str.replace(c7, c8);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(replace, "replace(...)");
            return replace;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (b.equals(charAt, c7, z6)) {
                charAt = c8;
            }
            sb.append(charAt);
        }
        String sb2 = sb.toString();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    public static /* synthetic */ String replace$default(String str, char c7, char c8, boolean z6, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z6 = false;
        }
        return replace(str, c7, c8, z6);
    }

    public static boolean startsWith(String str, String prefix, boolean z6) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(prefix, "prefix");
        return !z6 ? str.startsWith(prefix) : regionMatches(str, 0, prefix, 0, prefix.length(), z6);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, boolean z6, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z6 = false;
        }
        return startsWith(str, str2, z6);
    }

    public static String concatToString(char[] cArr, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(cArr, "<this>");
        AbstractC1769e.f20637b.checkBoundsIndexes$kotlin_stdlib(i2, i7, cArr.length);
        return new String(cArr, i2, i7 - i2);
    }

    public static /* synthetic */ String replace$default(String str, String str2, String str3, boolean z6, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z6 = false;
        }
        return replace(str, str2, str3, z6);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, int i2, boolean z6, int i7, Object obj) {
        if ((i7 & 4) != 0) {
            z6 = false;
        }
        return startsWith(str, str2, i2, z6);
    }

    public static boolean startsWith(String str, String prefix, int i2, boolean z6) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(prefix, "prefix");
        if (!z6) {
            return str.startsWith(prefix, i2);
        }
        return regionMatches(str, i2, prefix, 0, prefix.length(), z6);
    }

    public static final String replace(String str, String oldValue, String newValue, boolean z6) {
        kotlin.jvm.internal.j.checkNotNullParameter(str, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(oldValue, "oldValue");
        kotlin.jvm.internal.j.checkNotNullParameter(newValue, "newValue");
        int i2 = 0;
        int indexOf = StringsKt__StringsKt.indexOf(str, oldValue, 0, z6);
        if (indexOf < 0) {
            return str;
        }
        int length = oldValue.length();
        int coerceAtLeast = M5.g.coerceAtLeast(length, 1);
        int length2 = newValue.length() + (str.length() - length);
        if (length2 >= 0) {
            StringBuilder sb = new StringBuilder(length2);
            do {
                sb.append((CharSequence) str, i2, indexOf);
                sb.append(newValue);
                i2 = indexOf + length;
                if (indexOf >= str.length()) {
                    break;
                }
                indexOf = StringsKt__StringsKt.indexOf(str, oldValue, indexOf + coerceAtLeast, z6);
            } while (indexOf > 0);
            sb.append((CharSequence) str, i2, str.length());
            String sb2 = sb.toString();
            kotlin.jvm.internal.j.checkNotNullExpressionValue(sb2, "toString(...)");
            return sb2;
        }
        throw new OutOfMemoryError();
    }
}
