package n;

import java.util.HashMap;
import java.util.Map;

/* renamed from: n.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1346a extends C1352g {

    /* renamed from: m, reason: collision with root package name */
    public final HashMap f18753m = new HashMap();

    public Map.Entry<Object, Object> ceil(Object obj) {
        if (contains(obj)) {
            return ((C1348c) this.f18753m.get(obj)).f18758j;
        }
        return null;
    }

    public boolean contains(Object obj) {
        return this.f18753m.containsKey(obj);
    }

    @Override // n.C1352g
    public C1348c get(Object obj) {
        return (C1348c) this.f18753m.get(obj);
    }

    @Override // n.C1352g
    public Object putIfAbsent(Object obj, Object obj2) {
        C1348c c1348c = get(obj);
        if (c1348c != null) {
            return c1348c.f18756e;
        }
        HashMap hashMap = this.f18753m;
        C1348c c1348c2 = new C1348c(obj, obj2);
        this.f18767j++;
        C1348c c1348c3 = this.f18765e;
        if (c1348c3 == null) {
            this.f18764b = c1348c2;
            this.f18765e = c1348c2;
        } else {
            c1348c3.f18757f = c1348c2;
            c1348c2.f18758j = c1348c3;
            this.f18765e = c1348c2;
        }
        hashMap.put(obj, c1348c2);
        return null;
    }

    @Override // n.C1352g
    public Object remove(Object obj) {
        Object remove = super.remove(obj);
        this.f18753m.remove(obj);
        return remove;
    }
}
