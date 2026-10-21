package cz.msebera.android.httpclient.impl.client.cache;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.Log;
import cz.msebera.android.httpclient.util.Args;

/* loaded from: classes2.dex */
public class CacheConfig implements Cloneable {
    public static final CacheConfig DEFAULT = new Builder().build();
    public static final boolean DEFAULT_303_CACHING_ENABLED = false;
    public static final int DEFAULT_ASYNCHRONOUS_WORKERS_CORE = 1;
    public static final int DEFAULT_ASYNCHRONOUS_WORKERS_MAX = 1;
    public static final int DEFAULT_ASYNCHRONOUS_WORKER_IDLE_LIFETIME_SECS = 60;
    public static final boolean DEFAULT_HEURISTIC_CACHING_ENABLED = false;
    public static final float DEFAULT_HEURISTIC_COEFFICIENT = 0.1f;
    public static final long DEFAULT_HEURISTIC_LIFETIME = 0;
    public static final int DEFAULT_MAX_CACHE_ENTRIES = 1000;
    public static final int DEFAULT_MAX_OBJECT_SIZE_BYTES = 8192;
    public static final int DEFAULT_MAX_UPDATE_RETRIES = 1;
    public static final int DEFAULT_REVALIDATION_QUEUE_SIZE = 100;
    public static final boolean DEFAULT_WEAK_ETAG_ON_PUTDELETE_ALLOWED = false;
    private final boolean allow303Caching;
    private int asynchronousWorkerIdleLifetimeSecs;
    private int asynchronousWorkersCore;
    private int asynchronousWorkersMax;
    private boolean heuristicCachingEnabled;
    private float heuristicCoefficient;
    private long heuristicDefaultLifetime;
    private boolean isSharedCache;
    private int maxCacheEntries;
    private long maxObjectSize;
    private int maxUpdateRetries;
    private boolean neverCacheHTTP10ResponsesWithQuery;
    private int revalidationQueueSize;
    private final boolean weakETagOnPutDeleteAllowed;

    public static class Builder {
        private boolean neverCacheHTTP10ResponsesWithQuery;
        private long maxObjectSize = PlaybackStateCompat.ACTION_PLAY_FROM_URI;
        private int maxCacheEntries = 1000;
        private int maxUpdateRetries = 1;
        private boolean allow303Caching = false;
        private boolean weakETagOnPutDeleteAllowed = false;
        private boolean heuristicCachingEnabled = false;
        private float heuristicCoefficient = 0.1f;
        private long heuristicDefaultLifetime = 0;
        private boolean isSharedCache = true;
        private int asynchronousWorkersMax = 1;
        private int asynchronousWorkersCore = 1;
        private int asynchronousWorkerIdleLifetimeSecs = 60;
        private int revalidationQueueSize = 100;

        public CacheConfig build() {
            return new CacheConfig(this.maxObjectSize, this.maxCacheEntries, this.maxUpdateRetries, this.allow303Caching, this.weakETagOnPutDeleteAllowed, this.heuristicCachingEnabled, this.heuristicCoefficient, this.heuristicDefaultLifetime, this.isSharedCache, this.asynchronousWorkersMax, this.asynchronousWorkersCore, this.asynchronousWorkerIdleLifetimeSecs, this.revalidationQueueSize, this.neverCacheHTTP10ResponsesWithQuery);
        }

        public Builder setAllow303Caching(boolean z6) {
            this.allow303Caching = z6;
            return this;
        }

        public Builder setAsynchronousWorkerIdleLifetimeSecs(int i2) {
            this.asynchronousWorkerIdleLifetimeSecs = i2;
            return this;
        }

        public Builder setAsynchronousWorkersCore(int i2) {
            this.asynchronousWorkersCore = i2;
            return this;
        }

        public Builder setAsynchronousWorkersMax(int i2) {
            this.asynchronousWorkersMax = i2;
            return this;
        }

        public Builder setHeuristicCachingEnabled(boolean z6) {
            this.heuristicCachingEnabled = z6;
            return this;
        }

        public Builder setHeuristicCoefficient(float f3) {
            this.heuristicCoefficient = f3;
            return this;
        }

