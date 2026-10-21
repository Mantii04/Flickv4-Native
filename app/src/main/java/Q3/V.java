package Q3;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class V extends AbstractMap {

    /* renamed from: b, reason: collision with root package name */
    public transient Set f2872b;

    /* renamed from: e, reason: collision with root package name */
    public transient U f2873e;

    public abstract Set createEntrySet();

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<Object, Object>> entrySet() {
        Set<Map.Entry<Object, Object>> set = this.f2872b;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<Object, Object>> createEntrySet = createEntrySet();
        this.f2872b = createEntrySet;
        return createEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<Object> values() {
        U u6 = this.f2873e;
        if (u6 != null) {
            return u6;
        }
        U u7 = new U(this);
        this.f2873e = u7;
        return u7;
    }
}
