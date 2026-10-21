package com.squareup.picasso;

import android.net.NetworkInfo;
import cz.msebera.android.httpclient.HttpHost;
import java.io.IOException;
import m4.I;
import m4.InterfaceC1338q;
import m4.K;
import m4.L;
import m4.O;
import m4.P;
import m4.x;
import okhttp3.CacheControl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes2.dex */
public final class d extends L {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1338q f13439a;

    /* renamed from: b, reason: collision with root package name */
    public final P f13440b;

    public d(InterfaceC1338q interfaceC1338q, P p6) {
        this.f13439a = interfaceC1338q;
        this.f13440b = p6;
    }

    @Override // m4.L
    public final int c() {
        return 2;
    }

    @Override // m4.L
    public boolean canHandleRequest(I i2) {
        String scheme = i2.f18620a.getScheme();
        return HttpHost.DEFAULT_SCHEME_NAME.equals(scheme) || "https".equals(scheme);
    }

    @Override // m4.L
    public final boolean d(NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // m4.L
    public K load(I i2, int i7) throws IOException {
        CacheControl cacheControl;
        if (i7 == 0) {
            cacheControl = null;
        } else if (NetworkPolicy.isOfflineOnly(i7)) {
            cacheControl = CacheControl.FORCE_CACHE;
        } else {
            CacheControl.Builder builder = new CacheControl.Builder();
            if (!NetworkPolicy.shouldReadFromDiskCache(i7)) {
                builder.noCache();
            }
            if (!NetworkPolicy.shouldWriteToDiskCache(i7)) {
                builder.noStore();
            }
            cacheControl = builder.build();
        }
        Request.Builder url = new Request.Builder().url(i2.f18620a.toString());
        if (cacheControl != null) {
            url.cacheControl(cacheControl);
        }
        Response load = ((x) this.f13439a).load(url.build());
        ResponseBody body = load.body();
        if (!load.isSuccessful()) {
            body.close();
            throw new NetworkRequestHandler$ResponseException(load.code());
        }
        Response cacheResponse = load.cacheResponse();
        Picasso$LoadedFrom picasso$LoadedFrom = Picasso$LoadedFrom.DISK;
        Picasso$LoadedFrom picasso$LoadedFrom2 = Picasso$LoadedFrom.NETWORK;
        Picasso$LoadedFrom picasso$LoadedFrom3 = cacheResponse == null ? picasso$LoadedFrom2 : picasso$LoadedFrom;
        if (picasso$LoadedFrom3 == picasso$LoadedFrom && body.contentLength() == 0) {
            body.close();
            throw new NetworkRequestHandler$ContentLengthException("Received response with 0 content-length header.");
        }
        if (picasso$LoadedFrom3 == picasso$LoadedFrom2 && body.contentLength() > 0) {
            long contentLength = body.contentLength();
            O o6 = this.f13440b.f18644b;
            o6.sendMessage(o6.obtainMessage(4, Long.valueOf(contentLength)));
        }
        return new K(body.source(), picasso$LoadedFrom3);
    }
}
