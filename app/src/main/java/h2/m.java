package h2;

import com.android.volley.AuthFailureError;
import com.android.volley.Header;
import com.android.volley.Request;
import cz.msebera.android.httpclient.client.methods.HttpPatch;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public final class m extends AbstractC0966a {

    /* renamed from: a, reason: collision with root package name */
    public final SSLSocketFactory f16513a;

    public m() {
        this(null);
    }

    public static ArrayList b(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new Header((String) entry.getKey(), (String) it.next()));
                }
            }
        }
        return arrayList;
    }

    public final void a(HttpURLConnection httpURLConnection, Request request, byte[] bArr) {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
            httpURLConnection.setRequestProperty("Content-Type", request.getBodyContentType());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(createOutputStream(request, httpURLConnection, bArr.length));
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    public final void c(Request request, HttpURLConnection httpURLConnection) {
        switch (request.getMethod()) {
            case -1:
                byte[] postBody = request.getPostBody();
                if (postBody != null) {
                    httpURLConnection.setRequestMethod("POST");
                    a(httpURLConnection, request, postBody);
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                byte[] body = request.getBody();
                if (body != null) {
                    a(httpURLConnection, request, body);
                    return;
                }
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                byte[] body2 = request.getBody();
                if (body2 != null) {
                    a(httpURLConnection, request, body2);
                    return;
                }
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                return;
            case 7:
                httpURLConnection.setRequestMethod(HttpPatch.METHOD_NAME);
                byte[] body3 = request.getBody();
                if (body3 != null) {
                    a(httpURLConnection, request, body3);
                    return;
                }
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    public HttpURLConnection createConnection(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }

    public InputStream createInputStream(Request<?> request, HttpURLConnection httpURLConnection) {
        return new C0976k(httpURLConnection);
    }

    public OutputStream createOutputStream(Request<?> request, HttpURLConnection httpURLConnection, int i2) throws IOException {
        return httpURLConnection.getOutputStream();
    }

    @Override // h2.AbstractC0966a
    public C0975j executeRequest(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError {
        SSLSocketFactory sSLSocketFactory;
        String url = request.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(request.getHeaders());
        URL url2 = new URL(url);
        HttpURLConnection createConnection = createConnection(url2);
        int timeoutMs = request.getTimeoutMs();
        createConnection.setConnectTimeout(timeoutMs);
        createConnection.setReadTimeout(timeoutMs);
        boolean z6 = false;
        createConnection.setUseCaches(false);
        createConnection.setDoInput(true);
        if ("https".equals(url2.getProtocol()) && (sSLSocketFactory = this.f16513a) != null) {
            ((HttpsURLConnection) createConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        try {
            for (String str : hashMap.keySet()) {
                createConnection.setRequestProperty(str, (String) hashMap.get(str));
            }
            c(request, createConnection);
            int responseCode = createConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (request.getMethod() == 4 || ((100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304)) {
                C0975j c0975j = new C0975j(responseCode, b(createConnection.getHeaderFields()));
                createConnection.disconnect();
                return c0975j;
            }
            try {
                return new C0975j(responseCode, b(createConnection.getHeaderFields()), createConnection.getContentLength(), createInputStream(request, createConnection));
            } catch (Throwable th) {
                th = th;
                z6 = true;
                if (!z6) {
                    createConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public m(l lVar) {
        this(lVar, null);
    }

    public m(l lVar, SSLSocketFactory sSLSocketFactory) {
        this.f16513a = sSLSocketFactory;
    }
}
