package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import cz.msebera.android.httpclient.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
import r2.C1550I;

/* loaded from: classes.dex */
public final class o implements e {

    /* renamed from: n, reason: collision with root package name */
    public static final n f9211n = new n();

    /* renamed from: b, reason: collision with root package name */
    public final C1550I f9212b;

    /* renamed from: e, reason: collision with root package name */
    public final int f9213e;

    /* renamed from: f, reason: collision with root package name */
    public HttpURLConnection f9214f;

    /* renamed from: j, reason: collision with root package name */
    public InputStream f9215j;

    /* renamed from: m, reason: collision with root package name */
    public volatile boolean f9216m;

    public o(C1550I c1550i, int i2) {
        this.f9212b = c1550i;
        this.f9213e = i2;
    }

    public static int a(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e3) {
            if (!Log.isLoggable("HttpUrlFetcher", 3)) {
                return -1;
            }
            Log.d("HttpUrlFetcher", "Failed to get a response code", e3);
            return -1;
        }
    }

    public final InputStream b(URL url, int i2, URL url2, Map map) {
        if (i2 >= 5) {
            throw new HttpException("Too many (> 5) redirects!", -1);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new HttpException("In re-direct loop", -1);
                }
            } catch (URISyntaxException unused) {
            }
        }
        try {
            HttpURLConnection build = f9211n.build(url);
            for (Map.Entry entry : map.entrySet()) {
                build.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            int i7 = this.f9213e;
            build.setConnectTimeout(i7);
            build.setReadTimeout(i7);
            build.setUseCaches(false);
            build.setDoInput(true);
            build.setInstanceFollowRedirects(false);
            this.f9214f = build;
            try {
                build.connect();
                this.f9215j = this.f9214f.getInputStream();
                if (this.f9216m) {
                    return null;
                }
                int a7 = a(this.f9214f);
                int i8 = a7 / 100;
                if (i8 == 2) {
                    HttpURLConnection httpURLConnection = this.f9214f;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                            this.f9215j = G2.e.obtain(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
                            }
                            this.f9215j = httpURLConnection.getInputStream();
                        }
                        return this.f9215j;
                    } catch (IOException e3) {
                        throw new HttpException("Failed to obtain InputStream", a(httpURLConnection), e3);
                    }
                }
                if (i8 != 3) {
                    if (a7 == -1) {
                        throw new HttpException(a7);
                    }
                    try {
                        throw new HttpException(this.f9214f.getResponseMessage(), a7);
                    } catch (IOException e7) {
                        throw new HttpException("Failed to get a response message", a7, e7);
                    }
                }
                String headerField = this.f9214f.getHeaderField(HttpHeaders.LOCATION);
                if (TextUtils.isEmpty(headerField)) {
                    throw new HttpException("Received empty or null redirect url", a7);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    cleanup();
                    return b(url3, i2 + 1, url, map);
                } catch (MalformedURLException e8) {
                    throw new HttpException(A.i.k("Bad redirect url: ", headerField), a7, e8);
                }
            } catch (IOException e9) {
                throw new HttpException("Failed to connect or obtain data", a(this.f9214f), e9);
            }
        } catch (IOException e10) {
            throw new HttpException("URL.openConnection threw", 0, e10);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void cancel() {
        this.f9216m = true;
    }

    @Override // com.bumptech.glide.load.data.e
    public void cleanup() {
        InputStream inputStream = this.f9215j;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f9214f;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f9214f = null;
    }

    @Override // com.bumptech.glide.load.data.e
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public DataSource getDataSource() {
        return DataSource.f9180e;
    }

    @Override // com.bumptech.glide.load.data.e
    public void loadData(Priority priority, d dVar) {
        C1550I c1550i = this.f9212b;
        long logTime = G2.m.getLogTime();
        try {
            try {
                dVar.onDataReady(b(c1550i.toURL(), 0, null, c1550i.getHeaders()));
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + G2.m.getElapsedMillis(logTime));
                }
            } catch (IOException e3) {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Failed to load data for url", e3);
                }
                dVar.onLoadFailed(e3);
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + G2.m.getElapsedMillis(logTime));
                }
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + G2.m.getElapsedMillis(logTime));
            }
            throw th;
        }
    }
}
