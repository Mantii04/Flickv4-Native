package org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.tuple.Pair;

/* loaded from: classes2.dex */
public class EqualsBuilder implements Builder<Boolean> {
    private static final ThreadLocal<Set<Pair<IDKey, IDKey>>> REGISTRY = new ThreadLocal<>();
    private List<Class<?>> bypassReflectionClasses;
    private boolean isEquals = true;
    private boolean testTransients = false;
    private boolean testRecursive = false;
    private Class<?> reflectUpToClass = null;
    private String[] excludeFields = null;

    public EqualsBuilder() {
        ArrayList arrayList = new ArrayList();
        this.bypassReflectionClasses = arrayList;
        arrayList.add(String.class);
    }

    private void appendArray(Object obj, Object obj2) {
        if (obj.getClass() != obj2.getClass()) {
            setEquals(false);
            return;
        }
        if (obj instanceof long[]) {
            append((long[]) obj, (long[]) obj2);
            return;
        }
        if (obj instanceof int[]) {
            append((int[]) obj, (int[]) obj2);
            return;
        }
        if (obj instanceof short[]) {
            append((short[]) obj, (short[]) obj2);
            return;
        }
        if (obj instanceof char[]) {
            append((char[]) obj, (char[]) obj2);
            return;
        }
        if (obj instanceof byte[]) {
            append((byte[]) obj, (byte[]) obj2);
            return;
        }
        if (obj instanceof double[]) {
            append((double[]) obj, (double[]) obj2);
            return;
        }
        if (obj instanceof float[]) {
            append((float[]) obj, (float[]) obj2);
        } else if (obj instanceof boolean[]) {
            append((boolean[]) obj, (boolean[]) obj2);
        } else {
            append((Object[]) obj, (Object[]) obj2);
        }
    }

    public static Pair<IDKey, IDKey> getRegisterPair(Object obj, Object obj2) {
        return Pair.of(new IDKey(obj), new IDKey(obj2));
    }

    public static Set<Pair<IDKey, IDKey>> getRegistry() {
        return REGISTRY.get();
    }

    public static boolean isRegistered(Object obj, Object obj2) {
        Set<Pair<IDKey, IDKey>> registry = getRegistry();
        Pair<IDKey, IDKey> registerPair = getRegisterPair(obj, obj2);
        Pair of = Pair.of(registerPair.getRight(), registerPair.getLeft());
        if (registry != null) {
            return registry.contains(registerPair) || registry.contains(of);
        }
        return false;
    }

    public static boolean reflectionEquals(Object obj, Object obj2, Collection<String> collection) {
        return reflectionEquals(obj, obj2, ReflectionToStringBuilder.toNoNullStringArray(collection));
    }

    private static void register(Object obj, Object obj2) {
        Set<Pair<IDKey, IDKey>> registry = getRegistry();
        if (registry == null) {
            registry = new HashSet<>();
            REGISTRY.set(registry);
        }
        registry.add(getRegisterPair(obj, obj2));
    }

    private static void unregister(Object obj, Object obj2) {
        Set<Pair<IDKey, IDKey>> registry = getRegistry();
        if (registry != null) {
            registry.remove(getRegisterPair(obj, obj2));
            if (registry.isEmpty()) {
                REGISTRY.remove();
            }
        }
    }

    public EqualsBuilder append(Object obj, Object obj2) {
        if (!this.isEquals || obj == obj2) {
            return this;
        }
        if (obj == null || obj2 == null) {
            setEquals(false);
            return this;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            appendArray(obj, obj2);
            return this;
        }
        if (!this.testRecursive || ClassUtils.isPrimitiveOrWrapper(cls)) {
            this.isEquals = obj.equals(obj2);
            return this;
        }
        reflectionAppend(obj, obj2);
        return this;
    }

    public EqualsBuilder appendSuper(boolean z6) {
        if (!this.isEquals) {
            return this;
        }
        this.isEquals = z6;
        return this;
    }

