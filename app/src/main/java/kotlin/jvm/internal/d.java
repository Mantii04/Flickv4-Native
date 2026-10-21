package kotlin.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.text.StringsKt__StringsKt;

/* loaded from: classes2.dex */
public final class d {
    public d(g gVar) {
    }

    public final String getClassSimpleName(Class<?> jClass) {
        Map map;
        Map map2;
        j.checkNotNullParameter(jClass, "jClass");
        String str = null;
        if (jClass.isAnonymousClass()) {
            return null;
        }
        if (!jClass.isLocalClass()) {
            if (!jClass.isArray()) {
                map = e.f17452j;
                String str2 = (String) map.get(jClass.getName());
                return str2 == null ? jClass.getSimpleName() : str2;
            }
            Class<?> componentType = jClass.getComponentType();
            if (componentType.isPrimitive()) {
                map2 = e.f17452j;
                String str3 = (String) map2.get(componentType.getName());
                if (str3 != null) {
                    str = str3.concat("Array");
                }
            }
            return str == null ? "Array" : str;
        }
        String simpleName = jClass.getSimpleName();
        Method enclosingMethod = jClass.getEnclosingMethod();
        if (enclosingMethod != null) {
            j.checkNotNull(simpleName);
            String substringAfter$default = StringsKt__StringsKt.substringAfter$default(simpleName, enclosingMethod.getName() + '$', (String) null, 2, (Object) null);
            if (substringAfter$default != null) {
                return substringAfter$default;
            }
        }
        Constructor<?> enclosingConstructor = jClass.getEnclosingConstructor();
        if (enclosingConstructor == null) {
            j.checkNotNull(simpleName);
            return StringsKt__StringsKt.substringAfter$default(simpleName, '$', (String) null, 2, (Object) null);
        }
        j.checkNotNull(simpleName);
        return StringsKt__StringsKt.substringAfter$default(simpleName, enclosingConstructor.getName() + '$', (String) null, 2, (Object) null);
    }
}
