package androidx.media3.datasource.cache;

import J0.g;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSpec;

@UnstableApi
/* loaded from: classes.dex */
public interface CacheKeyFactory {
    public static final CacheKeyFactory DEFAULT = new g(24);

    String buildCacheKey(DataSpec dataSpec);
}
