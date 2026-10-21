package androidx.startup;

import android.content.Context;
import android.os.Bundle;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import u1.InterfaceC1669a;
import w1.AbstractC1775a;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public static volatile a f8162d;

    /* renamed from: e, reason: collision with root package name */
    public static final Object f8163e = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Context f8166c;

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f8165b = new HashSet();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8164a = new HashMap();

    public a(Context context) {
        this.f8166c = context.getApplicationContext();
    }

    public static a getInstance(Context context) {
        if (f8162d == null) {
            synchronized (f8163e) {
                try {
                    if (f8162d == null) {
                        f8162d = new a(context);
                    }
                } finally {
                }
            }
        }
        return f8162d;
    }

    public final void a(Bundle bundle) {
        HashSet hashSet;
        String string = this.f8166c.getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    hashSet = this.f8165b;
                    if (!hasNext) {
                        break;
                    }
                    String next = it.next();
                    if (string.equals(bundle.getString(next, null))) {
                        Class<?> cls = Class.forName(next);
                        if (InterfaceC1669a.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    b((Class) it2.next(), hashSet2);
                }
            } catch (ClassNotFoundException e3) {
                throw new StartupException(e3);
            }
        }
    }

    public final Object b(Class cls, HashSet hashSet) {
        Object obj;
        if (AbstractC1775a.isEnabled()) {
            try {
                AbstractC1775a.beginSection(cls.getSimpleName());
            } catch (Throwable th) {
                AbstractC1775a.endSection();
                throw th;
            }
        }
        if (hashSet.contains(cls)) {
            throw new IllegalStateException("Cannot initialize " + cls.getName() + ". Cycle detected.");
        }
        HashMap hashMap = this.f8164a;
        if (hashMap.containsKey(cls)) {
            obj = hashMap.get(cls);
        } else {
            hashSet.add(cls);
            try {
                InterfaceC1669a interfaceC1669a = (InterfaceC1669a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                List<Class<? extends InterfaceC1669a>> dependencies = interfaceC1669a.dependencies();
                if (!dependencies.isEmpty()) {
                    for (Class<? extends InterfaceC1669a> cls2 : dependencies) {
                        if (!hashMap.containsKey(cls2)) {
                            b(cls2, hashSet);
                        }
                    }
                }
                obj = interfaceC1669a.create(this.f8166c);
                hashSet.remove(cls);
                hashMap.put(cls, obj);
            } catch (Throwable th2) {
                throw new StartupException(th2);
            }
        }
        AbstractC1775a.endSection();
        return obj;
    }

    public <T> T initializeComponent(Class<? extends InterfaceC1669a> cls) {
        T t6;
        synchronized (f8163e) {
            try {
                t6 = (T) this.f8164a.get(cls);
                if (t6 == null) {
                    t6 = (T) b(cls, new HashSet());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return t6;
    }

    public boolean isEagerlyInitialized(Class<? extends InterfaceC1669a> cls) {
        return this.f8165b.contains(cls);
    }
}
