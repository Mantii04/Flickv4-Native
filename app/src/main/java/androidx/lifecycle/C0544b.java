package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: androidx.lifecycle.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0544b {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7026a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f7027b;

    public C0544b(HashMap hashMap) {
        this.f7027b = hashMap;
        for (Map.Entry entry : hashMap.entrySet()) {
            Lifecycle$Event lifecycle$Event = (Lifecycle$Event) entry.getValue();
            List list = (List) this.f7026a.get(lifecycle$Event);
            if (list == null) {
                list = new ArrayList();
                this.f7026a.put(lifecycle$Event, list);
            }
            list.add((C0545c) entry.getKey());
        }
    }

    public static void a(List list, InterfaceC0561t interfaceC0561t, Lifecycle$Event lifecycle$Event, Object obj) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                C0545c c0545c = (C0545c) list.get(size);
                c0545c.getClass();
                try {
                    int i2 = c0545c.f7028a;
                    Method method = c0545c.f7029b;
                    if (i2 == 0) {
                        method.invoke(obj, new Object[0]);
                    } else if (i2 == 1) {
                        method.invoke(obj, interfaceC0561t);
                    } else if (i2 == 2) {
                        method.invoke(obj, interfaceC0561t, lifecycle$Event);
                    }
                } catch (IllegalAccessException e3) {
                    throw new RuntimeException(e3);
                } catch (InvocationTargetException e7) {
                    throw new RuntimeException("Failed to call observer method", e7.getCause());
                }
            }
        }
    }
}
