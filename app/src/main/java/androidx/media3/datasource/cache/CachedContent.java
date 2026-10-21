package androidx.media3.datasource.cache;

import A.i;
import P3.v;
import androidx.media3.common.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.TreeSet;

/* loaded from: classes.dex */
final class CachedContent {
    private static final String TAG = "CachedContent";
    private final TreeSet<SimpleCacheSpan> cachedSpans;
    public final int id;
    public final String key;
    private final ArrayList<Range> lockedRanges;
    private DefaultContentMetadata metadata;

    public static final class Range {
        public final long length;
        public final long position;

        public Range(long j7, long j8) {
            this.position = j7;
            this.length = j8;
        }

        public boolean contains(long j7, long j8) {
            long j9 = this.length;
            if (j9 == -1) {
                return j7 >= this.position;
            }
            if (j8 == -1) {
                return false;
            }
            long j10 = this.position;
            return j10 <= j7 && j7 + j8 <= j10 + j9;
        }

        public boolean intersects(long j7, long j8) {
            long j9 = this.position;
            if (j9 > j7) {
                return j8 == -1 || j7 + j8 > j9;
            }
            long j10 = this.length;
            return j10 == -1 || j9 + j10 > j7;
        }
    }

    public CachedContent(int i2, String str) {
        this(i2, str, DefaultContentMetadata.EMPTY);
    }

    public void addSpan(SimpleCacheSpan simpleCacheSpan) {
        this.cachedSpans.add(simpleCacheSpan);
    }

    public boolean applyMetadataMutations(ContentMetadataMutations contentMetadataMutations) {
        this.metadata = this.metadata.copyWithMutationsApplied(contentMetadataMutations);
        return !r2.equals(r0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && CachedContent.class == obj.getClass()) {
            CachedContent cachedContent = (CachedContent) obj;
            if (this.id == cachedContent.id && this.key.equals(cachedContent.key) && this.cachedSpans.equals(cachedContent.cachedSpans) && this.metadata.equals(cachedContent.metadata)) {
                return true;
            }
        }
        return false;
    }

    public long getCachedBytesLength(long j7, long j8) {
        v.checkArgument(j7 >= 0);
        v.checkArgument(j8 >= 0);
        SimpleCacheSpan span = getSpan(j7, j8);
        if (span.isHoleSpan()) {
            return -Math.min(span.isOpenEnded() ? Long.MAX_VALUE : span.length, j8);
        }
        long j9 = j7 + j8;
        long j10 = j9 >= 0 ? j9 : Long.MAX_VALUE;
        long j11 = span.position + span.length;
        if (j11 < j10) {
            for (SimpleCacheSpan simpleCacheSpan : this.cachedSpans.tailSet(span, false)) {
                long j12 = simpleCacheSpan.position;
                if (j12 > j11) {
                    break;
                }
                j11 = Math.max(j11, j12 + simpleCacheSpan.length);
                if (j11 >= j10) {
                    break;
                }
            }
        }
        return Math.min(j11 - j7, j8);
    }

    public DefaultContentMetadata getMetadata() {
        return this.metadata;
    }

    public SimpleCacheSpan getSpan(long j7, long j8) {
        SimpleCacheSpan createLookup = SimpleCacheSpan.createLookup(this.key, j7);
        SimpleCacheSpan floor = this.cachedSpans.floor(createLookup);
        if (floor != null && floor.position + floor.length > j7) {
            return floor;
        }
        SimpleCacheSpan ceiling = this.cachedSpans.ceiling(createLookup);
        if (ceiling != null) {
            long j9 = ceiling.position - j7;
            j8 = j8 == -1 ? j9 : Math.min(j9, j8);
        }
        return SimpleCacheSpan.createHole(this.key, j7, j8);
    }

    public TreeSet<SimpleCacheSpan> getSpans() {
        return this.cachedSpans;
    }

    public int hashCode() {
        return this.metadata.hashCode() + i.b(this.id * 31, 31, this.key);
    }

    public boolean isEmpty() {
        return this.cachedSpans.isEmpty();
    }

    public boolean isFullyLocked(long j7, long j8) {
        for (int i2 = 0; i2 < this.lockedRanges.size(); i2++) {
            if (this.lockedRanges.get(i2).contains(j7, j8)) {
                return true;
            }
        }
        return false;
    }

    public boolean isFullyUnlocked() {
        return this.lockedRanges.isEmpty();
    }

    public boolean lockRange(long j7, long j8) {
        for (int i2 = 0; i2 < this.lockedRanges.size(); i2++) {
            if (this.lockedRanges.get(i2).intersects(j7, j8)) {
                return false;
            }
        }
        this.lockedRanges.add(new Range(j7, j8));
        return true;
    }

    public boolean removeSpan(CacheSpan cacheSpan) {
        if (!this.cachedSpans.remove(cacheSpan)) {
            return false;
        }
        File file = cacheSpan.file;
        if (file == null) {
            return true;
        }
        file.delete();
        return true;
    }

    public SimpleCacheSpan setLastTouchTimestamp(SimpleCacheSpan simpleCacheSpan, long j7, boolean z6) {
        long j8;
        v.checkState(this.cachedSpans.remove(simpleCacheSpan));
        File file = (File) v.checkNotNull(simpleCacheSpan.file);
        if (z6) {
            j8 = j7;
            File cacheFile = SimpleCacheSpan.getCacheFile((File) v.checkNotNull(file.getParentFile()), this.id, simpleCacheSpan.position, j8);
            if (file.renameTo(cacheFile)) {
                file = cacheFile;
            } else {
                Log.w(TAG, "Failed to rename " + file + " to " + cacheFile);
            }
        } else {
            j8 = j7;
        }
        SimpleCacheSpan copyWithFileAndLastTouchTimestamp = simpleCacheSpan.copyWithFileAndLastTouchTimestamp(file, j8);
        this.cachedSpans.add(copyWithFileAndLastTouchTimestamp);
        return copyWithFileAndLastTouchTimestamp;
    }

    public void unlockRange(long j7) {
        for (int i2 = 0; i2 < this.lockedRanges.size(); i2++) {
            if (this.lockedRanges.get(i2).position == j7) {
                this.lockedRanges.remove(i2);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public CachedContent(int i2, String str, DefaultContentMetadata defaultContentMetadata) {
        this.id = i2;
        this.key = str;
        this.metadata = defaultContentMetadata;
        this.cachedSpans = new TreeSet<>();
        this.lockedRanges = new ArrayList<>();
    }
}
