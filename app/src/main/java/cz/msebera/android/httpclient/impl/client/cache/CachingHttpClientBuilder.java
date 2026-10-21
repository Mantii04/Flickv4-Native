package cz.msebera.android.httpclient.impl.client.cache;

import cz.msebera.android.httpclient.client.cache.HttpCacheInvalidator;
import cz.msebera.android.httpclient.client.cache.HttpCacheStorage;
import cz.msebera.android.httpclient.client.cache.ResourceFactory;
import cz.msebera.android.httpclient.impl.client.HttpClientBuilder;
import java.io.File;

/* loaded from: classes2.dex */
public class CachingHttpClientBuilder extends HttpClientBuilder {
    private CacheConfig cacheConfig;
    private File cacheDir;
    private boolean deleteCache = true;
    private HttpCacheInvalidator httpCacheInvalidator;
    private ResourceFactory resourceFactory;
    private SchedulingStrategy schedulingStrategy;
    private HttpCacheStorage storage;

    public static CachingHttpClientBuilder create() {
        return new CachingHttpClientBuilder();
    }

    private AsynchronousValidator createAsynchronousRevalidator(CacheConfig cacheConfig) {
        if (cacheConfig.getAsynchronousWorkersMax() <= 0) {
            return null;
        }
        AsynchronousValidator asynchronousValidator = new AsynchronousValidator(createSchedulingStrategy(cacheConfig));
        addCloseable(asynchronousValidator);
        return asynchronousValidator;
    }

    private SchedulingStrategy createSchedulingStrategy(CacheConfig cacheConfig) {
        SchedulingStrategy schedulingStrategy = this.schedulingStrategy;
        return schedulingStrategy != null ? schedulingStrategy : new ImmediateSchedulingStrategy(cacheConfig);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0050  */
    @Override // cz.msebera.android.httpclient.impl.client.HttpClientBuilder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public cz.msebera.android.httpclient.impl.execchain.ClientExecChain decorateMainExec(cz.msebera.android.httpclient.impl.execchain.ClientExecChain r9) {
        /*
            r8 = this;
            cz.msebera.android.httpclient.impl.client.cache.CacheConfig r0 = r8.cacheConfig
            if (r0 == 0) goto L6
        L4:
            r4 = r0
            goto L9
        L6:
            cz.msebera.android.httpclient.impl.client.cache.CacheConfig r0 = cz.msebera.android.httpclient.impl.client.cache.CacheConfig.DEFAULT
            goto L4
        L9:
            cz.msebera.android.httpclient.client.cache.ResourceFactory r0 = r8.resourceFactory
            if (r0 != 0) goto L16
            java.io.File r0 = r8.cacheDir
            if (r0 != 0) goto L18
            cz.msebera.android.httpclient.impl.client.cache.HeapResourceFactory r0 = new cz.msebera.android.httpclient.impl.client.cache.HeapResourceFactory
            r0.<init>()
        L16:
            r2 = r0
            goto L1e
        L18:
            cz.msebera.android.httpclient.impl.client.cache.FileResourceFactory r1 = new cz.msebera.android.httpclient.impl.client.cache.FileResourceFactory
            r1.<init>(r0)
            r2 = r1
        L1e:
            cz.msebera.android.httpclient.client.cache.HttpCacheStorage r0 = r8.storage
            if (r0 != 0) goto L2b
            java.io.File r0 = r8.cacheDir
            if (r0 != 0) goto L2d
            cz.msebera.android.httpclient.impl.client.cache.BasicHttpCacheStorage r0 = new cz.msebera.android.httpclient.impl.client.cache.BasicHttpCacheStorage
            r0.<init>(r4)
        L2b:
            r3 = r0
            goto L43
        L2d:
            cz.msebera.android.httpclient.impl.client.cache.ManagedHttpCacheStorage r0 = new cz.msebera.android.httpclient.impl.client.cache.ManagedHttpCacheStorage
            r0.<init>(r4)
            boolean r1 = r8.deleteCache
            if (r1 == 0) goto L3f
            cz.msebera.android.httpclient.impl.client.cache.CachingHttpClientBuilder$1 r1 = new cz.msebera.android.httpclient.impl.client.cache.CachingHttpClientBuilder$1
            r1.<init>()
            r8.addCloseable(r1)
            goto L2b
        L3f:
            r8.addCloseable(r0)
            goto L2b
        L43:
            cz.msebera.android.httpclient.impl.client.cache.AsynchronousValidator r0 = r8.createAsynchronousRevalidator(r4)
            cz.msebera.android.httpclient.impl.client.cache.CacheKeyGenerator r5 = new cz.msebera.android.httpclient.impl.client.cache.CacheKeyGenerator
            r5.<init>()
            cz.msebera.android.httpclient.client.cache.HttpCacheInvalidator r1 = r8.httpCacheInvalidator
            if (r1 != 0) goto L55
            cz.msebera.android.httpclient.impl.client.cache.CacheInvalidator r1 = new cz.msebera.android.httpclient.impl.client.cache.CacheInvalidator
            r1.<init>(r5, r3)
        L55:
            r6 = r1
            cz.msebera.android.httpclient.impl.client.cache.CachingExec r7 = new cz.msebera.android.httpclient.impl.client.cache.CachingExec
            cz.msebera.android.httpclient.impl.client.cache.BasicHttpCache r1 = new cz.msebera.android.httpclient.impl.client.cache.BasicHttpCache
            r1.<init>(r2, r3, r4, r5, r6)
            r7.<init>(r9, r1, r4, r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: cz.msebera.android.httpclient.impl.client.cache.CachingHttpClientBuilder.decorateMainExec(cz.msebera.android.httpclient.impl.execchain.ClientExecChain):cz.msebera.android.httpclient.impl.execchain.ClientExecChain");
    }

    public final CachingHttpClientBuilder setCacheConfig(CacheConfig cacheConfig) {
        this.cacheConfig = cacheConfig;
        return this;
    }

    public final CachingHttpClientBuilder setCacheDir(File file) {
        this.cacheDir = file;
        return this;
    }

    public CachingHttpClientBuilder setDeleteCache(boolean z6) {
        this.deleteCache = z6;
        return this;
    }

    public final CachingHttpClientBuilder setHttpCacheInvalidator(HttpCacheInvalidator httpCacheInvalidator) {
        this.httpCacheInvalidator = httpCacheInvalidator;
        return this;
    }

    public final CachingHttpClientBuilder setHttpCacheStorage(HttpCacheStorage httpCacheStorage) {
        this.storage = httpCacheStorage;
        return this;
    }

    public final CachingHttpClientBuilder setResourceFactory(ResourceFactory resourceFactory) {
        this.resourceFactory = resourceFactory;
        return this;
    }

    public final CachingHttpClientBuilder setSchedulingStrategy(SchedulingStrategy schedulingStrategy) {
        this.schedulingStrategy = schedulingStrategy;
        return this;
    }
}
