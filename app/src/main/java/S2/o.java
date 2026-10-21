package S2;

import a3.C0389g;
import a3.C0390h;
import a3.C0392j;
import android.content.Context;
import c3.C0726c;
import c3.C0728e;
import t5.InterfaceC1657a;

/* loaded from: classes.dex */
public final class o implements I {

    /* renamed from: a, reason: collision with root package name */
    public Context f3360a;

    public J build() {
        U2.d.checkBuilderRequirement(this.f3360a, Context.class);
        Context context = this.f3360a;
        p pVar = new p();
        pVar.f3361b = U2.a.provider(w.create());
        U2.b create = U2.c.create(context);
        pVar.f3362e = create;
        pVar.f3363f = U2.a.provider(T2.n.create(pVar.f3362e, T2.l.create(create, C0726c.create(), C0728e.create())));
        pVar.f3364j = a3.w.create(pVar.f3362e, C0389g.create(), C0392j.create());
        pVar.f3365m = U2.a.provider(C0390h.create(pVar.f3362e));
        pVar.f3366n = U2.a.provider(a3.s.create(C0726c.create(), C0728e.create(), a3.l.create(), pVar.f3364j, pVar.f3365m));
        Y2.f create2 = Y2.f.create(pVar.f3362e, pVar.f3366n, Y2.e.create(C0726c.create()), C0728e.create());
        pVar.f3367p = create2;
        InterfaceC1657a interfaceC1657a = pVar.f3361b;
        InterfaceC1657a interfaceC1657a2 = pVar.f3363f;
        InterfaceC1657a interfaceC1657a3 = pVar.f3366n;
        pVar.f3368q = Y2.c.create(interfaceC1657a, interfaceC1657a2, create2, interfaceC1657a3, interfaceC1657a3);
        U2.b bVar = pVar.f3362e;
        InterfaceC1657a interfaceC1657a4 = pVar.f3363f;
        InterfaceC1657a interfaceC1657a5 = pVar.f3366n;
        pVar.f3369r = Z2.n.create(bVar, interfaceC1657a4, interfaceC1657a5, pVar.f3367p, pVar.f3361b, interfaceC1657a5, C0726c.create(), C0728e.create(), pVar.f3366n);
        InterfaceC1657a interfaceC1657a6 = pVar.f3361b;
        InterfaceC1657a interfaceC1657a7 = pVar.f3366n;
        pVar.f3370s = Z2.p.create(interfaceC1657a6, interfaceC1657a7, pVar.f3367p, interfaceC1657a7);
        pVar.f3371t = U2.a.provider(K.create(C0726c.create(), C0728e.create(), pVar.f3368q, pVar.f3369r, pVar.f3370s));
        return pVar;
    }

    public o setApplicationContext(Context context) {
        this.f3360a = (Context) U2.d.checkNotNull(context);
        return this;
    }
}
