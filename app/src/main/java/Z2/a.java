package Z2;

import c3.InterfaceC0724a;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class a extends h {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0724a f4466a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f4467b;

    public a(InterfaceC0724a interfaceC0724a, HashMap hashMap) {
        if (interfaceC0724a == null) {
            throw new NullPointerException("Null clock");
        }
        this.f4466a = interfaceC0724a;
        if (hashMap == null) {
            throw new NullPointerException("Null values");
        }
        this.f4467b = hashMap;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        a aVar = (a) ((h) obj);
        return this.f4466a.equals(aVar.f4466a) && this.f4467b.equals(aVar.f4467b);
    }

    public int hashCode() {
        return ((this.f4466a.hashCode() ^ 1000003) * 1000003) ^ this.f4467b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f4466a + ", values=" + this.f4467b + "}";
    }
}
