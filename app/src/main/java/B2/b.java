package B2;

import java.util.ArrayList;
import java.util.Iterator;
import l2.InterfaceC1220a;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f200a = new ArrayList();

    public synchronized <T> void append(Class<T> cls, InterfaceC1220a interfaceC1220a) {
        this.f200a.add(new a(cls, interfaceC1220a));
    }

    public synchronized <T> InterfaceC1220a getEncoder(Class<T> cls) {
        Iterator it = this.f200a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.f198a.isAssignableFrom(cls)) {
                return aVar.f199b;
            }
        }
        return null;
    }
}
