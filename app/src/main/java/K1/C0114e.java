package K1;

/* renamed from: K1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0114e {

    /* renamed from: a, reason: collision with root package name */
    public final String f1635a;

    /* renamed from: b, reason: collision with root package name */
    public final Long f1636b;

    public C0114e(String key, Long l7) {
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
        this.f1635a = key;
        this.f1636b = l7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0114e)) {
            return false;
        }
        C0114e c0114e = (C0114e) obj;
        return kotlin.jvm.internal.j.areEqual(this.f1635a, c0114e.f1635a) && kotlin.jvm.internal.j.areEqual(this.f1636b, c0114e.f1636b);
    }

    public final String getKey() {
        return this.f1635a;
    }

    public final Long getValue() {
        return this.f1636b;
    }

    public int hashCode() {
        int hashCode = this.f1635a.hashCode() * 31;
        Long l7 = this.f1636b;
        return hashCode + (l7 == null ? 0 : l7.hashCode());
    }

    public String toString() {
        return "Preference(key=" + this.f1635a + ", value=" + this.f1636b + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0114e(String key, boolean z6) {
        this(key, Long.valueOf(z6 ? 1L : 0L));
        kotlin.jvm.internal.j.checkNotNullParameter(key, "key");
    }
}
