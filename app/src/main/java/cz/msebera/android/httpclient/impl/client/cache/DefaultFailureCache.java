package cz.msebera.android.httpclient.impl.client.cache;

import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes2.dex */
public class DefaultFailureCache implements FailureCache {
    static final int DEFAULT_MAX_SIZE = 1000;
    static final int MAX_UPDATE_TRIES = 10;
    private final int maxSize;
    private final ConcurrentMap<String, FailureCacheValue> storage;

    public DefaultFailureCache() {
        this(1000);
    }

    private FailureCacheValue findValueWithOldestTimestamp() {
        long j7 = Long.MAX_VALUE;
        FailureCacheValue failureCacheValue = null;
        for (Map.Entry<String, FailureCacheValue> entry : this.storage.entrySet()) {
            long creationTimeInNanos = entry.getValue().getCreationTimeInNanos();
            if (creationTimeInNanos < j7) {
                failureCacheValue = entry.getValue();
                j7 = creationTimeInNanos;
            }
        }
        return failureCacheValue;
    }

    private void removeOldestEntryIfMapSizeExceeded() {
        FailureCacheValue findValueWithOldestTimestamp;
        if (this.storage.size() <= this.maxSize || (findValueWithOldestTimestamp = findValueWithOldestTimestamp()) == null) {
            return;
        }
        this.storage.remove(findValueWithOldestTimestamp.getKey(), findValueWithOldestTimestamp);
    }

    private void updateValue(String str) {
        for (int i2 = 0; i2 < 10; i2++) {
            FailureCacheValue failureCacheValue = this.storage.get(str);
            if (failureCacheValue == null) {
                if (this.storage.putIfAbsent(str, new FailureCacheValue(str, 1)) == null) {
                    return;
                }
            } else {
                int errorCount = failureCacheValue.getErrorCount();
                if (errorCount == Integer.MAX_VALUE) {
                    return;
                }
                if (this.storage.replace(str, failureCacheValue, new FailureCacheValue(str, errorCount + 1))) {
                    return;
                }
            }
        }
    }

    @Override // cz.msebera.android.httpclient.impl.client.cache.FailureCache
    public int getErrorCount(String str) {
        if (str == null) {
            throw new IllegalArgumentException("identifier may not be null");
        }
        FailureCacheValue failureCacheValue = this.storage.get(str);
        if (failureCacheValue != null) {
            return failureCacheValue.getErrorCount();
        }
        return 0;
    }

    @Override // cz.msebera.android.httpclient.impl.client.cache.FailureCache
    public void increaseErrorCount(String str) {
        if (str == null) {
            throw new IllegalArgumentException("identifier may not be null");
        }
        updateValue(str);
        removeOldestEntryIfMapSizeExceeded();
    }

    @Override // cz.msebera.android.httpclient.impl.client.cache.FailureCache
    public void resetErrorCount(String str) {
        if (str == null) {
            throw new IllegalArgumentException("identifier may not be null");
        }
        this.storage.remove(str);
    }

    public DefaultFailureCache(int i2) {
        this.maxSize = i2;
        this.storage = new ConcurrentHashMap();
    }
}
