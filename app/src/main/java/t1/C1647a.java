package t1;

import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.g;

/* renamed from: t1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1647a {
    public C1647a(g gVar) {
    }

    public static final Lock access$getThreadLock(C1647a c1647a, String str) {
        Map map;
        Map map2;
        Lock lock;
        c1647a.getClass();
        map = C1648b.f20033f;
        synchronized (map) {
            try {
                map2 = C1648b.f20033f;
                Object obj = map2.get(str);
                if (obj == null) {
                    obj = new ReentrantLock();
                    map2.put(str, obj);
                }
                lock = (Lock) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lock;
    }
}
