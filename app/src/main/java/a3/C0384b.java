package a3;

import S2.E;

/* renamed from: a3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0384b extends m {

    /* renamed from: a, reason: collision with root package name */
    public final long f4725a;

    /* renamed from: b, reason: collision with root package name */
    public final E f4726b;

    /* renamed from: c, reason: collision with root package name */
    public final S2.u f4727c;

    public C0384b(long j7, E e3, S2.u uVar) {
        this.f4725a = j7;
        if (e3 == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.f4726b = e3;
        if (uVar == null) {
            throw new NullPointerException("Null event");
        }
        this.f4727c = uVar;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (this.f4725a == mVar.getId() && this.f4726b.equals(mVar.getTransportContext()) && this.f4727c.equals(mVar.getEvent())) {
                return true;
            }
        }
        return false;
    }

    @Override // a3.m
    public S2.u getEvent() {
        return this.f4727c;
    }

    @Override // a3.m
    public long getId() {
        return this.f4725a;
    }

    @Override // a3.m
    public E getTransportContext() {
        return this.f4726b;
    }

    public int hashCode() {
        long j7 = this.f4725a;
        return ((((((int) (j7 ^ (j7 >>> 32))) ^ 1000003) * 1000003) ^ this.f4726b.hashCode()) * 1000003) ^ this.f4727c.hashCode();
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f4725a + ", transportContext=" + this.f4726b + ", event=" + this.f4727c + "}";
    }
}
