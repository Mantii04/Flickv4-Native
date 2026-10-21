package z2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: z2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1990g {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f21414a = new ArrayList();

    public synchronized <Z, R> InterfaceC1988e get(Class<Z> cls, Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return C1991h.get();
        }
        Iterator it = this.f21414a.iterator();
        while (it.hasNext()) {
            C1989f c1989f = (C1989f) it.next();
            if (c1989f.handles(cls, cls2)) {
                return c1989f.f21413c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    public synchronized <Z, R> List<Class<R>> getTranscodeClasses(Class<Z> cls, Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator it = this.f21414a.iterator();
        while (it.hasNext()) {
            C1989f c1989f = (C1989f) it.next();
            if (c1989f.handles(cls, cls2) && !arrayList.contains(c1989f.f21412b)) {
                arrayList.add(c1989f.f21412b);
            }
        }
        return arrayList;
    }

    public synchronized <Z, R> void register(Class<Z> cls, Class<R> cls2, InterfaceC1988e interfaceC1988e) {
        this.f21414a.add(new C1989f(cls, cls2, interfaceC1988e));
    }
}
