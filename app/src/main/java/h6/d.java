package h6;

import java.net.Proxy;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.jsoup.Connection$Method;

/* loaded from: classes2.dex */
public final class d extends c implements g6.b {

    /* renamed from: e, reason: collision with root package name */
    public int f16631e;

    /* renamed from: f, reason: collision with root package name */
    public int f16632f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f16633g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f16634h;

    /* renamed from: i, reason: collision with root package name */
    public String f16635i;

    /* renamed from: j, reason: collision with root package name */
    public k6.e f16636j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f16637k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f16638l;

    /* renamed from: m, reason: collision with root package name */
    public String f16639m;

    @Override // h6.c
    public /* bridge */ /* synthetic */ Map cookies() {
        return super.cookies();
    }

    public Collection<Object> data() {
        return this.f16634h;
    }

    public boolean followRedirects() {
        return this.f16633g;
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ boolean hasHeader(String str) {
        return super.hasHeader(str);
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ List headers(String str) {
        return super.headers(str);
    }

    public boolean ignoreContentType() {
        return false;
    }

    public boolean ignoreHttpErrors() {
        return false;
    }

    public int maxBodySize() {
        return this.f16632f;
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ Connection$Method method() {
        return super.method();
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ Map multiHeaders() {
        return super.multiHeaders();
    }

    public String postDataCharset() {
        return this.f16639m;
    }

    public Proxy proxy() {
        return null;
    }

    public g6.b requestBody(String str) {
        this.f16635i = str;
        return this;
    }

    public SSLSocketFactory sslSocketFactory() {
        return null;
    }

    @Override // h6.c
    public /* bridge */ /* synthetic */ URL url() {
        return super.url();
    }

    public boolean validateTLSCertificates() {
        return this.f16638l;
    }

    public d parser(k6.e eVar) {
        this.f16636j = eVar;
        this.f16637k = true;
        return this;
    }

    public String requestBody() {
        return this.f16635i;
    }

    public int timeout() {
        return this.f16631e;
    }

    @Override // g6.b
    public d timeout(int i2) {
        k.isTrue(i2 >= 0, "Timeout milliseconds must be 0 (infinite) or greater");
        this.f16631e = i2;
        return this;
    }

    @Override // g6.b
    public k6.e parser() {
        return this.f16636j;
    }
}
