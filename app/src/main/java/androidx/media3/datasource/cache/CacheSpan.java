package androidx.media3.datasource.cache;

import A.i;
import androidx.media3.common.C;
import androidx.media3.common.util.UnstableApi;
import java.io.File;

@UnstableApi
/* loaded from: classes.dex */
public class CacheSpan implements Comparable<CacheSpan> {
    public final File file;
    public final boolean isCached;
    public final String key;
    public final long lastTouchTimestamp;
    public final long length;
    public final long position;

    public CacheSpan(String str, long j7, long j8) {
        this(str, j7, j8, C.TIME_UNSET, null);
    }

    public boolean isHoleSpan() {
        return !this.isCached;
    }

    public boolean isOpenEnded() {
        return this.length == -1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.position);
        sb.append(", ");
        return i.n(sb, this.length, "]");
    }

    public CacheSpan(String str, long j7, long j8, long j9, File file) {
        this.key = str;
        this.position = j7;
        this.length = j8;
        this.isCached = file != null;
        this.file = file;
        this.lastTouchTimestamp = j9;
    }

    @Override // java.lang.Comparable
    public int compareTo(CacheSpan cacheSpan) {
        if (!this.key.equals(cacheSpan.key)) {
            return this.key.compareTo(cacheSpan.key);
        }
        long j7 = this.position - cacheSpan.position;
        if (j7 == 0) {
            return 0;
        }
        return j7 < 0 ? -1 : 1;
    }
}