        public Builder setHeuristicDefaultLifetime(long j7) {
            this.heuristicDefaultLifetime = j7;
            return this;
        }

        public Builder setMaxCacheEntries(int i2) {
            this.maxCacheEntries = i2;
            return this;
        }

        public Builder setMaxObjectSize(long j7) {
            this.maxObjectSize = j7;
            return this;
        }

        public Builder setMaxUpdateRetries(int i2) {
            this.maxUpdateRetries = i2;
            return this;
        }

        public Builder setNeverCacheHTTP10ResponsesWithQueryString(boolean z6) {
            this.neverCacheHTTP10ResponsesWithQuery = z6;
            return this;
        }

        public Builder setRevalidationQueueSize(int i2) {
            this.revalidationQueueSize = i2;
            return this;
        }

        public Builder setSharedCache(boolean z6) {
            this.isSharedCache = z6;
            return this;
        }

        public Builder setWeakETagOnPutDeleteAllowed(boolean z6) {
            this.weakETagOnPutDeleteAllowed = z6;
            return this;
        }
    }

    @Deprecated
    public CacheConfig() {
        this.maxObjectSize = PlaybackStateCompat.ACTION_PLAY_FROM_URI;
        this.maxCacheEntries = 1000;
        this.maxUpdateRetries = 1;
        this.allow303Caching = false;
        this.weakETagOnPutDeleteAllowed = false;
        this.heuristicCachingEnabled = false;
        this.heuristicCoefficient = 0.1f;
        this.heuristicDefaultLifetime = 0L;
        this.isSharedCache = true;
        this.asynchronousWorkersMax = 1;
        this.asynchronousWorkersCore = 1;
        this.asynchronousWorkerIdleLifetimeSecs = 60;
        this.revalidationQueueSize = 100;
    }

    public static Builder copy(CacheConfig cacheConfig) {
        Args.notNull(cacheConfig, "Cache config");
        return new Builder().setMaxObjectSize(cacheConfig.getMaxObjectSize()).setMaxCacheEntries(cacheConfig.getMaxCacheEntries()).setMaxUpdateRetries(cacheConfig.getMaxUpdateRetries()).setHeuristicCachingEnabled(cacheConfig.isHeuristicCachingEnabled()).setHeuristicCoefficient(cacheConfig.getHeuristicCoefficient()).setHeuristicDefaultLifetime(cacheConfig.getHeuristicDefaultLifetime()).setSharedCache(cacheConfig.isSharedCache()).setAsynchronousWorkersMax(cacheConfig.getAsynchronousWorkersMax()).setAsynchronousWorkersCore(cacheConfig.getAsynchronousWorkersCore()).setAsynchronousWorkerIdleLifetimeSecs(cacheConfig.getAsynchronousWorkerIdleLifetimeSecs()).setRevalidationQueueSize(cacheConfig.getRevalidationQueueSize()).setNeverCacheHTTP10ResponsesWithQueryString(cacheConfig.isNeverCacheHTTP10ResponsesWithQuery());
    }

    public static Builder custom() {
        return new Builder();
    }

    public int getAsynchronousWorkerIdleLifetimeSecs() {
        return this.asynchronousWorkerIdleLifetimeSecs;
    }

    public int getAsynchronousWorkersCore() {
        return this.asynchronousWorkersCore;
    }

    public int getAsynchronousWorkersMax() {
        return this.asynchronousWorkersMax;
    }

    public float getHeuristicCoefficient() {
        return this.heuristicCoefficient;
    }

    public long getHeuristicDefaultLifetime() {
        return this.heuristicDefaultLifetime;
    }

    public int getMaxCacheEntries() {
        return this.maxCacheEntries;
    }

    public long getMaxObjectSize() {
        return this.maxObjectSize;
    }

    @Deprecated
    public int getMaxObjectSizeBytes() {
        long j7 = this.maxObjectSize;
        return j7 > 2147483647L ? Log.LOG_LEVEL_OFF : (int) j7;
    }

    public int getMaxUpdateRetries() {
        return this.maxUpdateRetries;
    }

    public int getRevalidationQueueSize() {
        return this.revalidationQueueSize;
    }

    public boolean is303CachingEnabled() {
        return this.allow303Caching;
    }

