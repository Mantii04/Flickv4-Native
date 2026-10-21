package androidx.work;

import B1.C0028h;
import B1.F;
import B1.InterfaceC0030j;
import B1.P;
import B1.Q;
import N1.c;
import java.util.Collection;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class WorkerParameters {

    /* renamed from: a, reason: collision with root package name */
    public final UUID f8277a;

    /* renamed from: b, reason: collision with root package name */
    public final C0028h f8278b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f8279c;

    /* renamed from: d, reason: collision with root package name */
    public final P f8280d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0030j f8281e;

    public WorkerParameters(UUID uuid, C0028h c0028h, Collection<String> collection, Q q6, int i2, int i7, Executor executor, c cVar, P p6, F f3, InterfaceC0030j interfaceC0030j) {
        this.f8277a = uuid;
        this.f8278b = c0028h;
        new HashSet(collection);
        this.f8279c = executor;
        this.f8280d = p6;
        this.f8281e = interfaceC0030j;
    }

    public Executor getBackgroundExecutor() {
        return this.f8279c;
    }

    public InterfaceC0030j getForegroundUpdater() {
        return this.f8281e;
    }

    public UUID getId() {
        return this.f8277a;
    }

    public C0028h getInputData() {
        return this.f8278b;
    }

    public P getWorkerFactory() {
        return this.f8280d;
    }
}
