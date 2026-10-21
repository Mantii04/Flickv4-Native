package B1;

import java.util.HashMap;
import java.util.Map;

/* renamed from: B1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0027g {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f179a = new HashMap();

    public C0028h build() {
        C0028h c0028h = new C0028h(this.f179a);
        C0028h.toByteArrayInternal(c0028h);
        return c0028h;
    }

    public C0027g put(String str, Object obj) {
        HashMap hashMap = this.f179a;
        if (obj == null) {
            hashMap.put(str, null);
            return this;
        }
        Class<?> cls = obj.getClass();
        if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
            hashMap.put(str, obj);
            return this;
        }
        if (cls == boolean[].class) {
            hashMap.put(str, C0028h.convertPrimitiveBooleanArray((boolean[]) obj));
            return this;
        }
        if (cls == byte[].class) {
            hashMap.put(str, C0028h.convertPrimitiveByteArray((byte[]) obj));
            return this;
        }
        if (cls == int[].class) {
            hashMap.put(str, C0028h.convertPrimitiveIntArray((int[]) obj));
            return this;
        }
        if (cls == long[].class) {
            hashMap.put(str, C0028h.convertPrimitiveLongArray((long[]) obj));
            return this;
        }
        if (cls == float[].class) {
            hashMap.put(str, C0028h.convertPrimitiveFloatArray((float[]) obj));
            return this;
        }
        if (cls == double[].class) {
            hashMap.put(str, C0028h.convertPrimitiveDoubleArray((double[]) obj));
            return this;
        }
        throw new IllegalArgumentException("Key " + str + "has invalid type " + cls);
    }

    public C0027g putAll(C0028h c0028h) {
        putAll(c0028h.f182a);
        return this;
    }

    public C0027g putString(String str, String str2) {
        this.f179a.put(str, str2);
        return this;
    }

    public C0027g putAll(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
        return this;
    }
}
