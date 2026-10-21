package r2;

import java.util.HashMap;
import java.util.List;

/* renamed from: r2.Y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1565Y {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f19760a = new HashMap();

    public void clear() {
        this.f19760a.clear();
    }

    public <Model> List<InterfaceC1562V> get(Class<Model> cls) {
        C1564X c1564x = (C1564X) this.f19760a.get(cls);
        if (c1564x == null) {
            return null;
        }
        return c1564x.f19759a;
    }

    public <Model> void put(Class<Model> cls, List<InterfaceC1562V> list) {
        if (((C1564X) this.f19760a.put(cls, new C1564X(list))) == null) {
            return;
        }
        throw new IllegalStateException("Already cached loaders for model: " + cls);
    }
}
