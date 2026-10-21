package f1;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class H {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f14143a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public boolean f14144b = false;

    public H addRoute(C0915v c0915v) {
        if (c0915v == null) {
            throw new IllegalArgumentException("route must not be null");
        }
        ArrayList arrayList = this.f14143a;
        if (arrayList.contains(c0915v)) {
            throw new IllegalArgumentException("route descriptor already added");
        }
        arrayList.add(c0915v);
        return this;
    }

    public H addRoutes(Collection<C0915v> collection) {
        if (collection == null) {
            throw new IllegalArgumentException("routes must not be null");
        }
        if (!collection.isEmpty()) {
            Iterator<C0915v> it = collection.iterator();
            while (it.hasNext()) {
                addRoute(it.next());
            }
        }
        return this;
    }

    public I build() {
        return new I(this.f14143a, this.f14144b);
    }

    public H setSupportsDynamicGroupRoute(boolean z6) {
        this.f14144b = z6;
        return this;
    }
}
