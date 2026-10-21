package n;

import java.util.Iterator;
import java.util.Map;

/* renamed from: n.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1349d extends AbstractC1351f implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public C1348c f18759b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18760e = true;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C1352g f18761f;

    public C1349d(C1352g c1352g) {
        this.f18761f = c1352g;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f18760e) {
            return this.f18761f.f18764b != null;
        }
        C1348c c1348c = this.f18759b;
        return (c1348c == null || c1348c.f18757f == null) ? false : true;
    }

    @Override // n.AbstractC1351f
    public final void supportRemove(C1348c c1348c) {
        C1348c c1348c2 = this.f18759b;
        if (c1348c == c1348c2) {
            C1348c c1348c3 = c1348c2.f18758j;
            this.f18759b = c1348c3;
            this.f18760e = c1348c3 == null;
        }
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, Object> next() {
        if (this.f18760e) {
            this.f18760e = false;
            this.f18759b = this.f18761f.f18764b;
        } else {
            C1348c c1348c = this.f18759b;
            this.f18759b = c1348c != null ? c1348c.f18757f : null;
        }
        return this.f18759b;
    }
}
