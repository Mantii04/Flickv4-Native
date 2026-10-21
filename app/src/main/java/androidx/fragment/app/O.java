package androidx.fragment.app;

/* loaded from: classes.dex */
public abstract class O {

    /* renamed from: a, reason: collision with root package name */
    public static final p.q f6148a = new p.q();

    public static Class a(ClassLoader classLoader, String str) {
        p.q qVar = f6148a;
        p.q qVar2 = (p.q) qVar.get(classLoader);
        if (qVar2 == null) {
            qVar2 = new p.q();
            qVar.put(classLoader, qVar2);
        }
        Class cls = (Class) qVar2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        qVar2.put(str, cls2);
        return cls2;
    }

    public static Class<? extends C> loadFragmentClass(ClassLoader classLoader, String str) {
        try {
            return a(classLoader, str);
        } catch (ClassCastException e3) {
            throw new Fragment$InstantiationException(A.i.l("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e3);
        } catch (ClassNotFoundException e7) {
            throw new Fragment$InstantiationException(A.i.l("Unable to instantiate fragment ", str, ": make sure class name exists"), e7);
        }
    }

    public abstract C instantiate(ClassLoader classLoader, String str);
}
