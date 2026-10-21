package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class s0 implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public int f5909b = -1;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5910e;

    /* renamed from: f, reason: collision with root package name */
    public Iterator f5911f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ u0 f5912j;

    public s0(u0 u0Var) {
        this.f5912j = u0Var;
    }

    public final Iterator a() {
        if (this.f5911f == null) {
            this.f5911f = this.f5912j.f5918f.entrySet().iterator();
        }
        return this.f5911f;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i2 = this.f5909b + 1;
        u0 u0Var = this.f5912j;
        return i2 < u0Var.f5917e.size() || (!u0Var.f5918f.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.f5910e) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f5910e = false;
        int i2 = u0.f5915p;
        u0 u0Var = this.f5912j;
        u0Var.c();
        if (this.f5909b >= u0Var.f5917e.size()) {
            a().remove();
            return;
        }
        int i7 = this.f5909b;
        this.f5909b = i7 - 1;
        u0Var.e(i7);
    }

    @Override // java.util.Iterator
    public Map.Entry<Comparable<Object>, Object> next() {
        this.f5910e = true;
        int i2 = this.f5909b + 1;
        this.f5909b = i2;
        u0 u0Var = this.f5912j;
        return i2 < u0Var.f5917e.size() ? (Map.Entry) u0Var.f5917e.get(this.f5909b) : (Map.Entry) a().next();
    }
}
