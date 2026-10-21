package Q3;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class C extends t0 {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ P3.p f2854e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(Iterator it, P3.p pVar) {
        super(it);
        this.f2854e = pVar;
    }

    @Override // Q3.t0
    public final Object a(Object obj) {
        return this.f2854e.apply(obj);
    }
}
