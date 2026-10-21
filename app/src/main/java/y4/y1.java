package y4;

import cz.msebera.android.httpclient.client.utils.URLEncodedUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class y1 extends h2.t {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f21316f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y1(String str, v1 v1Var, androidx.media3.exoplayer.source.chunk.a aVar, String str2) {
        super(1, str, v1Var, aVar);
        this.f21316f = str2;
    }

    @Override // com.android.volley.Request
    public String getBodyContentType() {
        return "application/x-www-form-urlencoded; charset=UTF-8";
    }

    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() {
        return b.c.p("Content-Type", URLEncodedUtils.CONTENT_TYPE);
    }

    @Override // com.android.volley.Request
    public Map<String, String> getParams() {
        HashMap hashMap = new HashMap();
        hashMap.put("src", this.f21316f);
        return hashMap;
    }
}
