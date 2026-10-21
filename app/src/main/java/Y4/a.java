package Y4;

import J0.g;
import com.android.volley.AuthFailureError;
import cz.msebera.android.httpclient.HttpHeaders;
import h2.t;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class a extends t {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ b f4389f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(b bVar, String str, X4.a aVar, g gVar) {
        super(0, str, aVar, gVar);
        this.f4389f = bVar;
    }

    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() throws AuthFailureError {
        HashMap hashMap = new HashMap();
        hashMap.put(HttpHeaders.REFERER, this.f4389f.f4391b.f4397f);
        return hashMap;
    }
}
