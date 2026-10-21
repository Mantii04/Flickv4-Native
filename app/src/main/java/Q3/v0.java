package Q3;

import com.google.common.collect.Range;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class v0 extends Q {

    /* renamed from: b, reason: collision with root package name */
    public final Collection f2916b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ com.google.common.collect.H f2917e;

    public v0(com.google.common.collect.H h7, Collection collection) {
        this.f2917e = h7;
        this.f2916b = collection;
    }

    @Override // Q3.Q
    public final Iterator a() {
        return this.f2916b.iterator();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        if (!(obj instanceof Range)) {
            return null;
        }
        Range range = (Range) obj;
        com.google.common.collect.H h7 = this.f2917e;
        w0 w0Var = (w0) h7.f13061a.get(range.f13094b);
        if (w0Var == null || !w0Var.getKey().equals(range)) {
            return null;
        }
        return w0Var.getValue();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f2917e.f13061a.size();
    }
}
