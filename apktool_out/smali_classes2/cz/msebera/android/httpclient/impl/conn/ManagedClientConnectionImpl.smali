.class Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile duration:J

.field private final manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field private final operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field private volatile poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

.field private volatile reusable:Z


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Connection manager"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    const-string v0, "Connection operator"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string v0, "HTTP pool entry"

    .line 15
    .line 16
    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 20
    .line 21
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 22
    .line 23
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    .line 27
    .line 28
    const-wide p1, 0x7fffffffffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    .line 34
    .line 35
    return-void
.end method

.method private ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    .line 13
    .line 14
    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method private ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    .line 7
    .line 8
    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method private getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public abortConnection()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    :try_start_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 25
    .line 26
    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    .line 27
    .line 28
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    invoke-interface {v0, p0, v1, v2, v3}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw v0
.end method

.method public bind(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->reset()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpConnection;->close()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public detach()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 5
    .line 6
    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpInetConnection;->getLocalAddress()Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpInetConnection;->getLocalPort()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/HttpConnectionMetrics;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->getMetrics()Lcz/msebera/android/httpclient/HttpConnectionMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpInetConnection;->getRemotePort()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getEffectiveRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->getSocketTimeout()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getState()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isMarkedReusable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->isOpen()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->isResponseAvailable(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isSecure()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isStale()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->isStale()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public layerProtocol(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "HTTP parameters"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "Route tracker"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "Connection not open"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isTunnelled()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-string v2, "Protocol layering without a tunnel not supported"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isLayered()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    xor-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    const-string v2, "Multiple protocol layering not supported"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 62
    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 65
    .line 66
    invoke-interface {v2, v1, v0, p1, p2}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->updateSecureConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 67
    .line 68
    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 71
    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layerProtocol(Z)V

    .line 85
    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw p1

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    :try_start_2
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    .line 102
    .line 103
    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    throw p1
.end method

.method public markReusable()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    .line 3
    .line 4
    return-void
.end method

.method public open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "Route"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "HTTP parameters"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Route tracker"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    xor-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    const-string v1, "Connection already open"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v2, v0

    .line 45
    check-cast v2, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 46
    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    move-object v3, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :goto_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    move-object v5, p2

    .line 67
    move-object v6, p3

    .line 68
    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->openConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 69
    .line 70
    .line 71
    monitor-enter p0

    .line 72
    :try_start_1
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectTarget(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    move-object p1, v0

    .line 94
    goto :goto_2

    .line 95
    :cond_1
    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {p1, v0, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    .line 100
    .line 101
    .line 102
    :goto_1
    monitor-exit p0

    .line 103
    return-void

    .line 104
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p1

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    move-object p1, v0

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    :try_start_2
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    .line 116
    .line 117
    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    throw p1
.end method

.method public receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public releaseConnection()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 11
    .line 12
    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    .line 13
    .line 14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    invoke-interface {v0, p0, v1, v2, v3}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-wide/16 p1, -0x1

    .line 15
    .line 16
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    .line 17
    .line 18
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpConnection;->setSocketTimeout(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->setState(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->reset()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpConnection;->shutdown()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "Next proxy"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "HTTP parameters"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Route tracker"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const-string v1, "Connection not open"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 43
    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-interface {v0, v1, p1, p2, p3}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 47
    .line 48
    .line 49
    monitor-enter p0

    .line 50
    :try_start_1
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 51
    .line 52
    if-eqz p3, :cond_0

    .line 53
    .line 54
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 55
    .line 56
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p3, p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    .line 61
    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p1

    .line 75
    :catchall_1
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :try_start_2
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    .line 78
    .line 79
    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    throw p1
.end method

.method public tunnelTarget(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "HTTP parameters"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "Route tracker"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v2, "Connection not open"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isTunnelled()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    xor-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    const-string v2, "Connection is already tunnelled"

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 53
    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-interface {v1, v2, v0, p1, p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 57
    .line 58
    .line 59
    monitor-enter p0

    .line 60
    :try_start_1
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 61
    .line 62
    if-eqz p2, :cond_0

    .line 63
    .line 64
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelTarget(Z)V

    .line 71
    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p1

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :try_start_2
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    .line 88
    .line 89
    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    throw p1
.end method

.method public unmarkReusable()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    .line 3
    .line 4
    return-void
.end method
