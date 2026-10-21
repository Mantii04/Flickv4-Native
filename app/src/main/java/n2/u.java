package n2;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

/* loaded from: classes.dex */
public abstract class u {

    /* renamed from: a, reason: collision with root package name */
    public static final C1412q f18990a;

    /* renamed from: b, reason: collision with root package name */
    public static final C1413r f18991b;

    /* renamed from: c, reason: collision with root package name */
    public static final C1414s f18992c;

    /* renamed from: d, reason: collision with root package name */
    public static final C1415t f18993d;

    static {
        new C1411p();
        f18990a = new C1412q();
        f18991b = new C1413r();
        f18992c = new C1414s();
        f18993d = new C1415t();
    }

    public abstract boolean decodeCachedData();

    public abstract boolean decodeCachedResource();

    public abstract boolean isDataCacheable(DataSource dataSource);

    public abstract boolean isResourceCacheable(boolean z6, DataSource dataSource, EncodeStrategy encodeStrategy);
}
