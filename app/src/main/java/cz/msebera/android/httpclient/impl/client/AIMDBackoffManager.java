package cz.msebera.android.httpclient.impl.client;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import cz.msebera.android.httpclient.client.BackoffManager;
import cz.msebera.android.httpclient.conn.routing.HttpRoute;
import cz.msebera.android.httpclient.pool.ConnPoolControl;
import cz.msebera.android.httpclient.util.Args;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class AIMDBackoffManager implements BackoffManager {
    private double backoffFactor;
    private int cap;
    private final Clock clock;
    private final ConnPoolControl<HttpRoute> connPerRoute;
    private long coolDown;
    private final Map<HttpRoute, Long> lastRouteBackoffs;
    private final Map<HttpRoute, Long> lastRouteProbes;

    public AIMDBackoffManager(ConnPoolControl<HttpRoute> connPoolControl) {
        this(connPoolControl, new SystemClock());
    }

    private int getBackedOffPoolSize(int i2) {
        if (i2 <= 1) {
            return 1;
        }
        return (int) Math.floor(this.backoffFactor * i2);
    }

    private Long getLastUpdate(Map<HttpRoute, Long> map, HttpRoute httpRoute) {
        Long l7 = map.get(httpRoute);
        if (l7 == null) {
            return 0L;
        }
        return l7;
    }

    @Override // cz.msebera.android.httpclient.client.BackoffManager
    public void backOff(HttpRoute httpRoute) {
        synchronized (this.connPerRoute) {
            try {
                int maxPerRoute = this.connPerRoute.getMaxPerRoute(httpRoute);
                Long lastUpdate = getLastUpdate(this.lastRouteBackoffs, httpRoute);
                long currentTime = this.clock.getCurrentTime();
                if (currentTime - lastUpdate.longValue() < this.coolDown) {
                    return;
                }
                this.connPerRoute.setMaxPerRoute(httpRoute, getBackedOffPoolSize(maxPerRoute));
                this.lastRouteBackoffs.put(httpRoute, Long.valueOf(currentTime));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // cz.msebera.android.httpclient.client.BackoffManager
    public void probe(HttpRoute httpRoute) {
        synchronized (this.connPerRoute) {
            try {
                int maxPerRoute = this.connPerRoute.getMaxPerRoute(httpRoute);
                int i2 = this.cap;
                if (maxPerRoute < i2) {
                    i2 = maxPerRoute + 1;
                }
                Long lastUpdate = getLastUpdate(this.lastRouteProbes, httpRoute);
                Long lastUpdate2 = getLastUpdate(this.lastRouteBackoffs, httpRoute);
                long currentTime = this.clock.getCurrentTime();
                if (currentTime - lastUpdate.longValue() >= this.coolDown && currentTime - lastUpdate2.longValue() >= this.coolDown) {
                    this.connPerRoute.setMaxPerRoute(httpRoute, i2);
                    this.lastRouteProbes.put(httpRoute, Long.valueOf(currentTime));
                }
            } finally {
            }
        }
    }

    public void setBackoffFactor(double d7) {
        Args.check(d7 > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && d7 < 1.0d, "Backoff factor must be 0.0 < f < 1.0");
        this.backoffFactor = d7;
    }

    public void setCooldownMillis(long j7) {
        Args.positive(this.coolDown, "Cool down");
        this.coolDown = j7;
    }

    public void setPerHostConnectionCap(int i2) {
        Args.positive(i2, "Per host connection cap");
        this.cap = i2;
    }

    public AIMDBackoffManager(ConnPoolControl<HttpRoute> connPoolControl, Clock clock) {
        this.coolDown = 5000L;
        this.backoffFactor = 0.5d;
        this.cap = 2;
        this.clock = clock;
        this.connPerRoute = connPoolControl;
        this.lastRouteProbes = new HashMap();
        this.lastRouteBackoffs = new HashMap();
    }
}