    public boolean isEquals() {
        return this.isEquals;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if (r2.isInstance(r6) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
    
        r3 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0032, code lost:
    
        r3 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x002e, code lost:
    
        if (r1.isInstance(r7) == false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.lang3.builder.EqualsBuilder reflectionAppend(java.lang.Object r6, java.lang.Object r7) {
        /*
            r5 = this;
            boolean r0 = r5.isEquals
            if (r0 != 0) goto L6
            goto L6b
        L6:
            if (r6 != r7) goto L9
            goto L6b
        L9:
            r0 = 0
            if (r6 == 0) goto L72
            if (r7 != 0) goto Lf
            goto L72
        Lf:
            java.lang.Class r1 = r6.getClass()
            java.lang.Class r2 = r7.getClass()
            boolean r3 = r1.isInstance(r7)
            if (r3 == 0) goto L24
            boolean r3 = r2.isInstance(r6)
            if (r3 != 0) goto L30
            goto L32
        L24:
            boolean r3 = r2.isInstance(r6)
            if (r3 == 0) goto L6f
            boolean r3 = r1.isInstance(r7)
            if (r3 != 0) goto L32
        L30:
            r3 = r1
            goto L33
        L32:
            r3 = r2
        L33:
            boolean r4 = r3.isArray()     // Catch: java.lang.IllegalArgumentException -> L6c
            if (r4 == 0) goto L3d
            r5.append(r6, r7)     // Catch: java.lang.IllegalArgumentException -> L6c
            return r5
        L3d:
            java.util.List<java.lang.Class<?>> r4 = r5.bypassReflectionClasses     // Catch: java.lang.IllegalArgumentException -> L6c
            if (r4 == 0) goto L56
            boolean r1 = r4.contains(r1)     // Catch: java.lang.IllegalArgumentException -> L6c
            if (r1 != 0) goto L4f
            java.util.List<java.lang.Class<?>> r1 = r5.bypassReflectionClasses     // Catch: java.lang.IllegalArgumentException -> L6c
            boolean r1 = r1.contains(r2)     // Catch: java.lang.IllegalArgumentException -> L6c
            if (r1 == 0) goto L56
        L4f:
            boolean r6 = r6.equals(r7)     // Catch: java.lang.IllegalArgumentException -> L6c
            r5.isEquals = r6     // Catch: java.lang.IllegalArgumentException -> L6c
            return r5
        L56:
            r5.reflectionAppend(r6, r7, r3)     // Catch: java.lang.IllegalArgumentException -> L6c
        L59:
            java.lang.Class r1 = r3.getSuperclass()     // Catch: java.lang.IllegalArgumentException -> L6c
            if (r1 == 0) goto L6b
            java.lang.Class<?> r1 = r5.reflectUpToClass     // Catch: java.lang.IllegalArgumentException -> L6c
            if (r3 == r1) goto L6b
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.IllegalArgumentException -> L6c
            r5.reflectionAppend(r6, r7, r3)     // Catch: java.lang.IllegalArgumentException -> L6c
            goto L59
        L6b:
            return r5
        L6c:
            r5.isEquals = r0
            return r5
        L6f:
            r5.isEquals = r0
            return r5
        L72:
            r5.isEquals = r0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.builder.EqualsBuilder.reflectionAppend(java.lang.Object, java.lang.Object):org.apache.commons.lang3.builder.EqualsBuilder");
    }

    public void reset() {
        this.isEquals = true;
    }

    public EqualsBuilder setBypassReflectionClasses(List<Class<?>> list) {
        this.bypassReflectionClasses = list;
        return this;
    }

    public void setEquals(boolean z6) {
        this.isEquals = z6;
    }

    public EqualsBuilder setExcludeFields(String... strArr) {
        this.excludeFields = strArr;
        return this;
    }

    public EqualsBuilder setReflectUpToClass(Class<?> cls) {
        this.reflectUpToClass = cls;
        return this;
    }

    public EqualsBuilder setTestRecursive(boolean z6) {
        this.testRecursive = z6;
        return this;
    }

    public EqualsBuilder setTestTransients(boolean z6) {
        this.testTransients = z6;
        return this;
    }

    public static boolean reflectionEquals(Object obj, Object obj2, String... strArr) {
        return reflectionEquals(obj, obj2, false, null, strArr);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.commons.lang3.builder.Builder
    public Boolean build() {
        return Boolean.valueOf(isEquals());
    }

    public static boolean reflectionEquals(Object obj, Object obj2, boolean z6) {
        return reflectionEquals(obj, obj2, z6, null, new String[0]);
    }

    public static boolean reflectionEquals(Object obj, Object obj2, boolean z6, Class<?> cls, String... strArr) {
        return reflectionEquals(obj, obj2, z6, cls, false, strArr);
    }

    public static boolean reflectionEquals(Object obj, Object obj2, boolean z6, Class<?> cls, boolean z7, String... strArr) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return new EqualsBuilder().setExcludeFields(strArr).setReflectUpToClass(cls).setTestTransients(z6).setTestRecursive(z7).reflectionAppend(obj, obj2).isEquals();
    }

    public EqualsBuilder append(long j7, long j8) {
        if (!this.isEquals) {
            return this;
        }
        this.isEquals = j7 == j8;
        return this;
    }

    public EqualsBuilder append(int i2, int i7) {
        if (!this.isEquals) {
            return this;
        }
        this.isEquals = i2 == i7;
        return this;
    }

    public EqualsBuilder append(short s6, short s7) {
        if (!this.isEquals) {
            return this;
        }
        this.isEquals = s6 == s7;
        return this;
    }

    public EqualsBuilder append(char c7, char c8) {
        if (!this.isEquals) {
            return this;
        }
        this.isEquals = c7 == c8;
        return this;
    }

    public EqualsBuilder append(byte b7, byte b8) {
        if (!this.isEquals) {
            return this;
        }
        this.isEquals = b7 == b8;
        return this;
    }

    public EqualsBuilder append(double d7, double d8) {
        return !this.isEquals ? this : append(Double.doubleToLongBits(d7), Double.doubleToLongBits(d8));
    }

    private void reflectionAppend(Object obj, Object obj2, Class<?> cls) {
        if (isRegistered(obj, obj2)) {
            return;
        }
        try {
            register(obj, obj2);
            Field[] declaredFields = cls.getDeclaredFields();
            AccessibleObject.setAccessible(declaredFields, true);
            for (int i2 = 0; i2 < declaredFields.length && this.isEquals; i2++) {
                Field field = declaredFields[i2];
                if (!ArrayUtils.contains(this.excludeFields, field.getName())) {
                    if (field.getName().contains("$")) {
                        continue;
                    } else {
                        if (!this.testTransients && Modifier.isTransient(field.getModifiers())) {
                        }
                        if (!Modifier.isStatic(field.getModifiers()) && !field.isAnnotationPresent(EqualsExclude.class)) {
                            try {
                                append(field.get(obj), field.get(obj2));
                            } catch (IllegalAccessException unused) {
                                throw new InternalError("Unexpected IllegalAccessException");
                            }
                        }
                    }
                }
            }
            unregister(obj, obj2);
        } catch (Throwable th) {
            unregister(obj, obj2);
            throw th;
        }
    }

    public EqualsBuilder append(float f3, float f7) {
        return !this.isEquals ? this : append(Float.floatToIntBits(f3), Float.floatToIntBits(f7));
    }

    public EqualsBuilder append(boolean z6, boolean z7) {
        if (!this.isEquals) {
            return this;
        }
        this.isEquals = z6 == z7;
        return this;
    }

    public EqualsBuilder append(Object[] objArr, Object[] objArr2) {
        if (this.isEquals && objArr != objArr2) {
            if (objArr != null && objArr2 != null) {
                if (objArr.length != objArr2.length) {
                    setEquals(false);
                    return this;
                }
                for (int i2 = 0; i2 < objArr.length && this.isEquals; i2++) {
                    append(objArr[i2], objArr2[i2]);
                }
            } else {
                setEquals(false);
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(long[] jArr, long[] jArr2) {
        if (this.isEquals && jArr != jArr2) {
            if (jArr != null && jArr2 != null) {
                if (jArr.length != jArr2.length) {
                    setEquals(false);
                    return this;
                }
                for (int i2 = 0; i2 < jArr.length && this.isEquals; i2++) {
                    append(jArr[i2], jArr2[i2]);
                }
            } else {
                setEquals(false);
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(int[] iArr, int[] iArr2) {
        if (this.isEquals && iArr != iArr2) {
            if (iArr != null && iArr2 != null) {
                if (iArr.length != iArr2.length) {
                    setEquals(false);
                    return this;
                }
                for (int i2 = 0; i2 < iArr.length && this.isEquals; i2++) {
                    append(iArr[i2], iArr2[i2]);
                }
            } else {
                setEquals(false);
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(short[] sArr, short[] sArr2) {
        if (this.isEquals && sArr != sArr2) {
            if (sArr != null && sArr2 != null) {
                if (sArr.length != sArr2.length) {
                    setEquals(false);
                    return this;
                }
                for (int i2 = 0; i2 < sArr.length && this.isEquals; i2++) {
                    append(sArr[i2], sArr2[i2]);
                }
            } else {
                setEquals(false);
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(char[] cArr, char[] cArr2) {
        if (this.isEquals && cArr != cArr2) {
            if (cArr != null && cArr2 != null) {
                if (cArr.length != cArr2.length) {
                    setEquals(false);
                    return this;
                }
                for (int i2 = 0; i2 < cArr.length && this.isEquals; i2++) {
                    append(cArr[i2], cArr2[i2]);
                }
            } else {
                setEquals(false);
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(byte[] bArr, byte[] bArr2) {
        if (this.isEquals && bArr != bArr2) {
            if (bArr != null && bArr2 != null) {
                if (bArr.length != bArr2.length) {
                    setEquals(false);
                    return this;
                }
                for (int i2 = 0; i2 < bArr.length && this.isEquals; i2++) {
                    append(bArr[i2], bArr2[i2]);
                }
            } else {
                setEquals(false);
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(double[] dArr, double[] dArr2) {
        if (this.isEquals && dArr != dArr2) {
            if (dArr != null && dArr2 != null) {
                if (dArr.length != dArr2.length) {
                    setEquals(false);
                    return this;
                }
                for (int i2 = 0; i2 < dArr.length && this.isEquals; i2++) {
                    append(dArr[i2], dArr2[i2]);
                }
            } else {
                setEquals(false);
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(float[] fArr, float[] fArr2) {
        if (this.isEquals && fArr != fArr2) {
            if (fArr != null && fArr2 != null) {
                if (fArr.length != fArr2.length) {
                    setEquals(false);
                    return this;
                }
                for (int i2 = 0; i2 < fArr.length && this.isEquals; i2++) {
                    append(fArr[i2], fArr2[i2]);
                }
            } else {
                setEquals(false);
                return this;
            }
        }
        return this;
    }

    public EqualsBuilder append(boolean[] zArr, boolean[] zArr2) {
        if (this.isEquals && zArr != zArr2) {
            if (zArr != null && zArr2 != null) {
                if (zArr.length != zArr2.length) {
                    setEquals(false);
                    return this;
                }
                for (int i2 = 0; i2 < zArr.length && this.isEquals; i2++) {
                    append(zArr[i2], zArr2[i2]);
                }
            } else {
                setEquals(false);
                return this;
            }
        }
        return this;
    }
}
