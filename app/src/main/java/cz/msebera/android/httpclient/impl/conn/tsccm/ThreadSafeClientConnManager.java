package cz.msebera.android.httpclient.impl.conn.tsccm;

import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.conn.ClientConnectionManager;
import cz.msebera.android.httpclient.conn.ClientConnectionOperator;
import cz.msebera.android.httpclient.conn.ClientConnectionRequest;
import cz.msebera.android.httpclient.conn.ConnectionPoolTimeoutException;
import cz.msebera.android.httpclient.conn.ManagedClientConnection;
import cz.msebera.android.httpclient.conn.params.ConnPerRouteBean;
import cz.msebera.android.httpclient.conn.routing.HttpRoute;
import cz.msebera.android.httpclient.conn.scheme.SchemeRegistry;
import cz.msebera.android.httpclient.extras.HttpClientAndroidLog;
import cz.msebera.android.httpclient.impl.conn.DefaultClientConnectionOperator;
import cz.msebera.android.httpclient.impl.conn.SchemeRegistryFactory;
import cz.msebera.android.httpclient.params.HttpParams;
import cz.msebera.android.httpclient.util.Args;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.StringUtils;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
@Deprecated
/* loaded from: classes2.dex */
public class ThreadSafeClientConnManager implements ClientConnectionManager {
    protected final ClientConnectionOperator connOperator;
    protected final ConnPerRouteBean connPerRoute;
    protected final AbstractConnPool connectionPool;
    private final HttpClientAndroidLog log;
    protected final ConnPoolByRoute pool;
    protected final SchemeRegistry schemeRegistry;

    public ThreadSafeClientConnManager(SchemeRegistry schemeRegistry) {
        this(schemeRegistry, -1L, TimeUnit.MILLISECONDS);
    }

    @Override // cz.msebera.android.httpclient.conn.ClientConnectionManager
    public void closeExpiredConnections() {
        this.log.debug("Closing expired connections");
        this.pool.closeExpiredConnections();
    }

    @Override // cz.msebera.android.httpclient.conn.ClientConnectionManager
    public void closeIdleConnections(long j7, TimeUnit timeUnit) {
        if (this.log.isDebugEnabled()) {
            this.log.debug("Closing connections idle longer than " + j7 + StringUtils.SPACE + timeUnit);
        }
        this.pool.closeIdleConnections(j7, timeUnit);
    }

