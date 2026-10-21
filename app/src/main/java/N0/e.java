package N0;

import java.util.Objects;

/* loaded from: classes.dex */
public final class e implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public final long f2155b;

    /* renamed from: e, reason: collision with root package name */
    public final long f2156e;

    /* renamed from: f, reason: collision with root package name */
    public final long f2157f;

    public e(long j7, long j8, long j9) {
        this.f2155b = j7;
        this.f2156e = j8;
        this.f2157f = j9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f2155b == eVar.f2155b && this.f2156e == eVar.f2156e && this.f2157f == eVar.f2157f;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.f2155b), Long.valueOf(this.f2156e), Long.valueOf(this.f2157f));
    }

    @Override // java.lang.Comparable
    public int compareTo(e eVar) {
        return Long.compare(this.f2155b, eVar.f2155b);
    }
}
