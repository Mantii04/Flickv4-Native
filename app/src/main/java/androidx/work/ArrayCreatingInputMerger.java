package androidx.work;

import B1.AbstractC0031k;
import B1.C0027g;
import B1.C0028h;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public final class ArrayCreatingInputMerger extends AbstractC0031k {
    @Override // B1.AbstractC0031k
    public C0028h merge(List<C0028h> inputs) {
        Object newArray;
        j.checkNotNullParameter(inputs, "inputs");
        C0027g c0027g = new C0027g();
        HashMap hashMap = new HashMap();
        Iterator<C0028h> it = inputs.iterator();
        while (it.hasNext()) {
            Map<String, Object> keyValueMap = it.next().getKeyValueMap();
            j.checkNotNullExpressionValue(keyValueMap, "input.keyValueMap");
            for (Map.Entry<String, Object> entry : keyValueMap.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                Class cls = value != null ? value.getClass() : String.class;
                Object obj = hashMap.get(key);
                j.checkNotNullExpressionValue(key, "key");
                if (obj != null) {
                    Class<?> cls2 = obj.getClass();
                    if (j.areEqual(cls2, cls)) {
                        j.checkNotNullExpressionValue(value, "value");
                        int length = Array.getLength(obj);
                        int length2 = Array.getLength(value);
                        Class<?> componentType = obj.getClass().getComponentType();
                        j.checkNotNull(componentType);
                        Object newArray2 = Array.newInstance(componentType, length + length2);
                        System.arraycopy(obj, 0, newArray2, 0, length);
                        System.arraycopy(value, 0, newArray2, length, length2);
                        j.checkNotNullExpressionValue(newArray2, "newArray");
                        value = newArray2;
                        j.checkNotNullExpressionValue(value, "if (existingValue == nul…      }\n                }");
                        hashMap.put(key, value);
                    } else {
                        if (!j.areEqual(cls2.getComponentType(), cls)) {
                            throw new IllegalArgumentException();
                        }
                        int length3 = Array.getLength(obj);
                        newArray = Array.newInstance(cls, length3 + 1);
                        System.arraycopy(obj, 0, newArray, 0, length3);
                        Array.set(newArray, length3, value);
                        j.checkNotNullExpressionValue(newArray, "newArray");
                        value = newArray;
                        j.checkNotNullExpressionValue(value, "if (existingValue == nul…      }\n                }");
                        hashMap.put(key, value);
                    }
                } else if (cls.isArray()) {
                    j.checkNotNullExpressionValue(value, "if (existingValue == nul…      }\n                }");
                    hashMap.put(key, value);
                } else {
                    newArray = Array.newInstance(cls, 1);
                    Array.set(newArray, 0, value);
                    j.checkNotNullExpressionValue(newArray, "newArray");
                    value = newArray;
                    j.checkNotNullExpressionValue(value, "if (existingValue == nul…      }\n                }");
                    hashMap.put(key, value);
                }
            }
        }
        c0027g.putAll(hashMap);
        C0028h build = c0027g.build();
        j.checkNotNullExpressionValue(build, "output.build()");
        return build;
    }
}
