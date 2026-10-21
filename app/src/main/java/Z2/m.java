package Z2;

import S2.E;
import S2.s;
import S2.u;
import a3.InterfaceC0385c;
import a3.InterfaceC0386d;
import a3.r;
import android.content.Context;
import b3.InterfaceC0650a;
import c3.InterfaceC0724a;
import com.google.android.datatransport.runtime.backends.BackendResponse$Status;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4493a;

    /* renamed from: b, reason: collision with root package name */
    public final T2.f f4494b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0386d f4495c;

    /* renamed from: d, reason: collision with root package name */
    public final q f4496d;

    /* renamed from: e, reason: collision with root package name */
    public final Executor f4497e;

    /* renamed from: f, reason: collision with root package name */
    public final b3.b f4498f;

    /* renamed from: g, reason: collision with root package name */
    public final InterfaceC0724a f4499g;

    /* renamed from: h, reason: collision with root package name */
    public final InterfaceC0724a f4500h;

    /* renamed from: i, reason: collision with root package name */
    public final InterfaceC0385c f4501i;

    public m(Context context, T2.f fVar, InterfaceC0386d interfaceC0386d, q qVar, Executor executor, b3.b bVar, InterfaceC0724a interfaceC0724a, InterfaceC0724a interfaceC0724a2, InterfaceC0385c interfaceC0385c) {
        this.f4493a = context;
        this.f4494b = fVar;
        this.f4495c = interfaceC0386d;
        this.f4496d = qVar;
        this.f4497e = executor;
        this.f4498f = bVar;
        this.f4499g = interfaceC0724a;
        this.f4500h = interfaceC0724a2;
        this.f4501i = interfaceC0385c;
    }

    public u createMetricsEvent(T2.o oVar) {
        InterfaceC0385c interfaceC0385c = this.f4501i;
        Objects.requireNonNull(interfaceC0385c);
        return ((Q2.d) oVar).decorate(u.builder().setEventMillis(this.f4499g.getTime()).setUptimeMillis(this.f4500h.getTime()).setTransportName("GDT_CLIENT_METRICS").setEncodedPayload(new s(P2.b.of("proto"), ((V2.b) ((r) this.f4498f).runCriticalSection(new A0.a(interfaceC0385c, 14))).toByteArray())).build());
    }

    public T2.i logAndUpdateState(final E e3, int i2) {
        T2.i send;
        T2.o oVar = ((T2.m) this.f4494b).get(e3.getBackendName());
        T2.i ok = T2.i.ok(0L);
        long j7 = 0;
        while (true) {
            final int i7 = 0;
            InterfaceC0650a interfaceC0650a = new InterfaceC0650a(this) { // from class: Z2.i

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ m f4480e;

                {
                    this.f4480e = this;
                }

                @Override // b3.InterfaceC0650a
                public final Object execute() {
                    switch (i7) {
                        case 0:
                            return Boolean.valueOf(((r) this.f4480e.f4495c).hasPendingEventsFor(e3));
                        default:
                            return ((r) this.f4480e.f4495c).loadBatch(e3);
                    }
                }
            };
            r rVar = (r) this.f4498f;
            if (!((Boolean) rVar.runCriticalSection(interfaceC0650a)).booleanValue()) {
                rVar.runCriticalSection(new l(this, j7, e3));
                return ok;
            }
            final int i8 = 1;
            Iterable iterable = (Iterable) rVar.runCriticalSection(new InterfaceC0650a(this) { // from class: Z2.i

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ m f4480e;

                {
                    this.f4480e = this;
                }

                @Override // b3.InterfaceC0650a
                public final Object execute() {
                    switch (i8) {
                        case 0:
                            return Boolean.valueOf(((r) this.f4480e.f4495c).hasPendingEventsFor(e3));
                        default:
                            return ((r) this.f4480e.f4495c).loadBatch(e3);
                    }
                }
            });
            if (!iterable.iterator().hasNext()) {
                return ok;
            }
            if (oVar == null) {
                W2.a.d("Uploader", "Unknown backend for %s, deleting event batch for it...", e3);
                send = T2.i.fatalError();
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((a3.m) it.next()).getEvent());
                }
                if (e3.shouldUploadClientHealthMetrics()) {
                    arrayList.add(createMetricsEvent(oVar));
                }
                send = ((Q2.d) oVar).send(T2.h.builder().setEvents(arrayList).setExtras(e3.getExtras()).build());
            }
            ok = send;
            if (ok.getStatus() == BackendResponse$Status.f9496e) {
                E e7 = e3;
                rVar.runCriticalSection(new k(this, iterable, e7, j7));
                ((d) this.f4496d).schedule(e7, i2 + 1, true);
                return ok;
            }
            E e8 = e3;
            rVar.runCriticalSection(new X4.a(2, this, iterable));
            if (ok.getStatus() == BackendResponse$Status.f9495b) {
                j7 = Math.max(j7, ok.getNextRequestWaitMillis());
                if (e8.shouldUploadClientHealthMetrics()) {
                    rVar.runCriticalSection(new A0.a(this, 13));
                }
            } else if (ok.getStatus() == BackendResponse$Status.f9498j) {
                HashMap hashMap = new HashMap();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    String transportName = ((a3.m) it2.next()).getEvent().getTransportName();
                    if (hashMap.containsKey(transportName)) {
                        hashMap.put(transportName, Integer.valueOf(((Integer) hashMap.get(transportName)).intValue() + 1));
                    } else {
                        hashMap.put(transportName, 1);
                    }
                }
                rVar.runCriticalSection(new X4.a(3, this, hashMap));
            }
            e3 = e8;
        }
    }

    public void upload(E e3, int i2, Runnable runnable) {
        this.f4497e.execute(new flix.com.vision.processors.english.i(this, e3, i2, runnable));
    }
}
