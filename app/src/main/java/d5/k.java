package d5;

import cz.msebera.android.httpclient.HttpHeaders;
import h2.t;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class k extends t {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ l f13603f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(l lVar, String str, X4.a aVar, J0.g gVar) {
        super(1, str, aVar, gVar);
        this.f13603f = lVar;
    }

    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() {
        HashMap hashMap = new HashMap();
        l lVar = this.f13603f;
        hashMap.put(HttpHeaders.REFERER, lVar.f13605b);
        hashMap.put("X-Csrf-Token", lVar.f13606c);
        return hashMap;
    }
}
