package Q3;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMultimap;
import java.util.Map;
import java.util.Objects;

/* renamed from: Q3.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0252w extends x0 {

    /* renamed from: b, reason: collision with root package name */
    public final x0 f2918b;

    /* renamed from: e, reason: collision with root package name */
    public Object f2919e = null;

    /* renamed from: f, reason: collision with root package name */
    public x0 f2920f = D.f2855j;

    public C0252w(ImmutableMultimap immutableMultimap) {
        this.f2918b = immutableMultimap.f13072m.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f2920f.hasNext() || this.f2918b.hasNext();
    }

    @Override // java.util.Iterator
    public Map.Entry<Object, Object> next() {
        if (!this.f2920f.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f2918b.next();
            this.f2919e = entry.getKey();
            this.f2920f = ((ImmutableCollection) entry.getValue()).iterator();
        }
        Object obj = this.f2919e;
        Objects.requireNonNull(obj);
        return com.google.common.collect.C.immutableEntry(obj, this.f2920f.next());
    }
}
