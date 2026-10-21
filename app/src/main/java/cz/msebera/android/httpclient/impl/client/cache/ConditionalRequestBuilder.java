package cz.msebera.android.httpclient.impl.client.cache;

import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HeaderElement;
import cz.msebera.android.httpclient.ProtocolException;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.client.cache.HeaderConstants;
import cz.msebera.android.httpclient.client.cache.HttpCacheEntry;
import cz.msebera.android.httpclient.client.methods.HttpRequestWrapper;
import java.util.Map;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes2.dex */
class ConditionalRequestBuilder {
    public HttpRequestWrapper buildConditionalRequest(HttpRequestWrapper httpRequestWrapper, HttpCacheEntry httpCacheEntry) throws ProtocolException {
        HttpRequestWrapper wrap = HttpRequestWrapper.wrap(httpRequestWrapper.getOriginal());
        wrap.setHeaders(httpRequestWrapper.getAllHeaders());
        Header firstHeader = httpCacheEntry.getFirstHeader("ETag");
        if (firstHeader != null) {
            wrap.setHeader("If-None-Match", firstHeader.getValue());
        }
        Header firstHeader2 = httpCacheEntry.getFirstHeader("Last-Modified");
        if (firstHeader2 != null) {
            wrap.setHeader("If-Modified-Since", firstHeader2.getValue());
        }
        boolean z6 = false;
        for (Header header : httpCacheEntry.getHeaders("Cache-Control")) {
            for (HeaderElement headerElement : header.getElements()) {
                if (HeaderConstants.CACHE_CONTROL_MUST_REVALIDATE.equalsIgnoreCase(headerElement.getName()) || HeaderConstants.CACHE_CONTROL_PROXY_REVALIDATE.equalsIgnoreCase(headerElement.getName())) {
                    z6 = true;
                    break;
                }
            }
        }
        if (z6) {
            wrap.addHeader("Cache-Control", "max-age=0");
        }
        return wrap;
    }

    public HttpRequestWrapper buildConditionalRequestFromVariants(HttpRequestWrapper httpRequestWrapper, Map<String, Variant> map) {
        HttpRequestWrapper wrap = HttpRequestWrapper.wrap(httpRequestWrapper.getOriginal());
        wrap.setHeaders(httpRequestWrapper.getAllHeaders());
        StringBuilder sb = new StringBuilder();
        boolean z6 = true;
        for (String str : map.keySet()) {
            if (!z6) {
                sb.append(",");
            }
            sb.append(str);
            z6 = false;
        }
        wrap.setHeader("If-None-Match", sb.toString());
        return wrap;
    }

    public HttpRequestWrapper buildUnconditionalRequest(HttpRequestWrapper httpRequestWrapper, HttpCacheEntry httpCacheEntry) {
        HttpRequestWrapper wrap = HttpRequestWrapper.wrap(httpRequestWrapper.getOriginal());
        wrap.setHeaders(httpRequestWrapper.getAllHeaders());
        wrap.addHeader("Cache-Control", HeaderConstants.CACHE_CONTROL_NO_CACHE);
        wrap.addHeader("Pragma", HeaderConstants.CACHE_CONTROL_NO_CACHE);
        wrap.removeHeaders("If-Range");
        wrap.removeHeaders("If-Match");
        wrap.removeHeaders("If-None-Match");
        wrap.removeHeaders("If-Unmodified-Since");
        wrap.removeHeaders("If-Modified-Since");
        return wrap;
    }
}
