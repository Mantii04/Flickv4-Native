package androidx.lifecycle;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* renamed from: androidx.lifecycle.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0546d {

    /* renamed from: c, reason: collision with root package name */
    public static final C0546d f7030c = new C0546d();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7031a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f7032b = new HashMap();

    public static void b(HashMap hashMap, C0545c c0545c, Lifecycle$Event lifecycle$Event, Class cls) {
        Lifecycle$Event lifecycle$Event2 = (Lifecycle$Event) hashMap.get(c0545c);
        if (lifecycle$Event2 == null || lifecycle$Event == lifecycle$Event2) {
            if (lifecycle$Event2 == null) {
                hashMap.put(c0545c, lifecycle$Event);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + c0545c.f7029b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + lifecycle$Event2 + ", new value " + lifecycle$Event);
    }

    public final C0544b a(Class cls, Method[] methodArr) {
        int i2;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = this.f7031a;
        if (superclass != null) {
            C0544b c0544b = (C0544b) hashMap2.get(superclass);
            if (c0544b == null) {
                c0544b = a(superclass, null);
            }
            hashMap.putAll(c0544b.f7027b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            C0544b c0544b2 = (C0544b) hashMap2.get(cls2);
            if (c0544b2 == null) {
                c0544b2 = a(cls2, null);
            }
            for (Map.Entry entry : c0544b2.f7027b.entrySet()) {
                b(hashMap, (C0545c) entry.getKey(), (Lifecycle$Event) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e3) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e3);
            }
        }
        boolean z6 = false;
        for (Method method : methodArr) {
            G g7 = (G) method.getAnnotation(G.class);
            if (g7 != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i2 = 0;
                } else {
                    if (!InterfaceC0561t.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i2 = 1;
                }
                Lifecycle$Event value = g7.value();
                if (parameterTypes.length > 1) {
                    if (!Lifecycle$Event.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != Lifecycle$Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i2 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                b(hashMap, new C0545c(method, i2), value, cls);
                z6 = true;
            }
        }
        C0544b c0544b3 = new C0544b(hashMap);
        hashMap2.put(cls, c0544b3);
        this.f7032b.put(cls, Boolean.valueOf(z6));
        return c0544b3;
    }
}
