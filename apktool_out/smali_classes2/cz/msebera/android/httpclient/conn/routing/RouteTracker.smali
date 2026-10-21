.class public final Lcz/msebera/android/httpclient/conn/routing/RouteTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# instance fields
.field private connected:Z

.field private layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

.field private secure:Z

.field private final targetHost:Lcz/msebera/android/httpclient/HttpHost;

.field private tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "Target host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 4
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 5
    sget-object p1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 6
    sget-object p1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final connectProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "Proxy host"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 8
    .line 9
    xor-int/2addr v1, v0

    .line 10
    const-string v2, "Already connected"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 16
    .line 17
    new-array v0, v0, [Lcz/msebera/android/httpclient/HttpHost;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aput-object p1, v0, v1

    .line 21
    .line 22
    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 23
    .line 24
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 25
    .line 26
    return-void
.end method

.method public final connectTarget(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "Already connected"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 13
    .line 14
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 20
    .line 21
    iget-boolean v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 26
    .line 27
    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 32
    .line 33
    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 34
    .line 35
    if-ne v1, v3, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 38
    .line 39
    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 40
    .line 41
    invoke-static {v1, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 48
    .line 49
    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 50
    .line 51
    invoke-static {v1, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 58
    .line 59
    iget-object p1, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 60
    .line 61
    invoke-static {v1, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    return v0

    .line 68
    :cond_2
    return v2
.end method

.method public final getHopCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    array-length v0, v0

    .line 12
    add-int/2addr v0, v1

    .line 13
    return v0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public final getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;
    .locals 4

    .line 1
    const-string v0, "Hop index"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getHopCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    move v2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    const-string v3, "Hop index exceeds tracked route length"

    .line 17
    .line 18
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sub-int/2addr v0, v1

    .line 22
    if-ge p1, v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 25
    .line 26
    aget-object p1, v0, p1

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 30
    .line 31
    return-object p1
.end method

.method public final getLayerType()Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProxyHost()Lcz/msebera/android/httpclient/HttpHost;
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

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
    const/4 v1, 0x0

    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    return-object v0
.end method

.method public final getTargetHost()Lcz/msebera/android/httpclient/HttpHost;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTunnelType()Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_0

    .line 22
    .line 23
    aget-object v4, v1, v3

    .line 24
    .line 25
    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(IZ)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(IZ)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isLayered()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 2
    .line 3
    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final isSecure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isTunnelled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 2
    .line 3
    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final layerProtocol(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 2
    .line 3
    const-string v1, "No layered protocol unless connected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 9
    .line 10
    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 11
    .line 12
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 13
    .line 14
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 6
    .line 7
    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 8
    .line 9
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 10
    .line 11
    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 12
    .line 13
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 14
    .line 15
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 16
    .line 17
    return-void
.end method

.method public final toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

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
    new-instance v1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 8
    .line 9
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 10
    .line 11
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 12
    .line 13
    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 14
    .line 15
    iget-boolean v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 16
    .line 17
    iget-object v6, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 18
    .line 19
    iget-object v7, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 20
    .line 21
    invoke-direct/range {v1 .. v7}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;[Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getHopCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x1e

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x32

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-string v1, "RouteTracker["

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 20
    .line 21
    const-string v2, "->"

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    const/16 v1, 0x7b

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const/16 v1, 0x63

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 46
    .line 47
    sget-object v3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 48
    .line 49
    if-ne v1, v3, :cond_2

    .line 50
    .line 51
    const/16 v1, 0x74

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 57
    .line 58
    sget-object v3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 59
    .line 60
    if-ne v1, v3, :cond_3

    .line 61
    .line 62
    const/16 v1, 0x6c

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const/16 v1, 0x73

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_4
    const-string v1, "}->"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    array-length v3, v1

    .line 86
    const/4 v4, 0x0

    .line 87
    :goto_0
    if-ge v4, v3, :cond_5

    .line 88
    .line 89
    aget-object v5, v1, v4

    .line 90
    .line 91
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/16 v1, 0x5d

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    return-object v0
.end method

.method public final tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V
    .locals 5

    .line 1
    const-string v0, "Proxy host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 7
    .line 8
    const-string v1, "No tunnel unless connected"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 14
    .line 15
    const-string v1, "No tunnel without proxy"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 21
    .line 22
    array-length v1, v0

    .line 23
    add-int/lit8 v2, v1, 0x1

    .line 24
    .line 25
    new-array v2, v2, [Lcz/msebera/android/httpclient/HttpHost;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    array-length v4, v0

    .line 29
    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    aput-object p1, v2, v1

    .line 33
    .line 34
    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 35
    .line 36
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 37
    .line 38
    return-void
.end method

.method public final tunnelTarget(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 2
    .line 3
    const-string v1, "No tunnel unless connected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 9
    .line 10
    const-string v1, "No tunnel without proxy"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 16
    .line 17
    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 18
    .line 19
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    .line 20
    .line 21
    return-void
.end method
