.class public Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;,
        Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field protected final alwaysShutDown:Z

.field protected final connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field protected volatile connectionExpiresTime:J

.field protected volatile isShutDown:Z

.field protected volatile lastReleaseTime:J

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected volatile managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

.field protected final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

.field protected volatile uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 4
    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 6
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 7
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {p1, p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    .line 11
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method public final assertStillUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "Manager is shut down"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public closeExpiredConnections()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v2, v0

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Time unit"

    .line 5
    .line 6
    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 15
    .line 16
    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 17
    .line 18
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->isOpen()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    sub-long/2addr v0, p1

    .line 33
    iget-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    cmp-long p1, p1, v0

    .line 36
    .line 37
    if-gtz p1, :cond_0

    .line 38
    .line 39
    :try_start_1
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception p1

    .line 48
    :try_start_2
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 49
    .line 50
    const-string p3, "Problem closing idle connection."

    .line 51
    .line 52
    invoke-virtual {p2, p3, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    :goto_0
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    throw p1
.end method

.method public createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .locals 1

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public getConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .locals 4

    .line 1
    const-string p2, "Route"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Get connection for route "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    move p2, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move p2, v0

    .line 46
    :goto_0
    const-string v2, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    .line 47
    .line 48
    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 55
    .line 56
    iget-object p2, p2, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 57
    .line 58
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpConnection;->isOpen()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 65
    .line 66
    iget-object p2, p2, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-nez p2, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move p2, v0

    .line 82
    goto :goto_2

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_5

    .line 85
    :cond_3
    :goto_1
    move p2, v1

    .line 86
    :goto_2
    move v3, v0

    .line 87
    move v0, p2

    .line 88
    move p2, v3

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move p2, v1

    .line 91
    :goto_3
    if-eqz v0, :cond_5

    .line 92
    .line 93
    :try_start_1
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :catch_0
    move-exception p2

    .line 100
    :try_start_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 101
    .line 102
    const-string v2, "Problem shutting down connection."

    .line 103
    .line 104
    invoke-virtual {v0, v2, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    move v1, p2

    .line 109
    :goto_4
    if-eqz v1, :cond_6

    .line 110
    .line 111
    new-instance p2, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 112
    .line 113
    invoke-direct {p2, p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;)V

    .line 114
    .line 115
    .line 116
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 117
    .line 118
    :cond_6
    new-instance p2, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 119
    .line 120
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 121
    .line 122
    invoke-direct {p2, p0, v0, p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 123
    .line 124
    .line 125
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 126
    .line 127
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 128
    .line 129
    monitor-exit p0

    .line 130
    return-object p1

    .line 131
    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    throw p1
.end method

.method public getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 2
    .line 3
    return-object v0
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 2
    .line 3
    const-string v1, "Connection class mismatch, connection not obtained from this manager"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Releasing connection "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    check-cast p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 39
    .line 40
    monitor-enter p1

    .line 41
    :try_start_0
    iget-object v0, p1, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    monitor-exit p1

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    goto/16 :goto_b

    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-ne v0, p0, :cond_2

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    :goto_0
    const-string v1, "Connection not obtained from this manager"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    const-wide v0, 0x7fffffffffffffffL

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    :try_start_1
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->isOpen()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_5

    .line 77
    .line 78
    iget-boolean v5, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    .line 79
    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->isMarkedReusable()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_5

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_1
    move-exception v5

    .line 90
    goto :goto_8

    .line 91
    :catch_0
    move-exception v5

    .line 92
    goto :goto_4

    .line 93
    :cond_3
    :goto_1
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 94
    .line 95
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_4

    .line 100
    .line 101
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 102
    .line 103
    const-string v6, "Released connection open but not reusable."

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .line 110
    .line 111
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 112
    .line 113
    .line 114
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v4

    .line 121
    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 122
    .line 123
    cmp-long v2, p2, v2

    .line 124
    .line 125
    if-lez v2, :cond_6

    .line 126
    .line 127
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 128
    .line 129
    .line 130
    move-result-wide p2

    .line 131
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 132
    .line 133
    add-long/2addr p2, v0

    .line 134
    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catchall_2
    move-exception p2

    .line 138
    goto :goto_3

    .line 139
    :cond_6
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 140
    .line 141
    :goto_2
    monitor-exit p0

    .line 142
    goto :goto_6

    .line 143
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 144
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    :goto_4
    :try_start_5
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 146
    .line 147
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_7

    .line 152
    .line 153
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 154
    .line 155
    const-string v7, "Exception shutting down released connection."

    .line 156
    .line 157
    invoke-virtual {v6, v7, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 158
    .line 159
    .line 160
    :cond_7
    :try_start_6
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 161
    .line 162
    .line 163
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    :try_start_7
    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 165
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 171
    .line 172
    cmp-long v2, p2, v2

    .line 173
    .line 174
    if-lez v2, :cond_8

    .line 175
    .line 176
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 177
    .line 178
    .line 179
    move-result-wide p2

    .line 180
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 181
    .line 182
    add-long/2addr p2, v0

    .line 183
    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :catchall_3
    move-exception p2

    .line 187
    goto :goto_7

    .line 188
    :cond_8
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 189
    .line 190
    :goto_5
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 191
    :goto_6
    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 192
    return-void

    .line 193
    :goto_7
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 194
    :try_start_a
    throw p2

    .line 195
    :goto_8
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 196
    .line 197
    .line 198
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 199
    :try_start_b
    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 200
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 202
    .line 203
    .line 204
    move-result-wide v6

    .line 205
    iput-wide v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 206
    .line 207
    cmp-long v2, p2, v2

    .line 208
    .line 209
    if-lez v2, :cond_9

    .line 210
    .line 211
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 212
    .line 213
    .line 214
    move-result-wide p2

    .line 215
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 216
    .line 217
    add-long/2addr p2, v0

    .line 218
    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 219
    .line 220
    goto :goto_9

    .line 221
    :catchall_4
    move-exception p2

    .line 222
    goto :goto_a

    .line 223
    :cond_9
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 224
    .line 225
    :goto_9
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 226
    :try_start_c
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 227
    :goto_a
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 228
    :try_start_e
    throw p2

    .line 229
    :goto_b
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 230
    throw p2
.end method

.method public final requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .locals 1

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public revokeConnection()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 7
    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception v0

    .line 19
    :try_start_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 20
    .line 21
    const-string v2, "Problem while shutting down connection."

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    monitor-exit p0

    .line 27
    :goto_1
    return-void

    .line 28
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method public shutdown()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_4

    .line 18
    :catch_0
    move-exception v1

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    :goto_0
    :try_start_1
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 21
    .line 22
    :goto_1
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :catchall_1
    move-exception v0

    .line 26
    goto :goto_5

    .line 27
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 28
    .line 29
    const-string v3, "Problem while shutting down manager."

    .line 30
    .line 31
    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_3
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :goto_3
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_4
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 40
    .line 41
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 42
    .line 43
    throw v1

    .line 44
    :goto_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    throw v0
.end method
