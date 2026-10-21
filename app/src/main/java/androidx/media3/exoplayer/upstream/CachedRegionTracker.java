package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheSpan;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeSet;
import v0.r;

@UnstableApi
/* loaded from: classes.dex */
public final class CachedRegionTracker implements Cache.Listener {
    public static final int CACHED_TO_END = -2;
    public static final int NOT_CACHED = -1;
    private static final String TAG = "CachedRegionTracker";
    private final Cache cache;
    private final String cacheKey;
    private final r chunkIndex;
    private final TreeSet<Region> regions = new TreeSet<>();
    private final Region lookupRegion = new Region(0, 0);

    public static class Region implements Comparable<Region> {
        public long endOffset;
        public int endOffsetIndex;
        public long startOffset;

        public Region(long j7, long j8) {
            this.startOffset = j7;
            this.endOffset = j8;
        }

        @Override // java.lang.Comparable
        public int compareTo(Region region) {
            return Long.compare(this.startOffset, region.startOffset);
        }
    }

    public CachedRegionTracker(Cache cache, String str, r rVar) {
        this.cache = cache;
        this.cacheKey = str;
        this.chunkIndex = rVar;
        synchronized (this) {
            try {
                Iterator<CacheSpan> descendingIterator = cache.addListener(str, this).descendingIterator();
                while (descendingIterator.hasNext()) {
                    mergeSpan(descendingIterator.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void mergeSpan(CacheSpan cacheSpan) {
        long j7 = cacheSpan.position;
        Region region = new Region(j7, cacheSpan.length + j7);
        Region floor = this.regions.floor(region);
        Region ceiling = this.regions.ceiling(region);
        boolean regionsConnect = regionsConnect(floor, region);
        if (regionsConnect(region, ceiling)) {
            if (regionsConnect) {
                floor.endOffset = ceiling.endOffset;
                floor.endOffsetIndex = ceiling.endOffsetIndex;
            } else {
                region.endOffset = ceiling.endOffset;
                region.endOffsetIndex = ceiling.endOffsetIndex;
                this.regions.add(region);
            }
            this.regions.remove(ceiling);
            return;
        }
        if (!regionsConnect) {
            int binarySearch = Arrays.binarySearch(this.chunkIndex.f20519c, region.endOffset);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            region.endOffsetIndex = binarySearch;
            this.regions.add(region);
            return;
        }
        floor.endOffset = region.endOffset;
        int i2 = floor.endOffsetIndex;
        while (true) {
            r rVar = this.chunkIndex;
            if (i2 >= rVar.f20517a - 1) {
                break;
            }
            int i7 = i2 + 1;
            if (rVar.f20519c[i7] > floor.endOffset) {
                break;
            } else {
                i2 = i7;
            }
        }
        floor.endOffsetIndex = i2;
    }

    private boolean regionsConnect(Region region, Region region2) {
        return (region == null || region2 == null || region.endOffset != region2.startOffset) ? false : true;
    }

    public synchronized int getRegionEndTimeMs(long j7) {
        int i2;
        Region region = this.lookupRegion;
        region.startOffset = j7;
        Region floor = this.regions.floor(region);
        if (floor != null) {
            long j8 = floor.endOffset;
            if (j7 <= j8 && (i2 = floor.endOffsetIndex) != -1) {
                r rVar = this.chunkIndex;
                if (i2 == rVar.f20517a - 1) {
                    if (j8 == rVar.f20519c[i2] + rVar.f20518b[i2]) {
                        return -2;
                    }
                }
                return (int) ((rVar.f20521e[i2] + ((rVar.f20520d[i2] * (j8 - rVar.f20519c[i2])) / rVar.f20518b[i2])) / 1000);
            }
        }
        return -1;
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public synchronized void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
        mergeSpan(cacheSpan);
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public synchronized void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
        long j7 = cacheSpan.position;
        Region region = new Region(j7, cacheSpan.length + j7);
        Region floor = this.regions.floor(region);
        if (floor == null) {
            Log.e(TAG, "Removed a span we were not aware of");
            return;
        }
        this.regions.remove(floor);
        long j8 = floor.startOffset;
        long j9 = region.startOffset;
        if (j8 < j9) {
            Region region2 = new Region(j8, j9);
            int binarySearch = Arrays.binarySearch(this.chunkIndex.f20519c, region2.endOffset);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            region2.endOffsetIndex = binarySearch;
            this.regions.add(region2);
        }
        long j10 = floor.endOffset;
        long j11 = region.endOffset;
        if (j10 > j11) {
            Region region3 = new Region(j11 + 1, j10);
            region3.endOffsetIndex = floor.endOffsetIndex;
            this.regions.add(region3);
        }
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
    }

    public void release() {
        this.cache.removeListener(this.cacheKey, this);
    }
}
