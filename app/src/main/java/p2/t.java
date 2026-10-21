package p2;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final G2.o f19474a = new G2.o(1000);

    /* renamed from: b, reason: collision with root package name */
    public final L.e f19475b = H2.h.threadSafe(10, new r());

    public String getSafeKey(l2.m mVar) {
        String str;
        synchronized (this.f19474a) {
            str = (String) this.f19474a.get(mVar);
        }
        if (str == null) {
            L.e eVar = this.f19475b;
            s sVar = (s) G2.r.checkNotNull(eVar.acquire());
            try {
                mVar.updateDiskCacheKey(sVar.f19472b);
                String sha256BytesToHex = G2.t.sha256BytesToHex(sVar.f19472b.digest());
                eVar.release(sVar);
                str = sha256BytesToHex;
            } catch (Throwable th) {
                eVar.release(sVar);
                throw th;
            }
        }
        synchronized (this.f19474a) {
            this.f19474a.put(mVar, str);
        }
        return str;
    }
}
