package pl.droidsonroids.gif;

import n6.g;

/* loaded from: classes2.dex */
public final class a extends g {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c f19520e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(c cVar, c cVar2) {
        super(cVar2);
        this.f19520e = cVar;
    }

    @Override // n6.g
    public void doWork() {
        c cVar = this.f19520e;
        if (cVar.f19530p.m()) {
            cVar.start();
        }
    }
}
