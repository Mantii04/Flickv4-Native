package n2;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

/* renamed from: n2.r, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1413r extends u {
    @Override // n2.u
    public boolean decodeCachedData() {
        return true;
    }

    @Override // n2.u
    public boolean decodeCachedResource() {
        return false;
    }

    @Override // n2.u
    public boolean isDataCacheable(DataSource dataSource) {
        return (dataSource == DataSource.f9181f || dataSource == DataSource.f9183m) ? false : true;
    }

    @Override // n2.u
    public boolean isResourceCacheable(boolean z6, DataSource dataSource, EncodeStrategy encodeStrategy) {
        return false;
    }
}
