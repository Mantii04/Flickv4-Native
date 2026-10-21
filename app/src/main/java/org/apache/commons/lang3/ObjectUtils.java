package org.apache.commons.lang3;

import A.i;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;
import org.apache.commons.lang3.exception.CloneFailedException;
import org.apache.commons.lang3.mutable.MutableInt;
import org.apache.commons.lang3.text.StrBuilder;

/* loaded from: classes2.dex */
public class ObjectUtils {
    private static final char AT_SIGN = '@';
    public static final Null NULL = new Null();

    public static class Null implements Serializable {
        private static final long serialVersionUID = 7092611880189329093L;

        private Object readResolve() {
            return ObjectUtils.NULL;
        }
    }

    public static byte CONST(byte b7) {
        return b7;
    }

    public static byte CONST_BYTE(int i2) {
        if (i2 < -128 || i2 > 127) {
            throw new IllegalArgumentException(i.g(i2, "Supplied value must be a valid byte literal between -128 and 127: [", "]"));
        }
        return (byte) i2;
    }

    public static short CONST_SHORT(int i2) {
        if (i2 < -32768 || i2 > 32767) {
            throw new IllegalArgumentException(i.g(i2, "Supplied value must be a valid byte literal between -32768 and 32767: [", "]"));
        }
        return (short) i2;
    }

