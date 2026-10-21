package cz.msebera.android.httpclient.impl.client.cache;

import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HeaderElement;
import cz.msebera.android.httpclient.HttpHost;
import cz.msebera.android.httpclient.HttpRequest;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.client.cache.HeaderConstants;
import cz.msebera.android.httpclient.client.cache.HttpCacheEntry;
import cz.msebera.android.httpclient.client.utils.DateUtils;
import cz.msebera.android.httpclient.extras.HttpClientAndroidLog;
import java.util.Date;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes2.dex */
class CachedResponseSuitabilityChecker {
    private final float heuristicCoefficient;
    private final long heuristicDefaultLifetime;
    public HttpClientAndroidLog log;
    private final boolean sharedCache;
    private final boolean useHeuristicCaching;
    private final CacheValidityPolicy validityStrategy;

    public CachedResponseSuitabilityChecker(CacheValidityPolicy cacheValidityPolicy, CacheConfig cacheConfig) {
        this.log = new HttpClientAndroidLog(getClass());
        this.validityStrategy = cacheValidityPolicy;
        this.sharedCache = cacheConfig.isSharedCache();
        this.useHeuristicCaching = cacheConfig.isHeuristicCachingEnabled();
        this.heuristicCoefficient = cacheConfig.getHeuristicCoefficient();
        this.heuristicDefaultLifetime = cacheConfig.getHeuristicDefaultLifetime();
    }

    private boolean cacheEntryDoesNotContainMethodAndEntity(HttpCacheEntry httpCacheEntry) {
        return httpCacheEntry.getRequestMethod() == null && httpCacheEntry.getResource() == null;
    }

    private boolean entryIsNotA204Response(HttpCacheEntry httpCacheEntry) {
        return httpCacheEntry.getStatusCode() != 204;
    }

