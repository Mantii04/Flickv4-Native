package T1;

import g2.C0949c;

/* loaded from: classes.dex */
public final class v implements F {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Y1.e f3644a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3645b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0949c f3646c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ G f3647d;

    public v(G g7, Y1.e eVar, Object obj, C0949c c0949c) {
        this.f3647d = g7;
        this.f3644a = eVar;
        this.f3645b = obj;
        this.f3646c = c0949c;
    }

    @Override // T1.F
    public void run(C0330i c0330i) {
        this.f3647d.addValueCallback(this.f3644a, this.f3645b, this.f3646c);
    }
}
