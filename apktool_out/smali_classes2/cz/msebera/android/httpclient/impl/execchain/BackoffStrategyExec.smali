.class public Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

.field private final connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;Lcz/msebera/android/httpclient/client/BackoffManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HTTP client request executor"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    const-string v0, "Connection backoff strategy"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string v0, "Backoff manager"

    .line 15
    .line 16
    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 20
    .line 21
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .line 22
    .line 23
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 1
    const-string v0, "HTTP route"

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
    const-string v0, "HTTP context"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 19
    .line 20
    .line 21
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .line 23
    .line 24
    invoke-interface {p3, p2}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->shouldBackoff(Lcz/msebera/android/httpclient/HttpResponse;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 31
    .line 32
    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/client/BackoffManager;->backOff(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 33
    .line 34
    .line 35
    return-object p2

    .line 36
    :cond_0
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 37
    .line 38
    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/client/BackoffManager;->probe(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 39
    .line 40
    .line 41
    return-object p2

    .line 42
    :catch_0
    move-exception p2

    .line 43
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    .line 44
    .line 45
    invoke-interface {p3, p2}, Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    .line 52
    .line 53
    invoke-interface {p3, p1}, Lcz/msebera/android/httpclient/client/BackoffManager;->backOff(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    instance-of p1, p2, Ljava/lang/RuntimeException;

    .line 57
    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    instance-of p1, p2, Lcz/msebera/android/httpclient/HttpException;

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    instance-of p1, p2, Ljava/io/IOException;

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    check-cast p2, Ljava/io/IOException;

    .line 69
    .line 70
    throw p2

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/reflect/UndeclaredThrowableException;

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_3
    check-cast p2, Lcz/msebera/android/httpclient/HttpException;

    .line 78
    .line 79
    throw p2

    .line 80
    :cond_4
    check-cast p2, Ljava/lang/RuntimeException;

    .line 81
    .line 82
    throw p2
.end method
