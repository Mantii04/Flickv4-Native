package d5;

import cz.msebera.android.httpclient.HttpHeaders;
import h2.t;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class c extends t {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ f f13589f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(f fVar, String str, C0811a c0811a, J0.g gVar) {
        super(0, str, c0811a, gVar);
        this.f13589f = fVar;
    }

    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() {
        HashMap hashMap = new HashMap();
        hashMap.put(HttpHeaders.REFERER, this.f13589f.f13595d);
        return hashMap;
    }
}
