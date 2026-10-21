package com.uwetrottmann.trakt5;

import cz.msebera.android.httpclient.HttpHeaders;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes2.dex */
public class TraktV2Interceptor implements Interceptor {
    private final TraktV2 trakt;

    public TraktV2Interceptor(TraktV2 traktV2) {
        this.trakt = traktV2;
    }

    private static boolean accessTokenIsNotEmpty(String str) {
        return (str == null || str.length() == 0) ? false : true;
    }

    public static Response handleIntercept(Interceptor.Chain chain, String str, String str2) throws IOException {
        String header;
        Request request = chain.request();
        if (!TraktV2.API_HOST.equals(request.url().host()) && !TraktV2.API_STAGING_HOST.equals(request.url().host())) {
            return chain.proceed(request);
        }
        Request.Builder newBuilder = request.newBuilder();
        newBuilder.header("Content-Type", "application/json");
        newBuilder.header(TraktV2.HEADER_TRAKT_API_KEY, str);
        newBuilder.header(TraktV2.HEADER_TRAKT_API_VERSION, TraktV2.API_VERSION);
        if (hasNoAuthorizationHeader(request) && accessTokenIsNotEmpty(str2)) {
            newBuilder.header("Authorization", "Bearer " + str2);
        }
        Response proceed = chain.proceed(newBuilder.build());
        if (proceed.code() == 429 && (header = proceed.header(HttpHeaders.RETRY_AFTER)) != null) {
            try {
                Thread.sleep((int) ((Integer.parseInt(header) + 0.5d) * 1000.0d));
                if (proceed.body() != null) {
                    proceed.body().close();
                }
                return handleIntercept(chain, str, str2);
            } catch (InterruptedException | NumberFormatException unused) {
            }
        }
        return proceed;
    }

    private static boolean hasNoAuthorizationHeader(Request request) {
        return request.header("Authorization") == null;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        return handleIntercept(chain, this.trakt.apiKey(), this.trakt.accessToken());
    }
}
