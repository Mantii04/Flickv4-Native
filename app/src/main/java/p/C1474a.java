package p;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* renamed from: p.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1474a extends AbstractSet {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f19372b;

    public C1474a(g gVar) {
        this.f19372b = gVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<Object, Object>> iterator() {
        return new d(this.f19372b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f19372b.size();
    }
}
