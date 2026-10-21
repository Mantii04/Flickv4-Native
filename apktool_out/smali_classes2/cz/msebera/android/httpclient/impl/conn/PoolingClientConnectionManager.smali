.class public Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
.implements Lcz/msebera/android/httpclient/pool/ConnPoolControl;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/conn/ClientConnectionManager;",
        "Lcz/msebera/android/httpclient/pool/ConnPoolControl<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field private final pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

.field private final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 3

    const-wide/16 v0, -0x1

    .line 1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    .line 4
    new-instance v5, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 9

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 7
    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    const-string v0, "DNS resolver"

    invoke-static {p5, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 10
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 11
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v3

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 12
    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const/4 v4, 0x2

    const/16 v5, 0x14

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;IIJLjava/util/concurrent/TimeUnit;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 6

    const-wide/16 v2, -0x1

    .line 2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method private format(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[route: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 3
    const-string v1, "[state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private format(Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)Ljava/lang/String;
    .locals 3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    const-string v2, "[state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[total kept alive: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getTotalStats()Lcz/msebera/android/httpclient/pool/PoolStats;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getStats(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolStats;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getAvailable()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "; route allocated: "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getLeased()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getAvailable()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    add-int/2addr v3, v2

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, " of "

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getMax()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, "; total allocated: "

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getLeased()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getAvailable()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v3, p1

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getMax()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, "]"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 2
    .line 3
    const-string v1, "Closing expired connections"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->closeExpired()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Closing connections idle longer than "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->closeIdle(JLjava/util/concurrent/TimeUnit;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .locals 2

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    .line 2
    .line 3
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->shutdown()V
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

.method public getDefaultMaxPerRoute()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getDefaultMaxPerRoute()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->getMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result p1

    return p1
.end method

.method public getMaxTotal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getMaxTotal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 1

    .line 2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getStats(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 0

    .line 1
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->getStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getTotalStats()Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->getTotalStats()Lcz/msebera/android/httpclient/pool/PoolStats;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcz/msebera/android/httpclient/conn/ManagedClientConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 1
    const-string v0, "Connection leased: "

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    const-string p3, "Pool entry with no connection"

    .line 27
    .line 28
    invoke-static {p1, p3}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 40
    .line 41
    new-instance p3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->format(Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    check-cast p4, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 58
    .line 59
    invoke-direct {p0, p4}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p1, p3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    :goto_1
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    .line 77
    .line 78
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 79
    .line 80
    invoke-direct {p1, p0, p3, p2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :catch_1
    new-instance p1, Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;

    .line 91
    .line 92
    const-string p2, "Timeout waiting for connection from pool"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    if-nez p2, :cond_3

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move-object p1, p2

    .line 106
    :goto_3
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 107
    .line 108
    const-string p3, "Unexpected exception leasing connection from pool"

    .line 109
    .line 110
    invoke-virtual {p2, p3, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Ljava/lang/InterruptedException;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .line 1
    const-string v0, "Connection released: "

    .line 2
    .line 3
    const-string v1, "Connection "

    .line 4
    .line 5
    const-string v2, "for "

    .line 6
    .line 7
    instance-of v3, p1, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    .line 8
    .line 9
    const-string v4, "Connection class mismatch, connection not obtained from this manager"

    .line 10
    .line 11
    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast p1, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-ne v3, p0, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    :goto_0
    const-string v4, "Connection not obtained from this manager"

    .line 26
    .line 27
    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    monitor-enter p1

    .line 31
    :try_start_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->detach()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isOpen()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    .line 49
    .line 50
    .line 51
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    :try_start_2
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_1
    move-exception p2

    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :catch_0
    move-exception v4

    .line 62
    :try_start_3
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 63
    .line 64
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 71
    .line 72
    const-string v6, "I/O exception shutting down released connection"

    .line 73
    .line 74
    invoke-virtual {v5, v6, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_5

    .line 82
    .line 83
    if-eqz p4, :cond_3

    .line 84
    .line 85
    move-object v4, p4

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v3, p2, p3, v4}, Lcz/msebera/android/httpclient/pool/PoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    const-wide/16 v4, 0x0

    .line 101
    .line 102
    cmp-long v4, p2, v4

    .line 103
    .line 104
    if-lez v4, :cond_4

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p2, " "

    .line 115
    .line 116
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    const-string p2, "indefinitely"

    .line 128
    .line 129
    :goto_3
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 130
    .line 131
    new-instance p4, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v3}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->format(Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, " can be kept alive "

    .line 144
    .line 145
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p3, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    .line 157
    .line 158
    :cond_5
    :try_start_4
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 159
    .line 160
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    invoke-virtual {p2, v3, p3}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->release(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V

    .line 165
    .line 166
    .line 167
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 168
    .line 169
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    if-eqz p2, :cond_6

    .line 174
    .line 175
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 176
    .line 177
    new-instance p3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v3}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->format(Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p4

    .line 186
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p4

    .line 193
    check-cast p4, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 194
    .line 195
    invoke-direct {p0, p4}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p4

    .line 199
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p3

    .line 206
    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_6
    monitor-exit p1

    .line 210
    return-void

    .line 211
    :goto_4
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    .line 214
    .line 215
    .line 216
    move-result p4

    .line 217
    invoke-virtual {p3, v3, p4}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->release(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V

    .line 218
    .line 219
    .line 220
    throw p2

    .line 221
    :goto_5
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    throw p2
.end method

.method public requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .locals 3

    .line 1
    const-string v0, "HTTP route"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Connection request: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->format(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager$1;

    .line 51
    .line 52
    invoke-direct {p2, p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;Ljava/util/concurrent/Future;)V

    .line 53
    .line 54
    .line 55
    return-object p2
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->setDefaultMaxPerRoute(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->setMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->setMaxTotal(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 2
    .line 3
    const-string v1, "Connection manager is shutting down"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/pool/AbstractConnPool;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 16
    .line 17
    const-string v2, "I/O exception shutting down connection manager"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 23
    .line 24
    const-string v1, "Connection manager shut down"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
