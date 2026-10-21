package cz.msebera.android.httpclient.impl.client.cache;

import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HttpException;
import cz.msebera.android.httpclient.HttpResponse;
import cz.msebera.android.httpclient.client.cache.HttpCacheEntry;
import cz.msebera.android.httpclient.client.methods.CloseableHttpResponse;
import cz.msebera.android.httpclient.client.methods.HttpExecutionAware;
import cz.msebera.android.httpclient.client.methods.HttpRequestWrapper;
import cz.msebera.android.httpclient.client.protocol.HttpClientContext;
import cz.msebera.android.httpclient.conn.routing.HttpRoute;
import cz.msebera.android.httpclient.extras.HttpClientAndroidLog;
import java.io.IOException;

/* loaded from: classes2.dex */
public class AsynchronousValidationRequest implements Runnable {
    private final HttpCacheEntry cacheEntry;
    private final CachingExec cachingExec;
    private final int consecutiveFailedAttempts;
    private final HttpClientContext context;
    private final HttpExecutionAware execAware;
    private final String identifier;
    public HttpClientAndroidLog log = new HttpClientAndroidLog(getClass());
    private final AsynchronousValidator parent;
    private final HttpRequestWrapper request;
    private final HttpRoute route;

    public AsynchronousValidationRequest(AsynchronousValidator asynchronousValidator, CachingExec cachingExec, HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware, HttpCacheEntry httpCacheEntry, String str, int i2) {
        this.parent = asynchronousValidator;
        this.cachingExec = cachingExec;
        this.route = httpRoute;
        this.request = httpRequestWrapper;
        this.context = httpClientContext;
        this.execAware = httpExecutionAware;
        this.cacheEntry = httpCacheEntry;
        this.identifier = str;
        this.consecutiveFailedAttempts = i2;
    }

    private boolean isNotServerError(int i2) {
        return i2 < 500;
    }

    private boolean isNotStale(HttpResponse httpResponse) {
        Header[] headers = httpResponse.getHeaders("Warning");
        if (headers == null) {
            return true;
        }
        for (Header header : headers) {
            String value = header.getValue();
            if (value.startsWith("110") || value.startsWith("111")) {
                return false;
            }
        }
        return true;
    }

    private boolean revalidateCacheEntry() {
        boolean z6;
        try {
            CloseableHttpResponse revalidateCacheEntry = this.cachingExec.revalidateCacheEntry(this.route, this.request, this.context, this.execAware, this.cacheEntry);
            try {
                if (isNotServerError(revalidateCacheEntry.getStatusLine().getStatusCode())) {
                    if (isNotStale(revalidateCacheEntry)) {
                        z6 = true;
                        return z6;
                    }
                }
                z6 = false;
                return z6;
            } finally {
                revalidateCacheEntry.close();
            }
        } catch (HttpException e3) {
            this.log.error("HTTP protocol exception during asynchronous revalidation", e3);
            return false;
        } catch (IOException e7) {
            this.log.debug("Asynchronous revalidation failed due to I/O error", e7);
            return false;
        } catch (RuntimeException e8) {
            this.log.error("RuntimeException thrown during asynchronous revalidation: " + e8);
            return false;
        }
    }

    public int getConsecutiveFailedAttempts() {
        return this.consecutiveFailedAttempts;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (revalidateCacheEntry()) {
                this.parent.jobSuccessful(this.identifier);
            } else {
                this.parent.jobFailed(this.identifier);
            }
            this.parent.markComplete(this.identifier);
        } catch (Throwable th) {
            this.parent.markComplete(this.identifier);
            throw th;
        }
    }
}
