package n2;

import r2.C1561U;

/* loaded from: classes.dex */
public final class S implements com.bumptech.glide.load.data.d {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1561U f18929b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ T f18930e;

    public S(T t6, C1561U c1561u) {
        this.f18930e = t6;
        this.f18929b = c1561u;
    }

    @Override // com.bumptech.glide.load.data.d
    public void onDataReady(Object obj) {
        T t6 = this.f18930e;
        C1561U c1561u = this.f18929b;
        C1561U c1561u2 = t6.f18936n;
        if (c1561u2 == null || c1561u2 != c1561u) {
            return;
        }
        T t7 = this.f18930e;
        C1561U c1561u3 = this.f18929b;
        u uVar = t7.f18931b.f18977p;
        if (obj != null && uVar.isDataCacheable(c1561u3.f19758c.getDataSource())) {
            t7.f18935m = obj;
            t7.f18932e.reschedule();
        } else {
            com.bumptech.glide.load.engine.a aVar = t7.f18932e;
            l2.m mVar = c1561u3.f19756a;
            com.bumptech.glide.load.data.e eVar = c1561u3.f19758c;
            aVar.onDataFetcherReady(mVar, obj, eVar, eVar.getDataSource(), t7.f18937p);
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public void onLoadFailed(Exception exc) {
        T t6 = this.f18930e;
        C1561U c1561u = this.f18929b;
        C1561U c1561u2 = t6.f18936n;
        if (c1561u2 == null || c1561u2 != c1561u) {
            return;
        }
        T t7 = this.f18930e;
        C1561U c1561u3 = this.f18929b;
        com.bumptech.glide.load.engine.a aVar = t7.f18932e;
        C1402g c1402g = t7.f18937p;
        com.bumptech.glide.load.data.e eVar = c1561u3.f19758c;
        aVar.onDataFetcherFailed(c1402g, exc, eVar, eVar.getDataSource());
    }
}
