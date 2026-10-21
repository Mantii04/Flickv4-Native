package androidx.media3.datasource.cache;

import A.i;
import P3.v;
import androidx.media3.common.C;
import androidx.media3.common.util.Util;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class SimpleCacheSpan extends CacheSpan {
    private static final Pattern CACHE_FILE_PATTERN_V1 = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    private static final Pattern CACHE_FILE_PATTERN_V2 = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    private static final Pattern CACHE_FILE_PATTERN_V3 = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);
    static final String COMMON_SUFFIX = ".exo";
    private static final String SUFFIX = ".v3.exo";

    private SimpleCacheSpan(String str, long j7, long j8, long j9, File file) {
        super(str, j7, j8, j9, file);
    }

    public static SimpleCacheSpan createCacheEntry(File file, long j7, CachedContentIndex cachedContentIndex) {
        return createCacheEntry(file, j7, C.TIME_UNSET, cachedContentIndex);
    }

    public static SimpleCacheSpan createHole(String str, long j7, long j8) {
        return new SimpleCacheSpan(str, j7, j8, C.TIME_UNSET, null);
    }

    public static SimpleCacheSpan createLookup(String str, long j7) {
        return new SimpleCacheSpan(str, j7, -1L, C.TIME_UNSET, null);
    }

    public static File getCacheFile(File file, int i2, long j7, long j8) {
        StringBuilder sb = new StringBuilder();
        sb.append(i2);
        sb.append(".");
        sb.append(j7);
        sb.append(".");
        return new File(file, i.n(sb, j8, SUFFIX));
    }

    private static File upgradeFile(File file, CachedContentIndex cachedContentIndex) {
        String str;
        String name = file.getName();
        Matcher matcher = CACHE_FILE_PATTERN_V2.matcher(name);
        if (matcher.matches()) {
            str = Util.unescapeFileName((String) v.checkNotNull(matcher.group(1)));
        } else {
            matcher = CACHE_FILE_PATTERN_V1.matcher(name);
            str = matcher.matches() ? (String) v.checkNotNull(matcher.group(1)) : null;
        }
        if (str == null) {
            return null;
        }
        File cacheFile = getCacheFile((File) v.checkNotNull(file.getParentFile()), cachedContentIndex.assignIdForKey(str), Long.parseLong((String) v.checkNotNull(matcher.group(2))), Long.parseLong((String) v.checkNotNull(matcher.group(3))));
        if (file.renameTo(cacheFile)) {
            return cacheFile;
        }
        return null;
    }

    public SimpleCacheSpan copyWithFileAndLastTouchTimestamp(File file, long j7) {
        v.checkState(this.isCached);
        return new SimpleCacheSpan(this.key, this.position, this.length, j7, file);
    }

    public static SimpleCacheSpan createCacheEntry(File file, long j7, long j8, CachedContentIndex cachedContentIndex) {
        String keyForId;
        String name = file.getName();
        if (!name.endsWith(SUFFIX)) {
            file = upgradeFile(file, cachedContentIndex);
            if (file == null) {
                return null;
            }
            name = file.getName();
        }
        File file2 = file;
        Matcher matcher = CACHE_FILE_PATTERN_V3.matcher(name);
        if (!matcher.matches() || (keyForId = cachedContentIndex.getKeyForId(Integer.parseInt((String) v.checkNotNull(matcher.group(1))))) == null) {
            return null;
        }
        if (j7 == -1) {
            j7 = file2.length();
        }
        long j9 = j7;
        if (j9 == 0) {
            return null;
        }
        return new SimpleCacheSpan(keyForId, Long.parseLong((String) v.checkNotNull(matcher.group(2))), j9, j8 == C.TIME_UNSET ? Long.parseLong((String) v.checkNotNull(matcher.group(3))) : j8, file2);
    }
}
