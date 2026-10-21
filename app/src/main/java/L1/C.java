package L1;

import B1.C0029i;
import B1.InterfaceC0030j;
import android.content.Context;
import androidx.work.impl.WorkDatabase;
import java.util.UUID;

/* loaded from: classes.dex */
public final class C implements InterfaceC0030j {

    /* renamed from: a, reason: collision with root package name */
    public final N1.c f1849a;

    /* renamed from: b, reason: collision with root package name */
    public final J1.a f1850b;

    /* renamed from: c, reason: collision with root package name */
    public final K1.F f1851c;

    static {
        B1.t.tagWithPrefix("WMFgUpdater");
    }

    public C(WorkDatabase workDatabase, J1.a aVar, N1.c cVar) {
        this.f1850b = aVar;
        this.f1849a = cVar;
        this.f1851c = workDatabase.workSpecDao();
    }

    public V3.F setForegroundAsync(Context context, UUID uuid, C0029i c0029i) {
        M1.g create = M1.g.create();
        B b7 = new B(this, create, uuid, c0029i, context);
        N1.e eVar = (N1.e) this.f1849a;
        eVar.getClass();
        N1.b.a(eVar, b7);
        return create;
    }
}
