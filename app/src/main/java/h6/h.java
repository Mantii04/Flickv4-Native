package h6;

import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import com.loopj.android.http.AsyncHttpClient;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Connection$Method;

/* loaded from: classes2.dex */
public final class h implements g6.d {

    /* renamed from: a, reason: collision with root package name */
    public d f16650a;

    /* renamed from: b, reason: collision with root package name */
    public g f16651b;

    public static URL a(URL url) {
        try {
            return new URL(new URI(url.toExternalForm().replaceAll(StringUtils.SPACE, "%20")).toASCIIString());
        } catch (Exception unused) {
            return url;
        }
    }

    public static g6.d connect(String str) {
        h hVar = new h();
        d dVar = new d();
        dVar.f16635i = null;
        dVar.f16637k = false;
        dVar.f16638l = true;
        dVar.f16639m = "UTF-8";
        dVar.f16631e = 30000;
        dVar.f16632f = ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
        dVar.f16633g = true;
        dVar.f16634h = new ArrayList();
        dVar.f16628b = Connection$Method.GET;
        dVar.addHeader("Accept-Encoding", AsyncHttpClient.ENCODING_GZIP);
        dVar.addHeader("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36");
        dVar.f16636j = k6.e.htmlParser();
        hVar.f16650a = dVar;
        g gVar = new g();
        gVar.f16646i = false;
        gVar.f16647j = false;
        gVar.f16648k = 0;
        hVar.f16651b = gVar;
        hVar.url(str);
        return hVar;
    }

    public g6.c execute() throws IOException {
        g b7 = g.b(this.f16650a, null);
        this.f16651b = b7;
        return b7;
    }

    public j6.h get() throws IOException {
        this.f16650a.method(Connection$Method.GET);
        execute();
        return this.f16651b.parse();
    }

    public g6.d timeout(int i2) {
        this.f16650a.timeout(i2);
        return this;
    }

    @Override // g6.d
    public g6.d url(String str) {
        String str2;
        k.notEmpty(str, "Must supply a valid URL");
        try {
            d dVar = this.f16650a;
            try {
                str2 = a(new URL(str)).toExternalForm();
            } catch (Exception unused) {
                str2 = str;
            }
            dVar.url(new URL(str2));
            return this;
        } catch (MalformedURLException e3) {
            throw new IllegalArgumentException(A.i.k("Malformed URL: ", str), e3);
        }
    }
}
