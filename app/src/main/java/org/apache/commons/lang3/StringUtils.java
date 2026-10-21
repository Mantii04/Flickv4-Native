package org.apache.commons.lang3;

import A.i;
import androidx.media3.common.util.Log;
import b.c;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import cz.msebera.android.httpclient.message.TokenParser;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class StringUtils {
    public static final String CR = "\r";
    public static final String EMPTY = "";
    public static final int INDEX_NOT_FOUND = -1;
    public static final String LF = "\n";
    private static final int PAD_LIMIT = 8192;
    public static final String SPACE = " ";
    private static final int STRING_BUILDER_SIZE = 256;

    public static String abbreviate(String str, int i2) {
        return abbreviate(str, "...", 0, i2);
    }

    public static String abbreviateMiddle(String str, String str2, int i2) {
        if (isEmpty(str) || isEmpty(str2) || i2 >= str.length() || i2 < str2.length() + 2) {
            return str;
        }
        int length = i2 - str2.length();
        int i7 = length / 2;
        return str.substring(0, (length % 2) + i7) + str2 + str.substring(str.length() - i7);
    }

    private static String appendIfMissing(String str, CharSequence charSequence, boolean z6, CharSequence... charSequenceArr) {
        if (str == null || isEmpty(charSequence) || endsWith(str, charSequence, z6)) {
            return str;
        }
        if (charSequenceArr != null && charSequenceArr.length > 0) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (endsWith(str, charSequence2, z6)) {
                    return str;
                }
            }
        }
        StringBuilder o6 = c.o(str);
        o6.append(charSequence.toString());
        return o6.toString();
    }

    public static String appendIfMissingIgnoreCase(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return appendIfMissing(str, charSequence, true, charSequenceArr);
    }

    public static String capitalize(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        int codePointAt = str.codePointAt(0);
        int titleCase = Character.toTitleCase(codePointAt);
        if (codePointAt == titleCase) {
            return str;
        }
        int[] iArr = new int[length];
        iArr[0] = titleCase;
        int charCount = Character.charCount(codePointAt);
        int i2 = 1;
        while (charCount < length) {
            int codePointAt2 = str.codePointAt(charCount);
            iArr[i2] = codePointAt2;
            charCount += Character.charCount(codePointAt2);
            i2++;
        }
        return new String(iArr, 0, i2);
    }

    public static String center(String str, int i2) {
        return center(str, i2, TokenParser.SP);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0037, code lost:
    
        if (r5 != '\r') goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String chomp(java.lang.String r6) {
        /*
            boolean r0 = isEmpty(r6)
            if (r0 == 0) goto L7
            return r6
        L7:
            int r0 = r6.length()
            r1 = 10
            r2 = 0
            r3 = 1
            r4 = 13
            if (r0 != r3) goto L20
            char r0 = r6.charAt(r2)
            if (r0 == r4) goto L1d
            if (r0 != r1) goto L1c
            goto L1d
        L1c:
            return r6
        L1d:
            java.lang.String r6 = ""
            return r6
        L20:
            int r0 = r6.length()
            int r3 = r0 + (-1)
            char r5 = r6.charAt(r3)
            if (r5 != r1) goto L37
            int r1 = r0 + (-2)
            char r1 = r6.charAt(r1)
            if (r1 != r4) goto L3a
            int r0 = r0 + (-2)
            goto L3b
        L37:
            if (r5 == r4) goto L3a
            goto L3b
        L3a:
            r0 = r3
        L3b:
            java.lang.String r6 = r6.substring(r2, r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.StringUtils.chomp(java.lang.String):java.lang.String");
    }

    public static String chop(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length < 2) {
            return "";
        }
        int i2 = length - 1;
        String substring = str.substring(0, i2);
        if (str.charAt(i2) == '\n') {
            int i7 = length - 2;
            if (substring.charAt(i7) == '\r') {
                return substring.substring(0, i7);
            }
        }
        return substring;
    }

    public static int compare(String str, String str2) {
        return compare(str, str2, true);
    }

    public static int compareIgnoreCase(String str, String str2) {
        return compareIgnoreCase(str, str2, true);
    }

    public static boolean contains(CharSequence charSequence, int i2) {
        return !isEmpty(charSequence) && CharSequenceUtils.indexOf(charSequence, i2, 0) >= 0;
    }

    public static boolean containsAny(CharSequence charSequence, char... cArr) {
        if (!isEmpty(charSequence) && !ArrayUtils.isEmpty(cArr)) {
            int length = charSequence.length();
            int length2 = cArr.length;
            int i2 = length - 1;
            int i7 = length2 - 1;
            for (int i8 = 0; i8 < length; i8++) {
                char charAt = charSequence.charAt(i8);
                for (int i9 = 0; i9 < length2; i9++) {
                    if (cArr[i9] == charAt) {
                        if (!Character.isHighSurrogate(charAt) || i9 == i7) {
                            return true;
                        }
                        if (i8 < i2 && cArr[i9 + 1] == charSequence.charAt(i8 + 1)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static boolean containsIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence != null && charSequence2 != null) {
            int length = charSequence2.length();
            int length2 = charSequence.length() - length;
            int i2 = 0;
            while (i2 <= length2) {
                CharSequence charSequence3 = charSequence;
                CharSequence charSequence4 = charSequence2;
                if (CharSequenceUtils.regionMatches(charSequence3, true, i2, charSequence4, 0, length)) {
                    return true;
                }
                i2++;
                charSequence = charSequence3;
                charSequence2 = charSequence4;
            }
        }
        return false;
    }

    public static boolean containsNone(CharSequence charSequence, char... cArr) {
        if (charSequence != null && cArr != null) {
            int length = charSequence.length();
            int i2 = length - 1;
            int length2 = cArr.length;
            int i7 = length2 - 1;
            for (int i8 = 0; i8 < length; i8++) {
                char charAt = charSequence.charAt(i8);
                for (int i9 = 0; i9 < length2; i9++) {
                    if (cArr[i9] == charAt) {
                        if (!Character.isHighSurrogate(charAt) || i9 == i7) {
                            return false;
                        }
                        if (i8 < i2 && cArr[i9 + 1] == charSequence.charAt(i8 + 1)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    public static boolean containsOnly(CharSequence charSequence, char... cArr) {
        if (cArr != null && charSequence != null) {
            if (charSequence.length() == 0) {
                return true;
            }
            if (cArr.length != 0 && indexOfAnyBut(charSequence, cArr) == -1) {
                return true;
            }
        }
        return false;
    }

    public static boolean containsWhitespace(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (Character.isWhitespace(charSequence.charAt(i2))) {
                return true;
            }
        }
        return false;
    }

    private static void convertRemainingAccentCharacters(StringBuilder sb) {
        for (int i2 = 0; i2 < sb.length(); i2++) {
            if (sb.charAt(i2) == 321) {
                sb.deleteCharAt(i2);
                sb.insert(i2, 'L');
            } else if (sb.charAt(i2) == 322) {
                sb.deleteCharAt(i2);
                sb.insert(i2, 'l');
            }
        }
    }

    public static int countMatches(CharSequence charSequence, CharSequence charSequence2) {
        int i2 = 0;
        if (isEmpty(charSequence) || isEmpty(charSequence2)) {
            return 0;
        }
        int i7 = 0;
        while (true) {
            int indexOf = CharSequenceUtils.indexOf(charSequence, charSequence2, i2);
            if (indexOf == -1) {
                return i7;
            }
            i7++;
            i2 = indexOf + charSequence2.length();
        }
    }

    public static <T extends CharSequence> T defaultIfBlank(T t6, T t7) {
        return isBlank(t6) ? t7 : t6;
    }

    public static <T extends CharSequence> T defaultIfEmpty(T t6, T t7) {
        return isEmpty(t6) ? t7 : t6;
    }

    public static String defaultString(String str, String str2) {
        return str == null ? str2 : str;
    }

    public static String deleteWhitespace(String str) {
        if (isEmpty(str)) {
            return str;
        }
        int length = str.length();
        char[] cArr = new char[length];
        int i2 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            if (!Character.isWhitespace(str.charAt(i7))) {
                cArr[i2] = str.charAt(i7);
                i2++;
            }
        }
        return i2 == length ? str : new String(cArr, 0, i2);
    }

    public static String difference(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        int indexOfDifference = indexOfDifference(str, str2);
        return indexOfDifference == -1 ? "" : str2.substring(indexOfDifference);
    }

    public static boolean endsWith(CharSequence charSequence, CharSequence charSequence2) {
        return endsWith(charSequence, charSequence2, false);
    }

    public static boolean endsWithAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (!isEmpty(charSequence) && !ArrayUtils.isEmpty(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (endsWith(charSequence, charSequence2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean endsWithIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        return endsWith(charSequence, charSequence2, true);
    }

    public static boolean equals(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        return ((charSequence instanceof String) && (charSequence2 instanceof String)) ? charSequence.equals(charSequence2) : CharSequenceUtils.regionMatches(charSequence, false, 0, charSequence2, 0, charSequence.length());
    }

    public static boolean equalsAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (ArrayUtils.isNotEmpty(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (equals(charSequence, charSequence2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean equalsAnyIgnoreCase(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (ArrayUtils.isNotEmpty(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (equalsIgnoreCase(charSequence, charSequence2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean equalsIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence.length() != charSequence2.length()) {
            return false;
        }
        return CharSequenceUtils.regionMatches(charSequence, true, 0, charSequence2, 0, charSequence.length());
    }

    @SafeVarargs
    public static <T extends CharSequence> T firstNonBlank(T... tArr) {
        if (tArr == null) {
            return null;
        }
        for (T t6 : tArr) {
            if (isNotBlank(t6)) {
                return t6;
            }
        }
        return null;
    }

    @SafeVarargs
    public static <T extends CharSequence> T firstNonEmpty(T... tArr) {
        if (tArr == null) {
            return null;
        }
        for (T t6 : tArr) {
            if (isNotEmpty(t6)) {
                return t6;
            }
        }
        return null;
    }

    public static String getCommonPrefix(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        int indexOfDifference = indexOfDifference(strArr);
        if (indexOfDifference != -1) {
            return indexOfDifference == 0 ? "" : strArr[0].substring(0, indexOfDifference);
        }
        String str = strArr[0];
        return str == null ? "" : str;
    }

    public static String getDigits(String str) {
        if (isEmpty(str)) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (Character.isDigit(charAt)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    @Deprecated
    public static int getFuzzyDistance(CharSequence charSequence, CharSequence charSequence2, Locale locale) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        if (locale == null) {
            throw new IllegalArgumentException("Locale must not be null");
        }
        String lowerCase = charSequence.toString().toLowerCase(locale);
        String lowerCase2 = charSequence2.toString().toLowerCase(locale);
        int i2 = Integer.MIN_VALUE;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < lowerCase2.length(); i9++) {
            char charAt = lowerCase2.charAt(i9);
            boolean z6 = false;
            while (i8 < lowerCase.length() && !z6) {
                if (charAt == lowerCase.charAt(i8)) {
                    int i10 = i7 + 1;
                    if (i2 + 1 == i8) {
                        i10 = i7 + 3;
                    }
                    i7 = i10;
                    z6 = true;
                    i2 = i8;
                }
                i8++;
            }
        }
        return i7;
    }

    @Deprecated
    public static double getJaroWinklerDistance(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        double d7 = matches(charSequence, charSequence2)[0];
        if (d7 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        double length = (((d7 - r0[1]) / d7) + ((d7 / charSequence2.length()) + (d7 / charSequence.length()))) / 3.0d;
        if (length >= 0.7d) {
            length += (1.0d - length) * Math.min(0.1d, 1.0d / r0[3]) * r0[2];
        }
        return Math.round(length * 100.0d) / 100.0d;
    }

    @Deprecated
    public static int getLevenshteinDistance(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        int length = charSequence.length();
        int length2 = charSequence2.length();
        if (length == 0) {
            return length2;
        }
        if (length2 == 0) {
            return length;
        }
        if (length > length2) {
            length2 = charSequence.length();
            length = length2;
        } else {
            charSequence2 = charSequence;
            charSequence = charSequence2;
        }
        int[] iArr = new int[length + 1];
        for (int i2 = 0; i2 <= length; i2++) {
            iArr[i2] = i2;
        }
        for (int i7 = 1; i7 <= length2; i7++) {
            int i8 = iArr[0];
            char charAt = charSequence.charAt(i7 - 1);
            iArr[0] = i7;
            int i9 = 1;
            while (i9 <= length) {
                int i10 = iArr[i9];
                int i11 = i9 - 1;
                iArr[i9] = Math.min(Math.min(iArr[i11] + 1, iArr[i9] + 1), i8 + (charSequence2.charAt(i11) == charAt ? 0 : 1));
                i9++;
                i8 = i10;
            }
        }
        return iArr[length];
    }

    public static int indexOf(CharSequence charSequence, int i2) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return CharSequenceUtils.indexOf(charSequence, i2, 0);
    }

    public static int indexOfAny(CharSequence charSequence, char... cArr) {
        if (!isEmpty(charSequence) && !ArrayUtils.isEmpty(cArr)) {
            int length = charSequence.length();
            int i2 = length - 1;
            int length2 = cArr.length;
            int i7 = length2 - 1;
            for (int i8 = 0; i8 < length; i8++) {
                char charAt = charSequence.charAt(i8);
                for (int i9 = 0; i9 < length2; i9++) {
                    if (cArr[i9] == charAt && (i8 >= i2 || i9 >= i7 || !Character.isHighSurrogate(charAt) || cArr[i9 + 1] == charSequence.charAt(i8 + 1))) {
                        return i8;
                    }
                }
            }
        }
        return -1;
    }

    public static int indexOfAnyBut(CharSequence charSequence, char... cArr) {
        if (!isEmpty(charSequence) && !ArrayUtils.isEmpty(cArr)) {
            int length = charSequence.length();
            int i2 = length - 1;
            int length2 = cArr.length;
            int i7 = length2 - 1;
            for (int i8 = 0; i8 < length; i8++) {
                char charAt = charSequence.charAt(i8);
                for (int i9 = 0; i9 < length2; i9++) {
                    if (cArr[i9] != charAt || (i8 < i2 && i9 < i7 && Character.isHighSurrogate(charAt) && cArr[i9 + 1] != charSequence.charAt(i8 + 1))) {
                    }
                }
                return i8;
            }
        }
        return -1;
    }

    public static int indexOfDifference(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == charSequence2) {
            return -1;
        }
        int i2 = 0;
        if (charSequence != null && charSequence2 != null) {
            while (i2 < charSequence.length() && i2 < charSequence2.length() && charSequence.charAt(i2) == charSequence2.charAt(i2)) {
                i2++;
            }
            if (i2 >= charSequence2.length() && i2 >= charSequence.length()) {
                return -1;
            }
        }
        return i2;
    }

    public static int indexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        return indexOfIgnoreCase(charSequence, charSequence2, 0);
    }

    public static boolean isAllBlank(CharSequence... charSequenceArr) {
        if (ArrayUtils.isEmpty(charSequenceArr)) {
            return true;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (isNotBlank(charSequence)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAllEmpty(CharSequence... charSequenceArr) {
        if (ArrayUtils.isEmpty(charSequenceArr)) {
            return true;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (isNotEmpty(charSequence)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAllLowerCase(CharSequence charSequence) {
        if (charSequence == null || isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isLowerCase(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAllUpperCase(CharSequence charSequence) {
        if (charSequence == null || isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isUpperCase(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlpha(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isLetter(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphaSpace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isLetter(charSequence.charAt(i2)) && charSequence.charAt(i2) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphanumeric(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAlphanumericSpace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isLetterOrDigit(charSequence.charAt(i2)) && charSequence.charAt(i2) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isAnyBlank(CharSequence... charSequenceArr) {
        if (ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (isBlank(charSequence)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isAnyEmpty(CharSequence... charSequenceArr) {
        if (ArrayUtils.isEmpty(charSequenceArr)) {
            return false;
        }
        for (CharSequence charSequence : charSequenceArr) {
            if (isEmpty(charSequence)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isAsciiPrintable(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!CharUtils.isAsciiPrintable(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isBlank(CharSequence charSequence) {
        int length;
        if (charSequence != null && (length = charSequence.length()) != 0) {
            for (int i2 = 0; i2 < length; i2++) {
                if (!Character.isWhitespace(charSequence.charAt(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean isMixedCase(CharSequence charSequence) {
        if (!isEmpty(charSequence) && charSequence.length() != 1) {
            int length = charSequence.length();
            boolean z6 = false;
            boolean z7 = false;
            for (int i2 = 0; i2 < length; i2++) {
                if (z6 && z7) {
                    return true;
                }
                if (Character.isUpperCase(charSequence.charAt(i2))) {
                    z6 = true;
                } else if (Character.isLowerCase(charSequence.charAt(i2))) {
                    z7 = true;
                }
            }
            if (z6 && z7) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNoneBlank(CharSequence... charSequenceArr) {
        return !isAnyBlank(charSequenceArr);
    }

    public static boolean isNoneEmpty(CharSequence... charSequenceArr) {
        return !isAnyEmpty(charSequenceArr);
    }

    public static boolean isNotBlank(CharSequence charSequence) {
        return !isBlank(charSequence);
    }

    public static boolean isNotEmpty(CharSequence charSequence) {
        return !isEmpty(charSequence);
    }

    public static boolean isNumeric(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isDigit(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isNumericSpace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isDigit(charSequence.charAt(i2)) && charSequence.charAt(i2) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static boolean isWhitespace(CharSequence charSequence) {
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isWhitespace(charSequence.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    @SafeVarargs
    public static <T> String join(T... tArr) {
        return join(tArr, (String) null);
    }

    public static String joinWith(String str, Object... objArr) {
        if (objArr == null) {
            throw new IllegalArgumentException("Object varargs must not be null");
        }
        String defaultString = defaultString(str);
        StringBuilder sb = new StringBuilder();
        Iterator it = Arrays.asList(objArr).iterator();
        while (it.hasNext()) {
            sb.append(Objects.toString(it.next(), ""));
            if (it.hasNext()) {
                sb.append(defaultString);
            }
        }
        return sb.toString();
    }

    public static int lastIndexOf(CharSequence charSequence, int i2) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return CharSequenceUtils.lastIndexOf(charSequence, i2, charSequence.length());
    }

    public static int lastIndexOfAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        int lastIndexOf;
        int i2 = -1;
        if (charSequence != null && charSequenceArr != null) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (charSequence2 != null && (lastIndexOf = CharSequenceUtils.lastIndexOf(charSequence, charSequence2, charSequence.length())) > i2) {
                    i2 = lastIndexOf;
                }
            }
        }
        return i2;
    }

    public static int lastIndexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return lastIndexOfIgnoreCase(charSequence, charSequence2, charSequence.length());
    }

    public static int lastOrdinalIndexOf(CharSequence charSequence, CharSequence charSequence2, int i2) {
        return ordinalIndexOf(charSequence, charSequence2, i2, true);
    }

    public static String left(String str, int i2) {
        if (str == null) {
            return null;
        }
        return i2 < 0 ? "" : str.length() <= i2 ? str : str.substring(0, i2);
    }

    public static String leftPad(String str, int i2) {
        return leftPad(str, i2, TokenParser.SP);
    }

    public static int length(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    public static String lowerCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase();
    }

    private static int[] matches(CharSequence charSequence, CharSequence charSequence2) {
        CharSequence charSequence3;
        CharSequence charSequence4;
        if (charSequence.length() > charSequence2.length()) {
            charSequence4 = charSequence;
            charSequence3 = charSequence2;
        } else {
            charSequence3 = charSequence;
            charSequence4 = charSequence2;
        }
        int max = Math.max((charSequence4.length() / 2) - 1, 0);
        int[] iArr = new int[charSequence3.length()];
        Arrays.fill(iArr, -1);
        boolean[] zArr = new boolean[charSequence4.length()];
        int i2 = 0;
        for (int i7 = 0; i7 < charSequence3.length(); i7++) {
            char charAt = charSequence3.charAt(i7);
            int max2 = Math.max(i7 - max, 0);
            int min = Math.min(i7 + max + 1, charSequence4.length());
            while (true) {
                if (max2 >= min) {
                    break;
                }
                if (!zArr[max2] && charAt == charSequence4.charAt(max2)) {
                    iArr[i7] = max2;
                    zArr[max2] = true;
                    i2++;
                    break;
                }
                max2++;
            }
        }
        char[] cArr = new char[i2];
        char[] cArr2 = new char[i2];
        int i8 = 0;
        for (int i9 = 0; i9 < charSequence3.length(); i9++) {
            if (iArr[i9] != -1) {
                cArr[i8] = charSequence3.charAt(i9);
                i8++;
            }
        }
        int i10 = 0;
        for (int i11 = 0; i11 < charSequence4.length(); i11++) {
            if (zArr[i11]) {
                cArr2[i10] = charSequence4.charAt(i11);
                i10++;
            }
        }
        int i12 = 0;
        for (int i13 = 0; i13 < i2; i13++) {
            if (cArr[i13] != cArr2[i13]) {
                i12++;
            }
        }
        int i14 = 0;
        for (int i15 = 0; i15 < charSequence3.length() && charSequence.charAt(i15) == charSequence2.charAt(i15); i15++) {
            i14++;
        }
        return new int[]{i2, i12 / 2, i14, charSequence4.length()};
    }

    public static String mid(String str, int i2, int i7) {
        if (str == null) {
            return null;
        }
        if (i7 < 0 || i2 > str.length()) {
            return "";
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int i8 = i7 + i2;
        return str.length() <= i8 ? str.substring(i2) : str.substring(i2, i8);
    }

    private static StringBuilder newStringBuilder(int i2) {
        return new StringBuilder(i2 * 16);
    }

    public static String normalizeSpace(String str) {
        if (isEmpty(str)) {
            return str;
        }
        int length = str.length();
        char[] cArr = new char[length];
        boolean z6 = true;
        int i2 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < length; i8++) {
            char charAt = str.charAt(i8);
            if (Character.isWhitespace(charAt)) {
                if (i7 == 0 && !z6) {
                    cArr[i2] = SPACE.charAt(0);
                    i2++;
                }
                i7++;
            } else {
                int i9 = i2 + 1;
                if (charAt == 160) {
                    charAt = TokenParser.SP;
                }
                cArr[i2] = charAt;
                i7 = 0;
                i2 = i9;
                z6 = false;
            }
        }
        if (z6) {
            return "";
        }
        return new String(cArr, 0, i2 - (i7 <= 0 ? 0 : 1)).trim();
    }

    public static int ordinalIndexOf(CharSequence charSequence, CharSequence charSequence2, int i2) {
        return ordinalIndexOf(charSequence, charSequence2, i2, false);
    }

    public static String overlay(String str, String str2, int i2, int i7) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = "";
        }
        int length = str.length();
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 > length) {
            i2 = length;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        if (i7 <= length) {
            length = i7;
        }
        if (i2 > length) {
            int i8 = length;
            length = i2;
            i2 = i8;
        }
        return str.substring(0, i2) + str2 + str.substring(length);
    }

    private static String prependIfMissing(String str, CharSequence charSequence, boolean z6, CharSequence... charSequenceArr) {
        if (str == null || isEmpty(charSequence) || startsWith(str, charSequence, z6)) {
            return str;
        }
        if (charSequenceArr != null && charSequenceArr.length > 0) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (startsWith(str, charSequence2, z6)) {
                    return str;
                }
            }
        }
        return charSequence.toString() + str;
    }

    public static String prependIfMissingIgnoreCase(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return prependIfMissing(str, charSequence, true, charSequenceArr);
    }

    public static String remove(String str, String str2) {
        return (isEmpty(str) || isEmpty(str2)) ? str : replace(str, str2, "", -1);
    }

    @Deprecated
    public static String removeAll(String str, String str2) {
        return RegExUtils.removeAll(str, str2);
    }

    public static String removeEnd(String str, String str2) {
        return (isEmpty(str) || isEmpty(str2) || !str.endsWith(str2)) ? str : str.substring(0, str.length() - str2.length());
    }

    public static String removeEndIgnoreCase(String str, String str2) {
        return (isEmpty(str) || isEmpty(str2) || !endsWithIgnoreCase(str, str2)) ? str : str.substring(0, str.length() - str2.length());
    }

    @Deprecated
    public static String removeFirst(String str, String str2) {
        return replaceFirst(str, str2, "");
    }

    public static String removeIgnoreCase(String str, String str2) {
        return (isEmpty(str) || isEmpty(str2)) ? str : replaceIgnoreCase(str, str2, "", -1);
    }

    @Deprecated
    public static String removePattern(String str, String str2) {
        return RegExUtils.removePattern(str, str2);
    }

    public static String removeStart(String str, String str2) {
        return (isEmpty(str) || isEmpty(str2) || !str.startsWith(str2)) ? str : str.substring(str2.length());
    }

    public static String removeStartIgnoreCase(String str, String str2) {
        return (isEmpty(str) || isEmpty(str2) || !startsWithIgnoreCase(str, str2)) ? str : str.substring(str2.length());
    }

    public static String repeat(String str, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 <= 0) {
            return "";
        }
        int length = str.length();
        if (i2 == 1 || length == 0) {
            return str;
        }
        if (length == 1 && i2 <= 8192) {
            return repeat(str.charAt(0), i2);
        }
        int i7 = length * i2;
        if (length == 1) {
            return repeat(str.charAt(0), i2);
        }
        if (length != 2) {
            StringBuilder sb = new StringBuilder(i7);
            for (int i8 = 0; i8 < i2; i8++) {
                sb.append(str);
            }
            return sb.toString();
        }
        char charAt = str.charAt(0);
        char charAt2 = str.charAt(1);
        char[] cArr = new char[i7];
        for (int i9 = (i2 * 2) - 2; i9 >= 0; i9 -= 2) {
            cArr[i9] = charAt;
            cArr[i9 + 1] = charAt2;
        }
        return new String(cArr);
    }

    public static String replace(String str, String str2, String str3) {
        return replace(str, str2, str3, -1);
    }

    @Deprecated
    public static String replaceAll(String str, String str2, String str3) {
        return RegExUtils.replaceAll(str, str2, str3);
    }

    public static String replaceChars(String str, char c7, char c8) {
        if (str == null) {
            return null;
        }
        return str.replace(c7, c8);
    }

    public static String replaceEach(String str, String[] strArr, String[] strArr2) {
        return replaceEach(str, strArr, strArr2, false, 0);
    }

    public static String replaceEachRepeatedly(String str, String[] strArr, String[] strArr2) {
        return replaceEach(str, strArr, strArr2, true, strArr == null ? 0 : strArr.length);
    }

    @Deprecated
    public static String replaceFirst(String str, String str2, String str3) {
        return RegExUtils.replaceFirst(str, str2, str3);
    }

    public static String replaceIgnoreCase(String str, String str2, String str3) {
        return replaceIgnoreCase(str, str2, str3, -1);
    }

    public static String replaceOnce(String str, String str2, String str3) {
        return replace(str, str2, str3, 1);
    }

    public static String replaceOnceIgnoreCase(String str, String str2, String str3) {
        return replaceIgnoreCase(str, str2, str3, 1);
    }

    @Deprecated
    public static String replacePattern(String str, String str2, String str3) {
        return RegExUtils.replacePattern(str, str2, str3);
    }

    public static String reverse(String str) {
        if (str == null) {
            return null;
        }
        return new StringBuilder(str).reverse().toString();
    }

    public static String reverseDelimited(String str, char c7) {
        if (str == null) {
            return null;
        }
        String[] split = split(str, c7);
        ArrayUtils.reverse(split);
        return join(split, c7);
    }

    public static String right(String str, int i2) {
        if (str == null) {
            return null;
        }
        return i2 < 0 ? "" : str.length() <= i2 ? str : str.substring(str.length() - i2);
    }

    public static String rightPad(String str, int i2) {
        return rightPad(str, i2, TokenParser.SP);
    }

    public static String rotate(String str, int i2) {
        int i7;
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (i2 == 0 || length == 0 || (i7 = i2 % length) == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(length);
        int i8 = -i7;
        sb.append(substring(str, i8));
        sb.append(substring(str, 0, i8));
        return sb.toString();
    }

    public static String[] split(String str) {
        return split(str, null, -1);
    }

    public static String[] splitByCharacterType(String str) {
        return splitByCharacterType(str, false);
    }

    public static String[] splitByCharacterTypeCamelCase(String str) {
        return splitByCharacterType(str, true);
    }

    public static String[] splitByWholeSeparator(String str, String str2) {
        return splitByWholeSeparatorWorker(str, str2, -1, false);
    }

    public static String[] splitByWholeSeparatorPreserveAllTokens(String str, String str2) {
        return splitByWholeSeparatorWorker(str, str2, -1, true);
    }

    private static String[] splitByWholeSeparatorWorker(String str, String str2, int i2, boolean z6) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        if (str2 == null || "".equals(str2)) {
            return splitWorker(str, null, i2, z6);
        }
        int length2 = str2.length();
        ArrayList arrayList = new ArrayList();
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < length) {
            i7 = str.indexOf(str2, i8);
            if (i7 > -1) {
                if (i7 > i8) {
                    i9++;
                    if (i9 == i2) {
                        arrayList.add(str.substring(i8));
                    } else {
                        arrayList.add(str.substring(i8, i7));
                    }
                } else if (z6) {
                    i9++;
                    if (i9 == i2) {
                        arrayList.add(str.substring(i8));
                        i7 = length;
                    } else {
                        arrayList.add("");
                    }
                }
                i8 = i7 + length2;
            } else {
                arrayList.add(str.substring(i8));
            }
            i7 = length;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] splitPreserveAllTokens(String str) {
        return splitWorker(str, null, -1, true);
    }

    private static String[] splitWorker(String str, char c7, boolean z6) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        boolean z7 = false;
        boolean z8 = false;
        int i7 = 0;
        while (i2 < length) {
            if (str.charAt(i2) == c7) {
                if (z7 || z6) {
                    arrayList.add(str.substring(i7, i2));
                    z7 = false;
                    z8 = true;
                }
                i7 = i2 + 1;
                i2 = i7;
            } else {
                i2++;
                z8 = false;
                z7 = true;
            }
        }
        if (z7 || (z6 && z8)) {
            arrayList.add(str.substring(i7, i2));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean startsWith(CharSequence charSequence, CharSequence charSequence2) {
        return startsWith(charSequence, charSequence2, false);
    }

    public static boolean startsWithAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (!isEmpty(charSequence) && !ArrayUtils.isEmpty(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (startsWith(charSequence, charSequence2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean startsWithIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        return startsWith(charSequence, charSequence2, true);
    }

    public static String strip(String str) {
        return strip(str, null);
    }

    public static String stripAccents(String str) {
        if (str == null) {
            return null;
        }
        Pattern compile = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        StringBuilder sb = new StringBuilder(Normalizer.normalize(str, Normalizer.Form.NFD));
        convertRemainingAccentCharacters(sb);
        return compile.matcher(sb).replaceAll("");
    }

    public static String[] stripAll(String... strArr) {
        return stripAll(strArr, null);
    }

    public static String stripEnd(String str, String str2) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        if (str2 == null) {
            while (length != 0 && Character.isWhitespace(str.charAt(length - 1))) {
                length--;
            }
        } else {
            if (str2.isEmpty()) {
                return str;
            }
            while (length != 0 && str2.indexOf(str.charAt(length - 1)) != -1) {
                length--;
            }
        }
        return str.substring(0, length);
    }

    public static String stripStart(String str, String str2) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        int i2 = 0;
        if (str2 == null) {
            while (i2 != length && Character.isWhitespace(str.charAt(i2))) {
                i2++;
            }
        } else {
            if (str2.isEmpty()) {
                return str;
            }
            while (i2 != length && str2.indexOf(str.charAt(i2)) != -1) {
                i2++;
            }
        }
        return str.substring(i2);
    }

    public static String stripToEmpty(String str) {
        return str == null ? "" : strip(str, null);
    }

    public static String stripToNull(String str) {
        if (str == null) {
            return null;
        }
        String strip = strip(str, null);
        if (strip.isEmpty()) {
            return null;
        }
        return strip;
    }

    public static String substring(String str, int i2) {
        if (str == null) {
            return null;
        }
        if (i2 < 0) {
            i2 += str.length();
        }
        if (i2 < 0) {
            i2 = 0;
        }
        return i2 > str.length() ? "" : str.substring(i2);
    }

    public static String substringAfter(String str, String str2) {
        int indexOf;
        return isEmpty(str) ? str : (str2 == null || (indexOf = str.indexOf(str2)) == -1) ? "" : str.substring(str2.length() + indexOf);
    }

    public static String substringAfterLast(String str, String str2) {
        int lastIndexOf;
        return isEmpty(str) ? str : (isEmpty(str2) || (lastIndexOf = str.lastIndexOf(str2)) == -1 || lastIndexOf == str.length() - str2.length()) ? "" : str.substring(str2.length() + lastIndexOf);
    }

    public static String substringBefore(String str, String str2) {
        if (isEmpty(str) || str2 == null) {
            return str;
        }
        if (str2.isEmpty()) {
            return "";
        }
        int indexOf = str.indexOf(str2);
        return indexOf == -1 ? str : str.substring(0, indexOf);
    }

    public static String substringBeforeLast(String str, String str2) {
        if (isEmpty(str) || isEmpty(str2)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(str2);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    public static String substringBetween(String str, String str2) {
        return substringBetween(str, str2, str2);
    }

    public static String[] substringsBetween(String str, String str2, String str3) {
        int indexOf;
        int i2;
        int indexOf2;
        if (str == null || isEmpty(str2) || isEmpty(str3)) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        int length2 = str3.length();
        int length3 = str2.length();
        ArrayList arrayList = new ArrayList();
        int i7 = 0;
        while (i7 < length - length2 && (indexOf = str.indexOf(str2, i7)) >= 0 && (indexOf2 = str.indexOf(str3, (i2 = indexOf + length3))) >= 0) {
            arrayList.add(str.substring(i2, indexOf2));
            i7 = indexOf2 + length2;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String swapCase(String str) {
        if (isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int[] iArr = new int[length];
        int i2 = 0;
        int i7 = 0;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            if (Character.isUpperCase(codePointAt)) {
                codePointAt = Character.toLowerCase(codePointAt);
            } else if (Character.isTitleCase(codePointAt)) {
                codePointAt = Character.toLowerCase(codePointAt);
            } else if (Character.isLowerCase(codePointAt)) {
                codePointAt = Character.toUpperCase(codePointAt);
            }
            iArr[i7] = codePointAt;
            i2 += Character.charCount(codePointAt);
            i7++;
        }
        return new String(iArr, 0, i7);
    }

    public static int[] toCodePoints(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        if (charSequence.length() == 0) {
            return ArrayUtils.EMPTY_INT_ARRAY;
        }
        String charSequence2 = charSequence.toString();
        int codePointCount = charSequence2.codePointCount(0, charSequence2.length());
        int[] iArr = new int[codePointCount];
        int i2 = 0;
        for (int i7 = 0; i7 < codePointCount; i7++) {
            int codePointAt = charSequence2.codePointAt(i2);
            iArr[i7] = codePointAt;
            i2 += Character.charCount(codePointAt);
        }
        return iArr;
    }

    public static String toEncodedString(byte[] bArr, Charset charset) {
        if (charset == null) {
            charset = Charset.defaultCharset();
        }
        return new String(bArr, charset);
    }

    @Deprecated
    public static String toString(byte[] bArr, String str) throws UnsupportedEncodingException {
        return str != null ? new String(bArr, str) : new String(bArr, Charset.defaultCharset());
    }

    public static String trim(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }

    public static String trimToEmpty(String str) {
        return str == null ? "" : str.trim();
    }

    public static String trimToNull(String str) {
        String trim = trim(str);
        if (isEmpty(trim)) {
            return null;
        }
        return trim;
    }

    public static String truncate(String str, int i2) {
        return truncate(str, 0, i2);
    }

    public static String uncapitalize(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        int codePointAt = str.codePointAt(0);
        int lowerCase = Character.toLowerCase(codePointAt);
        if (codePointAt == lowerCase) {
            return str;
        }
        int[] iArr = new int[length];
        iArr[0] = lowerCase;
        int charCount = Character.charCount(codePointAt);
        int i2 = 1;
        while (charCount < length) {
            int codePointAt2 = str.codePointAt(charCount);
            iArr[i2] = codePointAt2;
            charCount += Character.charCount(codePointAt2);
            i2++;
        }
        return new String(iArr, 0, i2);
    }

    public static String unwrap(String str, String str2) {
        if (isEmpty(str) || isEmpty(str2) || !startsWith(str, str2) || !endsWith(str, str2)) {
            return str;
        }
        int indexOf = str.indexOf(str2);
        int lastIndexOf = str.lastIndexOf(str2);
        return (indexOf == -1 || lastIndexOf == -1) ? str : str.substring(indexOf + str2.length(), lastIndexOf);
    }

    public static String upperCase(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase();
    }

    public static String wrap(String str, char c7) {
        if (isEmpty(str) || c7 == 0) {
            return str;
        }
        return c7 + str + c7;
    }

    public static String wrapIfMissing(String str, char c7) {
        if (isEmpty(str) || c7 == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() + 2);
        if (str.charAt(0) != c7) {
            sb.append(c7);
        }
        sb.append(str);
        if (str.charAt(str.length() - 1) != c7) {
            sb.append(c7);
        }
        return sb.toString();
    }

    public static String abbreviate(String str, int i2, int i7) {
        return abbreviate(str, "...", i2, i7);
    }

    public static String center(String str, int i2, char c7) {
        int length;
        int length2;
        return (str == null || i2 <= 0 || (length2 = i2 - (length = str.length())) <= 0) ? str : rightPad(leftPad(str, (length2 / 2) + length, c7), i2, c7);
    }

    public static int compare(String str, String str2, boolean z6) {
        if (str == str2) {
            return 0;
        }
        return str == null ? z6 ? -1 : 1 : str2 == null ? z6 ? 1 : -1 : str.compareTo(str2);
    }

    public static int compareIgnoreCase(String str, String str2, boolean z6) {
        if (str == str2) {
            return 0;
        }
        return str == null ? z6 ? -1 : 1 : str2 == null ? z6 ? 1 : -1 : str.compareToIgnoreCase(str2);
    }

    public static String defaultString(String str) {
        return defaultString(str, "");
    }

    private static boolean endsWith(CharSequence charSequence, CharSequence charSequence2, boolean z6) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        }
        if (charSequence2.length() > charSequence.length()) {
            return false;
        }
        return CharSequenceUtils.regionMatches(charSequence, z6, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length());
    }

    public static int indexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2, int i2) {
        if (charSequence != null && charSequence2 != null) {
            if (i2 < 0) {
                i2 = 0;
            }
            int length = (charSequence.length() - charSequence2.length()) + 1;
            if (i2 > length) {
                return -1;
            }
            if (charSequence2.length() == 0) {
                return i2;
            }
            int i7 = i2;
            while (i7 < length) {
                CharSequence charSequence3 = charSequence;
                CharSequence charSequence4 = charSequence2;
                if (CharSequenceUtils.regionMatches(charSequence3, true, i7, charSequence4, 0, charSequence2.length())) {
                    return i7;
                }
                i7++;
                charSequence = charSequence3;
                charSequence2 = charSequence4;
            }
        }
        return -1;
    }

    public static String join(Object[] objArr, char c7) {
        if (objArr == null) {
            return null;
        }
        return join(objArr, c7, 0, objArr.length);
    }

    public static int lastIndexOfIgnoreCase(CharSequence charSequence, CharSequence charSequence2, int i2) {
        if (charSequence != null && charSequence2 != null) {
            if (i2 > charSequence.length() - charSequence2.length()) {
                i2 = charSequence.length() - charSequence2.length();
            }
            if (i2 < 0) {
                return -1;
            }
            if (charSequence2.length() == 0) {
                return i2;
            }
            int i7 = i2;
            while (i7 >= 0) {
                CharSequence charSequence3 = charSequence;
                CharSequence charSequence4 = charSequence2;
                if (CharSequenceUtils.regionMatches(charSequence3, true, i7, charSequence4, 0, charSequence2.length())) {
                    return i7;
                }
                i7--;
                charSequence = charSequence3;
                charSequence2 = charSequence4;
            }
        }
        return -1;
    }

    public static String leftPad(String str, int i2, char c7) {
        if (str == null) {
            return null;
        }
        int length = i2 - str.length();
        return length <= 0 ? str : length > 8192 ? leftPad(str, i2, String.valueOf(c7)) : repeat(c7, length).concat(str);
    }

    public static String lowerCase(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase(locale);
    }

    private static int ordinalIndexOf(CharSequence charSequence, CharSequence charSequence2, int i2, boolean z6) {
        if (charSequence != null && charSequence2 != null && i2 > 0) {
            int i7 = 0;
            if (charSequence2.length() == 0) {
                if (z6) {
                    return charSequence.length();
                }
                return 0;
            }
            r0 = z6 ? charSequence.length() : -1;
            do {
                r0 = z6 ? CharSequenceUtils.lastIndexOf(charSequence, charSequence2, r0 - 1) : CharSequenceUtils.indexOf(charSequence, charSequence2, r0 + 1);
                if (r0 < 0) {
                    break;
                }
                i7++;
            } while (i7 < i2);
        }
        return r0;
    }

    public static String replace(String str, String str2, String str3, int i2) {
        return replace(str, str2, str3, i2, false);
    }

    public static String replaceChars(String str, String str2, String str3) {
        if (isEmpty(str) || isEmpty(str2)) {
            return str;
        }
        if (str3 == null) {
            str3 = "";
        }
        int length = str3.length();
        int length2 = str.length();
        StringBuilder sb = new StringBuilder(length2);
        boolean z6 = false;
        for (int i2 = 0; i2 < length2; i2++) {
            char charAt = str.charAt(i2);
            int indexOf = str2.indexOf(charAt);
            if (indexOf >= 0) {
                if (indexOf < length) {
                    sb.append(str3.charAt(indexOf));
                }
                z6 = true;
            } else {
                sb.append(charAt);
            }
        }
        return z6 ? sb.toString() : str;
    }

    private static String replaceEach(String str, String[] strArr, String[] strArr2, boolean z6, int i2) {
        String str2;
        String str3;
        int length;
        String str4;
        if (str == null || str.isEmpty() || strArr == null || strArr.length == 0 || strArr2 == null || strArr2.length == 0) {
            return str;
        }
        if (i2 < 0) {
            throw new IllegalStateException("Aborting to protect against StackOverflowError - output of one loop is the input of another");
        }
        int length2 = strArr.length;
        int length3 = strArr2.length;
        if (length2 != length3) {
            throw new IllegalArgumentException(i.e(length2, length3, "Search and Replace array lengths don't match: ", " vs "));
        }
        boolean[] zArr = new boolean[length2];
        int i7 = -1;
        int i8 = -1;
        for (int i9 = 0; i9 < length2; i9++) {
            if (!zArr[i9] && (str4 = strArr[i9]) != null && !str4.isEmpty() && strArr2[i9] != null) {
                int indexOf = str.indexOf(strArr[i9]);
                if (indexOf == -1) {
                    zArr[i9] = true;
                } else if (i7 == -1 || indexOf < i7) {
                    i8 = i9;
                    i7 = indexOf;
                }
            }
        }
        if (i7 == -1) {
            return str;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < strArr.length; i11++) {
            if (strArr[i11] != null && (str3 = strArr2[i11]) != null && (length = str3.length() - strArr[i11].length()) > 0) {
                i10 += length * 3;
            }
        }
        StringBuilder sb = new StringBuilder(str.length() + Math.min(i10, str.length() / 5));
        int i12 = 0;
        while (i7 != -1) {
            while (i12 < i7) {
                sb.append(str.charAt(i12));
                i12++;
            }
            sb.append(strArr2[i8]);
            i12 = strArr[i8].length() + i7;
            i7 = -1;
            i8 = -1;
            for (int i13 = 0; i13 < length2; i13++) {
                if (!zArr[i13] && (str2 = strArr[i13]) != null && !str2.isEmpty() && strArr2[i13] != null) {
                    int indexOf2 = str.indexOf(strArr[i13], i12);
                    if (indexOf2 == -1) {
                        zArr[i13] = true;
                    } else if (i7 == -1 || indexOf2 < i7) {
                        i8 = i13;
                        i7 = indexOf2;
                    }
                }
            }
        }
        int length4 = str.length();
        while (i12 < length4) {
            sb.append(str.charAt(i12));
            i12++;
        }
        String sb2 = sb.toString();
        return !z6 ? sb2 : replaceEach(sb2, strArr, strArr2, z6, i2 - 1);
    }

    public static String replaceIgnoreCase(String str, String str2, String str3, int i2) {
        return replace(str, str2, str3, i2, true);
    }

    public static String rightPad(String str, int i2, char c7) {
        if (str == null) {
            return null;
        }
        int length = i2 - str.length();
        return length <= 0 ? str : length > 8192 ? rightPad(str, i2, String.valueOf(c7)) : str.concat(repeat(c7, length));
    }

    public static String[] split(String str, char c7) {
        return splitWorker(str, c7, false);
    }

    private static String[] splitByCharacterType(String str, boolean z6) {
        if (str == null) {
            return null;
        }
        if (str.isEmpty()) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int type = Character.getType(charArray[0]);
        for (int i7 = 1; i7 < charArray.length; i7++) {
            int type2 = Character.getType(charArray[i7]);
            if (type2 != type) {
                if (z6 && type2 == 2 && type == 1) {
                    int i8 = i7 - 1;
                    if (i8 != i2) {
                        arrayList.add(new String(charArray, i2, i8 - i2));
                        i2 = i8;
                    }
                } else {
                    arrayList.add(new String(charArray, i2, i7 - i2));
                    i2 = i7;
                }
                type = type2;
            }
        }
        arrayList.add(new String(charArray, i2, charArray.length - i2));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] splitByWholeSeparator(String str, String str2, int i2) {
        return splitByWholeSeparatorWorker(str, str2, i2, false);
    }

    public static String[] splitByWholeSeparatorPreserveAllTokens(String str, String str2, int i2) {
        return splitByWholeSeparatorWorker(str, str2, i2, true);
    }

    public static String[] splitPreserveAllTokens(String str, char c7) {
        return splitWorker(str, c7, true);
    }

    private static boolean startsWith(CharSequence charSequence, CharSequence charSequence2, boolean z6) {
        if (charSequence == null || charSequence2 == null) {
            return charSequence == charSequence2;
        }
        if (charSequence2.length() > charSequence.length()) {
            return false;
        }
        return CharSequenceUtils.regionMatches(charSequence, z6, 0, charSequence2, 0, charSequence2.length());
    }

    public static String strip(String str, String str2) {
        return isEmpty(str) ? str : stripEnd(stripStart(str, str2), str2);
    }

    public static String[] stripAll(String[] strArr, String str) {
        int length;
        if (strArr == null || (length = strArr.length) == 0) {
            return strArr;
        }
        String[] strArr2 = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            strArr2[i2] = strip(strArr[i2], str);
        }
        return strArr2;
    }

    public static String substringBetween(String str, String str2, String str3) {
        int indexOf;
        int indexOf2;
        if (str == null || str2 == null || str3 == null || (indexOf = str.indexOf(str2)) == -1 || (indexOf2 = str.indexOf(str3, str2.length() + indexOf)) == -1) {
            return null;
        }
        return str.substring(str2.length() + indexOf, indexOf2);
    }

    public static String truncate(String str, int i2, int i7) {
        if (i2 < 0) {
            throw new IllegalArgumentException("offset cannot be negative");
        }
        if (i7 < 0) {
            throw new IllegalArgumentException("maxWith cannot be negative");
        }
        if (str == null) {
            return null;
        }
        if (i2 > str.length()) {
            return "";
        }
        if (str.length() <= i7) {
            return str.substring(i2);
        }
        int i8 = i7 + i2;
        if (i8 > str.length()) {
            i8 = str.length();
        }
        return str.substring(i2, i8);
    }

    public static String upperCase(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase(locale);
    }

    public static String abbreviate(String str, String str2, int i2) {
        return abbreviate(str, str2, 0, i2);
    }

    public static boolean contains(CharSequence charSequence, CharSequence charSequence2) {
        return (charSequence == null || charSequence2 == null || CharSequenceUtils.indexOf(charSequence, charSequence2, 0) < 0) ? false : true;
    }

    public static int indexOf(CharSequence charSequence, int i2, int i7) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return CharSequenceUtils.indexOf(charSequence, i2, i7);
    }

    public static String join(long[] jArr, char c7) {
        if (jArr == null) {
            return null;
        }
        return join(jArr, c7, 0, jArr.length);
    }

    public static int lastIndexOf(CharSequence charSequence, int i2, int i7) {
        if (isEmpty(charSequence)) {
            return -1;
        }
        return CharSequenceUtils.lastIndexOf(charSequence, i2, i7);
    }

    public static String remove(String str, char c7) {
        if (isEmpty(str) || str.indexOf(c7) == -1) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int i2 = 0;
        for (char c8 : charArray) {
            if (c8 != c7) {
                charArray[i2] = c8;
                i2++;
            }
        }
        return new String(charArray, 0, i2);
    }

    private static String replace(String str, String str2, String str3, int i2, boolean z6) {
        String str4;
        int i7;
        if (isEmpty(str) || isEmpty(str2) || str3 == null || i2 == 0) {
            return str;
        }
        if (z6) {
            str4 = str.toLowerCase();
            str2 = str2.toLowerCase();
        } else {
            str4 = str;
        }
        int i8 = 0;
        int indexOf = str4.indexOf(str2, 0);
        if (indexOf == -1) {
            return str;
        }
        int length = str2.length();
        int length2 = str3.length() - length;
        if (length2 < 0) {
            length2 = 0;
        }
        if (i2 < 0) {
            i7 = 16;
        } else {
            i7 = 64;
            if (i2 <= 64) {
                i7 = i2;
            }
        }
        StringBuilder sb = new StringBuilder(str.length() + (length2 * i7));
        while (indexOf != -1) {
            sb.append((CharSequence) str, i8, indexOf);
            sb.append(str3);
            i8 = indexOf + length;
            i2--;
            if (i2 == 0) {
                break;
            }
            indexOf = str4.indexOf(str2, i8);
        }
        sb.append((CharSequence) str, i8, str.length());
        return sb.toString();
    }

    public static String[] split(String str, String str2) {
        return splitWorker(str, str2, -1, false);
    }

    public static String[] splitPreserveAllTokens(String str, String str2) {
        return splitWorker(str, str2, -1, true);
    }

    public static String wrap(String str, String str2) {
        return (isEmpty(str) || isEmpty(str2)) ? str : str2.concat(str).concat(str2);
    }

    public static String abbreviate(String str, String str2, int i2, int i7) {
        if (isEmpty(str) || isEmpty(str2)) {
            return str;
        }
        int length = str2.length();
        int i8 = length + 1;
        int i9 = length + length + 1;
        if (i7 >= i8) {
            if (str.length() <= i7) {
                return str;
            }
            if (i2 > str.length()) {
                i2 = str.length();
            }
            int i10 = i7 - length;
            if (str.length() - i2 < i10) {
                i2 = str.length() - i10;
            }
            if (i2 <= i8) {
                return str.substring(0, i10) + str2;
            }
            if (i7 >= i9) {
                if ((i7 + i2) - length < str.length()) {
                    StringBuilder o6 = c.o(str2);
                    o6.append(abbreviate(str.substring(i2), str2, i10));
                    return o6.toString();
                }
                StringBuilder o7 = c.o(str2);
                o7.append(str.substring(str.length() - i10));
                return o7.toString();
            }
            throw new IllegalArgumentException(String.format("Minimum abbreviation width with offset is %d", Integer.valueOf(i9)));
        }
        throw new IllegalArgumentException(String.format("Minimum abbreviation width is %d", Integer.valueOf(i8)));
    }

    public static boolean containsOnly(CharSequence charSequence, String str) {
        if (charSequence == null || str == null) {
            return false;
        }
        return containsOnly(charSequence, str.toCharArray());
    }

    public static int countMatches(CharSequence charSequence, char c7) {
        if (isEmpty(charSequence)) {
            return 0;
        }
        int i2 = 0;
        for (int i7 = 0; i7 < charSequence.length(); i7++) {
            if (c7 == charSequence.charAt(i7)) {
                i2++;
            }
        }
        return i2;
    }

    public static int indexOfDifference(CharSequence... charSequenceArr) {
        if (charSequenceArr != null && charSequenceArr.length > 1) {
            int length = charSequenceArr.length;
            int i2 = Log.LOG_LEVEL_OFF;
            boolean z6 = true;
            int i7 = 0;
            boolean z7 = false;
            for (CharSequence charSequence : charSequenceArr) {
                if (charSequence == null) {
                    z7 = true;
                    i2 = 0;
                } else {
                    i2 = Math.min(charSequence.length(), i2);
                    i7 = Math.max(charSequence.length(), i7);
                    z6 = false;
                }
            }
            if (!z6 && (i7 != 0 || z7)) {
                if (i2 == 0) {
                    return 0;
                }
                int i8 = -1;
                for (int i9 = 0; i9 < i2; i9++) {
                    char charAt = charSequenceArr[0].charAt(i9);
                    int i10 = 1;
                    while (true) {
                        if (i10 >= length) {
                            break;
                        }
                        if (charSequenceArr[i10].charAt(i9) != charAt) {
                            i8 = i9;
                            break;
                        }
                        i10++;
                    }
                    if (i8 != -1) {
                        break;
                    }
                }
                return (i8 != -1 || i2 == i7) ? i8 : i2;
            }
        }
        return -1;
    }

    public static String join(int[] iArr, char c7) {
        if (iArr == null) {
            return null;
        }
        return join(iArr, c7, 0, iArr.length);
    }

    public static String[] split(String str, String str2, int i2) {
        return splitWorker(str, str2, i2, false);
    }

    public static String[] splitPreserveAllTokens(String str, String str2, int i2) {
        return splitWorker(str, str2, i2, true);
    }

    public static String center(String str, int i2, String str2) {
        if (str == null || i2 <= 0) {
            return str;
        }
        if (isEmpty(str2)) {
            str2 = SPACE;
        }
        int length = str.length();
        int i7 = i2 - length;
        return i7 <= 0 ? str : rightPad(leftPad(str, (i7 / 2) + length, str2), i2, str2);
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return CharSequenceUtils.indexOf(charSequence, charSequence2, 0);
    }

    public static String join(short[] sArr, char c7) {
        if (sArr == null) {
            return null;
        }
        return join(sArr, c7, 0, sArr.length);
    }

    public static int lastIndexOf(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return CharSequenceUtils.lastIndexOf(charSequence, charSequence2, charSequence.length());
    }

    public static String leftPad(String str, int i2, String str2) {
        if (str == null) {
            return null;
        }
        if (isEmpty(str2)) {
            str2 = SPACE;
        }
        int length = str2.length();
        int length2 = i2 - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length == 1 && length2 <= 8192) {
            return leftPad(str, i2, str2.charAt(0));
        }
        if (length2 == length) {
            return str2.concat(str);
        }
        if (length2 < length) {
            return str2.substring(0, length2).concat(str);
        }
        char[] cArr = new char[length2];
        char[] charArray = str2.toCharArray();
        for (int i7 = 0; i7 < length2; i7++) {
            cArr[i7] = charArray[i7 % length];
        }
        return new String(cArr).concat(str);
    }

    public static String rightPad(String str, int i2, String str2) {
        if (str == null) {
            return null;
        }
        if (isEmpty(str2)) {
            str2 = SPACE;
        }
        int length = str2.length();
        int length2 = i2 - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length == 1 && length2 <= 8192) {
            return rightPad(str, i2, str2.charAt(0));
        }
        if (length2 == length) {
            return str.concat(str2);
        }
        if (length2 < length) {
            return str.concat(str2.substring(0, length2));
        }
        char[] cArr = new char[length2];
        char[] charArray = str2.toCharArray();
        for (int i7 = 0; i7 < length2; i7++) {
            cArr[i7] = charArray[i7 % length];
        }
        return str.concat(new String(cArr));
    }

    public static String substring(String str, int i2, int i7) {
        if (str == null) {
            return null;
        }
        if (i7 < 0) {
            i7 += str.length();
        }
        if (i2 < 0) {
            i2 += str.length();
        }
        if (i7 > str.length()) {
            i7 = str.length();
        }
        if (i2 > i7) {
            return "";
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        return str.substring(i2, i7);
    }

    public static int indexOf(CharSequence charSequence, CharSequence charSequence2, int i2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return CharSequenceUtils.indexOf(charSequence, charSequence2, i2);
    }

    public static String join(byte[] bArr, char c7) {
        if (bArr == null) {
            return null;
        }
        return join(bArr, c7, 0, bArr.length);
    }

    public static int lastIndexOf(CharSequence charSequence, CharSequence charSequence2, int i2) {
        if (charSequence == null || charSequence2 == null) {
            return -1;
        }
        return CharSequenceUtils.lastIndexOf(charSequence, charSequence2, i2);
    }

    public static String prependIfMissing(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return prependIfMissing(str, charSequence, false, charSequenceArr);
    }

    public static boolean containsNone(CharSequence charSequence, String str) {
        if (charSequence == null || str == null) {
            return true;
        }
        return containsNone(charSequence, str.toCharArray());
    }

    public static String join(char[] cArr, char c7) {
        if (cArr == null) {
            return null;
        }
        return join(cArr, c7, 0, cArr.length);
    }

    public static String unwrap(String str, char c7) {
        int length;
        return (isEmpty(str) || c7 == 0 || str.charAt(0) != c7 || str.charAt(str.length() - 1) != c7 || (length = str.length() - 1) == -1) ? str : str.substring(1, length);
    }

    public static boolean containsAny(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence2 == null) {
            return false;
        }
        return containsAny(charSequence, CharSequenceUtils.toCharArray(charSequence2));
    }

    public static int indexOfAny(CharSequence charSequence, String str) {
        if (isEmpty(charSequence) || isEmpty(str)) {
            return -1;
        }
        return indexOfAny(charSequence, str.toCharArray());
    }

    public static int indexOfAnyBut(CharSequence charSequence, CharSequence charSequence2) {
        if (!isEmpty(charSequence) && !isEmpty(charSequence2)) {
            int length = charSequence.length();
            int i2 = 0;
            while (i2 < length) {
                char charAt = charSequence.charAt(i2);
                boolean z6 = CharSequenceUtils.indexOf(charSequence2, charAt, 0) >= 0;
                int i7 = i2 + 1;
                if (i7 < length && Character.isHighSurrogate(charAt)) {
                    char charAt2 = charSequence.charAt(i7);
                    if (z6 && CharSequenceUtils.indexOf(charSequence2, charAt2, 0) < 0) {
                        return i2;
                    }
                    i2 = i7;
                } else {
                    if (!z6) {
                        return i2;
                    }
                    i2 = i7;
                }
            }
        }
        return -1;
    }

    public static String join(float[] fArr, char c7) {
        if (fArr == null) {
            return null;
        }
        return join(fArr, c7, 0, fArr.length);
    }

    private static String[] splitWorker(String str, String str2, int i2, boolean z6) {
        int i7;
        boolean z7;
        boolean z8;
        int i8;
        int i9;
        boolean z9;
        boolean z10;
        int i10;
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        ArrayList arrayList = new ArrayList();
        if (str2 == null) {
            i9 = 0;
            z9 = false;
            z10 = false;
            i10 = 0;
            int i11 = 1;
            while (i9 < length) {
                if (Character.isWhitespace(str.charAt(i9))) {
                    if (z9 || z6) {
                        int i12 = i11 + 1;
                        if (i11 == i2) {
                            i9 = length;
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        arrayList.add(str.substring(i10, i9));
                        i11 = i12;
                        z9 = false;
                    }
                    i10 = i9 + 1;
                    i9 = i10;
                } else {
                    i9++;
                    z10 = false;
                    z9 = true;
                }
            }
        } else {
            if (str2.length() == 1) {
                char charAt = str2.charAt(0);
                i7 = 0;
                z7 = false;
                z8 = false;
                i8 = 0;
                int i13 = 1;
                while (i7 < length) {
                    if (str.charAt(i7) == charAt) {
                        if (z7 || z6) {
                            int i14 = i13 + 1;
                            if (i13 == i2) {
                                i7 = length;
                                z8 = false;
                            } else {
                                z8 = true;
                            }
                            arrayList.add(str.substring(i8, i7));
                            i13 = i14;
                            z7 = false;
                        }
                        i8 = i7 + 1;
                        i7 = i8;
                    } else {
                        i7++;
                        z8 = false;
                        z7 = true;
                    }
                }
            } else {
                i7 = 0;
                z7 = false;
                z8 = false;
                i8 = 0;
                int i15 = 1;
                while (i7 < length) {
                    if (str2.indexOf(str.charAt(i7)) >= 0) {
                        if (z7 || z6) {
                            int i16 = i15 + 1;
                            if (i15 == i2) {
                                i7 = length;
                                z8 = false;
                            } else {
                                z8 = true;
                            }
                            arrayList.add(str.substring(i8, i7));
                            i15 = i16;
                            z7 = false;
                        }
                        i8 = i7 + 1;
                        i7 = i8;
                    } else {
                        i7++;
                        z8 = false;
                        z7 = true;
                    }
                }
            }
            i9 = i7;
            z9 = z7;
            z10 = z8;
            i10 = i8;
        }
        if (z9 || (z6 && z10)) {
            arrayList.add(str.substring(i10, i9));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Deprecated
    public static String chomp(String str, String str2) {
        return removeEnd(str, str2);
    }

    public static boolean containsAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        if (!isEmpty(charSequence) && !ArrayUtils.isEmpty(charSequenceArr)) {
            for (CharSequence charSequence2 : charSequenceArr) {
                if (contains(charSequence, charSequence2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String join(double[] dArr, char c7) {
        if (dArr == null) {
            return null;
        }
        return join(dArr, c7, 0, dArr.length);
    }

    public static String wrapIfMissing(String str, String str2) {
        if (isEmpty(str) || isEmpty(str2)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str2.length() + str2.length() + str.length());
        if (!str.startsWith(str2)) {
            sb.append(str2);
        }
        sb.append(str);
        if (!str.endsWith(str2)) {
            sb.append(str2);
        }
        return sb.toString();
    }

    public static String appendIfMissing(String str, CharSequence charSequence, CharSequence... charSequenceArr) {
        return appendIfMissing(str, charSequence, false, charSequenceArr);
    }

    public static int indexOfAny(CharSequence charSequence, CharSequence... charSequenceArr) {
        int indexOf;
        if (charSequence == null || charSequenceArr == null) {
            return -1;
        }
        int i2 = Integer.MAX_VALUE;
        for (CharSequence charSequence2 : charSequenceArr) {
            if (charSequence2 != null && (indexOf = CharSequenceUtils.indexOf(charSequence, charSequence2, 0)) != -1 && indexOf < i2) {
                i2 = indexOf;
            }
        }
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2;
    }

    public static String join(Object[] objArr, char c7, int i2, int i7) {
        if (objArr == null) {
            return null;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i8);
        for (int i9 = i2; i9 < i7; i9++) {
            if (i9 > i2) {
                newStringBuilder.append(c7);
            }
            Object obj = objArr[i9];
            if (obj != null) {
                newStringBuilder.append(obj);
            }
        }
        return newStringBuilder.toString();
    }

    @Deprecated
    public static int getLevenshteinDistance(CharSequence charSequence, CharSequence charSequence2, int i2) {
        int i7;
        int i8;
        CharSequence charSequence3;
        CharSequence charSequence4;
        int i9;
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        if (i2 >= 0) {
            int length = charSequence.length();
            int length2 = charSequence2.length();
            int i10 = -1;
            if (length == 0) {
                if (length2 <= i2) {
                    return length2;
                }
                return -1;
            }
            if (length2 == 0) {
                if (length <= i2) {
                    return length;
                }
                return -1;
            }
            if (Math.abs(length - length2) > i2) {
                return -1;
            }
            if (length > length2) {
                i8 = charSequence.length();
                i7 = length2;
                charSequence4 = charSequence;
                charSequence3 = charSequence2;
            } else {
                i7 = length;
                i8 = length2;
                charSequence3 = charSequence;
                charSequence4 = charSequence2;
            }
            int i11 = i7 + 1;
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int i12 = 1;
            int min = Math.min(i7, i2) + 1;
            for (int i13 = 0; i13 < min; i13++) {
                iArr[i13] = i13;
            }
            Arrays.fill(iArr, min, i11, Log.LOG_LEVEL_OFF);
            Arrays.fill(iArr2, Log.LOG_LEVEL_OFF);
            int i14 = 1;
            while (i14 <= i8) {
                char charAt = charSequence4.charAt(i14 - 1);
                iArr2[0] = i14;
                int max = Math.max(i12, i14 - i2);
                int min2 = i14 > Log.LOG_LEVEL_OFF - i2 ? i7 : Math.min(i7, i14 + i2);
                if (max > min2) {
                    return i10;
                }
                if (max > i12) {
                    iArr2[max - 1] = Integer.MAX_VALUE;
                }
                while (max <= min2) {
                    int i15 = max - 1;
                    int i16 = i10;
                    if (charSequence3.charAt(i15) == charAt) {
                        iArr2[max] = iArr[i15];
                        i9 = i12;
                    } else {
                        i9 = i12;
                        iArr2[max] = Math.min(Math.min(iArr2[i15], iArr[max]), iArr[i15]) + 1;
                    }
                    max++;
                    i12 = i9;
                    i10 = i16;
                }
                int i17 = i10;
                i14++;
                int[] iArr3 = iArr2;
                iArr2 = iArr;
                iArr = iArr3;
                i10 = i17;
            }
            int i18 = i10;
            int i19 = iArr[i7];
            return i19 <= i2 ? i19 : i18;
        }
        throw new IllegalArgumentException("Threshold must not be negative");
    }

    public static String repeat(String str, String str2, int i2) {
        if (str != null && str2 != null) {
            return removeEnd(repeat(str.concat(str2), i2), str2);
        }
        return repeat(str, i2);
    }

    public static String join(long[] jArr, char c7, int i2, int i7) {
        if (jArr == null) {
            return null;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i8);
        for (int i9 = i2; i9 < i7; i9++) {
            if (i9 > i2) {
                newStringBuilder.append(c7);
            }
            newStringBuilder.append(jArr[i9]);
        }
        return newStringBuilder.toString();
    }

    public static String repeat(char c7, int i2) {
        if (i2 <= 0) {
            return "";
        }
        char[] cArr = new char[i2];
        for (int i7 = i2 - 1; i7 >= 0; i7--) {
            cArr[i7] = c7;
        }
        return new String(cArr);
    }

    public static String join(int[] iArr, char c7, int i2, int i7) {
        if (iArr == null) {
            return null;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i8);
        for (int i9 = i2; i9 < i7; i9++) {
            if (i9 > i2) {
                newStringBuilder.append(c7);
            }
            newStringBuilder.append(iArr[i9]);
        }
        return newStringBuilder.toString();
    }

    public static String join(byte[] bArr, char c7, int i2, int i7) {
        if (bArr == null) {
            return null;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i8);
        for (int i9 = i2; i9 < i7; i9++) {
            if (i9 > i2) {
                newStringBuilder.append(c7);
            }
            newStringBuilder.append((int) bArr[i9]);
        }
        return newStringBuilder.toString();
    }

    public static String join(short[] sArr, char c7, int i2, int i7) {
        if (sArr == null) {
            return null;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i8);
        for (int i9 = i2; i9 < i7; i9++) {
            if (i9 > i2) {
                newStringBuilder.append(c7);
            }
            newStringBuilder.append((int) sArr[i9]);
        }
        return newStringBuilder.toString();
    }

    public static String join(char[] cArr, char c7, int i2, int i7) {
        if (cArr == null) {
            return null;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i8);
        for (int i9 = i2; i9 < i7; i9++) {
            if (i9 > i2) {
                newStringBuilder.append(c7);
            }
            newStringBuilder.append(cArr[i9]);
        }
        return newStringBuilder.toString();
    }

    public static String join(double[] dArr, char c7, int i2, int i7) {
        if (dArr == null) {
            return null;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i8);
        for (int i9 = i2; i9 < i7; i9++) {
            if (i9 > i2) {
                newStringBuilder.append(c7);
            }
            newStringBuilder.append(dArr[i9]);
        }
        return newStringBuilder.toString();
    }

    public static String join(float[] fArr, char c7, int i2, int i7) {
        if (fArr == null) {
            return null;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i8);
        for (int i9 = i2; i9 < i7; i9++) {
            if (i9 > i2) {
                newStringBuilder.append(c7);
            }
            newStringBuilder.append(fArr[i9]);
        }
        return newStringBuilder.toString();
    }

    public static String join(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        return join(objArr, str, 0, objArr.length);
    }

    public static String join(Object[] objArr, String str, int i2, int i7) {
        if (objArr == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return "";
        }
        StringBuilder newStringBuilder = newStringBuilder(i8);
        for (int i9 = i2; i9 < i7; i9++) {
            if (i9 > i2) {
                newStringBuilder.append(str);
            }
            Object obj = objArr[i9];
            if (obj != null) {
                newStringBuilder.append(obj);
            }
        }
        return newStringBuilder.toString();
    }

    public static String join(Iterator<?> it, char c7) {
        if (it == null) {
            return null;
        }
        if (!it.hasNext()) {
            return "";
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return Objects.toString(next, "");
        }
        StringBuilder sb = new StringBuilder(256);
        if (next != null) {
            sb.append(next);
        }
        while (it.hasNext()) {
            sb.append(c7);
            Object next2 = it.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }

    public static String join(Iterator<?> it, String str) {
        if (it == null) {
            return null;
        }
        if (!it.hasNext()) {
            return "";
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return Objects.toString(next, "");
        }
        StringBuilder sb = new StringBuilder(256);
        if (next != null) {
            sb.append(next);
        }
        while (it.hasNext()) {
            if (str != null) {
                sb.append(str);
            }
            Object next2 = it.next();
            if (next2 != null) {
                sb.append(next2);
            }
        }
        return sb.toString();
    }

    public static String join(Iterable<?> iterable, char c7) {
        if (iterable == null) {
            return null;
        }
        return join(iterable.iterator(), c7);
    }

    public static String join(Iterable<?> iterable, String str) {
        if (iterable == null) {
            return null;
        }
        return join(iterable.iterator(), str);
    }

    public static String join(List<?> list, char c7, int i2, int i7) {
        if (list == null) {
            return null;
        }
        if (i7 - i2 <= 0) {
            return "";
        }
        return join(list.subList(i2, i7).iterator(), c7);
    }

    public static String join(List<?> list, String str, int i2, int i7) {
        if (list == null) {
            return null;
        }
        if (i7 - i2 <= 0) {
            return "";
        }
        return join(list.subList(i2, i7).iterator(), str);
    }
}
