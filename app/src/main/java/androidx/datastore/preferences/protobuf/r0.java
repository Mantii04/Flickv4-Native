package androidx.datastore.preferences.protobuf;

import java.util.Map;

/* loaded from: classes.dex */
public final class r0 implements Map.Entry, Comparable {

    /* renamed from: b, reason: collision with root package name */
    public final Comparable f5903b;

    /* renamed from: e, reason: collision with root package name */
    public Object f5904e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ u0 f5905f;

    public r0(u0 u0Var, Comparable comparable, Object obj) {
        this.f5905f = u0Var;
        this.f5903b = comparable;
        this.f5904e = obj;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.f5903b;
                if (comparable == null ? key == null : comparable.equals(key)) {
                    Object obj2 = this.f5904e;
                    Object value = entry.getValue();
                    if (obj2 == null ? value == null : obj2.equals(value)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        return this.f5904e;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        Comparable comparable = this.f5903b;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f5904e;
        return (obj != null ? obj.hashCode() : 0) ^ hashCode;
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        this.f5905f.c();
        Object obj2 = this.f5904e;
        this.f5904e = obj;
        return obj2;
    }

    public String toString() {
        return this.f5903b + "=" + this.f5904e;
    }

    @Override // java.lang.Comparable
    public int compareTo(r0 r0Var) {
        return getKey().compareTo(r0Var.getKey());
    }

    @Override // java.util.Map.Entry
    public Comparable<Object> getKey() {
        return this.f5903b;
    }
}
