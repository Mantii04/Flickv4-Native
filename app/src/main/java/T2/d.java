package T2;

import android.content.Context;
import c3.InterfaceC0724a;

/* loaded from: classes.dex */
public final class d extends j {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3659a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0724a f3660b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0724a f3661c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3662d;

    public d(Context context, InterfaceC0724a interfaceC0724a, InterfaceC0724a interfaceC0724a2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f3659a = context;
        if (interfaceC0724a == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f3660b = interfaceC0724a;
        if (interfaceC0724a2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f3661c = interfaceC0724a2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f3662d = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (this.f3659a.equals(jVar.getApplicationContext()) && this.f3660b.equals(jVar.getWallClock()) && this.f3661c.equals(jVar.getMonotonicClock()) && this.f3662d.equals(jVar.getBackendName())) {
                return true;
            }
        }
        return false;
    }

    @Override // T2.j
    public Context getApplicationContext() {
        return this.f3659a;
    }

    @Override // T2.j
    public String getBackendName() {
        return this.f3662d;
    }

    @Override // T2.j
    public InterfaceC0724a getMonotonicClock() {
        return this.f3661c;
    }

    @Override // T2.j
    public InterfaceC0724a getWallClock() {
        return this.f3660b;
    }

    public int hashCode() {
        return ((((((this.f3659a.hashCode() ^ 1000003) * 1000003) ^ this.f3660b.hashCode()) * 1000003) ^ this.f3661c.hashCode()) * 1000003) ^ this.f3662d.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f3659a);
        sb.append(", wallClock=");
        sb.append(this.f3660b);
        sb.append(", monotonicClock=");
        sb.append(this.f3661c);
        sb.append(", backendName=");
        return A.i.o(sb, this.f3662d, "}");
    }
}
