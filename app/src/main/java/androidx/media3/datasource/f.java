package androidx.media3.datasource;

import P3.w;
import androidx.media3.datasource.DefaultHttpDataSource;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements w {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7173b;

    public /* synthetic */ f(int i2) {
        this.f7173b = i2;
    }

    @Override // P3.w
    public final boolean apply(Object obj) {
        boolean lambda$entrySet$1;
        boolean lambda$keySet$0;
        switch (this.f7173b) {
            case 0:
                lambda$entrySet$1 = DefaultHttpDataSource.NullFilteringHeadersMap.lambda$entrySet$1((Map.Entry) obj);
                return lambda$entrySet$1;
            case 1:
                lambda$keySet$0 = DefaultHttpDataSource.NullFilteringHeadersMap.lambda$keySet$0((String) obj);
                return lambda$keySet$0;
            default:
                return g.a((String) obj);
        }
    }
}
