package A5;

import java.lang.reflect.Method;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public static final h f110a = new h();

    /* renamed from: b, reason: collision with root package name */
    public static final g f111b = new g(null, null, null);

    /* renamed from: c, reason: collision with root package name */
    public static g f112c;

    public final String getModuleName(BaseContinuationImpl continuation) {
        j.checkNotNullParameter(continuation, "continuation");
        g gVar = f112c;
        g gVar2 = f111b;
        if (gVar == null) {
            try {
                g gVar3 = new g(Class.class.getDeclaredMethod("getModule", new Class[0]), continuation.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), continuation.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
                f112c = gVar3;
                gVar = gVar3;
            } catch (Exception unused) {
                f112c = gVar2;
                gVar = gVar2;
            }
        }
        if (gVar == gVar2) {
            return null;
        }
        Method method = gVar.f107a;
        Object invoke = method != null ? method.invoke(continuation.getClass(), new Object[0]) : null;
        if (invoke == null) {
            return null;
        }
        Method method2 = gVar.f108b;
        Object invoke2 = method2 != null ? method2.invoke(invoke, new Object[0]) : null;
        if (invoke2 == null) {
            return null;
        }
        Method method3 = gVar.f109c;
        Object invoke3 = method3 != null ? method3.invoke(invoke2, new Object[0]) : null;
        if (invoke3 instanceof String) {
            return (String) invoke3;
        }
        return null;
    }
}
