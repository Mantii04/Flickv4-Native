package n2;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

/* renamed from: n2.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1414s extends u {
    @Override // n2.u
    public boolean decodeCachedData() {
        return false;
    }

    @Override // n2.u
    public boolean decodeCachedResource() {
        return true;
    }

    @Override // n2.u
    public boolean isDataCacheable(DataSource dataSource) {
        return false;
    }

    @Override // n2.u
    public boolean isResourceCacheable(boolean z6, DataSource dataSource, EncodeStrategy encodeStrategy) {
        return (dataSource == DataSource.f9182j || dataSource == DataSource.f9183m) ? false : true;
    }
}
