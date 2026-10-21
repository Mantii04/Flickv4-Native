package org.apache.commons.lang3;

import A.i;
import androidx.media3.common.util.Log;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.commons.lang3.mutable.MutableInt;

/* loaded from: classes2.dex */
public class ArrayUtils {
    public static final int INDEX_NOT_FOUND = -1;
    public static final Object[] EMPTY_OBJECT_ARRAY = new Object[0];
    public static final Class<?>[] EMPTY_CLASS_ARRAY = new Class[0];
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final long[] EMPTY_LONG_ARRAY = new long[0];
    public static final Long[] EMPTY_LONG_OBJECT_ARRAY = new Long[0];
    public static final int[] EMPTY_INT_ARRAY = new int[0];
    public static final Integer[] EMPTY_INTEGER_OBJECT_ARRAY = new Integer[0];
    public static final short[] EMPTY_SHORT_ARRAY = new short[0];
    public static final Short[] EMPTY_SHORT_OBJECT_ARRAY = new Short[0];
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final Byte[] EMPTY_BYTE_OBJECT_ARRAY = new Byte[0];
    public static final double[] EMPTY_DOUBLE_ARRAY = new double[0];
    public static final Double[] EMPTY_DOUBLE_OBJECT_ARRAY = new Double[0];
    public static final float[] EMPTY_FLOAT_ARRAY = new float[0];
    public static final Float[] EMPTY_FLOAT_OBJECT_ARRAY = new Float[0];
    public static final boolean[] EMPTY_BOOLEAN_ARRAY = new boolean[0];
    public static final Boolean[] EMPTY_BOOLEAN_OBJECT_ARRAY = new Boolean[0];
    public static final char[] EMPTY_CHAR_ARRAY = new char[0];
    public static final Character[] EMPTY_CHARACTER_OBJECT_ARRAY = new Character[0];

    public static <T> T[] add(T[] tArr, T t6) {
        Class<?> cls;
        if (tArr != null) {
            cls = tArr.getClass().getComponentType();
        } else {
            if (t6 == null) {
                throw new IllegalArgumentException("Arguments cannot both be null");
            }
            cls = t6.getClass();
        }
        T[] tArr2 = (T[]) ((Object[]) copyArrayGrow1(tArr, cls));
        tArr2[tArr2.length - 1] = t6;
        return tArr2;
    }

