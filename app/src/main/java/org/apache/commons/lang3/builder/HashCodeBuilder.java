package org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.Validate;

/* loaded from: classes2.dex */
public class HashCodeBuilder implements Builder<Integer> {
    private static final int DEFAULT_INITIAL_VALUE = 17;
    private static final int DEFAULT_MULTIPLIER_VALUE = 37;
    private static final ThreadLocal<Set<IDKey>> REGISTRY = new ThreadLocal<>();
    private final int iConstant;
    private int iTotal;

    public HashCodeBuilder() {
        this.iConstant = 37;
        this.iTotal = 17;
    }

    private void appendArray(Object obj) {
        if (obj instanceof long[]) {
            append((long[]) obj);
            return;
        }
        if (obj instanceof int[]) {
            append((int[]) obj);
            return;
        }
        if (obj instanceof short[]) {
            append((short[]) obj);
            return;
        }
        if (obj instanceof char[]) {
            append((char[]) obj);
            return;
        }
        if (obj instanceof byte[]) {
            append((byte[]) obj);
            return;
        }
        if (obj instanceof double[]) {
            append((double[]) obj);
            return;
        }
        if (obj instanceof float[]) {
            append((float[]) obj);
        } else if (obj instanceof boolean[]) {
            append((boolean[]) obj);
        } else {
            append((Object[]) obj);
        }
    }

    public static Set<IDKey> getRegistry() {
        return REGISTRY.get();
    }

    public static boolean isRegistered(Object obj) {
        Set<IDKey> registry = getRegistry();
        return registry != null && registry.contains(new IDKey(obj));
    }

    private static void reflectionAppend(Object obj, Class<?> cls, HashCodeBuilder hashCodeBuilder, boolean z6, String[] strArr) {
        if (isRegistered(obj)) {
            return;
        }
        try {
            register(obj);
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (Field field : declaredFields) {
                if (!ArrayUtils.contains(strArr, field.getName())) {
                    if (field.getName().contains("$")) {
                        continue;
                    } else {
                        if (!z6 && Modifier.isTransient(field.getModifiers())) {
                        }
                        if (!Modifier.isStatic(field.getModifiers()) && !field.isAnnotationPresent(HashCodeExclude.class)) {
                            try {
                                hashCodeBuilder.append(field.get(obj));
                            } catch (IllegalAccessException unused) {
                                throw new InternalError("Unexpected IllegalAccessException");
                            }
                        }
                    }
                }
            }
            unregister(obj);
        } catch (Throwable th) {
            unregister(obj);
            throw th;
        }
    }

    public static int reflectionHashCode(int i2, int i7, Object obj) {
        return reflectionHashCode(i2, i7, obj, false, null, new String[0]);
    }

    private static void register(Object obj) {
        Set<IDKey> registry = getRegistry();
        if (registry == null) {
            registry = new HashSet<>();
            REGISTRY.set(registry);
        }
        registry.add(new IDKey(obj));
    }

    private static void unregister(Object obj) {
        Set<IDKey> registry = getRegistry();
        if (registry != null) {
            registry.remove(new IDKey(obj));
            if (registry.isEmpty()) {
                REGISTRY.remove();
            }
        }
    }

    public HashCodeBuilder append(boolean z6) {
        this.iTotal = (this.iTotal * this.iConstant) + (!z6 ? 1 : 0);
        return this;
    }

    public HashCodeBuilder appendSuper(int i2) {
        this.iTotal = (this.iTotal * this.iConstant) + i2;
        return this;
    }

    public int hashCode() {
        return toHashCode();
    }

    public int toHashCode() {
        return this.iTotal;
    }

    public static int reflectionHashCode(int i2, int i7, Object obj, boolean z6) {
        return reflectionHashCode(i2, i7, obj, z6, null, new String[0]);
    }