    public boolean isHeuristicCachingEnabled() {
        return this.heuristicCachingEnabled;
    }

    public boolean isNeverCacheHTTP10ResponsesWithQuery() {
        return this.neverCacheHTTP10ResponsesWithQuery;
    }

    public boolean isSharedCache() {
        return this.isSharedCache;
    }

    public boolean isWeakETagOnPutDeleteAllowed() {
        return this.weakETagOnPutDeleteAllowed;
    }

    @Deprecated
    public void setAsynchronousWorkerIdleLifetimeSecs(int i2) {
        this.asynchronousWorkerIdleLifetimeSecs = i2;
    }

    @Deprecated
    public void setAsynchronousWorkersCore(int i2) {
        this.asynchronousWorkersCore = i2;
    }

    @Deprecated
    public void setAsynchronousWorkersMax(int i2) {
        this.asynchronousWorkersMax = i2;
    }

    @Deprecated
    public void setHeuristicCachingEnabled(boolean z6) {
        this.heuristicCachingEnabled = z6;
    }

    @Deprecated
    public void setHeuristicCoefficient(float f3) {
        this.heuristicCoefficient = f3;
    }

    @Deprecated
    public void setHeuristicDefaultLifetime(long j7) {
        this.heuristicDefaultLifetime = j7;
    }

    @Deprecated
    public void setMaxCacheEntries(int i2) {
        this.maxCacheEntries = i2;
    }

    @Deprecated
    public void setMaxObjectSize(long j7) {
        this.maxObjectSize = j7;
    }

    @Deprecated
    public void setMaxObjectSizeBytes(int i2) {
        if (i2 > Integer.MAX_VALUE) {
            this.maxObjectSize = 2147483647L;
        } else {
            this.maxObjectSize = i2;
        }
    }

    @Deprecated
    public void setMaxUpdateRetries(int i2) {
        this.maxUpdateRetries = i2;
    }

    @Deprecated
    public void setRevalidationQueueSize(int i2) {
        this.revalidationQueueSize = i2;
    }

    @Deprecated
    public void setSharedCache(boolean z6) {
        this.isSharedCache = z6;
    }

    public String toString() {
        return "[maxObjectSize=" + this.maxObjectSize + ", maxCacheEntries=" + this.maxCacheEntries + ", maxUpdateRetries=" + this.maxUpdateRetries + ", 303CachingEnabled=" + this.allow303Caching + ", weakETagOnPutDeleteAllowed=" + this.weakETagOnPutDeleteAllowed + ", heuristicCachingEnabled=" + this.heuristicCachingEnabled + ", heuristicCoefficient=" + this.heuristicCoefficient + ", heuristicDefaultLifetime=" + this.heuristicDefaultLifetime + ", isSharedCache=" + this.isSharedCache + ", asynchronousWorkersMax=" + this.asynchronousWorkersMax + ", asynchronousWorkersCore=" + this.asynchronousWorkersCore + ", asynchronousWorkerIdleLifetimeSecs=" + this.asynchronousWorkerIdleLifetimeSecs + ", revalidationQueueSize=" + this.revalidationQueueSize + ", neverCacheHTTP10ResponsesWithQuery=" + this.neverCacheHTTP10ResponsesWithQuery + "]";
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public CacheConfig m87clone() throws CloneNotSupportedException {
        return (CacheConfig) super.clone();
    }

    public CacheConfig(long j7, int i2, int i7, boolean z6, boolean z7, boolean z8, float f3, long j8, boolean z9, int i8, int i9, int i10, int i11, boolean z10) {
        this.maxObjectSize = j7;
        this.maxCacheEntries = i2;
        this.maxUpdateRetries = i7;
        this.allow303Caching = z6;
        this.weakETagOnPutDeleteAllowed = z7;
        this.heuristicCachingEnabled = z8;
        this.heuristicCoefficient = f3;
        this.heuristicDefaultLifetime = j8;
        this.isSharedCache = z9;
        this.asynchronousWorkersMax = i8;
        this.asynchronousWorkersCore = i9;
        this.asynchronousWorkerIdleLifetimeSecs = i10;
        this.revalidationQueueSize = i11;
    }
}