    public static <T> T[] addAll(T[] tArr, T... tArr2) {
        if (tArr == null) {
            return (T[]) clone(tArr2);
        }
        if (tArr2 == null) {
            return (T[]) clone(tArr);
        }
        Class<?> componentType = tArr.getClass().getComponentType();
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(componentType, tArr.length + tArr2.length));
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        try {
            System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
            return tArr3;
        } catch (ArrayStoreException e3) {
            Class<?> componentType2 = tArr2.getClass().getComponentType();
            if (componentType.isAssignableFrom(componentType2)) {
                throw e3;
            }
            throw new IllegalArgumentException("Cannot store " + componentType2.getName() + " in an array of " + componentType.getName(), e3);
        }
    }

    public static <T> T[] clone(T[] tArr) {
        if (tArr == null) {
            return null;
        }
        return (T[]) ((Object[]) tArr.clone());
    }

    public static boolean contains(Object[] objArr, Object obj) {
        return indexOf(objArr, obj) != -1;
    }

    private static Object copyArrayGrow1(Object obj, Class<?> cls) {
        if (obj == null) {
            return Array.newInstance(cls, 1);
        }
        int length = Array.getLength(obj);
        Object newInstance = Array.newInstance(obj.getClass().getComponentType(), length + 1);
        System.arraycopy(obj, 0, newInstance, 0, length);
        return newInstance;
    }

    public static int getLength(Object obj) {
        if (obj == null) {
            return 0;
        }
        return Array.getLength(obj);
    }

    public static int hashCode(Object obj) {
        return new HashCodeBuilder().append(obj).toHashCode();
    }

    public static int indexOf(Object[] objArr, Object obj) {
        return indexOf(objArr, obj, 0);
    }

    public static boolean[] insert(int i2, boolean[] zArr, boolean... zArr2) {
        if (zArr == null) {
            return null;
        }
        if (zArr2 == null || zArr2.length == 0) {
            return clone(zArr);
        }
        if (i2 < 0 || i2 > zArr.length) {
            StringBuilder q6 = i.q(i2, "Index: ", ", Length: ");
            q6.append(zArr.length);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        boolean[] zArr3 = new boolean[zArr.length + zArr2.length];
        System.arraycopy(zArr2, 0, zArr3, i2, zArr2.length);
        if (i2 > 0) {
            System.arraycopy(zArr, 0, zArr3, 0, i2);
        }
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i2, zArr3, zArr2.length + i2, zArr.length - i2);
        }
        return zArr3;
    }

    public static <T> boolean isArrayIndexValid(T[] tArr, int i2) {
        return getLength(tArr) != 0 && tArr.length > i2 && i2 >= 0;
    }

    public static boolean isEmpty(Object[] objArr) {
        return getLength(objArr) == 0;
    }

    @Deprecated
    public static boolean isEquals(Object obj, Object obj2) {
        return new EqualsBuilder().append(obj, obj2).isEquals();
    }

    public static <T> boolean isNotEmpty(T[] tArr) {
        return !isEmpty(tArr);
    }

    public static boolean isSameLength(Object[] objArr, Object[] objArr2) {
        return getLength(objArr) == getLength(objArr2);
    }

    public static boolean isSameType(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        return obj.getClass().getName().equals(obj2.getClass().getName());
    }

    public static <T extends Comparable<? super T>> boolean isSorted(T[] tArr) {
        return isSorted(tArr, new Comparator<T>() { // from class: org.apache.commons.lang3.ArrayUtils.1
            /* JADX WARN: Incorrect types in method signature: (TT;TT;)I */
            @Override // java.util.Comparator
            public int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        });
    }

    public static int lastIndexOf(Object[] objArr, Object obj) {
        return lastIndexOf(objArr, obj, Log.LOG_LEVEL_OFF);
    }

    public static <T> T[] nullToEmpty(T[] tArr, Class<T[]> cls) {
        if (cls != null) {
            return tArr == null ? cls.cast(Array.newInstance(cls.getComponentType(), 0)) : tArr;
        }
        throw new IllegalArgumentException("The type must not be null");
    }

    public static <T> T[] remove(T[] tArr, int i2) {
        return (T[]) ((Object[]) remove((Object) tArr, i2));
    }

    public static <T> T[] removeAll(T[] tArr, int... iArr) {
        return (T[]) ((Object[]) removeAll((Object) tArr, iArr));
    }

    public static boolean[] removeAllOccurences(boolean[] zArr, boolean z6) {
        int indexOf = indexOf(zArr, z6);
        if (indexOf == -1) {
            return clone(zArr);
        }
        int[] iArr = new int[zArr.length - indexOf];
        iArr[0] = indexOf;
        int i2 = 1;
        while (true) {
            int indexOf2 = indexOf(zArr, z6, iArr[i2 - 1] + 1);
            if (indexOf2 == -1) {
                return removeAll(zArr, Arrays.copyOf(iArr, i2));
            }
            iArr[i2] = indexOf2;
            i2++;
        }
    }

    public static <T> T[] removeElement(T[] tArr, Object obj) {
        int indexOf = indexOf(tArr, obj);
        return indexOf == -1 ? (T[]) clone(tArr) : (T[]) remove((Object[]) tArr, indexOf);
    }

    @SafeVarargs
    public static <T> T[] removeElements(T[] tArr, T... tArr2) {
        if (isEmpty(tArr) || isEmpty(tArr2)) {
            return (T[]) clone(tArr);
        }
        HashMap hashMap = new HashMap(tArr2.length);
        for (T t6 : tArr2) {
            MutableInt mutableInt = (MutableInt) hashMap.get(t6);
            if (mutableInt == null) {
                hashMap.put(t6, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        BitSet bitSet = new BitSet();
        for (int i2 = 0; i2 < tArr.length; i2++) {
            T t7 = tArr[i2];
            MutableInt mutableInt2 = (MutableInt) hashMap.get(t7);
            if (mutableInt2 != null) {
                if (mutableInt2.decrementAndGet() == 0) {
                    hashMap.remove(t7);
                }
                bitSet.set(i2);
            }
        }
        return (T[]) ((Object[]) removeAll(tArr, bitSet));
    }

    public static void reverse(Object[] objArr) {
        if (objArr == null) {
            return;
        }
        reverse(objArr, 0, objArr.length);
    }

    public static void shift(Object[] objArr, int i2) {
        if (objArr == null) {
            return;
        }
        shift(objArr, 0, objArr.length, i2);
    }

    public static void shuffle(Object[] objArr) {
        shuffle(objArr, new Random());
    }

    public static <T> T[] subarray(T[] tArr, int i2, int i7) {
        if (tArr == null) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 > tArr.length) {
            i7 = tArr.length;
        }
        int i8 = i7 - i2;
        Class<?> componentType = tArr.getClass().getComponentType();
        if (i8 <= 0) {
            return (T[]) ((Object[]) Array.newInstance(componentType, 0));
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(componentType, i8));
        System.arraycopy(tArr, i2, tArr2, 0, i8);
        return tArr2;
    }

    public static void swap(Object[] objArr, int i2, int i7) {
        if (objArr == null || objArr.length == 0) {
            return;
        }
        swap(objArr, i2, i7, 1);
    }

    public static <T> T[] toArray(T... tArr) {
        return tArr;
    }

    public static Map<Object, Object> toMap(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        HashMap hashMap = new HashMap((int) (objArr.length * 1.5d));
        for (int i2 = 0; i2 < objArr.length; i2++) {
            Object obj = objArr[i2];
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                hashMap.put(entry.getKey(), entry.getValue());
            } else {
                if (!(obj instanceof Object[])) {
                    throw new IllegalArgumentException("Array element " + i2 + ", '" + obj + "', is neither of type Map.Entry nor an Array");
                }
                Object[] objArr2 = (Object[]) obj;
                if (objArr2.length < 2) {
                    throw new IllegalArgumentException("Array element " + i2 + ", '" + obj + "', has a length less than 2");
                }
                hashMap.put(objArr2[0], objArr2[1]);
            }
        }
        return hashMap;
    }

    public static Character[] toObject(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        if (cArr.length == 0) {
            return EMPTY_CHARACTER_OBJECT_ARRAY;
        }
        Character[] chArr = new Character[cArr.length];
        for (int i2 = 0; i2 < cArr.length; i2++) {
            chArr[i2] = Character.valueOf(cArr[i2]);
        }
        return chArr;
    }

    public static char[] toPrimitive(Character[] chArr) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[chArr.length];
        for (int i2 = 0; i2 < chArr.length; i2++) {
            cArr[i2] = chArr[i2].charValue();
        }
        return cArr;
    }

    public static String toString(Object obj) {
        return toString(obj, "{}");
    }

    public static String[] toStringArray(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        if (objArr.length == 0) {
            return EMPTY_STRING_ARRAY;
        }
        String[] strArr = new String[objArr.length];
        for (int i2 = 0; i2 < objArr.length; i2++) {
            strArr[i2] = objArr[i2].toString();
        }
        return strArr;
    }

    public static long[] clone(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        return (long[]) jArr.clone();
    }

    public static boolean contains(long[] jArr, long j7) {
        return indexOf(jArr, j7) != -1;
    }

    public static int indexOf(Object[] objArr, Object obj, int i2) {
        if (objArr == null) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (obj == null) {
            while (i2 < objArr.length) {
                if (objArr[i2] == null) {
                    return i2;
                }
                i2++;
            }
        } else {
            while (i2 < objArr.length) {
                if (obj.equals(objArr[i2])) {
                    return i2;
                }
                i2++;
            }
        }
        return -1;
    }

    public static boolean isEmpty(long[] jArr) {
        return getLength(jArr) == 0;
    }

    public static boolean isNotEmpty(long[] jArr) {
        return !isEmpty(jArr);
    }

    public static boolean isSameLength(long[] jArr, long[] jArr2) {
        return getLength(jArr) == getLength(jArr2);
    }

    public static <T> boolean isSorted(T[] tArr, Comparator<T> comparator) {
        if (comparator == null) {
            throw new IllegalArgumentException("Comparator should not be null.");
        }
        if (tArr != null && tArr.length >= 2) {
            T t6 = tArr[0];
            int length = tArr.length;
            int i2 = 1;
            while (i2 < length) {
                T t7 = tArr[i2];
                if (comparator.compare(t6, t7) > 0) {
                    return false;
                }
                i2++;
                t6 = t7;
            }
        }
        return true;
    }

    public static int lastIndexOf(Object[] objArr, Object obj, int i2) {
        if (objArr == null || i2 < 0) {
            return -1;
        }
        if (i2 >= objArr.length) {
            i2 = objArr.length - 1;
        }
        if (obj == null) {
            while (i2 >= 0) {
                if (objArr[i2] == null) {
                    return i2;
                }
                i2--;
            }
        } else if (objArr.getClass().getComponentType().isInstance(obj)) {
            while (i2 >= 0) {
                if (obj.equals(objArr[i2])) {
                    return i2;
                }
                i2--;
            }
        }
        return -1;
    }

    public static boolean[] remove(boolean[] zArr, int i2) {
        return (boolean[]) remove((Object) zArr, i2);
    }

    public static byte[] removeAll(byte[] bArr, int... iArr) {
        return (byte[]) removeAll((Object) bArr, iArr);
    }

    public static void reverse(long[] jArr) {
        if (jArr == null) {
            return;
        }
        reverse(jArr, 0, jArr.length);
    }

    public static void shift(long[] jArr, int i2) {
        if (jArr == null) {
            return;
        }
        shift(jArr, 0, jArr.length, i2);
    }

    public static void shuffle(Object[] objArr, Random random) {
        for (int length = objArr.length; length > 1; length--) {
            swap(objArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static String toString(Object obj, String str) {
        return obj == null ? str : new ToStringBuilder(obj, ToStringStyle.SIMPLE_STYLE).append(obj).toString();
    }

    public static int[] clone(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    public static boolean contains(int[] iArr, int i2) {
        return indexOf(iArr, i2) != -1;
    }

    public static boolean isEmpty(int[] iArr) {
        return getLength(iArr) == 0;
    }

    public static boolean isNotEmpty(int[] iArr) {
        return !isEmpty(iArr);
    }

    public static boolean isSameLength(int[] iArr, int[] iArr2) {
        return getLength(iArr) == getLength(iArr2);
    }

    public static Object[] nullToEmpty(Object[] objArr) {
        return isEmpty(objArr) ? EMPTY_OBJECT_ARRAY : objArr;
    }

    public static byte[] remove(byte[] bArr, int i2) {
        return (byte[]) remove((Object) bArr, i2);
    }

    public static short[] removeAll(short[] sArr, int... iArr) {
        return (short[]) removeAll((Object) sArr, iArr);
    }

    public static void reverse(int[] iArr) {
        if (iArr == null) {
            return;
        }
        reverse(iArr, 0, iArr.length);
    }

    public static void shift(int[] iArr, int i2) {
        if (iArr == null) {
            return;
        }
        shift(iArr, 0, iArr.length, i2);
    }

    public static void swap(long[] jArr, int i2, int i7) {
        if (jArr == null || jArr.length == 0) {
            return;
        }
        swap(jArr, i2, i7, 1);
    }

    public static short[] clone(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    public static boolean contains(short[] sArr, short s6) {
        return indexOf(sArr, s6) != -1;
    }

    public static boolean isEmpty(short[] sArr) {
        return getLength(sArr) == 0;
    }

    public static boolean isNotEmpty(short[] sArr) {
        return !isEmpty(sArr);
    }

    public static boolean isSameLength(short[] sArr, short[] sArr2) {
        return getLength(sArr) == getLength(sArr2);
    }

    public static char[] remove(char[] cArr, int i2) {
        return (char[]) remove((Object) cArr, i2);
    }

    public static int[] removeAll(int[] iArr, int... iArr2) {
        return (int[]) removeAll((Object) iArr, iArr2);
    }

    public static boolean[] removeElement(boolean[] zArr, boolean z6) {
        int indexOf = indexOf(zArr, z6);
        if (indexOf == -1) {
            return clone(zArr);
        }
        return remove(zArr, indexOf);
    }

    public static void reverse(short[] sArr) {
        if (sArr == null) {
            return;
        }
        reverse(sArr, 0, sArr.length);
    }

    public static void shift(short[] sArr, int i2) {
        if (sArr == null) {
            return;
        }
        shift(sArr, 0, sArr.length, i2);
    }

    public static void shuffle(boolean[] zArr) {
        shuffle(zArr, new Random());
    }

    public static char[] clone(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return (char[]) cArr.clone();
    }

    public static boolean contains(char[] cArr, char c7) {
        return indexOf(cArr, c7) != -1;
    }

    public static boolean isEmpty(char[] cArr) {
        return getLength(cArr) == 0;
    }

    public static boolean isNotEmpty(char[] cArr) {
        return !isEmpty(cArr);
    }

    public static boolean isSameLength(char[] cArr, char[] cArr2) {
        return getLength(cArr) == getLength(cArr2);
    }

    public static Class<?>[] nullToEmpty(Class<?>[] clsArr) {
        return isEmpty(clsArr) ? EMPTY_CLASS_ARRAY : clsArr;
    }

    public static double[] remove(double[] dArr, int i2) {
        return (double[]) remove((Object) dArr, i2);
    }

    public static char[] removeAll(char[] cArr, int... iArr) {
        return (char[]) removeAll((Object) cArr, iArr);
    }

    public static void reverse(char[] cArr) {
        if (cArr == null) {
            return;
        }
        reverse(cArr, 0, cArr.length);
    }

    public static void shift(char[] cArr, int i2) {
        if (cArr == null) {
            return;
        }
        shift(cArr, 0, cArr.length, i2);
    }

    public static void shuffle(boolean[] zArr, Random random) {
        for (int length = zArr.length; length > 1; length--) {
            swap(zArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void swap(int[] iArr, int i2, int i7) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        swap(iArr, i2, i7, 1);
    }

    public static boolean[] add(boolean[] zArr, boolean z6) {
        boolean[] zArr2 = (boolean[]) copyArrayGrow1(zArr, Boolean.TYPE);
        zArr2[zArr2.length - 1] = z6;
        return zArr2;
    }

    public static byte[] clone(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public static boolean contains(byte[] bArr, byte b7) {
        return indexOf(bArr, b7) != -1;
    }

    public static int indexOf(long[] jArr, long j7) {
        return indexOf(jArr, j7, 0);
    }

    public static boolean isEmpty(byte[] bArr) {
        return getLength(bArr) == 0;
    }

    public static boolean isNotEmpty(byte[] bArr) {
        return !isEmpty(bArr);
    }

    public static boolean isSameLength(byte[] bArr, byte[] bArr2) {
        return getLength(bArr) == getLength(bArr2);
    }

    public static float[] remove(float[] fArr, int i2) {
        return (float[]) remove((Object) fArr, i2);
    }

    public static long[] removeAll(long[] jArr, int... iArr) {
        return (long[]) removeAll((Object) jArr, iArr);
    }

    public static void reverse(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        reverse(bArr, 0, bArr.length);
    }

    public static void shift(byte[] bArr, int i2) {
        if (bArr == null) {
            return;
        }
        shift(bArr, 0, bArr.length, i2);
    }

    public static Long[] toObject(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        if (jArr.length == 0) {
            return EMPTY_LONG_OBJECT_ARRAY;
        }
        Long[] lArr = new Long[jArr.length];
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i2] = Long.valueOf(jArr[i2]);
        }
        return lArr;
    }

    public static char[] toPrimitive(Character[] chArr, char c7) {
        if (chArr == null) {
            return null;
        }
        if (chArr.length == 0) {
            return EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[chArr.length];
        for (int i2 = 0; i2 < chArr.length; i2++) {
            Character ch = chArr[i2];
            cArr[i2] = ch == null ? c7 : ch.charValue();
        }
        return cArr;
    }

    public static String[] toStringArray(Object[] objArr, String str) {
        if (objArr == null) {
            return null;
        }
        if (objArr.length == 0) {
            return EMPTY_STRING_ARRAY;
        }
        String[] strArr = new String[objArr.length];
        for (int i2 = 0; i2 < objArr.length; i2++) {
            Object obj = objArr[i2];
            strArr[i2] = obj == null ? str : obj.toString();
        }
        return strArr;
    }

    public static double[] clone(double[] dArr) {
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public static boolean contains(double[] dArr, double d7) {
        return indexOf(dArr, d7) != -1;
    }

    public static int indexOf(long[] jArr, long j7, int i2) {
        if (jArr == null) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < jArr.length) {
            if (j7 == jArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static boolean isEmpty(double[] dArr) {
        return getLength(dArr) == 0;
    }

    public static boolean isNotEmpty(double[] dArr) {
        return !isEmpty(dArr);
    }

    public static boolean isSameLength(double[] dArr, double[] dArr2) {
        return getLength(dArr) == getLength(dArr2);
    }

    public static int lastIndexOf(long[] jArr, long j7) {
        return lastIndexOf(jArr, j7, Log.LOG_LEVEL_OFF);
    }

    public static String[] nullToEmpty(String[] strArr) {
        return isEmpty(strArr) ? EMPTY_STRING_ARRAY : strArr;
    }

    public static int[] remove(int[] iArr, int i2) {
        return (int[]) remove((Object) iArr, i2);
    }

    public static float[] removeAll(float[] fArr, int... iArr) {
        return (float[]) removeAll((Object) fArr, iArr);
    }

    public static byte[] removeElement(byte[] bArr, byte b7) {
        int indexOf = indexOf(bArr, b7);
        if (indexOf == -1) {
            return clone(bArr);
        }
        return remove(bArr, indexOf);
    }

    public static void reverse(double[] dArr) {
        if (dArr == null) {
            return;
        }
        reverse(dArr, 0, dArr.length);
    }

    public static void shift(double[] dArr, int i2) {
        if (dArr == null) {
            return;
        }
        shift(dArr, 0, dArr.length, i2);
    }

    public static void shuffle(byte[] bArr) {
        shuffle(bArr, new Random());
    }

    public static long[] subarray(long[] jArr, int i2, int i7) {
        if (jArr == null) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 > jArr.length) {
            i7 = jArr.length;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return EMPTY_LONG_ARRAY;
        }
        long[] jArr2 = new long[i8];
        System.arraycopy(jArr, i2, jArr2, 0, i8);
        return jArr2;
    }

    public static void swap(short[] sArr, int i2, int i7) {
        if (sArr == null || sArr.length == 0) {
            return;
        }
        swap(sArr, i2, i7, 1);
    }

    public static byte[] add(byte[] bArr, byte b7) {
        byte[] bArr2 = (byte[]) copyArrayGrow1(bArr, Byte.TYPE);
        bArr2[bArr2.length - 1] = b7;
        return bArr2;
    }

    public static float[] clone(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        return (float[]) fArr.clone();
    }

    public static boolean contains(double[] dArr, double d7, double d8) {
        return indexOf(dArr, d7, 0, d8) != -1;
    }

    public static boolean isEmpty(float[] fArr) {
        return getLength(fArr) == 0;
    }

    public static boolean isNotEmpty(float[] fArr) {
        return !isEmpty(fArr);
    }

    public static boolean isSameLength(float[] fArr, float[] fArr2) {
        return getLength(fArr) == getLength(fArr2);
    }

    public static boolean isSorted(int[] iArr) {
        if (iArr != null && iArr.length >= 2) {
            int i2 = iArr[0];
            int length = iArr.length;
            int i7 = 1;
            while (i7 < length) {
                int i8 = iArr[i7];
                if (NumberUtils.compare(i2, i8) > 0) {
                    return false;
                }
                i7++;
                i2 = i8;
            }
        }
        return true;
    }

    public static int lastIndexOf(long[] jArr, long j7, int i2) {
        if (jArr == null || i2 < 0) {
            return -1;
        }
        if (i2 >= jArr.length) {
            i2 = jArr.length - 1;
        }
        while (i2 >= 0) {
            if (j7 == jArr[i2]) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public static long[] remove(long[] jArr, int i2) {
        return (long[]) remove((Object) jArr, i2);
    }

    public static double[] removeAll(double[] dArr, int... iArr) {
        return (double[]) removeAll((Object) dArr, iArr);
    }

    public static char[] removeAllOccurences(char[] cArr, char c7) {
        int indexOf = indexOf(cArr, c7);
        if (indexOf == -1) {
            return clone(cArr);
        }
        int[] iArr = new int[cArr.length - indexOf];
        iArr[0] = indexOf;
        int i2 = 1;
        while (true) {
            int indexOf2 = indexOf(cArr, c7, iArr[i2 - 1] + 1);
            if (indexOf2 != -1) {
                iArr[i2] = indexOf2;
                i2++;
            } else {
                return removeAll(cArr, Arrays.copyOf(iArr, i2));
            }
        }
    }

    public static void reverse(float[] fArr) {
        if (fArr == null) {
            return;
        }
        reverse(fArr, 0, fArr.length);
    }

    public static void shift(float[] fArr, int i2) {
        if (fArr == null) {
            return;
        }
        shift(fArr, 0, fArr.length, i2);
    }

    public static void shuffle(byte[] bArr, Random random) {
        for (int length = bArr.length; length > 1; length--) {
            swap(bArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static boolean[] clone(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        return (boolean[]) zArr.clone();
    }

    public static boolean contains(float[] fArr, float f3) {
        return indexOf(fArr, f3) != -1;
    }

    public static int indexOf(int[] iArr, int i2) {
        return indexOf(iArr, i2, 0);
    }

    public static boolean isEmpty(boolean[] zArr) {
        return getLength(zArr) == 0;
    }

    public static boolean isNotEmpty(boolean[] zArr) {
        return !isEmpty(zArr);
    }

    public static boolean isSameLength(boolean[] zArr, boolean[] zArr2) {
        return getLength(zArr) == getLength(zArr2);
    }

    public static long[] nullToEmpty(long[] jArr) {
        return isEmpty(jArr) ? EMPTY_LONG_ARRAY : jArr;
    }

    public static short[] remove(short[] sArr, int i2) {
        return (short[]) remove((Object) sArr, i2);
    }

    public static boolean[] removeAll(boolean[] zArr, int... iArr) {
        return (boolean[]) removeAll((Object) zArr, iArr);
    }

    public static void reverse(boolean[] zArr) {
        if (zArr == null) {
            return;
        }
        reverse(zArr, 0, zArr.length);
    }

    public static void shift(boolean[] zArr, int i2) {
        if (zArr == null) {
            return;
        }
        shift(zArr, 0, zArr.length, i2);
    }

    public static void swap(char[] cArr, int i2, int i7) {
        if (cArr == null || cArr.length == 0) {
            return;
        }
        swap(cArr, i2, i7, 1);
    }

    public static char[] add(char[] cArr, char c7) {
        char[] cArr2 = (char[]) copyArrayGrow1(cArr, Character.TYPE);
        cArr2[cArr2.length - 1] = c7;
        return cArr2;
    }

    public static boolean contains(boolean[] zArr, boolean z6) {
        return indexOf(zArr, z6) != -1;
    }

    public static int indexOf(int[] iArr, int i2, int i7) {
        if (iArr == null) {
            return -1;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        while (i7 < iArr.length) {
            if (i2 == iArr[i7]) {
                return i7;
            }
            i7++;
        }
        return -1;
    }

    private static Object remove(Object obj, int i2) {
        int length = getLength(obj);
        if (i2 >= 0 && i2 < length) {
            int i7 = length - 1;
            Object newInstance = Array.newInstance(obj.getClass().getComponentType(), i7);
            System.arraycopy(obj, 0, newInstance, 0, i2);
            if (i2 < i7) {
                System.arraycopy(obj, i2 + 1, newInstance, i2, (length - i2) - 1);
            }
            return newInstance;
        }
        throw new IndexOutOfBoundsException(i.e(i2, length, "Index: ", ", Length: "));
    }

    public static Object removeAll(Object obj, int... iArr) {
        int i2;
        int i7;
        int length = getLength(obj);
        int[] clone = clone(iArr);
        Arrays.sort(clone);
        if (isNotEmpty(clone)) {
            int length2 = clone.length;
            int i8 = length;
            i2 = 0;
            while (true) {
                length2--;
                if (length2 < 0) {
                    break;
                }
                i7 = clone[length2];
                if (i7 < 0 || i7 >= length) {
                    break;
                }
                if (i7 < i8) {
                    i2++;
                    i8 = i7;
                }
            }
            throw new IndexOutOfBoundsException(i.e(i7, length, "Index: ", ", Length: "));
        }
        i2 = 0;
        int i9 = length - i2;
        Object newInstance = Array.newInstance(obj.getClass().getComponentType(), i9);
        if (i2 < length) {
            int length3 = clone.length - 1;
            while (length3 >= 0) {
                int i10 = clone[length3];
                int i11 = length - i10;
                if (i11 > 1) {
                    int i12 = i11 - 1;
                    i9 -= i12;
                    System.arraycopy(obj, i10 + 1, newInstance, i9, i12);
                }
                length3--;
                length = i10;
            }
            if (length > 0) {
                System.arraycopy(obj, 0, newInstance, 0, length);
            }
        }
        return newInstance;
    }

    public static char[] removeElement(char[] cArr, char c7) {
        int indexOf = indexOf(cArr, c7);
        if (indexOf == -1) {
            return clone(cArr);
        }
        return remove(cArr, indexOf);
    }

    public static void reverse(boolean[] zArr, int i2, int i7) {
        if (zArr == null) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int min = Math.min(zArr.length, i7) - 1;
        while (min > i2) {
            boolean z6 = zArr[min];
            zArr[min] = zArr[i2];
            zArr[i2] = z6;
            min--;
            i2++;
        }
    }

    public static void shift(boolean[] zArr, int i2, int i7, int i8) {
        if (zArr != null && i2 < zArr.length - 1 && i7 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            if (i7 >= zArr.length) {
                i7 = zArr.length;
            }
            int i9 = i7 - i2;
            if (i9 <= 1) {
                return;
            }
            int i10 = i8 % i9;
            if (i10 < 0) {
                i10 += i9;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(zArr, i2, (i9 + i2) - i11, i11);
                    int i12 = i10;
                    i10 -= i11;
                    i9 = i12;
                } else if (i10 < i11) {
                    swap(zArr, i2, i2 + i11, i10);
                    i2 += i10;
                    i9 = i11;
                } else {
                    swap(zArr, i2, i11 + i2, i10);
                    return;
                }
            }
        }
    }

    public static void shuffle(char[] cArr) {
        shuffle(cArr, new Random());
    }

    public static int lastIndexOf(int[] iArr, int i2) {
        return lastIndexOf(iArr, i2, Log.LOG_LEVEL_OFF);
    }

    public static int[] nullToEmpty(int[] iArr) {
        return isEmpty(iArr) ? EMPTY_INT_ARRAY : iArr;
    }

    public static void shuffle(char[] cArr, Random random) {
        for (int length = cArr.length; length > 1; length--) {
            swap(cArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static void swap(byte[] bArr, int i2, int i7) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        swap(bArr, i2, i7, 1);
    }

    public static Integer[] toObject(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        if (iArr.length == 0) {
            return EMPTY_INTEGER_OBJECT_ARRAY;
        }
        Integer[] numArr = new Integer[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i2] = Integer.valueOf(iArr[i2]);
        }
        return numArr;
    }

    public static double[] add(double[] dArr, double d7) {
        double[] dArr2 = (double[]) copyArrayGrow1(dArr, Double.TYPE);
        dArr2[dArr2.length - 1] = d7;
        return dArr2;
    }

    public static boolean[] addAll(boolean[] zArr, boolean... zArr2) {
        if (zArr == null) {
            return clone(zArr2);
        }
        if (zArr2 == null) {
            return clone(zArr);
        }
        boolean[] zArr3 = new boolean[zArr.length + zArr2.length];
        System.arraycopy(zArr, 0, zArr3, 0, zArr.length);
        System.arraycopy(zArr2, 0, zArr3, zArr.length, zArr2.length);
        return zArr3;
    }

    public static int indexOf(short[] sArr, short s6) {
        return indexOf(sArr, s6, 0);
    }

    public static int lastIndexOf(int[] iArr, int i2, int i7) {
        if (iArr == null || i7 < 0) {
            return -1;
        }
        if (i7 >= iArr.length) {
            i7 = iArr.length - 1;
        }
        while (i7 >= 0) {
            if (i2 == iArr[i7]) {
                return i7;
            }
            i7--;
        }
        return -1;
    }

    public static int[] subarray(int[] iArr, int i2, int i7) {
        if (iArr == null) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 > iArr.length) {
            i7 = iArr.length;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return EMPTY_INT_ARRAY;
        }
        int[] iArr2 = new int[i8];
        System.arraycopy(iArr, i2, iArr2, 0, i8);
        return iArr2;
    }

    public static long[] toPrimitive(Long[] lArr) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return EMPTY_LONG_ARRAY;
        }
        long[] jArr = new long[lArr.length];
        for (int i2 = 0; i2 < lArr.length; i2++) {
            jArr[i2] = lArr[i2].longValue();
        }
        return jArr;
    }

    public static int indexOf(short[] sArr, short s6, int i2) {
        if (sArr == null) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < sArr.length) {
            if (s6 == sArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static boolean isSorted(long[] jArr) {
        if (jArr != null && jArr.length >= 2) {
            long j7 = jArr[0];
            int length = jArr.length;
            int i2 = 1;
            while (i2 < length) {
                long j8 = jArr[i2];
                if (NumberUtils.compare(j7, j8) > 0) {
                    return false;
                }
                i2++;
                j7 = j8;
            }
        }
        return true;
    }

    public static short[] nullToEmpty(short[] sArr) {
        return isEmpty(sArr) ? EMPTY_SHORT_ARRAY : sArr;
    }

    public static double[] removeElement(double[] dArr, double d7) {
        int indexOf = indexOf(dArr, d7);
        if (indexOf == -1) {
            return clone(dArr);
        }
        return remove(dArr, indexOf);
    }

    public static void shuffle(short[] sArr) {
        shuffle(sArr, new Random());
    }

    public static void swap(double[] dArr, int i2, int i7) {
        if (dArr == null || dArr.length == 0) {
            return;
        }
        swap(dArr, i2, i7, 1);
    }

    public static float[] add(float[] fArr, float f3) {
        float[] fArr2 = (float[]) copyArrayGrow1(fArr, Float.TYPE);
        fArr2[fArr2.length - 1] = f3;
        return fArr2;
    }

    public static void reverse(byte[] bArr, int i2, int i7) {
        if (bArr == null) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int min = Math.min(bArr.length, i7) - 1;
        while (min > i2) {
            byte b7 = bArr[min];
            bArr[min] = bArr[i2];
            bArr[i2] = b7;
            min--;
            i2++;
        }
    }

    public static void shuffle(short[] sArr, Random random) {
        for (int length = sArr.length; length > 1; length--) {
            swap(sArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static int indexOf(char[] cArr, char c7) {
        return indexOf(cArr, c7, 0);
    }

    public static int lastIndexOf(short[] sArr, short s6) {
        return lastIndexOf(sArr, s6, Log.LOG_LEVEL_OFF);
    }

    public static char[] nullToEmpty(char[] cArr) {
        return isEmpty(cArr) ? EMPTY_CHAR_ARRAY : cArr;
    }

    public static byte[] removeAllOccurences(byte[] bArr, byte b7) {
        int indexOf = indexOf(bArr, b7);
        if (indexOf == -1) {
            return clone(bArr);
        }
        int[] iArr = new int[bArr.length - indexOf];
        iArr[0] = indexOf;
        int i2 = 1;
        while (true) {
            int indexOf2 = indexOf(bArr, b7, iArr[i2 - 1] + 1);
            if (indexOf2 != -1) {
                iArr[i2] = indexOf2;
                i2++;
            } else {
                return removeAll(bArr, Arrays.copyOf(iArr, i2));
            }
        }
    }

    public static void swap(float[] fArr, int i2, int i7) {
        if (fArr == null || fArr.length == 0) {
            return;
        }
        swap(fArr, i2, i7, 1);
    }

    public static int[] add(int[] iArr, int i2) {
        int[] iArr2 = (int[]) copyArrayGrow1(iArr, Integer.TYPE);
        iArr2[iArr2.length - 1] = i2;
        return iArr2;
    }

    public static int indexOf(char[] cArr, char c7, int i2) {
        if (cArr == null) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < cArr.length) {
            if (c7 == cArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static byte[] insert(int i2, byte[] bArr, byte... bArr2) {
        if (bArr == null) {
            return null;
        }
        if (bArr2 != null && bArr2.length != 0) {
            if (i2 >= 0 && i2 <= bArr.length) {
                byte[] bArr3 = new byte[bArr.length + bArr2.length];
                System.arraycopy(bArr2, 0, bArr3, i2, bArr2.length);
                if (i2 > 0) {
                    System.arraycopy(bArr, 0, bArr3, 0, i2);
                }
                if (i2 < bArr.length) {
                    System.arraycopy(bArr, i2, bArr3, bArr2.length + i2, bArr.length - i2);
                }
                return bArr3;
            }
            StringBuilder q6 = i.q(i2, "Index: ", ", Length: ");
            q6.append(bArr.length);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        return clone(bArr);
    }

    public static int lastIndexOf(short[] sArr, short s6, int i2) {
        if (sArr == null || i2 < 0) {
            return -1;
        }
        if (i2 >= sArr.length) {
            i2 = sArr.length - 1;
        }
        while (i2 >= 0) {
            if (s6 == sArr[i2]) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public static float[] removeElement(float[] fArr, float f3) {
        int indexOf = indexOf(fArr, f3);
        if (indexOf == -1) {
            return clone(fArr);
        }
        return remove(fArr, indexOf);
    }

    public static byte[] removeElements(byte[] bArr, byte... bArr2) {
        if (!isEmpty(bArr) && !isEmpty(bArr2)) {
            HashMap hashMap = new HashMap(bArr2.length);
            for (byte b7 : bArr2) {
                Byte valueOf = Byte.valueOf(b7);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i2 = 0; i2 < bArr.length; i2++) {
                byte b8 = bArr[i2];
                MutableInt mutableInt2 = (MutableInt) hashMap.get(Byte.valueOf(b8));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        hashMap.remove(Byte.valueOf(b8));
                    }
                    bitSet.set(i2);
                }
            }
            return (byte[]) removeAll(bArr, bitSet);
        }
        return clone(bArr);
    }

    public static void shuffle(int[] iArr) {
        shuffle(iArr, new Random());
    }

    public static Short[] toObject(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        if (sArr.length == 0) {
            return EMPTY_SHORT_OBJECT_ARRAY;
        }
        Short[] shArr = new Short[sArr.length];
        for (int i2 = 0; i2 < sArr.length; i2++) {
            shArr[i2] = Short.valueOf(sArr[i2]);
        }
        return shArr;
    }

    public static char[] addAll(char[] cArr, char... cArr2) {
        if (cArr == null) {
            return clone(cArr2);
        }
        if (cArr2 == null) {
            return clone(cArr);
        }
        char[] cArr3 = new char[cArr.length + cArr2.length];
        System.arraycopy(cArr, 0, cArr3, 0, cArr.length);
        System.arraycopy(cArr2, 0, cArr3, cArr.length, cArr2.length);
        return cArr3;
    }

    public static byte[] nullToEmpty(byte[] bArr) {
        return isEmpty(bArr) ? EMPTY_BYTE_ARRAY : bArr;
    }

    public static void shift(byte[] bArr, int i2, int i7, int i8) {
        if (bArr != null && i2 < bArr.length - 1 && i7 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            if (i7 >= bArr.length) {
                i7 = bArr.length;
            }
            int i9 = i7 - i2;
            if (i9 <= 1) {
                return;
            }
            int i10 = i8 % i9;
            if (i10 < 0) {
                i10 += i9;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(bArr, i2, (i9 + i2) - i11, i11);
                    int i12 = i10;
                    i10 -= i11;
                    i9 = i12;
                } else if (i10 < i11) {
                    swap(bArr, i2, i2 + i11, i10);
                    i2 += i10;
                    i9 = i11;
                } else {
                    swap(bArr, i2, i11 + i2, i10);
                    return;
                }
            }
        }
    }

    public static void shuffle(int[] iArr, Random random) {
        for (int length = iArr.length; length > 1; length--) {
            swap(iArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static short[] subarray(short[] sArr, int i2, int i7) {
        if (sArr == null) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 > sArr.length) {
            i7 = sArr.length;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr2 = new short[i8];
        System.arraycopy(sArr, i2, sArr2, 0, i8);
        return sArr2;
    }

    public static void swap(boolean[] zArr, int i2, int i7) {
        if (zArr == null || zArr.length == 0) {
            return;
        }
        swap(zArr, i2, i7, 1);
    }

    public static long[] toPrimitive(Long[] lArr, long j7) {
        if (lArr == null) {
            return null;
        }
        if (lArr.length == 0) {
            return EMPTY_LONG_ARRAY;
        }
        long[] jArr = new long[lArr.length];
        for (int i2 = 0; i2 < lArr.length; i2++) {
            Long l7 = lArr[i2];
            jArr[i2] = l7 == null ? j7 : l7.longValue();
        }
        return jArr;
    }

    public static long[] add(long[] jArr, long j7) {
        long[] jArr2 = (long[]) copyArrayGrow1(jArr, Long.TYPE);
        jArr2[jArr2.length - 1] = j7;
        return jArr2;
    }

    public static int indexOf(byte[] bArr, byte b7) {
        return indexOf(bArr, b7, 0);
    }

    public static boolean isSorted(short[] sArr) {
        if (sArr != null && sArr.length >= 2) {
            short s6 = sArr[0];
            int length = sArr.length;
            int i2 = 1;
            while (i2 < length) {
                short s7 = sArr[i2];
                if (NumberUtils.compare(s6, s7) > 0) {
                    return false;
                }
                i2++;
                s6 = s7;
            }
        }
        return true;
    }

    public static void reverse(char[] cArr, int i2, int i7) {
        if (cArr == null) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int min = Math.min(cArr.length, i7) - 1;
        while (min > i2) {
            char c7 = cArr[min];
            cArr[min] = cArr[i2];
            cArr[i2] = c7;
            min--;
            i2++;
        }
    }

    public static int indexOf(byte[] bArr, byte b7, int i2) {
        if (bArr == null) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < bArr.length) {
            if (b7 == bArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int lastIndexOf(char[] cArr, char c7) {
        return lastIndexOf(cArr, c7, Log.LOG_LEVEL_OFF);
    }

    public static double[] nullToEmpty(double[] dArr) {
        return isEmpty(dArr) ? EMPTY_DOUBLE_ARRAY : dArr;
    }

    public static int[] removeElement(int[] iArr, int i2) {
        int indexOf = indexOf(iArr, i2);
        if (indexOf == -1) {
            return clone(iArr);
        }
        return remove(iArr, indexOf);
    }

    public static void shuffle(long[] jArr) {
        shuffle(jArr, new Random());
    }

    public static void swap(boolean[] zArr, int i2, int i7, int i8) {
        if (zArr == null || zArr.length == 0 || i2 >= zArr.length || i7 >= zArr.length) {
            return;
        }
        int i9 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        int min = Math.min(Math.min(i8, zArr.length - i2), zArr.length - i7);
        while (i9 < min) {
            boolean z6 = zArr[i2];
            zArr[i2] = zArr[i7];
            zArr[i7] = z6;
            i9++;
            i2++;
            i7++;
        }
    }

    public static short[] add(short[] sArr, short s6) {
        short[] sArr2 = (short[]) copyArrayGrow1(sArr, Short.TYPE);
        sArr2[sArr2.length - 1] = s6;
        return sArr2;
    }

    public static int lastIndexOf(char[] cArr, char c7, int i2) {
        if (cArr == null || i2 < 0) {
            return -1;
        }
        if (i2 >= cArr.length) {
            i2 = cArr.length - 1;
        }
        while (i2 >= 0) {
            if (c7 == cArr[i2]) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public static void shuffle(long[] jArr, Random random) {
        for (int length = jArr.length; length > 1; length--) {
            swap(jArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static int indexOf(double[] dArr, double d7) {
        return indexOf(dArr, d7, 0);
    }

    public static float[] nullToEmpty(float[] fArr) {
        return isEmpty(fArr) ? EMPTY_FLOAT_ARRAY : fArr;
    }

    public static Byte[] toObject(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return EMPTY_BYTE_OBJECT_ARRAY;
        }
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr2[i2] = Byte.valueOf(bArr[i2]);
        }
        return bArr2;
    }

    @Deprecated
    public static <T> T[] add(T[] tArr, int i2, T t6) {
        Class<?> cls;
        if (tArr != null) {
            cls = tArr.getClass().getComponentType();
        } else if (t6 != null) {
            cls = t6.getClass();
        } else {
            throw new IllegalArgumentException("Array and element cannot both be null");
        }
        return (T[]) ((Object[]) add(tArr, i2, t6, cls));
    }

    public static byte[] addAll(byte[] bArr, byte... bArr2) {
        if (bArr == null) {
            return clone(bArr2);
        }
        if (bArr2 == null) {
            return clone(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static int indexOf(double[] dArr, double d7, double d8) {
        return indexOf(dArr, d7, 0, d8);
    }

    public static short[] removeAllOccurences(short[] sArr, short s6) {
        int indexOf = indexOf(sArr, s6);
        if (indexOf == -1) {
            return clone(sArr);
        }
        int[] iArr = new int[sArr.length - indexOf];
        iArr[0] = indexOf;
        int i2 = 1;
        while (true) {
            int indexOf2 = indexOf(sArr, s6, iArr[i2 - 1] + 1);
            if (indexOf2 != -1) {
                iArr[i2] = indexOf2;
                i2++;
            } else {
                return removeAll(sArr, Arrays.copyOf(iArr, i2));
            }
        }
    }

    public static long[] removeElement(long[] jArr, long j7) {
        int indexOf = indexOf(jArr, j7);
        if (indexOf == -1) {
            return clone(jArr);
        }
        return remove(jArr, indexOf);
    }

    public static void reverse(double[] dArr, int i2, int i7) {
        if (dArr == null) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int min = Math.min(dArr.length, i7) - 1;
        while (min > i2) {
            double d7 = dArr[min];
            dArr[min] = dArr[i2];
            dArr[i2] = d7;
            min--;
            i2++;
        }
    }

    public static void shuffle(float[] fArr) {
        shuffle(fArr, new Random());
    }

    public static char[] subarray(char[] cArr, int i2, int i7) {
        if (cArr == null) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 > cArr.length) {
            i7 = cArr.length;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return EMPTY_CHAR_ARRAY;
        }
        char[] cArr2 = new char[i8];
        System.arraycopy(cArr, i2, cArr2, 0, i8);
        return cArr2;
    }

    public static int indexOf(double[] dArr, double d7, int i2) {
        if (isEmpty(dArr)) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < dArr.length) {
            if (d7 == dArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static boolean isSorted(double[] dArr) {
        if (dArr != null && dArr.length >= 2) {
            double d7 = dArr[0];
            int length = dArr.length;
            int i2 = 1;
            while (i2 < length) {
                double d8 = dArr[i2];
                if (Double.compare(d7, d8) > 0) {
                    return false;
                }
                i2++;
                d7 = d8;
            }
        }
        return true;
    }

    public static int lastIndexOf(byte[] bArr, byte b7) {
        return lastIndexOf(bArr, b7, Log.LOG_LEVEL_OFF);
    }

    public static boolean[] nullToEmpty(boolean[] zArr) {
        return isEmpty(zArr) ? EMPTY_BOOLEAN_ARRAY : zArr;
    }

    public static void shuffle(float[] fArr, Random random) {
        for (int length = fArr.length; length > 1; length--) {
            swap(fArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static int[] toPrimitive(Integer[] numArr) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return EMPTY_INT_ARRAY;
        }
        int[] iArr = new int[numArr.length];
        for (int i2 = 0; i2 < numArr.length; i2++) {
            iArr[i2] = numArr[i2].intValue();
        }
        return iArr;
    }

    public static int lastIndexOf(byte[] bArr, byte b7, int i2) {
        if (bArr == null || i2 < 0) {
            return -1;
        }
        if (i2 >= bArr.length) {
            i2 = bArr.length - 1;
        }
        while (i2 >= 0) {
            if (b7 == bArr[i2]) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public static void shift(char[] cArr, int i2, int i7, int i8) {
        if (cArr != null && i2 < cArr.length - 1 && i7 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            if (i7 >= cArr.length) {
                i7 = cArr.length;
            }
            int i9 = i7 - i2;
            if (i9 <= 1) {
                return;
            }
            int i10 = i8 % i9;
            if (i10 < 0) {
                i10 += i9;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(cArr, i2, (i9 + i2) - i11, i11);
                    int i12 = i10;
                    i10 -= i11;
                    i9 = i12;
                } else if (i10 < i11) {
                    swap(cArr, i2, i2 + i11, i10);
                    i2 += i10;
                    i9 = i11;
                } else {
                    swap(cArr, i2, i11 + i2, i10);
                    return;
                }
            }
        }
    }

    public static void swap(byte[] bArr, int i2, int i7, int i8) {
        if (bArr == null || bArr.length == 0 || i2 >= bArr.length || i7 >= bArr.length) {
            return;
        }
        int i9 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        int min = Math.min(Math.min(i8, bArr.length - i2), bArr.length - i7);
        while (i9 < min) {
            byte b7 = bArr[i2];
            bArr[i2] = bArr[i7];
            bArr[i7] = b7;
            i9++;
            i2++;
            i7++;
        }
    }

    public static Long[] nullToEmpty(Long[] lArr) {
        return isEmpty(lArr) ? EMPTY_LONG_OBJECT_ARRAY : lArr;
    }

    public static short[] removeElement(short[] sArr, short s6) {
        int indexOf = indexOf(sArr, s6);
        if (indexOf == -1) {
            return clone(sArr);
        }
        return remove(sArr, indexOf);
    }

    public static void shuffle(double[] dArr) {
        shuffle(dArr, new Random());
    }

    @Deprecated
    public static boolean[] add(boolean[] zArr, int i2, boolean z6) {
        return (boolean[]) add(zArr, i2, Boolean.valueOf(z6), Boolean.TYPE);
    }

    public static int indexOf(double[] dArr, double d7, int i2, double d8) {
        if (isEmpty(dArr)) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        double d9 = d7 - d8;
        double d10 = d7 + d8;
        while (i2 < dArr.length) {
            double d11 = dArr[i2];
            if (d11 >= d9 && d11 <= d10) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static void reverse(float[] fArr, int i2, int i7) {
        if (fArr == null) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int min = Math.min(fArr.length, i7) - 1;
        while (min > i2) {
            float f3 = fArr[min];
            fArr[min] = fArr[i2];
            fArr[i2] = f3;
            min--;
            i2++;
        }
    }

    public static void shuffle(double[] dArr, Random random) {
        for (int length = dArr.length; length > 1; length--) {
            swap(dArr, length - 1, random.nextInt(length), 1);
        }
    }

    public static Double[] toObject(double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return EMPTY_DOUBLE_OBJECT_ARRAY;
        }
        Double[] dArr2 = new Double[dArr.length];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr2[i2] = Double.valueOf(dArr[i2]);
        }
        return dArr2;
    }

    @Deprecated
    public static char[] add(char[] cArr, int i2, char c7) {
        return (char[]) add(cArr, i2, Character.valueOf(c7), Character.TYPE);
    }

    public static short[] addAll(short[] sArr, short... sArr2) {
        if (sArr == null) {
            return clone(sArr2);
        }
        if (sArr2 == null) {
            return clone(sArr);
        }
        short[] sArr3 = new short[sArr.length + sArr2.length];
        System.arraycopy(sArr, 0, sArr3, 0, sArr.length);
        System.arraycopy(sArr2, 0, sArr3, sArr.length, sArr2.length);
        return sArr3;
    }

    public static int lastIndexOf(double[] dArr, double d7) {
        return lastIndexOf(dArr, d7, Log.LOG_LEVEL_OFF);
    }

    public static Integer[] nullToEmpty(Integer[] numArr) {
        return isEmpty(numArr) ? EMPTY_INTEGER_OBJECT_ARRAY : numArr;
    }

    public static byte[] subarray(byte[] bArr, int i2, int i7) {
        if (bArr == null) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 > bArr.length) {
            i7 = bArr.length;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArr2 = new byte[i8];
        System.arraycopy(bArr, i2, bArr2, 0, i8);
        return bArr2;
    }

    @Deprecated
    public static byte[] add(byte[] bArr, int i2, byte b7) {
        return (byte[]) add(bArr, i2, Byte.valueOf(b7), Byte.TYPE);
    }

    public static boolean isSorted(float[] fArr) {
        if (fArr != null && fArr.length >= 2) {
            float f3 = fArr[0];
            int length = fArr.length;
            int i2 = 1;
            while (i2 < length) {
                float f7 = fArr[i2];
                if (Float.compare(f3, f7) > 0) {
                    return false;
                }
                i2++;
                f3 = f7;
            }
        }
        return true;
    }

    public static int lastIndexOf(double[] dArr, double d7, double d8) {
        return lastIndexOf(dArr, d7, Log.LOG_LEVEL_OFF, d8);
    }

    public static int[] toPrimitive(Integer[] numArr, int i2) {
        if (numArr == null) {
            return null;
        }
        if (numArr.length == 0) {
            return EMPTY_INT_ARRAY;
        }
        int[] iArr = new int[numArr.length];
        for (int i7 = 0; i7 < numArr.length; i7++) {
            Integer num = numArr[i7];
            iArr[i7] = num == null ? i2 : num.intValue();
        }
        return iArr;
    }

    @Deprecated
    public static short[] add(short[] sArr, int i2, short s6) {
        return (short[]) add(sArr, i2, Short.valueOf(s6), Short.TYPE);
    }

    public static int indexOf(float[] fArr, float f3) {
        return indexOf(fArr, f3, 0);
    }

    public static int lastIndexOf(double[] dArr, double d7, int i2) {
        if (isEmpty(dArr) || i2 < 0) {
            return -1;
        }
        if (i2 >= dArr.length) {
            i2 = dArr.length - 1;
        }
        while (i2 >= 0) {
            if (d7 == dArr[i2]) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public static Short[] nullToEmpty(Short[] shArr) {
        return isEmpty(shArr) ? EMPTY_SHORT_OBJECT_ARRAY : shArr;
    }

    public static int[] removeAllOccurences(int[] iArr, int i2) {
        int indexOf = indexOf(iArr, i2);
        if (indexOf == -1) {
            return clone(iArr);
        }
        int[] iArr2 = new int[iArr.length - indexOf];
        iArr2[0] = indexOf;
        int i7 = 1;
        while (true) {
            int indexOf2 = indexOf(iArr, i2, iArr2[i7 - 1] + 1);
            if (indexOf2 != -1) {
                iArr2[i7] = indexOf2;
                i7++;
            } else {
                return removeAll(iArr, Arrays.copyOf(iArr2, i7));
            }
        }
    }

    public static void swap(char[] cArr, int i2, int i7, int i8) {
        if (cArr == null || cArr.length == 0 || i2 >= cArr.length || i7 >= cArr.length) {
            return;
        }
        int i9 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        int min = Math.min(Math.min(i8, cArr.length - i2), cArr.length - i7);
        while (i9 < min) {
            char c7 = cArr[i2];
            cArr[i2] = cArr[i7];
            cArr[i7] = c7;
            i9++;
            i2++;
            i7++;
        }
    }

    @Deprecated
    public static int[] add(int[] iArr, int i2, int i7) {
        return (int[]) add(iArr, i2, Integer.valueOf(i7), Integer.TYPE);
    }

    public static int indexOf(float[] fArr, float f3, int i2) {
        if (isEmpty(fArr)) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < fArr.length) {
            if (f3 == fArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static Object removeAll(Object obj, BitSet bitSet) {
        int length = getLength(obj);
        Object newInstance = Array.newInstance(obj.getClass().getComponentType(), length - bitSet.cardinality());
        int i2 = 0;
        int i7 = 0;
        while (true) {
            int nextSetBit = bitSet.nextSetBit(i2);
            if (nextSetBit == -1) {
                break;
            }
            int i8 = nextSetBit - i2;
            if (i8 > 0) {
                System.arraycopy(obj, i2, newInstance, i7, i8);
                i7 += i8;
            }
            i2 = bitSet.nextClearBit(nextSetBit);
        }
        int i9 = length - i2;
        if (i9 > 0) {
            System.arraycopy(obj, i2, newInstance, i7, i9);
        }
        return newInstance;
    }

    public static void reverse(int[] iArr, int i2, int i7) {
        if (iArr == null) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int min = Math.min(iArr.length, i7) - 1;
        while (min > i2) {
            int i8 = iArr[min];
            iArr[min] = iArr[i2];
            iArr[i2] = i8;
            min--;
            i2++;
        }
    }

    @Deprecated
    public static long[] add(long[] jArr, int i2, long j7) {
        return (long[]) add(jArr, i2, Long.valueOf(j7), Long.TYPE);
    }

    public static char[] insert(int i2, char[] cArr, char... cArr2) {
        if (cArr == null) {
            return null;
        }
        if (cArr2 != null && cArr2.length != 0) {
            if (i2 >= 0 && i2 <= cArr.length) {
                char[] cArr3 = new char[cArr.length + cArr2.length];
                System.arraycopy(cArr2, 0, cArr3, i2, cArr2.length);
                if (i2 > 0) {
                    System.arraycopy(cArr, 0, cArr3, 0, i2);
                }
                if (i2 < cArr.length) {
                    System.arraycopy(cArr, i2, cArr3, cArr2.length + i2, cArr.length - i2);
                }
                return cArr3;
            }
            StringBuilder q6 = i.q(i2, "Index: ", ", Length: ");
            q6.append(cArr.length);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        return clone(cArr);
    }

    public static Character[] nullToEmpty(Character[] chArr) {
        return isEmpty(chArr) ? EMPTY_CHARACTER_OBJECT_ARRAY : chArr;
    }

    public static void shift(double[] dArr, int i2, int i7, int i8) {
        if (dArr != null && i2 < dArr.length - 1 && i7 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            if (i7 >= dArr.length) {
                i7 = dArr.length;
            }
            int i9 = i7 - i2;
            if (i9 <= 1) {
                return;
            }
            int i10 = i8 % i9;
            if (i10 < 0) {
                i10 += i9;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(dArr, i2, (i9 + i2) - i11, i11);
                    int i12 = i10;
                    i10 -= i11;
                    i9 = i12;
                } else if (i10 < i11) {
                    swap(dArr, i2, i2 + i11, i10);
                    i2 += i10;
                    i9 = i11;
                } else {
                    swap(dArr, i2, i11 + i2, i10);
                    return;
                }
            }
        }
    }

    public static Float[] toObject(float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return EMPTY_FLOAT_OBJECT_ARRAY;
        }
        Float[] fArr2 = new Float[fArr.length];
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr2[i2] = Float.valueOf(fArr[i2]);
        }
        return fArr2;
    }

    @Deprecated
    public static float[] add(float[] fArr, int i2, float f3) {
        return (float[]) add(fArr, i2, Float.valueOf(f3), Float.TYPE);
    }

    public static int[] addAll(int[] iArr, int... iArr2) {
        if (iArr == null) {
            return clone(iArr2);
        }
        if (iArr2 == null) {
            return clone(iArr);
        }
        int[] iArr3 = new int[iArr.length + iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
        return iArr3;
    }

    public static short[] removeElements(short[] sArr, short... sArr2) {
        if (!isEmpty(sArr) && !isEmpty(sArr2)) {
            HashMap hashMap = new HashMap(sArr2.length);
            for (short s6 : sArr2) {
                Short valueOf = Short.valueOf(s6);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i2 = 0; i2 < sArr.length; i2++) {
                short s7 = sArr[i2];
                MutableInt mutableInt2 = (MutableInt) hashMap.get(Short.valueOf(s7));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        hashMap.remove(Short.valueOf(s7));
                    }
                    bitSet.set(i2);
                }
            }
            return (short[]) removeAll(sArr, bitSet);
        }
        return clone(sArr);
    }

    public static double[] subarray(double[] dArr, int i2, int i7) {
        if (dArr == null) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 > dArr.length) {
            i7 = dArr.length;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return EMPTY_DOUBLE_ARRAY;
        }
        double[] dArr2 = new double[i8];
        System.arraycopy(dArr, i2, dArr2, 0, i8);
        return dArr2;
    }

    @Deprecated
    public static double[] add(double[] dArr, int i2, double d7) {
        return (double[]) add(dArr, i2, Double.valueOf(d7), Double.TYPE);
    }

    public static int indexOf(boolean[] zArr, boolean z6) {
        return indexOf(zArr, z6, 0);
    }

    public static boolean isSorted(byte[] bArr) {
        if (bArr != null && bArr.length >= 2) {
            byte b7 = bArr[0];
            int length = bArr.length;
            int i2 = 1;
            while (i2 < length) {
                byte b8 = bArr[i2];
                if (NumberUtils.compare(b7, b8) > 0) {
                    return false;
                }
                i2++;
                b7 = b8;
            }
        }
        return true;
    }

    public static int lastIndexOf(double[] dArr, double d7, int i2, double d8) {
        if (isEmpty(dArr) || i2 < 0) {
            return -1;
        }
        if (i2 >= dArr.length) {
            i2 = dArr.length - 1;
        }
        double d9 = d7 - d8;
        double d10 = d7 + d8;
        while (i2 >= 0) {
            double d11 = dArr[i2];
            if (d11 >= d9 && d11 <= d10) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public static Byte[] nullToEmpty(Byte[] bArr) {
        return isEmpty(bArr) ? EMPTY_BYTE_OBJECT_ARRAY : bArr;
    }

    private static Object add(Object obj, int i2, Object obj2, Class<?> cls) {
        if (obj == null) {
            if (i2 == 0) {
                Object newInstance = Array.newInstance(cls, 1);
                Array.set(newInstance, 0, obj2);
                return newInstance;
            }
            throw new IndexOutOfBoundsException(i.g(i2, "Index: ", ", Length: 0"));
        }
        int length = Array.getLength(obj);
        if (i2 <= length && i2 >= 0) {
            Object newInstance2 = Array.newInstance(cls, length + 1);
            System.arraycopy(obj, 0, newInstance2, 0, i2);
            Array.set(newInstance2, i2, obj2);
            if (i2 < length) {
                System.arraycopy(obj, i2, newInstance2, i2 + 1, length - i2);
            }
            return newInstance2;
        }
        throw new IndexOutOfBoundsException(i.e(i2, length, "Index: ", ", Length: "));
    }

    public static int indexOf(boolean[] zArr, boolean z6, int i2) {
        if (isEmpty(zArr)) {
            return -1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < zArr.length) {
            if (z6 == zArr[i2]) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static void reverse(long[] jArr, int i2, int i7) {
        if (jArr == null) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int min = Math.min(jArr.length, i7) - 1;
        while (min > i2) {
            long j7 = jArr[min];
            jArr[min] = jArr[i2];
            jArr[i2] = j7;
            min--;
            i2++;
        }
    }

    public static void swap(double[] dArr, int i2, int i7, int i8) {
        if (dArr == null || dArr.length == 0 || i2 >= dArr.length || i7 >= dArr.length) {
            return;
        }
        int i9 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        int min = Math.min(Math.min(i8, dArr.length - i2), dArr.length - i7);
        while (i9 < min) {
            double d7 = dArr[i2];
            dArr[i2] = dArr[i7];
            dArr[i7] = d7;
            i9++;
            i2++;
            i7++;
        }
    }

    public static short[] toPrimitive(Short[] shArr) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr = new short[shArr.length];
        for (int i2 = 0; i2 < shArr.length; i2++) {
            sArr[i2] = shArr[i2].shortValue();
        }
        return sArr;
    }

    public static Double[] nullToEmpty(Double[] dArr) {
        return isEmpty(dArr) ? EMPTY_DOUBLE_OBJECT_ARRAY : dArr;
    }

    public static long[] removeAllOccurences(long[] jArr, long j7) {
        int indexOf = indexOf(jArr, j7);
        if (indexOf == -1) {
            return clone(jArr);
        }
        int[] iArr = new int[jArr.length - indexOf];
        iArr[0] = indexOf;
        int i2 = 1;
        while (true) {
            int indexOf2 = indexOf(jArr, j7, iArr[i2 - 1] + 1);
            if (indexOf2 != -1) {
                iArr[i2] = indexOf2;
                i2++;
            } else {
                return removeAll(jArr, Arrays.copyOf(iArr, i2));
            }
        }
    }

    public static Boolean[] toObject(boolean[] zArr) {
        if (zArr == null) {
            return null;
        }
        if (zArr.length == 0) {
            return EMPTY_BOOLEAN_OBJECT_ARRAY;
        }
        Boolean[] boolArr = new Boolean[zArr.length];
        for (int i2 = 0; i2 < zArr.length; i2++) {
            boolArr[i2] = zArr[i2] ? Boolean.TRUE : Boolean.FALSE;
        }
        return boolArr;
    }

    public static long[] addAll(long[] jArr, long... jArr2) {
        if (jArr == null) {
            return clone(jArr2);
        }
        if (jArr2 == null) {
            return clone(jArr);
        }
        long[] jArr3 = new long[jArr.length + jArr2.length];
        System.arraycopy(jArr, 0, jArr3, 0, jArr.length);
        System.arraycopy(jArr2, 0, jArr3, jArr.length, jArr2.length);
        return jArr3;
    }

    public static int lastIndexOf(float[] fArr, float f3) {
        return lastIndexOf(fArr, f3, Log.LOG_LEVEL_OFF);
    }

    public static Float[] nullToEmpty(Float[] fArr) {
        return isEmpty(fArr) ? EMPTY_FLOAT_OBJECT_ARRAY : fArr;
    }

    public static float[] subarray(float[] fArr, int i2, int i7) {
        if (fArr == null) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 > fArr.length) {
            i7 = fArr.length;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return EMPTY_FLOAT_ARRAY;
        }
        float[] fArr2 = new float[i8];
        System.arraycopy(fArr, i2, fArr2, 0, i8);
        return fArr2;
    }

    public static boolean isSorted(char[] cArr) {
        if (cArr != null && cArr.length >= 2) {
            char c7 = cArr[0];
            int length = cArr.length;
            int i2 = 1;
            while (i2 < length) {
                char c8 = cArr[i2];
                if (CharUtils.compare(c7, c8) > 0) {
                    return false;
                }
                i2++;
                c7 = c8;
            }
        }
        return true;
    }

    public static int lastIndexOf(float[] fArr, float f3, int i2) {
        if (isEmpty(fArr) || i2 < 0) {
            return -1;
        }
        if (i2 >= fArr.length) {
            i2 = fArr.length - 1;
        }
        while (i2 >= 0) {
            if (f3 == fArr[i2]) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public static void reverse(Object[] objArr, int i2, int i7) {
        if (objArr == null) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int min = Math.min(objArr.length, i7) - 1;
        while (min > i2) {
            Object obj = objArr[min];
            objArr[min] = objArr[i2];
            objArr[i2] = obj;
            min--;
            i2++;
        }
    }

    public static void shift(float[] fArr, int i2, int i7, int i8) {
        if (fArr != null && i2 < fArr.length - 1 && i7 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            if (i7 >= fArr.length) {
                i7 = fArr.length;
            }
            int i9 = i7 - i2;
            if (i9 <= 1) {
                return;
            }
            int i10 = i8 % i9;
            if (i10 < 0) {
                i10 += i9;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(fArr, i2, (i9 + i2) - i11, i11);
                    int i12 = i10;
                    i10 -= i11;
                    i9 = i12;
                } else if (i10 < i11) {
                    swap(fArr, i2, i2 + i11, i10);
                    i2 += i10;
                    i9 = i11;
                } else {
                    swap(fArr, i2, i11 + i2, i10);
                    return;
                }
            }
        }
    }

    public static Boolean[] nullToEmpty(Boolean[] boolArr) {
        return isEmpty(boolArr) ? EMPTY_BOOLEAN_OBJECT_ARRAY : boolArr;
    }

    public static void swap(float[] fArr, int i2, int i7, int i8) {
        if (fArr == null || fArr.length == 0 || i2 >= fArr.length || i7 >= fArr.length) {
            return;
        }
        int i9 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        int min = Math.min(Math.min(i8, fArr.length - i2), fArr.length - i7);
        while (i9 < min) {
            float f3 = fArr[i2];
            fArr[i2] = fArr[i7];
            fArr[i7] = f3;
            i9++;
            i2++;
            i7++;
        }
    }

    public static short[] toPrimitive(Short[] shArr, short s6) {
        if (shArr == null) {
            return null;
        }
        if (shArr.length == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr = new short[shArr.length];
        for (int i2 = 0; i2 < shArr.length; i2++) {
            Short sh = shArr[i2];
            sArr[i2] = sh == null ? s6 : sh.shortValue();
        }
        return sArr;
    }

    public static float[] addAll(float[] fArr, float... fArr2) {
        if (fArr == null) {
            return clone(fArr2);
        }
        if (fArr2 == null) {
            return clone(fArr);
        }
        float[] fArr3 = new float[fArr.length + fArr2.length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        return fArr3;
    }

    public static int lastIndexOf(boolean[] zArr, boolean z6) {
        return lastIndexOf(zArr, z6, Log.LOG_LEVEL_OFF);
    }

    public static void reverse(short[] sArr, int i2, int i7) {
        if (sArr == null) {
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int min = Math.min(sArr.length, i7) - 1;
        while (min > i2) {
            short s6 = sArr[min];
            sArr[min] = sArr[i2];
            sArr[i2] = s6;
            min--;
            i2++;
        }
    }

    public static boolean[] subarray(boolean[] zArr, int i2, int i7) {
        if (zArr == null) {
            return null;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 > zArr.length) {
            i7 = zArr.length;
        }
        int i8 = i7 - i2;
        if (i8 <= 0) {
            return EMPTY_BOOLEAN_ARRAY;
        }
        boolean[] zArr2 = new boolean[i8];
        System.arraycopy(zArr, i2, zArr2, 0, i8);
        return zArr2;
    }

    public static boolean isSorted(boolean[] zArr) {
        if (zArr != null && zArr.length >= 2) {
            boolean z6 = zArr[0];
            int length = zArr.length;
            int i2 = 1;
            while (i2 < length) {
                boolean z7 = zArr[i2];
                if (BooleanUtils.compare(z6, z7) > 0) {
                    return false;
                }
                i2++;
                z6 = z7;
            }
        }
        return true;
    }

    public static int lastIndexOf(boolean[] zArr, boolean z6, int i2) {
        if (isEmpty(zArr) || i2 < 0) {
            return -1;
        }
        if (i2 >= zArr.length) {
            i2 = zArr.length - 1;
        }
        while (i2 >= 0) {
            if (z6 == zArr[i2]) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    public static float[] removeAllOccurences(float[] fArr, float f3) {
        int indexOf = indexOf(fArr, f3);
        if (indexOf == -1) {
            return clone(fArr);
        }
        int[] iArr = new int[fArr.length - indexOf];
        iArr[0] = indexOf;
        int i2 = 1;
        while (true) {
            int indexOf2 = indexOf(fArr, f3, iArr[i2 - 1] + 1);
            if (indexOf2 != -1) {
                iArr[i2] = indexOf2;
                i2++;
            } else {
                return removeAll(fArr, Arrays.copyOf(iArr, i2));
            }
        }
    }

    public static void swap(int[] iArr, int i2, int i7, int i8) {
        if (iArr == null || iArr.length == 0 || i2 >= iArr.length || i7 >= iArr.length) {
            return;
        }
        int i9 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        int min = Math.min(Math.min(i8, iArr.length - i2), iArr.length - i7);
        while (i9 < min) {
            int i10 = iArr[i2];
            iArr[i2] = iArr[i7];
            iArr[i7] = i10;
            i9++;
            i2++;
            i7++;
        }
    }

    public static void shift(int[] iArr, int i2, int i7, int i8) {
        if (iArr != null && i2 < iArr.length - 1 && i7 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            if (i7 >= iArr.length) {
                i7 = iArr.length;
            }
            int i9 = i7 - i2;
            if (i9 <= 1) {
                return;
            }
            int i10 = i8 % i9;
            if (i10 < 0) {
                i10 += i9;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(iArr, i2, (i9 + i2) - i11, i11);
                    int i12 = i10;
                    i10 -= i11;
                    i9 = i12;
                } else if (i10 < i11) {
                    swap(iArr, i2, i2 + i11, i10);
                    i2 += i10;
                    i9 = i11;
                } else {
                    swap(iArr, i2, i11 + i2, i10);
                    return;
                }
            }
        }
    }

    public static byte[] toPrimitive(Byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr2[i2] = bArr[i2].byteValue();
        }
        return bArr2;
    }

    public static double[] insert(int i2, double[] dArr, double... dArr2) {
        if (dArr == null) {
            return null;
        }
        if (dArr2 != null && dArr2.length != 0) {
            if (i2 >= 0 && i2 <= dArr.length) {
                double[] dArr3 = new double[dArr.length + dArr2.length];
                System.arraycopy(dArr2, 0, dArr3, i2, dArr2.length);
                if (i2 > 0) {
                    System.arraycopy(dArr, 0, dArr3, 0, i2);
                }
                if (i2 < dArr.length) {
                    System.arraycopy(dArr, i2, dArr3, dArr2.length + i2, dArr.length - i2);
                }
                return dArr3;
            }
            StringBuilder q6 = i.q(i2, "Index: ", ", Length: ");
            q6.append(dArr.length);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        return clone(dArr);
    }

    public static double[] addAll(double[] dArr, double... dArr2) {
        if (dArr == null) {
            return clone(dArr2);
        }
        if (dArr2 == null) {
            return clone(dArr);
        }
        double[] dArr3 = new double[dArr.length + dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr3, dArr.length, dArr2.length);
        return dArr3;
    }

    public static int[] removeElements(int[] iArr, int... iArr2) {
        if (!isEmpty(iArr) && !isEmpty(iArr2)) {
            HashMap hashMap = new HashMap(iArr2.length);
            for (int i2 : iArr2) {
                Integer valueOf = Integer.valueOf(i2);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i7 = 0; i7 < iArr.length; i7++) {
                int i8 = iArr[i7];
                MutableInt mutableInt2 = (MutableInt) hashMap.get(Integer.valueOf(i8));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        hashMap.remove(Integer.valueOf(i8));
                    }
                    bitSet.set(i7);
                }
            }
            return (int[]) removeAll(iArr, bitSet);
        }
        return clone(iArr);
    }

    public static void swap(long[] jArr, int i2, int i7, int i8) {
        if (jArr == null || jArr.length == 0 || i2 >= jArr.length || i7 >= jArr.length) {
            return;
        }
        int i9 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        int min = Math.min(Math.min(i8, jArr.length - i2), jArr.length - i7);
        while (i9 < min) {
            long j7 = jArr[i2];
            jArr[i2] = jArr[i7];
            jArr[i7] = j7;
            i9++;
            i2++;
            i7++;
        }
    }

    public static double[] removeAllOccurences(double[] dArr, double d7) {
        int indexOf = indexOf(dArr, d7);
        if (indexOf == -1) {
            return clone(dArr);
        }
        int[] iArr = new int[dArr.length - indexOf];
        iArr[0] = indexOf;
        int i2 = 1;
        while (true) {
            int indexOf2 = indexOf(dArr, d7, iArr[i2 - 1] + 1);
            if (indexOf2 != -1) {
                iArr[i2] = indexOf2;
                i2++;
            } else {
                return removeAll(dArr, Arrays.copyOf(iArr, i2));
            }
        }
    }

    public static byte[] toPrimitive(Byte[] bArr, byte b7) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            Byte b8 = bArr[i2];
            bArr2[i2] = b8 == null ? b7 : b8.byteValue();
        }
        return bArr2;
    }

    public static void shift(long[] jArr, int i2, int i7, int i8) {
        if (jArr != null && i2 < jArr.length - 1 && i7 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            if (i7 >= jArr.length) {
                i7 = jArr.length;
            }
            int i9 = i7 - i2;
            if (i9 <= 1) {
                return;
            }
            int i10 = i8 % i9;
            if (i10 < 0) {
                i10 += i9;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(jArr, i2, (i9 + i2) - i11, i11);
                    int i12 = i10;
                    i10 -= i11;
                    i9 = i12;
                } else if (i10 < i11) {
                    swap(jArr, i2, i2 + i11, i10);
                    i2 += i10;
                    i9 = i11;
                } else {
                    swap(jArr, i2, i11 + i2, i10);
                    return;
                }
            }
        }
    }

    public static void swap(Object[] objArr, int i2, int i7, int i8) {
        if (objArr == null || objArr.length == 0 || i2 >= objArr.length || i7 >= objArr.length) {
            return;
        }
        int i9 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        int min = Math.min(Math.min(i8, objArr.length - i2), objArr.length - i7);
        while (i9 < min) {
            Object obj = objArr[i2];
            objArr[i2] = objArr[i7];
            objArr[i7] = obj;
            i9++;
            i2++;
            i7++;
        }
    }

    public static double[] toPrimitive(Double[] dArr) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return EMPTY_DOUBLE_ARRAY;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr2[i2] = dArr[i2].doubleValue();
        }
        return dArr2;
    }

    public static <T> T[] removeAllOccurences(T[] tArr, T t6) {
        int indexOf = indexOf(tArr, t6);
        if (indexOf == -1) {
            return (T[]) clone(tArr);
        }
        int[] iArr = new int[tArr.length - indexOf];
        iArr[0] = indexOf;
        int i2 = 1;
        while (true) {
            int indexOf2 = indexOf(tArr, t6, iArr[i2 - 1] + 1);
            if (indexOf2 != -1) {
                iArr[i2] = indexOf2;
                i2++;
            } else {
                return (T[]) removeAll((Object[]) tArr, Arrays.copyOf(iArr, i2));
            }
        }
    }

    public static void shift(Object[] objArr, int i2, int i7, int i8) {
        if (objArr != null && i2 < objArr.length - 1 && i7 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            if (i7 >= objArr.length) {
                i7 = objArr.length;
            }
            int i9 = i7 - i2;
            if (i9 <= 1) {
                return;
            }
            int i10 = i8 % i9;
            if (i10 < 0) {
                i10 += i9;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(objArr, i2, (i9 + i2) - i11, i11);
                    int i12 = i10;
                    i10 -= i11;
                    i9 = i12;
                } else if (i10 < i11) {
                    swap(objArr, i2, i2 + i11, i10);
                    i2 += i10;
                    i9 = i11;
                } else {
                    swap(objArr, i2, i11 + i2, i10);
                    return;
                }
            }
        }
    }

    public static void swap(short[] sArr, int i2, int i7, int i8) {
        if (sArr == null || sArr.length == 0 || i2 >= sArr.length || i7 >= sArr.length) {
            return;
        }
        int i9 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        if (i7 < 0) {
            i7 = 0;
        }
        if (i2 == i7) {
            return;
        }
        int min = Math.min(Math.min(i8, sArr.length - i2), sArr.length - i7);
        while (i9 < min) {
            short s6 = sArr[i2];
            sArr[i2] = sArr[i7];
            sArr[i7] = s6;
            i9++;
            i2++;
            i7++;
        }
    }

    public static float[] insert(int i2, float[] fArr, float... fArr2) {
        if (fArr == null) {
            return null;
        }
        if (fArr2 != null && fArr2.length != 0) {
            if (i2 >= 0 && i2 <= fArr.length) {
                float[] fArr3 = new float[fArr.length + fArr2.length];
                System.arraycopy(fArr2, 0, fArr3, i2, fArr2.length);
                if (i2 > 0) {
                    System.arraycopy(fArr, 0, fArr3, 0, i2);
                }
                if (i2 < fArr.length) {
                    System.arraycopy(fArr, i2, fArr3, fArr2.length + i2, fArr.length - i2);
                }
                return fArr3;
            }
            StringBuilder q6 = i.q(i2, "Index: ", ", Length: ");
            q6.append(fArr.length);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        return clone(fArr);
    }

    public static double[] toPrimitive(Double[] dArr, double d7) {
        if (dArr == null) {
            return null;
        }
        if (dArr.length == 0) {
            return EMPTY_DOUBLE_ARRAY;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            Double d8 = dArr[i2];
            dArr2[i2] = d8 == null ? d7 : d8.doubleValue();
        }
        return dArr2;
    }

    public static char[] removeElements(char[] cArr, char... cArr2) {
        if (!isEmpty(cArr) && !isEmpty(cArr2)) {
            HashMap hashMap = new HashMap(cArr2.length);
            for (char c7 : cArr2) {
                Character valueOf = Character.valueOf(c7);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i2 = 0; i2 < cArr.length; i2++) {
                char c8 = cArr[i2];
                MutableInt mutableInt2 = (MutableInt) hashMap.get(Character.valueOf(c8));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        hashMap.remove(Character.valueOf(c8));
                    }
                    bitSet.set(i2);
                }
            }
            return (char[]) removeAll(cArr, bitSet);
        }
        return clone(cArr);
    }

    public static void shift(short[] sArr, int i2, int i7, int i8) {
        if (sArr != null && i2 < sArr.length - 1 && i7 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            if (i7 >= sArr.length) {
                i7 = sArr.length;
            }
            int i9 = i7 - i2;
            if (i9 <= 1) {
                return;
            }
            int i10 = i8 % i9;
            if (i10 < 0) {
                i10 += i9;
            }
            while (i9 > 1 && i10 > 0) {
                int i11 = i9 - i10;
                if (i10 > i11) {
                    swap(sArr, i2, (i9 + i2) - i11, i11);
                    int i12 = i10;
                    i10 -= i11;
                    i9 = i12;
                } else if (i10 < i11) {
                    swap(sArr, i2, i2 + i11, i10);
                    i2 += i10;
                    i9 = i11;
                } else {
                    swap(sArr, i2, i11 + i2, i10);
                    return;
                }
            }
        }
    }

    public static float[] toPrimitive(Float[] fArr) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return EMPTY_FLOAT_ARRAY;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr2[i2] = fArr[i2].floatValue();
        }
        return fArr2;
    }

    public static float[] toPrimitive(Float[] fArr, float f3) {
        if (fArr == null) {
            return null;
        }
        if (fArr.length == 0) {
            return EMPTY_FLOAT_ARRAY;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i2 = 0; i2 < fArr.length; i2++) {
            Float f7 = fArr[i2];
            fArr2[i2] = f7 == null ? f3 : f7.floatValue();
        }
        return fArr2;
    }

    public static int[] insert(int i2, int[] iArr, int... iArr2) {
        if (iArr == null) {
            return null;
        }
        if (iArr2 != null && iArr2.length != 0) {
            if (i2 >= 0 && i2 <= iArr.length) {
                int[] iArr3 = new int[iArr.length + iArr2.length];
                System.arraycopy(iArr2, 0, iArr3, i2, iArr2.length);
                if (i2 > 0) {
                    System.arraycopy(iArr, 0, iArr3, 0, i2);
                }
                if (i2 < iArr.length) {
                    System.arraycopy(iArr, i2, iArr3, iArr2.length + i2, iArr.length - i2);
                }
                return iArr3;
            }
            StringBuilder q6 = i.q(i2, "Index: ", ", Length: ");
            q6.append(iArr.length);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        return clone(iArr);
    }

    public static Object toPrimitive(Object obj) {
        if (obj == null) {
            return null;
        }
        Class<?> wrapperToPrimitive = ClassUtils.wrapperToPrimitive(obj.getClass().getComponentType());
        if (Integer.TYPE.equals(wrapperToPrimitive)) {
            return toPrimitive((Integer[]) obj);
        }
        if (Long.TYPE.equals(wrapperToPrimitive)) {
            return toPrimitive((Long[]) obj);
        }
        if (Short.TYPE.equals(wrapperToPrimitive)) {
            return toPrimitive((Short[]) obj);
        }
        if (Double.TYPE.equals(wrapperToPrimitive)) {
            return toPrimitive((Double[]) obj);
        }
        return Float.TYPE.equals(wrapperToPrimitive) ? toPrimitive((Float[]) obj) : obj;
    }

    public static long[] removeElements(long[] jArr, long... jArr2) {
        if (!isEmpty(jArr) && !isEmpty(jArr2)) {
            HashMap hashMap = new HashMap(jArr2.length);
            for (long j7 : jArr2) {
                Long valueOf = Long.valueOf(j7);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i2 = 0; i2 < jArr.length; i2++) {
                long j8 = jArr[i2];
                MutableInt mutableInt2 = (MutableInt) hashMap.get(Long.valueOf(j8));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        hashMap.remove(Long.valueOf(j8));
                    }
                    bitSet.set(i2);
                }
            }
            return (long[]) removeAll(jArr, bitSet);
        }
        return clone(jArr);
    }

    public static boolean[] toPrimitive(Boolean[] boolArr) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return EMPTY_BOOLEAN_ARRAY;
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i2 = 0; i2 < boolArr.length; i2++) {
            zArr[i2] = boolArr[i2].booleanValue();
        }
        return zArr;
    }

    public static long[] insert(int i2, long[] jArr, long... jArr2) {
        if (jArr == null) {
            return null;
        }
        if (jArr2 != null && jArr2.length != 0) {
            if (i2 >= 0 && i2 <= jArr.length) {
                long[] jArr3 = new long[jArr.length + jArr2.length];
                System.arraycopy(jArr2, 0, jArr3, i2, jArr2.length);
                if (i2 > 0) {
                    System.arraycopy(jArr, 0, jArr3, 0, i2);
                }
                if (i2 < jArr.length) {
                    System.arraycopy(jArr, i2, jArr3, jArr2.length + i2, jArr.length - i2);
                }
                return jArr3;
            }
            StringBuilder q6 = i.q(i2, "Index: ", ", Length: ");
            q6.append(jArr.length);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        return clone(jArr);
    }

    public static boolean[] toPrimitive(Boolean[] boolArr, boolean z6) {
        if (boolArr == null) {
            return null;
        }
        if (boolArr.length == 0) {
            return EMPTY_BOOLEAN_ARRAY;
        }
        boolean[] zArr = new boolean[boolArr.length];
        for (int i2 = 0; i2 < boolArr.length; i2++) {
            Boolean bool = boolArr[i2];
            zArr[i2] = bool == null ? z6 : bool.booleanValue();
        }
        return zArr;
    }

    public static float[] removeElements(float[] fArr, float... fArr2) {
        if (!isEmpty(fArr) && !isEmpty(fArr2)) {
            HashMap hashMap = new HashMap(fArr2.length);
            for (float f3 : fArr2) {
                Float valueOf = Float.valueOf(f3);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i2 = 0; i2 < fArr.length; i2++) {
                float f7 = fArr[i2];
                MutableInt mutableInt2 = (MutableInt) hashMap.get(Float.valueOf(f7));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        hashMap.remove(Float.valueOf(f7));
                    }
                    bitSet.set(i2);
                }
            }
            return (float[]) removeAll(fArr, bitSet);
        }
        return clone(fArr);
    }

    public static short[] insert(int i2, short[] sArr, short... sArr2) {
        if (sArr == null) {
            return null;
        }
        if (sArr2 != null && sArr2.length != 0) {
            if (i2 >= 0 && i2 <= sArr.length) {
                short[] sArr3 = new short[sArr.length + sArr2.length];
                System.arraycopy(sArr2, 0, sArr3, i2, sArr2.length);
                if (i2 > 0) {
                    System.arraycopy(sArr, 0, sArr3, 0, i2);
                }
                if (i2 < sArr.length) {
                    System.arraycopy(sArr, i2, sArr3, sArr2.length + i2, sArr.length - i2);
                }
                return sArr3;
            }
            StringBuilder q6 = i.q(i2, "Index: ", ", Length: ");
            q6.append(sArr.length);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        return clone(sArr);
    }

    public static double[] removeElements(double[] dArr, double... dArr2) {
        if (!isEmpty(dArr) && !isEmpty(dArr2)) {
            HashMap hashMap = new HashMap(dArr2.length);
            for (double d7 : dArr2) {
                Double valueOf = Double.valueOf(d7);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i2 = 0; i2 < dArr.length; i2++) {
                double d8 = dArr[i2];
                MutableInt mutableInt2 = (MutableInt) hashMap.get(Double.valueOf(d8));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        hashMap.remove(Double.valueOf(d8));
                    }
                    bitSet.set(i2);
                }
            }
            return (double[]) removeAll(dArr, bitSet);
        }
        return clone(dArr);
    }

    @SafeVarargs
    public static <T> T[] insert(int i2, T[] tArr, T... tArr2) {
        if (tArr == null) {
            return null;
        }
        if (tArr2 != null && tArr2.length != 0) {
            if (i2 >= 0 && i2 <= tArr.length) {
                T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), tArr.length + tArr2.length));
                System.arraycopy(tArr2, 0, tArr3, i2, tArr2.length);
                if (i2 > 0) {
                    System.arraycopy(tArr, 0, tArr3, 0, i2);
                }
                if (i2 < tArr.length) {
                    System.arraycopy(tArr, i2, tArr3, tArr2.length + i2, tArr.length - i2);
                }
                return tArr3;
            }
            StringBuilder q6 = i.q(i2, "Index: ", ", Length: ");
            q6.append(tArr.length);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        return (T[]) clone(tArr);
    }

    public static boolean[] removeElements(boolean[] zArr, boolean... zArr2) {
        if (!isEmpty(zArr) && !isEmpty(zArr2)) {
            HashMap hashMap = new HashMap(2);
            for (boolean z6 : zArr2) {
                Boolean valueOf = Boolean.valueOf(z6);
                MutableInt mutableInt = (MutableInt) hashMap.get(valueOf);
                if (mutableInt == null) {
                    hashMap.put(valueOf, new MutableInt(1));
                } else {
                    mutableInt.increment();
                }
            }
            BitSet bitSet = new BitSet();
            for (int i2 = 0; i2 < zArr.length; i2++) {
                boolean z7 = zArr[i2];
                MutableInt mutableInt2 = (MutableInt) hashMap.get(Boolean.valueOf(z7));
                if (mutableInt2 != null) {
                    if (mutableInt2.decrementAndGet() == 0) {
                        hashMap.remove(Boolean.valueOf(z7));
                    }
                    bitSet.set(i2);
                }
            }
            return (boolean[]) removeAll(zArr, bitSet);
        }
        return clone(zArr);
    }
}
