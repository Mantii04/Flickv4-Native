package n;

import java.util.Map;

/* renamed from: n.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1348c implements Map.Entry {

    /* renamed from: b, reason: collision with root package name */
    public final Object f18755b;

    /* renamed from: e, reason: collision with root package name */
    public final Object f18756e;

    /* renamed from: f, reason: collision with root package name */
    public C1348c f18757f;

    /* renamed from: j, reason: collision with root package name */
    public C1348c f18758j;

    public C1348c(Object obj, Object obj2) {
        this.f18755b = obj;
        this.f18756e = obj2;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1348c)) {
            return false;
        }
        C1348c c1348c = (C1348c) obj;
        return this.f18755b.equals(c1348c.f18755b) && this.f18756e.equals(c1348c.f18756e);
    }

    @Override // java.util.Map.Entry
    public Object getKey() {
        return this.f18755b;
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        return this.f18756e;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return this.f18755b.hashCode() ^ this.f18756e.hashCode();
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public String toString() {
        return this.f18755b + "=" + this.f18756e;
    }
}
