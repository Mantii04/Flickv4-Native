package flix.com.vision.processors.english;

import cz.msebera.android.httpclient.client.utils.URLEncodedUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class l extends h2.t {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f16102f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(String str, X4.a aVar, J0.g gVar, String str2) {
        super(1, str, aVar, gVar);
        this.f16102f = str2;
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
        hashMap.put("src", this.f16102f);
        return hashMap;
    }
}
