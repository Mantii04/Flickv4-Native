package cz.msebera.android.httpclient.pool;

/* loaded from: classes2.dex */
public interface ConnPoolControl<T> {
    int getDefaultMaxPerRoute();

    int getMaxPerRoute(T t6);

    int getMaxTotal();

    PoolStats getStats(T t6);

    PoolStats getTotalStats();

    void setDefaultMaxPerRoute(int i2);

    void setMaxPerRoute(T t6, int i2);

    void setMaxTotal(int i2);
}
