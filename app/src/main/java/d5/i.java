package d5;

import cz.msebera.android.httpclient.HttpHeaders;
import h2.t;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class i extends t {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ l f13601f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(l lVar, String str, g gVar, J0.g gVar2) {
        super(0, str, gVar, gVar2);
        this.f13601f = lVar;
    }

    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() {
        HashMap hashMap = new HashMap();
        hashMap.put(HttpHeaders.REFERER, this.f13601f.f13610g);
        return hashMap;
    }
}