    public HashCodeBuilder append(boolean[] zArr) {
        if (zArr == null) {
            this.iTotal *= this.iConstant;
            return this;
        }
        for (boolean z6 : zArr) {
            append(z6);
        }
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.commons.lang3.builder.Builder
    public Integer build() {
        return Integer.valueOf(toHashCode());
    }

    public static <T> int reflectionHashCode(int i2, int i7, T t6, boolean z6, Class<? super T> cls, String... strArr) {
        Validate.isTrue(t6 != null, "The object to build a hash code for must not be null", new Object[0]);
        HashCodeBuilder hashCodeBuilder = new HashCodeBuilder(i2, i7);
        Class<?> cls2 = t6.getClass();
        reflectionAppend(t6, cls2, hashCodeBuilder, z6, strArr);
        while (cls2.getSuperclass() != null && cls2 != cls) {
            cls2 = cls2.getSuperclass();
            reflectionAppend(t6, cls2, hashCodeBuilder, z6, strArr);
        }
        return hashCodeBuilder.toHashCode();
    }

    public HashCodeBuilder(int i2, int i7) {
        this.iTotal = 0;
        Validate.isTrue(i2 % 2 != 0, "HashCodeBuilder requires an odd initial value", new Object[0]);
        Validate.isTrue(i7 % 2 != 0, "HashCodeBuilder requires an odd multiplier", new Object[0]);
        this.iConstant = i7;
        this.iTotal = i2;
    }

    public HashCodeBuilder append(byte b7) {
        this.iTotal = (this.iTotal * this.iConstant) + b7;
        return this;
    }

    public HashCodeBuilder append(byte[] bArr) {
        if (bArr == null) {
            this.iTotal *= this.iConstant;
            return this;
        }
        for (byte b7 : bArr) {
            append(b7);
        }
        return this;
    }

    public HashCodeBuilder append(char c7) {
        this.iTotal = (this.iTotal * this.iConstant) + c7;
        return this;
    }

    public HashCodeBuilder append(char[] cArr) {
        if (cArr == null) {
            this.iTotal *= this.iConstant;
            return this;
        }
        for (char c7 : cArr) {
            append(c7);
        }
        return this;
    }

    public static int reflectionHashCode(Object obj, boolean z6) {
        return reflectionHashCode(17, 37, obj, z6, null, new String[0]);
    }

    public static int reflectionHashCode(Object obj, Collection<String> collection) {
        return reflectionHashCode(obj, ReflectionToStringBuilder.toNoNullStringArray(collection));
    }

    public static int reflectionHashCode(Object obj, String... strArr) {
        return reflectionHashCode(17, 37, obj, false, null, strArr);
    }

    public HashCodeBuilder append(double d7) {
        return append(Double.doubleToLongBits(d7));
    }

    public HashCodeBuilder append(double[] dArr) {
        if (dArr == null) {
            this.iTotal *= this.iConstant;
            return this;
        }
        for (double d7 : dArr) {
            append(d7);
        }
        return this;
    }

    public HashCodeBuilder append(float f3) {
        this.iTotal = Float.floatToIntBits(f3) + (this.iTotal * this.iConstant);
        return this;
    }

    public HashCodeBuilder append(float[] fArr) {
        if (fArr == null) {
            this.iTotal *= this.iConstant;
            return this;
        }
        for (float f3 : fArr) {
            append(f3);
        }
        return this;
    }

    public HashCodeBuilder append(int i2) {
        this.iTotal = (this.iTotal * this.iConstant) + i2;
        return this;
    }

    public HashCodeBuilder append(int[] iArr) {
        if (iArr == null) {
            this.iTotal *= this.iConstant;
            return this;
        }
        for (int i2 : iArr) {
            append(i2);
        }
        return this;
    }

    public HashCodeBuilder append(long j7) {
        this.iTotal = (this.iTotal * this.iConstant) + ((int) (j7 ^ (j7 >> 32)));
        return this;
    }

    public HashCodeBuilder append(long[] jArr) {
        if (jArr == null) {
            this.iTotal *= this.iConstant;
            return this;
        }
        for (long j7 : jArr) {
            append(j7);
        }
        return this;
    }

    public HashCodeBuilder append(Object obj) {
        if (obj == null) {
            this.iTotal *= this.iConstant;
            return this;
        }
        if (obj.getClass().isArray()) {
            appendArray(obj);
            return this;
        }
        this.iTotal = obj.hashCode() + (this.iTotal * this.iConstant);
        return this;
    }

    public HashCodeBuilder append(Object[] objArr) {
        if (objArr == null) {
            this.iTotal *= this.iConstant;
            return this;
        }
        for (Object obj : objArr) {
            append(obj);
        }
        return this;
    }

    public HashCodeBuilder append(short s6) {
        this.iTotal = (this.iTotal * this.iConstant) + s6;
        return this;
    }

    public HashCodeBuilder append(short[] sArr) {
        if (sArr == null) {
            this.iTotal *= this.iConstant;
            return this;
        }
        for (short s6 : sArr) {
            append(s6);
        }
        return this;
    }
}
