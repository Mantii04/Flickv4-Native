package T1;

import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class P {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3592a = false;

    /* renamed from: b, reason: collision with root package name */
    public final p.i f3593b = new p.i();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f3594c = new HashMap();

    public void recordRenderTime(String str, float f3) {
        if (this.f3592a) {
            HashMap hashMap = this.f3594c;
            f2.f fVar = (f2.f) hashMap.get(str);
            if (fVar == null) {
                fVar = new f2.f();
                hashMap.put(str, fVar);
            }
            fVar.add(f3);
            if (str.equals("__container")) {
                Iterator it = this.f3593b.iterator();
                if (it.hasNext()) {
                    throw b.c.g(it);
                }
            }
        }
    }
}
