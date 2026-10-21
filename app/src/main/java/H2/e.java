package H2;

import android.util.Log;

/* loaded from: classes.dex */
public final class e implements L.e {

    /* renamed from: a, reason: collision with root package name */
    public final d f1194a;

    /* renamed from: b, reason: collision with root package name */
    public final g f1195b;

    /* renamed from: c, reason: collision with root package name */
    public final L.g f1196c;

    public e(L.g gVar, d dVar, g gVar2) {
        this.f1196c = gVar;
        this.f1194a = dVar;
        this.f1195b = gVar2;
    }

    @Override // L.e
    public Object acquire() {
        Object acquire = this.f1196c.acquire();
        if (acquire == null) {
            acquire = this.f1194a.create();
            if (Log.isLoggable("FactoryPools", 2)) {
                Log.v("FactoryPools", "Created new " + acquire.getClass());
            }
        }
        if (acquire instanceof f) {
            ((f) acquire).getVerifier().setRecycled(false);
        }
        return acquire;
    }

    @Override // L.e
    public boolean release(Object obj) {
        if (obj instanceof f) {
            ((f) obj).getVerifier().setRecycled(true);
        }
        this.f1195b.reset(obj);
        return this.f1196c.release(obj);
    }
}
