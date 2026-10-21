package h2;

import android.os.SystemClock;
import androidx.media3.common.C;
import com.android.volley.AuthFailureError;
import com.android.volley.Cache;
import com.android.volley.ClientError;
import com.android.volley.Header;
import com.android.volley.Network;
import com.android.volley.NetworkError;
import com.android.volley.NetworkResponse;
import com.android.volley.NoConnectionError;
import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;

/* renamed from: h2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0967b implements Network {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0966a f16487a;

    /* renamed from: b, reason: collision with root package name */
    public final C0969d f16488b;

    public C0967b(AbstractC0966a abstractC0966a) {
        this(abstractC0966a, new C0969d(4096));
    }

    @Override // com.android.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        byte[] bArr;
        C.k kVar;
        String str;
        int timeoutMs;
        Map<String, String> map;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            C0975j c0975j = null;
            try {
                Cache.Entry cacheEntry = request.getCacheEntry();
                if (cacheEntry == null) {
                    map = Collections.EMPTY_MAP;
                } else {
                    HashMap hashMap = new HashMap();
                    String str2 = cacheEntry.etag;
                    if (str2 != null) {
                        hashMap.put("If-None-Match", str2);
                    }
                    long j7 = cacheEntry.lastModified;
                    if (j7 > 0) {
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
                        hashMap.put("If-Modified-Since", simpleDateFormat.format(new Date(j7)));
                    }
                    map = hashMap;
                }
                C0975j executeRequest = this.f16487a.executeRequest(request, map);
                try {
                    int statusCode = executeRequest.getStatusCode();
                    List<Header> headers = executeRequest.getHeaders();
                    if (statusCode == 304) {
                        return r.a(request, SystemClock.elapsedRealtime() - elapsedRealtime, headers);
                    }
                    InputStream content = executeRequest.getContent();
                    byte[] b7 = content != null ? r.b(content, executeRequest.getContentLength(), this.f16488b) : new byte[0];
                    try {
                        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                        if (VolleyLog.DEBUG || elapsedRealtime2 > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
                            VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", request, Long.valueOf(elapsedRealtime2), b7 != null ? Integer.valueOf(b7.length) : "null", Integer.valueOf(statusCode), Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount()));
                        }
                        if (statusCode < 200 || statusCode > 299) {
                            throw new IOException();
                        }
                        return new NetworkResponse(statusCode, b7, false, SystemClock.elapsedRealtime() - elapsedRealtime, headers);
                    } catch (IOException e3) {
                        e = e3;
                        c0975j = executeRequest;
                        bArr = b7;
                        if (e instanceof SocketTimeoutException) {
                            kVar = new C.k("socket", new TimeoutError());
                        } else {
                            if (e instanceof MalformedURLException) {
                                throw new RuntimeException("Bad URL " + request.getUrl(), e);
                            }
                            if (c0975j != null) {
                                int statusCode2 = c0975j.getStatusCode();
                                VolleyLog.e("Unexpected response code %d for %s", Integer.valueOf(statusCode2), request.getUrl());
                                if (bArr != null) {
                                    NetworkResponse networkResponse = new NetworkResponse(statusCode2, bArr, false, SystemClock.elapsedRealtime() - elapsedRealtime, c0975j.getHeaders());
                                    if (statusCode2 == 401 || statusCode2 == 403) {
                                        kVar = new C.k("auth", new AuthFailureError(networkResponse));
                                    } else {
                                        if (statusCode2 >= 400 && statusCode2 <= 499) {
                                            throw new ClientError(networkResponse);
                                        }
                                        if (statusCode2 < 500 || statusCode2 > 599 || !request.shouldRetryServerErrors()) {
                                            throw new ServerError(networkResponse);
                                        }
                                        kVar = new C.k("server", new ServerError(networkResponse));
                                    }
                                } else {
                                    kVar = new C.k("network", new NetworkError());
                                }
                            } else {
                                if (!request.shouldRetryConnectionErrors()) {
                                    throw new NoConnectionError(e);
                                }
                                kVar = new C.k("connection", new NoConnectionError());
                            }
                        }
                        str = (String) kVar.f325a;
                        RetryPolicy retryPolicy = request.getRetryPolicy();
                        timeoutMs = request.getTimeoutMs();
                        try {
                            retryPolicy.retry((VolleyError) kVar.f326b);
                            request.addMarker(str + "-retry [timeout=" + timeoutMs + "]");
                        } catch (VolleyError e7) {
                            request.addMarker(str + "-timeout-giveup [timeout=" + timeoutMs + "]");
                            throw e7;
                        }
                    }
                } catch (IOException e8) {
                    e = e8;
                    bArr = null;
                    c0975j = executeRequest;
                }
            } catch (IOException e9) {
                e = e9;
                bArr = null;
            }
            request.addMarker(str + "-retry [timeout=" + timeoutMs + "]");
        }
    }

    public C0967b(AbstractC0966a abstractC0966a, C0969d c0969d) {
        this.f16487a = abstractC0966a;
        this.f16488b = c0969d;
    }
}
