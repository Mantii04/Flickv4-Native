.class Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
.source "SourceFile"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private final params:Lcz/msebera/android/httpclient/params/HttpParams;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HTTP connection manager"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 11
    .line 12
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 13
    .line 14
    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    .line 15
    .line 16
    new-instance v1, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    .line 17
    .line 18
    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    .line 22
    .line 23
    sget-object v3, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    .line 24
    .line 25
    invoke-direct {v0, v1, p1, v2, v3}, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    .line 29
    .line 30
    new-instance p1, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    .line 31
    .line 32
    invoke-direct {p1}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 2
    .line 3
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->shutdown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public doExecute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    .line 1
    const-string v0, "Target host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "HTTP request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    instance-of v0, p2, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move-object v0, p2

    .line 17
    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v1

    .line 21
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance p3, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    .line 29
    .line 30
    invoke-direct {p3}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    new-instance v3, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 38
    .line 39
    invoke-direct {v3, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    .line 40
    .line 41
    .line 42
    instance-of p1, p2, Lcz/msebera/android/httpclient/client/methods/Configurable;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    check-cast p2, Lcz/msebera/android/httpclient/client/methods/Configurable;

    .line 47
    .line 48
    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/methods/Configurable;->getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_2

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p3, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    .line 61
    .line 62
    invoke-virtual {p1, v3, v2, p3, v0}, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p1

    .line 67
    :goto_3
    new-instance p2, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    .line 68
    .line 69
    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method

.method public getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 1

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;-><init>(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 2
    .line 3
    return-object v0
.end method
