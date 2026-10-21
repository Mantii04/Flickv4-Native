package C5;

import java.lang.reflect.Method;
import kotlin.jvm.internal.j;
import v5.n;

/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f804a;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        j.checkNotNull(methods);
        int length = methods.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                method = null;
                break;
            }
            method = methods[i2];
            if (j.areEqual(method.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                j.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
                if (j.areEqual(n.singleOrNull(parameterTypes), Throwable.class)) {
                    break;
                }
            }
            i2++;
        }
        f804a = method;
        int length2 = methods.length;
        for (int i7 = 0; i7 < length2 && !j.areEqual(methods[i7].getName(), "getSuppressed"); i7++) {
        }
    }
}
