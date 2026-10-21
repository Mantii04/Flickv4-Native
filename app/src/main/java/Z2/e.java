package Z2;

import c3.InterfaceC0724a;
import com.google.android.datatransport.Priority;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public InterfaceC0724a f4477a;

    /* renamed from: b, reason: collision with root package name */
    public HashMap f4478b = new HashMap();

    public e addConfig(Priority priority, g gVar) {
        this.f4478b.put(priority, gVar);
        return this;
    }

    public h build() {
        if (this.f4477a == null) {
            throw new NullPointerException("missing required property: clock");
        }
        if (this.f4478b.keySet().size() < Priority.values().length) {
            throw new IllegalStateException("Not all priorities have been configured");
        }
        HashMap hashMap = this.f4478b;
        this.f4478b = new HashMap();
        return new a(this.f4477a, hashMap);
    }

    public e setClock(InterfaceC0724a interfaceC0724a) {
        this.f4477a = interfaceC0724a;
        return this;
    }
}
