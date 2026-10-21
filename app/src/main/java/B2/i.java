package B2;

import java.util.ArrayList;
import l2.s;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f214a = new ArrayList();

    public synchronized <Z> void append(Class<Z> cls, s sVar) {
        this.f214a.add(new h(cls, sVar));
    }

    public synchronized <Z> s get(Class<Z> cls) {
        int size = this.f214a.size();
        for (int i2 = 0; i2 < size; i2++) {
            h hVar = (h) this.f214a.get(i2);
            if (hVar.f212a.isAssignableFrom(cls)) {
                return hVar.f213b;
            }
        }
        return null;
    }
}