    public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry) {
        return new DefaultClientConnectionOperator(schemeRegistry);
    }

    @Deprecated
    public AbstractConnPool createConnectionPool(HttpParams httpParams) {
        return new ConnPoolByRoute(this.connOperator, httpParams);
    }

    public void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    public int getConnectionsInPool(HttpRoute httpRoute) {
        return this.pool.getConnectionsInPool(httpRoute);
    }

    public int getDefaultMaxPerRoute() {
        return this.connPerRoute.getDefaultMaxPerRoute();
    }

    public int getMaxForRoute(HttpRoute httpRoute) {
        return this.connPerRoute.getMaxForRoute(httpRoute);
    }

    public int getMaxTotal() {
        return this.pool.getMaxTotalConnections();
    }

    @Override // cz.msebera.android.httpclient.conn.ClientConnectionManager
    public SchemeRegistry getSchemeRegistry() {
        return this.schemeRegistry;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00b1  */
    @Override // cz.msebera.android.httpclient.conn.ClientConnectionManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void releaseConnection(cz.msebera.android.httpclient.conn.ManagedClientConnection r8, long r9, java.util.concurrent.TimeUnit r11) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof cz.msebera.android.httpclient.impl.conn.tsccm.BasicPooledConnAdapter
            java.lang.String r1 = "Connection class mismatch, connection not obtained from this manager"
            cz.msebera.android.httpclient.util.Args.check(r0, r1)
            cz.msebera.android.httpclient.impl.conn.tsccm.BasicPooledConnAdapter r8 = (cz.msebera.android.httpclient.impl.conn.tsccm.BasicPooledConnAdapter) r8
            cz.msebera.android.httpclient.impl.conn.AbstractPoolEntry r0 = r8.getPoolEntry()
            if (r0 == 0) goto L1d
            cz.msebera.android.httpclient.conn.ClientConnectionManager r0 = r8.getManager()
            if (r0 != r7) goto L17
            r0 = 1
            goto L18
        L17:
            r0 = 0
        L18:
            java.lang.String r1 = "Connection not obtained from this manager"
            cz.msebera.android.httpclient.util.Asserts.check(r0, r1)
        L1d:
            monitor-enter(r8)
            cz.msebera.android.httpclient.impl.conn.AbstractPoolEntry r0 = r8.getPoolEntry()     // Catch: java.lang.Throwable -> L29
            r2 = r0
            cz.msebera.android.httpclient.impl.conn.tsccm.BasicPoolEntry r2 = (cz.msebera.android.httpclient.impl.conn.tsccm.BasicPoolEntry) r2     // Catch: java.lang.Throwable -> L29
            if (r2 != 0) goto L2d
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L29
            return
        L29:
            r0 = move-exception
            r9 = r0
            goto Lcb
        L2d:
            boolean r0 = r8.isOpen()     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L42
            if (r0 == 0) goto L46
            boolean r0 = r8.isMarkedReusable()     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L42
            if (r0 != 0) goto L46
            r8.shutdown()     // Catch: java.lang.Throwable -> L3d java.io.IOException -> L42
            goto L46
        L3d:
            r0 = move-exception
            r4 = r9
            r6 = r11
            goto La5
        L42:
            r0 = move-exception
            r4 = r9
            r6 = r11
            goto L6e
        L46:
            boolean r3 = r8.isMarkedReusable()     // Catch: java.lang.Throwable -> L29
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r0 = r7.log     // Catch: java.lang.Throwable -> L29
            boolean r0 = r0.isDebugEnabled()     // Catch: java.lang.Throwable -> L29
            if (r0 == 0) goto L63
            if (r3 == 0) goto L5c
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r0 = r7.log     // Catch: java.lang.Throwable -> L29
            java.lang.String r1 = "Released connection is reusable."
            r0.debug(r1)     // Catch: java.lang.Throwable -> L29
            goto L63
        L5c:
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r0 = r7.log     // Catch: java.lang.Throwable -> L29
            java.lang.String r1 = "Released connection is not reusable."
            r0.debug(r1)     // Catch: java.lang.Throwable -> L29
        L63:
            r8.detach()     // Catch: java.lang.Throwable -> L29
            cz.msebera.android.httpclient.impl.conn.tsccm.ConnPoolByRoute r1 = r7.pool     // Catch: java.lang.Throwable -> L29
            r4 = r9
            r6 = r11
        L6a:
            r1.freeEntry(r2, r3, r4, r6)     // Catch: java.lang.Throwable -> L29
            goto La3
        L6e:
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r9 = r7.log     // Catch: java.lang.Throwable -> L7e
            boolean r9 = r9.isDebugEnabled()     // Catch: java.lang.Throwable -> L7e
            if (r9 == 0) goto L80
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r9 = r7.log     // Catch: java.lang.Throwable -> L7e
            java.lang.String r10 = "Exception shutting down released connection."
            r9.debug(r10, r0)     // Catch: java.lang.Throwable -> L7e
            goto L80
        L7e:
            r0 = move-exception
            goto La5
        L80:
            boolean r3 = r8.isMarkedReusable()     // Catch: java.lang.Throwable -> L29
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r9 = r7.log     // Catch: java.lang.Throwable -> L29
            boolean r9 = r9.isDebugEnabled()     // Catch: java.lang.Throwable -> L29
            if (r9 == 0) goto L9d
            if (r3 == 0) goto L96
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r9 = r7.log     // Catch: java.lang.Throwable -> L29
            java.lang.String r10 = "Released connection is reusable."
            r9.debug(r10)     // Catch: java.lang.Throwable -> L29
            goto L9d
        L96:
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r9 = r7.log     // Catch: java.lang.Throwable -> L29
            java.lang.String r10 = "Released connection is not reusable."
            r9.debug(r10)     // Catch: java.lang.Throwable -> L29
        L9d:
            r8.detach()     // Catch: java.lang.Throwable -> L29
            cz.msebera.android.httpclient.impl.conn.tsccm.ConnPoolByRoute r1 = r7.pool     // Catch: java.lang.Throwable -> L29
            goto L6a
        La3:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L29
            return
        La5:
            boolean r3 = r8.isMarkedReusable()     // Catch: java.lang.Throwable -> L29
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r9 = r7.log     // Catch: java.lang.Throwable -> L29
            boolean r9 = r9.isDebugEnabled()     // Catch: java.lang.Throwable -> L29
            if (r9 == 0) goto Lc2
            if (r3 == 0) goto Lbb
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r9 = r7.log     // Catch: java.lang.Throwable -> L29
            java.lang.String r10 = "Released connection is reusable."
            r9.debug(r10)     // Catch: java.lang.Throwable -> L29
            goto Lc2
        Lbb:
            cz.msebera.android.httpclient.extras.HttpClientAndroidLog r9 = r7.log     // Catch: java.lang.Throwable -> L29
            java.lang.String r10 = "Released connection is not reusable."
            r9.debug(r10)     // Catch: java.lang.Throwable -> L29
        Lc2:
            r8.detach()     // Catch: java.lang.Throwable -> L29
            cz.msebera.android.httpclient.impl.conn.tsccm.ConnPoolByRoute r1 = r7.pool     // Catch: java.lang.Throwable -> L29
            r1.freeEntry(r2, r3, r4, r6)     // Catch: java.lang.Throwable -> L29
            throw r0     // Catch: java.lang.Throwable -> L29
        Lcb:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L29
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: cz.msebera.android.httpclient.impl.conn.tsccm.ThreadSafeClientConnManager.releaseConnection(cz.msebera.android.httpclient.conn.ManagedClientConnection, long, java.util.concurrent.TimeUnit):void");
    }

    @Override // cz.msebera.android.httpclient.conn.ClientConnectionManager
    public ClientConnectionRequest requestConnection(final HttpRoute httpRoute, Object obj) {
        final PoolEntryRequest requestPoolEntry = this.pool.requestPoolEntry(httpRoute, obj);
        return new ClientConnectionRequest() { // from class: cz.msebera.android.httpclient.impl.conn.tsccm.ThreadSafeClientConnManager.1
            @Override // cz.msebera.android.httpclient.conn.ClientConnectionRequest
            public void abortRequest() {
                requestPoolEntry.abortRequest();
            }

            @Override // cz.msebera.android.httpclient.conn.ClientConnectionRequest
            public ManagedClientConnection getConnection(long j7, TimeUnit timeUnit) throws InterruptedException, ConnectionPoolTimeoutException {
                Args.notNull(httpRoute, "Route");
                if (ThreadSafeClientConnManager.this.log.isDebugEnabled()) {
                    ThreadSafeClientConnManager.this.log.debug("Get connection: " + httpRoute + ", timeout = " + j7);
                }
                return new BasicPooledConnAdapter(ThreadSafeClientConnManager.this, requestPoolEntry.getPoolEntry(j7, timeUnit));
            }
        };
    }

    public void setDefaultMaxPerRoute(int i2) {
        this.connPerRoute.setDefaultMaxPerRoute(i2);
    }

    public void setMaxForRoute(HttpRoute httpRoute, int i2) {
        this.connPerRoute.setMaxForRoute(httpRoute, i2);
    }

    public void setMaxTotal(int i2) {
        this.pool.setMaxTotalConnections(i2);
    }

    @Override // cz.msebera.android.httpclient.conn.ClientConnectionManager
    public void shutdown() {
        this.log.debug("Shutting down");
        this.pool.shutdown();
    }

    public ThreadSafeClientConnManager() {
        this(SchemeRegistryFactory.createDefault());
    }

    public ConnPoolByRoute createConnectionPool(long j7, TimeUnit timeUnit) {
        return new ConnPoolByRoute(this.connOperator, this.connPerRoute, 20, j7, timeUnit);
    }

    public int getConnectionsInPool() {
        return this.pool.getConnectionsInPool();
    }

    public ThreadSafeClientConnManager(SchemeRegistry schemeRegistry, long j7, TimeUnit timeUnit) {
        this(schemeRegistry, j7, timeUnit, new ConnPerRouteBean());
    }

    public ThreadSafeClientConnManager(SchemeRegistry schemeRegistry, long j7, TimeUnit timeUnit, ConnPerRouteBean connPerRouteBean) {
        Args.notNull(schemeRegistry, "Scheme registry");
        this.log = new HttpClientAndroidLog(getClass());
        this.schemeRegistry = schemeRegistry;
        this.connPerRoute = connPerRouteBean;
        this.connOperator = createConnectionOperator(schemeRegistry);
        ConnPoolByRoute createConnectionPool = createConnectionPool(j7, timeUnit);
        this.pool = createConnectionPool;
        this.connectionPool = createConnectionPool;
    }

    @Deprecated
    public ThreadSafeClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry) {
        Args.notNull(schemeRegistry, "Scheme registry");
        this.log = new HttpClientAndroidLog(getClass());
        this.schemeRegistry = schemeRegistry;
        this.connPerRoute = new ConnPerRouteBean();
        this.connOperator = createConnectionOperator(schemeRegistry);
        ConnPoolByRoute connPoolByRoute = (ConnPoolByRoute) createConnectionPool(httpParams);
        this.pool = connPoolByRoute;
        this.connectionPool = connPoolByRoute;
    }
}