    private boolean etagValidatorMatches(HttpRequest httpRequest, HttpCacheEntry httpCacheEntry) {
        Header firstHeader = httpCacheEntry.getFirstHeader("ETag");
        String value = firstHeader != null ? firstHeader.getValue() : null;
        Header[] headers = httpRequest.getHeaders("If-None-Match");
        if (headers != null) {
            for (Header header : headers) {
                for (HeaderElement headerElement : header.getElements()) {
                    String obj = headerElement.toString();
                    if (("*".equals(obj) && value != null) || obj.equals(value)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private long getMaxStale(HttpRequest httpRequest) {
        long j7 = -1;
        for (Header header : httpRequest.getHeaders("Cache-Control")) {
            for (HeaderElement headerElement : header.getElements()) {
                if (HeaderConstants.CACHE_CONTROL_MAX_STALE.equals(headerElement.getName())) {
                    if ((headerElement.getValue() == null || "".equals(headerElement.getValue().trim())) && j7 == -1) {
                        j7 = Long.MAX_VALUE;
                    } else {
                        try {
                            long parseLong = Long.parseLong(headerElement.getValue());
                            r12 = parseLong >= 0 ? parseLong : 0L;
                            if (j7 != -1 && r12 >= j7) {
                            }
                        } catch (NumberFormatException unused) {
                        }
                        j7 = r12;
                    }
                }
            }
        }
        return j7;
    }

    private boolean hasSupportedEtagValidator(HttpRequest httpRequest) {
        return httpRequest.containsHeader("If-None-Match");
    }

    private boolean hasSupportedLastModifiedValidator(HttpRequest httpRequest) {
        return hasValidDateField(httpRequest, "If-Modified-Since");
    }

    private boolean hasUnsupportedCacheEntryForGet(HttpRequest httpRequest, HttpCacheEntry httpCacheEntry) {
        return isGet(httpRequest) && cacheEntryDoesNotContainMethodAndEntity(httpCacheEntry) && entryIsNotA204Response(httpCacheEntry);
    }

    private boolean hasUnsupportedConditionalHeaders(HttpRequest httpRequest) {
        return (httpRequest.getFirstHeader("If-Range") == null && httpRequest.getFirstHeader("If-Match") == null && !hasValidDateField(httpRequest, "If-Unmodified-Since")) ? false : true;
    }

    private boolean hasValidDateField(HttpRequest httpRequest, String str) {
        Header[] headers = httpRequest.getHeaders(str);
        return headers.length > 0 && DateUtils.parseDate(headers[0].getValue()) != null;
    }

    private boolean isFreshEnough(HttpCacheEntry httpCacheEntry, HttpRequest httpRequest, Date date) {
        HttpCacheEntry httpCacheEntry2;
        Date date2;
        if (this.validityStrategy.isResponseFresh(httpCacheEntry, date)) {
            return true;
        }
        if (this.useHeuristicCaching) {
            httpCacheEntry2 = httpCacheEntry;
            date2 = date;
            if (this.validityStrategy.isResponseHeuristicallyFresh(httpCacheEntry2, date2, this.heuristicCoefficient, this.heuristicDefaultLifetime)) {
                return true;
            }
        } else {
            httpCacheEntry2 = httpCacheEntry;
            date2 = date;
        }
        if (originInsistsOnFreshness(httpCacheEntry2)) {
            return false;
        }
        long maxStale = getMaxStale(httpRequest);
        return maxStale != -1 && maxStale > this.validityStrategy.getStalenessSecs(httpCacheEntry2, date2);
    }

    private boolean isGet(HttpRequest httpRequest) {
        return httpRequest.getRequestLine().getMethod().equals("GET");
    }

    private boolean lastModifiedValidatorMatches(HttpRequest httpRequest, HttpCacheEntry httpCacheEntry, Date date) {
        Header firstHeader = httpCacheEntry.getFirstHeader("Last-Modified");
        Date parseDate = firstHeader != null ? DateUtils.parseDate(firstHeader.getValue()) : null;
        if (parseDate == null) {
            return false;
        }
        for (Header header : httpRequest.getHeaders("If-Modified-Since")) {
            Date parseDate2 = DateUtils.parseDate(header.getValue());
            if (parseDate2 != null && (parseDate2.after(date) || parseDate.after(parseDate2))) {
                return false;
            }
        }
        return true;
    }

    private boolean originInsistsOnFreshness(HttpCacheEntry httpCacheEntry) {
        if (this.validityStrategy.mustRevalidate(httpCacheEntry)) {
            return true;
        }
        if (this.sharedCache) {
            return this.validityStrategy.proxyRevalidate(httpCacheEntry) || this.validityStrategy.hasCacheControlDirective(httpCacheEntry, "s-maxage");
        }
        return false;
    }

    public boolean allConditionalsMatch(HttpRequest httpRequest, HttpCacheEntry httpCacheEntry, Date date) {
        boolean hasSupportedEtagValidator = hasSupportedEtagValidator(httpRequest);
        boolean hasSupportedLastModifiedValidator = hasSupportedLastModifiedValidator(httpRequest);
        boolean z6 = hasSupportedEtagValidator && etagValidatorMatches(httpRequest, httpCacheEntry);
        boolean z7 = hasSupportedLastModifiedValidator && lastModifiedValidatorMatches(httpRequest, httpCacheEntry, date);
        if (hasSupportedEtagValidator && hasSupportedLastModifiedValidator && (!z6 || !z7)) {
            return false;
        }
        if (!hasSupportedEtagValidator || z6) {
            return !hasSupportedLastModifiedValidator || z7;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [int] */
    /* JADX WARN: Type inference failed for: r9v3 */
    public boolean canCachedResponseBeUsed(HttpHost httpHost, HttpRequest httpRequest, HttpCacheEntry httpCacheEntry, Date date) {
        boolean z6;
        int i2;
        boolean z7 = false;
        if (!isFreshEnough(httpCacheEntry, httpRequest, date)) {
            this.log.trace("Cache entry was not fresh enough");
            return false;
        }
        if (isGet(httpRequest) && !this.validityStrategy.contentLengthHeaderMatchesActualLength(httpCacheEntry)) {
            this.log.debug("Cache entry Content-Length and header information do not match");
            return false;
        }
        if (hasUnsupportedConditionalHeaders(httpRequest)) {
            this.log.debug("Request contained conditional headers we don't handle");
            return false;
        }
        if (!isConditional(httpRequest) && httpCacheEntry.getStatusCode() == 304) {
            return false;
        }
        if (isConditional(httpRequest) && !allConditionalsMatch(httpRequest, httpCacheEntry, date)) {
            return false;
        }
        if (hasUnsupportedCacheEntryForGet(httpRequest, httpCacheEntry)) {
            this.log.debug("HEAD response caching enabled but the cache entry does not contain a request method, entity or a 204 response");
            return false;
        }
        Header[] headers = httpRequest.getHeaders("Cache-Control");
        int length = headers.length;
        int i7 = 0;
        while (i7 < length) {
            HeaderElement[] elements = headers[i7].getElements();
            int length2 = elements.length;
            for (?? r9 = z7; r9 < length2; r9++) {
                HeaderElement headerElement = elements[r9];
                if (HeaderConstants.CACHE_CONTROL_NO_CACHE.equals(headerElement.getName())) {
                    this.log.trace("Response contained NO CACHE directive, cache was not suitable");
                    return z7;
                }
                if (HeaderConstants.CACHE_CONTROL_NO_STORE.equals(headerElement.getName())) {
                    this.log.trace("Response contained NO STORE directive, cache was not suitable");
                    return z7;
                }
                if ("max-age".equals(headerElement.getName())) {
                    try {
                        if (this.validityStrategy.getCurrentAgeSecs(httpCacheEntry, date) > Integer.parseInt(headerElement.getValue())) {
                            this.log.trace("Response from cache was NOT suitable due to max age");
                            return z7;
                        }
                    } catch (NumberFormatException e3) {
                        this.log.debug("Response from cache was malformed" + e3.getMessage());
                        return z7;
                    }
                }
                if (HeaderConstants.CACHE_CONTROL_MAX_STALE.equals(headerElement.getName())) {
                    try {
                        z6 = z7;
                        i2 = i7;
                        if (this.validityStrategy.getFreshnessLifetimeSecs(httpCacheEntry) > Integer.parseInt(headerElement.getValue())) {
                            try {
                                this.log.trace("Response from cache was not suitable due to Max stale freshness");
                                return z6;
                            } catch (NumberFormatException e7) {
                                e = e7;
                                this.log.debug("Response from cache was malformed: " + e.getMessage());
                                return z6;
                            }
                        }
                    } catch (NumberFormatException e8) {
                        e = e8;
                        z6 = z7;
                    }
                } else {
                    z6 = z7;
                    i2 = i7;
                }
                if (HeaderConstants.CACHE_CONTROL_MIN_FRESH.equals(headerElement.getName())) {
                    try {
                        long parseLong = Long.parseLong(headerElement.getValue());
                        if (parseLong < 0) {
                            return z6;
                        }
                        if (this.validityStrategy.getFreshnessLifetimeSecs(httpCacheEntry) - this.validityStrategy.getCurrentAgeSecs(httpCacheEntry, date) < parseLong) {
                            this.log.trace("Response from cache was not suitable due to min fresh freshness requirement");
                            return z6;
                        }
                    } catch (NumberFormatException e9) {
                        this.log.debug("Response from cache was malformed: " + e9.getMessage());
                        return z6;
                    }
                }
                z7 = z6;
                i7 = i2;
            }
            i7++;
        }
        this.log.trace("Response from cache was suitable");
        return true;
    }

    public boolean isConditional(HttpRequest httpRequest) {
        return hasSupportedEtagValidator(httpRequest) || hasSupportedLastModifiedValidator(httpRequest);
    }

    public CachedResponseSuitabilityChecker(CacheConfig cacheConfig) {
        this(new CacheValidityPolicy(), cacheConfig);
    }
}
