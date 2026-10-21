package Q3;

import java.util.Map;

/* loaded from: classes2.dex */
public abstract class S extends q0 {

    /* renamed from: b, reason: collision with root package name */
    public final Map f2868b;

    public S(Map map) {
        this.f2868b = (Map) P3.v.checkNotNull(map);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f2868b.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f2868b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f2868b.size();
    }
}
