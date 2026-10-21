package org.threeten.bp.format;

import java.text.DecimalFormatSymbols;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.lang3.ClassUtils;
import org.threeten.bp.jdk8.Jdk8Methods;

/* loaded from: classes2.dex */
public final class DecimalStyle {
    private final char decimalSeparator;
    private final char negativeSign;
    private final char positiveSign;
    private final char zeroDigit;
    public static final DecimalStyle STANDARD = new DecimalStyle('0', '+', '-', ClassUtils.PACKAGE_SEPARATOR_CHAR);
    private static final ConcurrentMap<Locale, DecimalStyle> CACHE = new ConcurrentHashMap(16, 0.75f, 2);

    private DecimalStyle(char c7, char c8, char c9, char c10) {
        this.zeroDigit = c7;
        this.positiveSign = c8;
        this.negativeSign = c9;
        this.decimalSeparator = c10;
    }

    private static DecimalStyle create(Locale locale) {
        DecimalFormatSymbols decimalFormatSymbols = DecimalFormatSymbols.getInstance(locale);
        char zeroDigit = decimalFormatSymbols.getZeroDigit();
        char minusSign = decimalFormatSymbols.getMinusSign();
        char decimalSeparator = decimalFormatSymbols.getDecimalSeparator();
        return (zeroDigit == '0' && minusSign == '-' && decimalSeparator == '.') ? STANDARD : new DecimalStyle(zeroDigit, '+', minusSign, decimalSeparator);
    }

    public static Set<Locale> getAvailableLocales() {
        return new HashSet(Arrays.asList(DecimalFormatSymbols.getAvailableLocales()));
    }

    public static DecimalStyle of(Locale locale) {
        Jdk8Methods.requireNonNull(locale, "locale");
        ConcurrentMap<Locale, DecimalStyle> concurrentMap = CACHE;
        DecimalStyle decimalStyle = concurrentMap.get(locale);
        if (decimalStyle != null) {
            return decimalStyle;
        }
        concurrentMap.putIfAbsent(locale, create(locale));
        return concurrentMap.get(locale);
    }

    public static DecimalStyle ofDefaultLocale() {
        return of(Locale.getDefault());
    }

    public String convertNumberToI18N(String str) {
        char c7 = this.zeroDigit;
        if (c7 == '0') {
            return str;
        }
        int i2 = c7 - '0';
        char[] charArray = str.toCharArray();
        for (int i7 = 0; i7 < charArray.length; i7++) {
            charArray[i7] = (char) (charArray[i7] + i2);
        }
        return new String(charArray);
    }

    public int convertToDigit(char c7) {
        int i2 = c7 - this.zeroDigit;
        if (i2 < 0 || i2 > 9) {
            return -1;
        }
        return i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DecimalStyle) {
            DecimalStyle decimalStyle = (DecimalStyle) obj;
            if (this.zeroDigit == decimalStyle.zeroDigit && this.positiveSign == decimalStyle.positiveSign && this.negativeSign == decimalStyle.negativeSign && this.decimalSeparator == decimalStyle.decimalSeparator) {
                return true;
            }
        }
        return false;
    }

    public char getDecimalSeparator() {
        return this.decimalSeparator;
    }

    public char getNegativeSign() {
        return this.negativeSign;
    }

    public char getPositiveSign() {
        return this.positiveSign;
    }

    public char getZeroDigit() {
        return this.zeroDigit;
    }

    public int hashCode() {
        return this.zeroDigit + this.positiveSign + this.negativeSign + this.decimalSeparator;
    }

    public String toString() {
        return "DecimalStyle[" + this.zeroDigit + this.positiveSign + this.negativeSign + this.decimalSeparator + "]";
    }

    public DecimalStyle withDecimalSeparator(char c7) {
        return c7 == this.decimalSeparator ? this : new DecimalStyle(this.zeroDigit, this.positiveSign, this.negativeSign, c7);
    }

    public DecimalStyle withNegativeSign(char c7) {
        return c7 == this.negativeSign ? this : new DecimalStyle(this.zeroDigit, this.positiveSign, c7, this.decimalSeparator);
    }

    public DecimalStyle withPositiveSign(char c7) {
        return c7 == this.positiveSign ? this : new DecimalStyle(this.zeroDigit, c7, this.negativeSign, this.decimalSeparator);
    }

    public DecimalStyle withZeroDigit(char c7) {
        return c7 == this.zeroDigit ? this : new DecimalStyle(c7, this.positiveSign, this.negativeSign, this.decimalSeparator);
    }
}