    public static boolean allNotNull(Object... objArr) {
        if (objArr == null) {
            return false;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                return false;
            }
        }
        return true;
    }

    public static boolean anyNotNull(Object... objArr) {
        return firstNonNull(objArr) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T clone(T t6) {
        if (!(t6 instanceof Cloneable)) {
            return null;
        }
        if (!t6.getClass().isArray()) {
            try {
                return (T) t6.getClass().getMethod("clone", new Class[0]).invoke(t6, new Object[0]);
            } catch (IllegalAccessException e3) {
                throw new CloneFailedException("Cannot clone Cloneable type ".concat(t6.getClass().getName()), e3);
            } catch (NoSuchMethodException e7) {
                throw new CloneFailedException("Cloneable type " + t6.getClass().getName() + " has no clone method", e7);
            } catch (InvocationTargetException e8) {
                throw new CloneFailedException("Exception cloning Cloneable type ".concat(t6.getClass().getName()), e8.getCause());
            }
        }
        Class<?> componentType = t6.getClass().getComponentType();
        if (!componentType.isPrimitive()) {
            return (T) ((Object[]) t6).clone();
        }
        int length = Array.getLength(t6);
        T t7 = (T) Array.newInstance(componentType, length);
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return t7;
            }
            Array.set(t7, i2, Array.get(t6, i2));
            length = i2;
        }
    }

    public static <T> T cloneIfPossible(T t6) {
        T t7 = (T) clone(t6);
        return t7 == null ? t6 : t7;
    }

    public static <T extends Comparable<? super T>> int compare(T t6, T t7) {
        return compare(t6, t7, false);
    }

    public static <T> T defaultIfNull(T t6, T t7) {
        return t6 != null ? t6 : t7;
    }

    @Deprecated
    public static boolean equals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    @SafeVarargs
    public static <T> T firstNonNull(T... tArr) {
        if (tArr == null) {
            return null;
        }
        for (T t6 : tArr) {
            if (t6 != null) {
                return t6;
            }
        }
        return null;
    }

    @Deprecated
    public static int hashCode(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    @Deprecated
    public static int hashCodeMulti(Object... objArr) {
        int i2 = 1;
        if (objArr != null) {
            for (Object obj : objArr) {
                i2 = (i2 * 31) + hashCode(obj);
            }
        }
        return i2;
    }

    public static String identityToString(Object obj) {
        if (obj == null) {
            return null;
        }
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        StringBuilder sb = new StringBuilder(hexString.length() + name.length() + 1);
        sb.append(name);
        sb.append(AT_SIGN);
        sb.append(hexString);
        return sb.toString();
    }

    @SafeVarargs
    public static <T extends Comparable<? super T>> T max(T... tArr) {
        T t6 = null;
        if (tArr != null) {
            for (T t7 : tArr) {
                if (compare(t7, t6, false) > 0) {
                    t6 = t7;
                }
            }
        }
        return t6;
    }

    @SafeVarargs
    public static <T extends Comparable<? super T>> T median(T... tArr) {
        Validate.notEmpty(tArr);
        Validate.noNullElements(tArr);
        TreeSet treeSet = new TreeSet();
        Collections.addAll(treeSet, tArr);
        return (T) treeSet.toArray()[(treeSet.size() - 1) / 2];
    }

    @SafeVarargs
    public static <T extends Comparable<? super T>> T min(T... tArr) {
        T t6 = null;
        if (tArr != null) {
            for (T t7 : tArr) {
                if (compare(t7, t6, true) < 0) {
                    t6 = t7;
                }
            }
        }
        return t6;
    }

    @SafeVarargs
    public static <T> T mode(T... tArr) {
        if (!ArrayUtils.isNotEmpty(tArr)) {
            return null;
        }
        HashMap hashMap = new HashMap(tArr.length);
        int i2 = 0;
        for (T t6 : tArr) {
            MutableInt mutableInt = (MutableInt) hashMap.get(t6);
            if (mutableInt == null) {
                hashMap.put(t6, new MutableInt(1));
            } else {
                mutableInt.increment();
            }
        }
        while (true) {
            T t7 = null;
            for (Map.Entry entry : hashMap.entrySet()) {
                int intValue = ((MutableInt) entry.getValue()).intValue();
                if (intValue == i2) {
                    break;
                }
                if (intValue > i2) {
                    t7 = (T) entry.getKey();
                    i2 = intValue;
                }
            }
            return t7;
        }
    }

    public static boolean notEqual(Object obj, Object obj2) {
        return !equals(obj, obj2);
    }

    @Deprecated
    public static String toString(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public static char CONST(char c7) {
        return c7;
    }

    public static <T extends Comparable<? super T>> int compare(T t6, T t7, boolean z6) {
        if (t6 == t7) {
            return 0;
        }
        return t6 == null ? z6 ? 1 : -1 : t7 == null ? z6 ? -1 : 1 : t6.compareTo(t7);
    }

    @Deprecated
    public static String toString(Object obj, String str) {
        return obj == null ? str : obj.toString();
    }

    public static double CONST(double d7) {
        return d7;
    }

    public static float CONST(float f3) {
        return f3;
    }

    public static int CONST(int i2) {
        return i2;
    }

    public static long CONST(long j7) {
        return j7;
    }

    @SafeVarargs
    public static <T> T median(Comparator<T> comparator, T... tArr) {
        Validate.notEmpty(tArr, "null/empty items", new Object[0]);
        Validate.noNullElements(tArr);
        Validate.notNull(comparator, "null comparator", new Object[0]);
        TreeSet treeSet = new TreeSet(comparator);
        Collections.addAll(treeSet, tArr);
        return (T) treeSet.toArray()[(treeSet.size() - 1) / 2];
    }

    public static <T> T CONST(T t6) {
        return t6;
    }

    public static short CONST(short s6) {
        return s6;
    }

    public static void identityToString(Appendable appendable, Object obj) throws IOException {
        Validate.notNull(obj, "Cannot get the toString of a null object", new Object[0]);
        appendable.append(obj.getClass().getName()).append(AT_SIGN).append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static boolean CONST(boolean z6) {
        return z6;
    }

    @Deprecated
    public static void identityToString(StrBuilder strBuilder, Object obj) {
        Validate.notNull(obj, "Cannot get the toString of a null object", new Object[0]);
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        strBuilder.ensureCapacity(hexString.length() + name.length() + strBuilder.length() + 1);
        strBuilder.append(name).append(AT_SIGN).append(hexString);
    }

    public static void identityToString(StringBuffer stringBuffer, Object obj) {
        Validate.notNull(obj, "Cannot get the toString of a null object", new Object[0]);
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        stringBuffer.ensureCapacity(hexString.length() + name.length() + stringBuffer.length() + 1);
        stringBuffer.append(name);
        stringBuffer.append(AT_SIGN);
        stringBuffer.append(hexString);
    }

    public static void identityToString(StringBuilder sb, Object obj) {
        Validate.notNull(obj, "Cannot get the toString of a null object", new Object[0]);
        String name = obj.getClass().getName();
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        sb.ensureCapacity(hexString.length() + name.length() + sb.length() + 1);
        sb.append(name);
        sb.append(AT_SIGN);
        sb.append(hexString);
    }
}
