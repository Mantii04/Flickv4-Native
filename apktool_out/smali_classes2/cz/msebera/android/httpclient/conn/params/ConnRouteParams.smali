.class public Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/params/ConnRoutePNames;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NO_HOST:Lcz/msebera/android/httpclient/HttpHost;

.field public static final NO_ROUTE:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "no-host"

    .line 5
    .line 6
    const-string v3, "127.0.0.255"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_HOST:Lcz/msebera/android/httpclient/HttpHost;

    .line 12
    .line 13
    new-instance v1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    .line 16
    .line 17
    .line 18
    sput-object v1, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_ROUTE:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultProxy(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/HttpHost;
    .locals 1

    .line 1
    const-string v0, "Parameters"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "http.route.default-proxy"

    .line 7
    .line 8
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcz/msebera/android/httpclient/HttpHost;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_HOST:Lcz/msebera/android/httpclient/HttpHost;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    :cond_0
    return-object p0
.end method

.method public static getForcedRoute(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 1

    .line 1
    const-string v0, "Parameters"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "http.route.forced-route"

    .line 7
    .line 8
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_ROUTE:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    :cond_0
    return-object p0
.end method

.method public static getLocalAddress(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/InetAddress;
    .locals 1

    .line 1
    const-string v0, "Parameters"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "http.route.local-address"

    .line 7
    .line 8
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/net/InetAddress;

    .line 13
    .line 14
    return-object p0
.end method

.method public static setDefaultProxy(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 1

    .line 1
    const-string v0, "Parameters"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "http.route.default-proxy"

    .line 7
    .line 8
    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setForcedRoute(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 1

    .line 1
    const-string v0, "Parameters"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "http.route.forced-route"

    .line 7
    .line 8
    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setLocalAddress(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/net/InetAddress;)V
    .locals 1

    .line 1
    const-string v0, "Parameters"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "http.route.local-address"

    .line 7
    .line 8
    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 9
    .line 10
    .line 11
    return-void
.end method
