package okhttp3.internal.http;

import cz.msebera.android.httpclient.client.methods.HttpPatch;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class HttpMethod {
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    public static final boolean permitsRequestBody(String method) {
        j.checkNotNullParameter(method, "method");
        return (j.areEqual(method, "GET") || j.areEqual(method, "HEAD")) ? false : true;
    }

    public static final boolean requiresRequestBody(String method) {
        j.checkNotNullParameter(method, "method");
        return j.areEqual(method, "POST") || j.areEqual(method, "PUT") || j.areEqual(method, HttpPatch.METHOD_NAME) || j.areEqual(method, "PROPPATCH") || j.areEqual(method, "REPORT");
    }

    public final boolean invalidatesCache(String method) {
        j.checkNotNullParameter(method, "method");
        return j.areEqual(method, "POST") || j.areEqual(method, HttpPatch.METHOD_NAME) || j.areEqual(method, "PUT") || j.areEqual(method, "DELETE") || j.areEqual(method, "MOVE");
    }

    public final boolean redirectsToGet(String method) {
        j.checkNotNullParameter(method, "method");
        return !j.areEqual(method, "PROPFIND");
    }

    public final boolean redirectsWithBody(String method) {
        j.checkNotNullParameter(method, "method");
        return j.areEqual(method, "PROPFIND");
    }
}
