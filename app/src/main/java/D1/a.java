package D1;

import B1.t;
import K1.E;

/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ E f852b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ b f853e;

    public a(b bVar, E e3) {
        this.f853e = bVar;
        this.f852b = e3;
    }

    @Override // java.lang.Runnable
    public void run() {
        t tVar = t.get();
        String str = b.f854d;
        StringBuilder sb = new StringBuilder("Scheduling work ");
        E e3 = this.f852b;
        sb.append(e3.f1594a);
        tVar.debug(str, sb.toString());
        this.f853e.f855a.schedule(e3);
    }
}
