package d5;

import cz.msebera.android.httpclient.HttpHeaders;
import h2.t;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class d extends t {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ f f13590f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(f fVar, String str, C0811a c0811a, J0.g gVar) {
        super(1, str, c0811a, gVar);
        this.f13590f = fVar;
    }

    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() {
        HashMap hashMap = new HashMap();
        f fVar = this.f13590f;
        hashMap.put(HttpHeaders.REFERER, fVar.f13593b);
        hashMap.put("X-Csrf-Token", fVar.f13594c);
        return hashMap;
    }
}
