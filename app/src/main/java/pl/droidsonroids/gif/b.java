package pl.droidsonroids.gif;

import n6.g;

/* loaded from: classes2.dex */
public final class b extends g {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f19521e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ c f19522f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar, c cVar2, int i2) {
        super(cVar2);
        this.f19522f = cVar;
        this.f19521e = i2;
    }

    @Override // n6.g
    public void doWork() {
        c cVar = this.f19522f;
        cVar.f19530p.q(this.f19521e, cVar.f19529n);
        this.f19019b.f19536v.sendEmptyMessageAtTime(-1, 0L);
    }
}
