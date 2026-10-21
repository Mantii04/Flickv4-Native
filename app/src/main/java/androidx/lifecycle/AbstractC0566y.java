package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.lang3.ClassUtils;

/* renamed from: androidx.lifecycle.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0566y {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f7055a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f7056b = new HashMap();

    public static InterfaceC0551i a(Constructor constructor, Object obj) {
        try {
            Object newInstance = constructor.newInstance(obj);
            kotlin.jvm.internal.j.checkNotNullExpressionValue(newInstance, "{\n            constructo…tance(`object`)\n        }");
            return (InterfaceC0551i) newInstance;
        } catch (IllegalAccessException e3) {
            throw new RuntimeException(e3);
        } catch (InstantiationException e7) {
            throw new RuntimeException(e7);
        } catch (InvocationTargetException e8) {
            throw new RuntimeException(e8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int b(Class cls) {
        Constructor constructor;
        boolean z6;
        int i2 = 1;
        HashMap hashMap = f7055a;
        Integer num = (Integer) hashMap.get(cls);
        if (num != null) {
            return num.intValue();
        }
        if (cls.getCanonicalName() != null) {
            ArrayList arrayList = null;
            try {
                Package r42 = cls.getPackage();
                String name = cls.getCanonicalName();
                String fullPackage = r42 != null ? r42.getName() : "";
                kotlin.jvm.internal.j.checkNotNullExpressionValue(fullPackage, "fullPackage");
                if (fullPackage.length() != 0) {
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(name, "name");
                    name = name.substring(fullPackage.length() + 1);
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(name, "this as java.lang.String).substring(startIndex)");
                }
                kotlin.jvm.internal.j.checkNotNullExpressionValue(name, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
                String adapterName = getAdapterName(name);
                if (fullPackage.length() != 0) {
                    adapterName = fullPackage + ClassUtils.PACKAGE_SEPARATOR_CHAR + adapterName;
                }
                Class<?> cls2 = Class.forName(adapterName);
                kotlin.jvm.internal.j.checkNotNull(cls2, "null cannot be cast to non-null type java.lang.Class<out androidx.lifecycle.GeneratedAdapter>");
                constructor = cls2.getDeclaredConstructor(cls);
                if (!constructor.isAccessible()) {
                    constructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                constructor = null;
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException(e3);
            }
            HashMap hashMap2 = f7056b;
            if (constructor != null) {
                hashMap2.put(cls, v5.o.listOf(constructor));
            } else {
                C0546d c0546d = C0546d.f7030c;
                HashMap hashMap3 = c0546d.f7032b;
                Boolean bool = (Boolean) hashMap3.get(cls);
                if (bool != null) {
                    z6 = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i7 = 0;
                        while (true) {
                            if (i7 >= length) {
                                hashMap3.put(cls, Boolean.FALSE);
                                z6 = false;
                                break;
                            }
                            if (((G) declaredMethods[i7].getAnnotation(G.class)) != null) {
                                c0546d.a(cls, declaredMethods);
                                z6 = true;
                                break;
                            }
                            i7++;
                        }
                    } catch (NoClassDefFoundError e7) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e7);
                    }
                }
                if (!z6) {
                    Class superclass = cls.getSuperclass();
                    if (superclass != null && InterfaceC0560s.class.isAssignableFrom(superclass)) {
                        kotlin.jvm.internal.j.checkNotNullExpressionValue(superclass, "superclass");
                        if (b(superclass) != 1) {
                            Object obj = hashMap2.get(superclass);
                            kotlin.jvm.internal.j.checkNotNull(obj);
                            arrayList = new ArrayList((Collection) obj);
                        }
                    }
                    Class<?>[] interfaces = cls.getInterfaces();
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(interfaces, "klass.interfaces");
                    int length2 = interfaces.length;
                    int i8 = 0;
                    while (true) {
                        if (i8 < length2) {
                            Class<?> intrface = interfaces[i8];
                            if (intrface != null && InterfaceC0560s.class.isAssignableFrom(intrface)) {
                                kotlin.jvm.internal.j.checkNotNullExpressionValue(intrface, "intrface");
                                if (b(intrface) == 1) {
                                    break;
                                }
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                Object obj2 = hashMap2.get(intrface);
                                kotlin.jvm.internal.j.checkNotNull(obj2);
                                arrayList.addAll((Collection) obj2);
                            }
                            i8++;
                        } else if (arrayList != null) {
                            hashMap2.put(cls, arrayList);
                        }
                    }
                }
            }
            i2 = 2;
        }
        hashMap.put(cls, Integer.valueOf(i2));
        return i2;
    }

    public static final String getAdapterName(String className) {
        kotlin.jvm.internal.j.checkNotNullParameter(className, "className");
        return A.i.o(new StringBuilder(), P5.p.replace$default(className, ".", "_", false, 4, (Object) null), "_LifecycleAdapter");
    }

    public static final r lifecycleEventObserver(Object object) {
        kotlin.jvm.internal.j.checkNotNullParameter(object, "object");
        boolean z6 = object instanceof r;
        boolean z7 = object instanceof InterfaceC0548f;
        if (z6 && z7) {
            return new DefaultLifecycleObserverAdapter((InterfaceC0548f) object, (r) object);
        }
        if (z7) {
            return new DefaultLifecycleObserverAdapter((InterfaceC0548f) object, null);
        }
        if (z6) {
            return (r) object;
        }
        Class<?> cls = object.getClass();
        if (b(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(object);
        }
        Object obj = f7056b.get(cls);
        kotlin.jvm.internal.j.checkNotNull(obj);
        List list = (List) obj;
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(a((Constructor) list.get(0), object));
        }
        int size = list.size();
        InterfaceC0551i[] interfaceC0551iArr = new InterfaceC0551i[size];
        for (int i2 = 0; i2 < size; i2++) {
            interfaceC0551iArr[i2] = a((Constructor) list.get(i2), object);
        }
        return new CompositeGeneratedAdaptersObserver(interfaceC0551iArr);
    }
}
