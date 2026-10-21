package org.apache.commons.lang3;

import A.i;
import b.c;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class Validate {
    private static final String DEFAULT_EXCLUSIVE_BETWEEN_EX_MESSAGE = "The value %s is not in the specified exclusive range of %s to %s";
    private static final String DEFAULT_FINITE_EX_MESSAGE = "The value is invalid: %f";
    private static final String DEFAULT_INCLUSIVE_BETWEEN_EX_MESSAGE = "The value %s is not in the specified inclusive range of %s to %s";
    private static final String DEFAULT_IS_ASSIGNABLE_EX_MESSAGE = "Cannot assign a %s to a %s";
    private static final String DEFAULT_IS_INSTANCE_OF_EX_MESSAGE = "Expected type: %s, actual: %s";
    private static final String DEFAULT_IS_NULL_EX_MESSAGE = "The validated object is null";
    private static final String DEFAULT_IS_TRUE_EX_MESSAGE = "The validated expression is false";
    private static final String DEFAULT_MATCHES_PATTERN_EX = "The string %s does not match the pattern %s";
    private static final String DEFAULT_NOT_BLANK_EX_MESSAGE = "The validated character sequence is blank";
    private static final String DEFAULT_NOT_EMPTY_ARRAY_EX_MESSAGE = "The validated array is empty";
    private static final String DEFAULT_NOT_EMPTY_CHAR_SEQUENCE_EX_MESSAGE = "The validated character sequence is empty";
    private static final String DEFAULT_NOT_EMPTY_COLLECTION_EX_MESSAGE = "The validated collection is empty";
    private static final String DEFAULT_NOT_EMPTY_MAP_EX_MESSAGE = "The validated map is empty";
    private static final String DEFAULT_NOT_NAN_EX_MESSAGE = "The validated value is not a number";
    private static final String DEFAULT_NO_NULL_ELEMENTS_ARRAY_EX_MESSAGE = "The validated array contains null element at index: %d";
    private static final String DEFAULT_NO_NULL_ELEMENTS_COLLECTION_EX_MESSAGE = "The validated collection contains null element at index: %d";
    private static final String DEFAULT_VALID_INDEX_ARRAY_EX_MESSAGE = "The validated array index is invalid: %d";
    private static final String DEFAULT_VALID_INDEX_CHAR_SEQUENCE_EX_MESSAGE = "The validated character sequence index is invalid: %d";
    private static final String DEFAULT_VALID_INDEX_COLLECTION_EX_MESSAGE = "The validated collection index is invalid: %d";
    private static final String DEFAULT_VALID_STATE_EX_MESSAGE = "The validated state is false";

    public static <T> void exclusiveBetween(T t6, T t7, Comparable<T> comparable) {
        if (comparable.compareTo(t6) <= 0 || comparable.compareTo(t7) >= 0) {
            throw new IllegalArgumentException(String.format(DEFAULT_EXCLUSIVE_BETWEEN_EX_MESSAGE, comparable, t6, t7));
        }
    }

    public static void finite(double d7) {
        finite(d7, DEFAULT_FINITE_EX_MESSAGE, Double.valueOf(d7));
    }

    public static <T> void inclusiveBetween(T t6, T t7, Comparable<T> comparable) {
        if (comparable.compareTo(t6) < 0 || comparable.compareTo(t7) > 0) {
            throw new IllegalArgumentException(String.format(DEFAULT_INCLUSIVE_BETWEEN_EX_MESSAGE, comparable, t6, t7));
        }
    }

    public static void isAssignableFrom(Class<?> cls, Class<?> cls2) {
        if (cls.isAssignableFrom(cls2)) {
        } else {
            throw new IllegalArgumentException(c.l("Cannot assign a ", cls2 == null ? "null" : cls2.getName(), " to a ", cls.getName()));
        }
    }

    public static void isInstanceOf(Class<?> cls, Object obj) {
        if (cls.isInstance(obj)) {
        } else {
            throw new IllegalArgumentException(c.l("Expected type: ", cls.getName(), ", actual: ", obj == null ? "null" : obj.getClass().getName()));
        }
    }

    public static void isTrue(boolean z6, String str, long j7) {
        if (!z6) {
            throw new IllegalArgumentException(String.format(str, Long.valueOf(j7)));
        }
    }

    public static void matchesPattern(CharSequence charSequence, String str) {
        if (!Pattern.matches(str, charSequence)) {
            throw new IllegalArgumentException(String.format(DEFAULT_MATCHES_PATTERN_EX, charSequence, str));
        }
    }

    public static <T> T[] noNullElements(T[] tArr, String str, Object... objArr) {
        notNull(tArr);
        for (int i2 = 0; i2 < tArr.length; i2++) {
            if (tArr[i2] == null) {
                throw new IllegalArgumentException(String.format(str, ArrayUtils.add((Integer[]) objArr, Integer.valueOf(i2))));
            }
        }
        return tArr;
    }

    public static <T extends CharSequence> T notBlank(T t6, String str, Object... objArr) {
        if (t6 == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (StringUtils.isBlank(t6)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t6;
    }

    public static <T> T[] notEmpty(T[] tArr, String str, Object... objArr) {
        if (tArr == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (tArr.length != 0) {
            return tArr;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static void notNaN(double d7) {
        notNaN(d7, DEFAULT_NOT_NAN_EX_MESSAGE, new Object[0]);
    }

    public static <T> T notNull(T t6) {
        return (T) notNull(t6, DEFAULT_IS_NULL_EX_MESSAGE, new Object[0]);
    }

    public static <T> T[] validIndex(T[] tArr, int i2, String str, Object... objArr) {
        notNull(tArr);
        if (i2 < 0 || i2 >= tArr.length) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return tArr;
    }

    public static void validState(boolean z6) {
        if (!z6) {
            throw new IllegalStateException(DEFAULT_VALID_STATE_EX_MESSAGE);
        }
    }

    public static void finite(double d7, String str, Object... objArr) {
        if (Double.isNaN(d7) || Double.isInfinite(d7)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void isTrue(boolean z6, String str, double d7) {
        if (!z6) {
            throw new IllegalArgumentException(String.format(str, Double.valueOf(d7)));
        }
    }

    public static void notNaN(double d7, String str, Object... objArr) {
        if (Double.isNaN(d7)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static <T> T notNull(T t6, String str, Object... objArr) {
        if (t6 != null) {
            return t6;
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static void validState(boolean z6, String str, Object... objArr) {
        if (!z6) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    public static <T> void exclusiveBetween(T t6, T t7, Comparable<T> comparable, String str, Object... objArr) {
        if (comparable.compareTo(t6) <= 0 || comparable.compareTo(t7) >= 0) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static <T> void inclusiveBetween(T t6, T t7, Comparable<T> comparable, String str, Object... objArr) {
        if (comparable.compareTo(t6) < 0 || comparable.compareTo(t7) > 0) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void isTrue(boolean z6, String str, Object... objArr) {
        if (!z6) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void matchesPattern(CharSequence charSequence, String str, String str2, Object... objArr) {
        if (!Pattern.matches(str, charSequence)) {
            throw new IllegalArgumentException(String.format(str2, objArr));
        }
    }

    public static void isTrue(boolean z6) {
        if (!z6) {
            throw new IllegalArgumentException(DEFAULT_IS_TRUE_EX_MESSAGE);
        }
    }

    public static <T extends CharSequence> T notBlank(T t6) {
        return (T) notBlank(t6, DEFAULT_NOT_BLANK_EX_MESSAGE, new Object[0]);
    }

    public static <T> T[] notEmpty(T[] tArr) {
        return (T[]) notEmpty(tArr, DEFAULT_NOT_EMPTY_ARRAY_EX_MESSAGE, new Object[0]);
    }

    public static <T> T[] validIndex(T[] tArr, int i2) {
        return (T[]) validIndex(tArr, i2, DEFAULT_VALID_INDEX_ARRAY_EX_MESSAGE, Integer.valueOf(i2));
    }

    public static void exclusiveBetween(long j7, long j8, long j9) {
        if (j9 <= j7 || j9 >= j8) {
            StringBuilder r6 = i.r(j9, "The value ", " is not in the specified exclusive range of ");
            r6.append(j7);
            r6.append(" to ");
            r6.append(j8);
            throw new IllegalArgumentException(r6.toString());
        }
    }

    public static void inclusiveBetween(long j7, long j8, long j9) {
        if (j9 < j7 || j9 > j8) {
            StringBuilder r6 = i.r(j9, "The value ", " is not in the specified inclusive range of ");
            r6.append(j7);
            r6.append(" to ");
            r6.append(j8);
            throw new IllegalArgumentException(r6.toString());
        }
    }

    public static <T extends Collection<?>> T notEmpty(T t6, String str, Object... objArr) {
        if (t6 != null) {
            if (t6.isEmpty()) {
                throw new IllegalArgumentException(String.format(str, objArr));
            }
            return t6;
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static <T extends Collection<?>> T validIndex(T t6, int i2, String str, Object... objArr) {
        notNull(t6);
        if (i2 < 0 || i2 >= t6.size()) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return t6;
    }

    public static <T> T[] noNullElements(T[] tArr) {
        return (T[]) noNullElements(tArr, DEFAULT_NO_NULL_ELEMENTS_ARRAY_EX_MESSAGE, new Object[0]);
    }

    public static <T extends Iterable<?>> T noNullElements(T t6, String str, Object... objArr) {
        notNull(t6);
        Iterator it = t6.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException(String.format(str, ArrayUtils.addAll(objArr, Integer.valueOf(i2))));
            }
            i2++;
        }
        return t6;
    }

    public static <T extends Collection<?>> T notEmpty(T t6) {
        return (T) notEmpty(t6, DEFAULT_NOT_EMPTY_COLLECTION_EX_MESSAGE, new Object[0]);
    }

    public static <T extends Collection<?>> T validIndex(T t6, int i2) {
        return (T) validIndex(t6, i2, DEFAULT_VALID_INDEX_COLLECTION_EX_MESSAGE, Integer.valueOf(i2));
    }

    public static <T extends Map<?, ?>> T notEmpty(T t6, String str, Object... objArr) {
        if (t6 != null) {
            if (t6.isEmpty()) {
                throw new IllegalArgumentException(String.format(str, objArr));
            }
            return t6;
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static <T extends CharSequence> T validIndex(T t6, int i2, String str, Object... objArr) {
        notNull(t6);
        if (i2 < 0 || i2 >= t6.length()) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return t6;
    }

    public static void exclusiveBetween(long j7, long j8, long j9, String str) {
        if (j9 <= j7 || j9 >= j8) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void inclusiveBetween(long j7, long j8, long j9, String str) {
        if (j9 < j7 || j9 > j8) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T extends Iterable<?>> T noNullElements(T t6) {
        return (T) noNullElements(t6, DEFAULT_NO_NULL_ELEMENTS_COLLECTION_EX_MESSAGE, new Object[0]);
    }

    public static <T extends Map<?, ?>> T notEmpty(T t6) {
        return (T) notEmpty(t6, DEFAULT_NOT_EMPTY_MAP_EX_MESSAGE, new Object[0]);
    }

    public static <T extends CharSequence> T validIndex(T t6, int i2) {
        return (T) validIndex(t6, i2, DEFAULT_VALID_INDEX_CHAR_SEQUENCE_EX_MESSAGE, Integer.valueOf(i2));
    }

    public static void exclusiveBetween(double d7, double d8, double d9) {
        if (d9 <= d7 || d9 >= d8) {
            throw new IllegalArgumentException("The value " + d9 + " is not in the specified exclusive range of " + d7 + " to " + d8);
        }
    }

    public static void inclusiveBetween(double d7, double d8, double d9) {
        if (d9 < d7 || d9 > d8) {
            throw new IllegalArgumentException("The value " + d9 + " is not in the specified inclusive range of " + d7 + " to " + d8);
        }
    }

    public static void isAssignableFrom(Class<?> cls, Class<?> cls2, String str, Object... objArr) {
        if (!cls.isAssignableFrom(cls2)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void isInstanceOf(Class<?> cls, Object obj, String str, Object... objArr) {
        if (!cls.isInstance(obj)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static <T extends CharSequence> T notEmpty(T t6, String str, Object... objArr) {
        if (t6 != null) {
            if (t6.length() != 0) {
                return t6;
            }
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    public static void exclusiveBetween(double d7, double d8, double d9, String str) {
        if (d9 <= d7 || d9 >= d8) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void inclusiveBetween(double d7, double d8, double d9, String str) {
        if (d9 < d7 || d9 > d8) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T extends CharSequence> T notEmpty(T t6) {
        return (T) notEmpty(t6, DEFAULT_NOT_EMPTY_CHAR_SEQUENCE_EX_MESSAGE, new Object[0]);
    }
}
