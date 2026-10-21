package b4;

import B4.RunnableC0061y;
import android.app.Notification;
import android.content.Context;
import android.os.Build;
import c4.C0732b;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* renamed from: b4.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0660j {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8497a;

    /* renamed from: b, reason: collision with root package name */
    public final File f8498b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8499c;

    /* renamed from: d, reason: collision with root package name */
    public final ExecutorService f8500d;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f8501e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f8502f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f8503g = new ArrayList();

    public C0660j(Context context, String str, ExecutorService executorService) {
        this.f8497a = context.getApplicationContext();
        this.f8498b = context.getDir("dex", 0);
        this.f8499c = str;
        this.f8500d = executorService;
    }

    public static Class a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Param type cannot be null");
        }
        switch (str) {
            case "String":
            case "string":
            case "deviceid":
                return String.class;
            case "Integer":
                return Integer.class;
            case "int":
            case "integer":
                return Integer.TYPE;
            case "boolean":
                return Boolean.TYPE;
            case "Notification":
                return Notification.class;
            case "context":
                return Context.class;
            case "jsonobject":
                return C0732b.class;
            default:
                throw new IllegalArgumentException("Unsupported param type: ".concat(str));
        }
    }

    public final Object b(C0654d c0654d, C0656f c0656f) {
        String str = c0656f.f8491b;
        String str2 = c0656f.f8490a;
        if (str == null) {
            String lowerCase = str2.toLowerCase();
            lowerCase.getClass();
            if (lowerCase.equals("context")) {
                return new C0657g(this.f8497a, c0654d.f8479e);
            }
            if (lowerCase.equals("deviceid")) {
                return this.f8499c;
            }
            return null;
        }
        if (str.equals("null")) {
            return null;
        }
        String lowerCase2 = str2.toLowerCase();
        lowerCase2.getClass();
        switch (lowerCase2) {
            case "int":
            case "integer":
                return Integer.valueOf(Integer.parseInt(str));
            case "boolean":
                return Boolean.valueOf(Boolean.parseBoolean(str));
            case "jsonobject":
                return new C0732b(str);
            default:
                return str;
        }
    }

    public final Object c(C0654d c0654d, Class cls, Object obj, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        Object obj2 = null;
        while (it.hasNext()) {
            C0655e c0655e = (C0655e) it.next();
            Class<?>[] clsArr = new Class[c0655e.f8489b.size()];
            List list = c0655e.f8489b;
            Object[] objArr = new Object[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                C0656f c0656f = (C0656f) list.get(i2);
                clsArr[i2] = a(c0656f.f8490a);
                objArr[i2] = b(c0654d, c0656f);
            }
            StringBuilder sb = new StringBuilder("Invoking ");
            String str = c0655e.f8488a;
            sb.append(str);
            sb.append(" on ");
            sb.append(cls.getName());
            AbstractC0664n.a(sb.toString());
            obj2 = obj != null ? cls.getMethod(str, clsArr).invoke(obj, objArr) : cls.getDeclaredMethod(str, clsArr).invoke(null, objArr);
        }
        return obj2;
    }

    public final Object d(C0654d c0654d, Class cls, List list, C0655e c0655e) {
        Class<?>[] clsArr = new Class[list.size()];
        Object[] objArr = new Object[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            C0656f c0656f = (C0656f) list.get(i2);
            clsArr[i2] = a(c0656f.f8490a);
            objArr[i2] = b(c0654d, c0656f);
        }
        return c0655e != null ? cls.getDeclaredMethod(c0655e.f8488a, clsArr).invoke(null, objArr) : cls.getConstructor(clsArr).newInstance(objArr);
    }

    public final void e(C0654d c0654d) {
        int i2 = Build.VERSION.SDK_INT;
        int i7 = c0654d.f8481g;
        String str = c0654d.f8475a;
        if (i2 < i7) {
            AbstractC0664n.a(str + " - SDK Version too low " + i2 + ", needed " + c0654d.f8481g);
            return;
        }
        File file = new File(this.f8498b, A.i.o(A.i.s(str, "-"), c0654d.f8476b, ".jar"));
        if (!file.exists()) {
            AbstractC0664n.a("JAR not found for stop: " + file.getName() + ", skipping");
            return;
        }
        HashMap hashMap = this.f8502f;
        DexClassLoader dexClassLoader = (DexClassLoader) hashMap.get(str);
        if (dexClassLoader == null) {
            AbstractC0664n.a("No active loader for " + str + ", skipping stop");
            return;
        }
        Class<?> loadClass = dexClassLoader.loadClass(c0654d.f8478d);
        String str2 = c0654d.f8480f;
        boolean equals = "instance".equals(str2);
        ArrayList arrayList = c0654d.f8485k;
        if (equals || "builder".equals(str2)) {
            HashMap hashMap2 = this.f8501e;
            Object obj = hashMap2.get(str);
            if (obj != null) {
                c(c0654d, loadClass, obj, arrayList);
                hashMap2.remove(str);
            }
        } else {
            c(c0654d, loadClass, null, arrayList);
        }
        hashMap.remove(str);
    }

    public final void f(C0654d c0654d) {
        ArrayList arrayList;
        int i2 = Build.VERSION.SDK_INT;
        int i7 = c0654d.f8481g;
        String str = c0654d.f8475a;
        if (i2 < i7) {
            AbstractC0664n.a(str + " - SDK Version too low " + i2 + ", needed " + c0654d.f8481g);
            return;
        }
        File file = new File(this.f8498b, A.i.o(A.i.s(str, "-"), c0654d.f8476b, ".jar"));
        if (!file.exists()) {
            throw new IllegalStateException("JAR not found: " + file.getName());
        }
        String absolutePath = file.getAbsolutePath();
        Context context = this.f8497a;
        Object obj = null;
        DexClassLoader dexClassLoader = new DexClassLoader(absolutePath, context.getCodeCacheDir().getAbsolutePath(), null, context.getClassLoader());
        this.f8502f.put(str, dexClassLoader);
        Class<?> loadClass = dexClassLoader.loadClass(c0654d.f8478d);
        String str2 = c0654d.f8480f;
        boolean equals = "instance".equals(str2);
        HashMap hashMap = this.f8501e;
        if (!equals) {
            if ("builder".equals(str2)) {
                String str3 = c0654d.f8487m;
                if (str3 != null && (arrayList = c0654d.f8486l) != null) {
                    Class<?> loadClass2 = dexClassLoader.loadClass(str3);
                    obj = c(c0654d, loadClass2, d(c0654d, loadClass2, new ArrayList(), null), arrayList);
                }
            }
            c(c0654d, loadClass, obj, c0654d.f8484j);
        }
        C0655e c0655e = c0654d.f8483i;
        obj = c0655e != null ? d(c0654d, loadClass, c0655e.f8489b, c0655e) : d(c0654d, loadClass, c0654d.f8482h, null);
        hashMap.put(str, obj);
        c(c0654d, loadClass, obj, c0654d.f8484j);
    }

    public void a(List list) {
        synchronized (this.f8503g) {
            try {
                Iterator it = this.f8503g.iterator();
                while (it.hasNext()) {
                    ((Future) it.next()).cancel(true);
                }
                this.f8503g.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(list.size());
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            this.f8500d.submit(new RunnableC0061y(this, (C0654d) it2.next(), countDownLatch, 8));
        }
        if (countDownLatch.await(30L, TimeUnit.SECONDS)) {
            return;
        }
        AbstractC0664n.a("stopAll timed out â€” some modules may not have stopped cleanly");
    }

    public void b(List list) {
        synchronized (this.f8503g) {
            this.f8503g.clear();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Future<?> submit = this.f8500d.submit(new A4.n(26, this, (C0654d) it.next()));
            synchronized (this.f8503g) {
                this.f8503g.add(submit);
            }
        }
    }
}
