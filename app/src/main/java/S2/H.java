package S2;

import android.content.Context;
import c3.InterfaceC0724a;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class H {

    /* renamed from: e, reason: collision with root package name */
    public static volatile J f3301e;

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0724a f3302a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0724a f3303b;

    /* renamed from: c, reason: collision with root package name */
    public final Y2.d f3304c;

    /* renamed from: d, reason: collision with root package name */
    public final Z2.m f3305d;

    public H(InterfaceC0724a interfaceC0724a, InterfaceC0724a interfaceC0724a2, Y2.d dVar, Z2.m mVar, Z2.o oVar) {
        this.f3302a = interfaceC0724a;
        this.f3303b = interfaceC0724a2;
        this.f3304c = dVar;
        this.f3305d = mVar;
        oVar.ensureContextsScheduled();
    }

    public static H getInstance() {
        J j7 = f3301e;
        if (j7 != null) {
            return (H) ((p) j7).f3371t.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void initialize(Context context) {
        if (f3301e == null) {
            synchronized (H.class) {
                try {
                    if (f3301e == null) {
                        f3301e = ((o) ((o) p.builder()).setApplicationContext(context)).build();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public Z2.m getUploader() {
        return this.f3305d;
    }

    public P2.f newFactory(q qVar) {
        Set unmodifiableSet = qVar instanceof r ? Collections.unmodifiableSet(((Q2.a) ((r) qVar)).getSupportedEncodings()) : Collections.singleton(P2.b.of("proto"));
        Q2.a aVar = (Q2.a) qVar;
        return new F(unmodifiableSet, E.builder().setBackendName(aVar.getName()).setExtras(aVar.getExtras()).build(), this);
    }

    public void send(C c7, P2.g gVar) {
        E transportContext = c7.getTransportContext();
        P2.c cVar = ((l) c7).f3351c;
        ((Y2.b) this.f3304c).schedule(transportContext.withPriority(cVar.getPriority()), u.builder().setEventMillis(this.f3302a.getTime()).setUptimeMillis(this.f3303b.getTime()).setTransportName(c7.getTransportName()).setEncodedPayload(new s(c7.getEncoding(), c7.getPayload())).setCode(cVar.getCode()).build(), gVar);
    }
}
