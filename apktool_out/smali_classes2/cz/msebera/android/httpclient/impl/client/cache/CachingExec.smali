.class public Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final SUPPORTS_RANGE_AND_CONTENT_RANGE_HEADERS:Z = false


# instance fields
.field private final asynchRevalidator:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

.field private final backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

.field private final cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

.field private final cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheableRequestPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;

.field private final conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

.field private final responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

.field private final responseCachingPolicy:Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;

.field private final responseCompliance:Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;

.field private final responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

.field private final suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

.field private final validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

.field private final viaHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcz/msebera/android/httpclient/ProtocolVersion;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)V
    .locals 2

    .line 25
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>()V

    sget-object v1, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 1

    .line 24
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/BasicHttpCache;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, p1, v0, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->viaHeaders:Ljava/util/Map;

    .line 7
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 8
    const-string v0, "HTTP backend"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    const-string v0, "HttpCache"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    sget-object p3, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    :goto_0
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 11
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 12
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 13
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 14
    new-instance p2, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;)V

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    .line 15
    new-instance p2, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;

    invoke-direct {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;-><init>()V

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheableRequestPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;

    .line 16
    new-instance p2, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-direct {p2, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    .line 17
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    .line 18
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCompliance:Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;

    .line 19
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isWeakETagOnPutDeleteAllowed()Z

    move-result p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;-><init>(Z)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    .line 20
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;

    .line 21
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getMaxObjectSize()J

    move-result-wide v1

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result v3

    .line 22
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isNeverCacheHTTP10ResponsesWithQuery()Z

    move-result v4

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->is303CachingEnabled()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;-><init>(JZZZ)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCachingPolicy:Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;

    .line 23
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->asynchRevalidator:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->viaHeaders:Ljava/util/Map;

    .line 31
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    if-eqz p11, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    sget-object p11, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->DEFAULT:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    :goto_0
    iput-object p11, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 33
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 34
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 35
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 36
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCachingPolicy:Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;

    .line 37
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    .line 38
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheableRequestPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;

    .line 39
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    .line 40
    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    .line 41
    iput-object p9, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCompliance:Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;

    .line 42
    iput-object p10, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    .line 43
    iput-object p12, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->asynchRevalidator:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    return-void
.end method

.method private alreadyHaveNewerCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->getCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 p2, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return p2

    .line 13
    :cond_0
    const-string v0, "Date"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return p2

    .line 22
    :cond_1
    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    if-nez p3, :cond_2

    .line 27
    .line 28
    return p2

    .line 29
    :cond_2
    invoke-interface {p1}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p3}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    if-nez p3, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {p3, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1

    .line 55
    :cond_4
    :goto_1
    return p2
.end method

.method private explicitFreshnessRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "Cache-Control"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v4

    .line 16
    :goto_0
    if-ge v5, v3, :cond_4

    .line 17
    .line 18
    aget-object v6, v2, v5

    .line 19
    .line 20
    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    array-length v7, v6

    .line 25
    move v8, v4

    .line 26
    :goto_1
    if-ge v8, v7, :cond_3

    .line 27
    .line 28
    aget-object v9, v6, v8

    .line 29
    .line 30
    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    const-string v11, "max-stale"

    .line 35
    .line 36
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    const/4 v11, 0x1

    .line 41
    if-eqz v10, :cond_0

    .line 42
    .line 43
    :try_start_0
    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 52
    .line 53
    move-object/from16 v12, p3

    .line 54
    .line 55
    invoke-virtual {v10, v1, v12}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v13

    .line 59
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 60
    .line 61
    invoke-virtual {v10, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v15
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    sub-long/2addr v13, v15

    .line 66
    int-to-long v9, v9

    .line 67
    cmp-long v9, v13, v9

    .line 68
    .line 69
    if-lez v9, :cond_1

    .line 70
    .line 71
    :catch_0
    return v11

    .line 72
    :cond_0
    move-object/from16 v12, p3

    .line 73
    .line 74
    const-string v10, "min-fresh"

    .line 75
    .line 76
    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-nez v10, :cond_2

    .line 85
    .line 86
    const-string v10, "max-age"

    .line 87
    .line 88
    invoke-interface {v9}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    :goto_2
    return v11

    .line 103
    :cond_3
    move-object/from16 v12, p3

    .line 104
    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    return v4
.end method

.method private flushEntriesInvalidatedByRequest(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->flushInvalidatedCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 9
    .line 10
    const-string v0, "Unable to flush invalidated entries from cache"

    .line 11
    .line 12
    invoke-virtual {p2, v0, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private generateCachedResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 2

    .line 1
    const-string v0, "If-None-Match"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;->containsHeader(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "If-Modified-Since"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;->containsHeader(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_1
    sget-object v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_HIT:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    .line 32
    .line 33
    invoke-direct {p0, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 37
    .line 38
    invoke-virtual {p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    .line 39
    .line 40
    .line 41
    move-result-wide p2

    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    cmp-long p2, p2, v0

    .line 45
    .line 46
    if-lez p2, :cond_2

    .line 47
    .line 48
    const-string p2, "Warning"

    .line 49
    .line 50
    const-string p3, "110 localhost \"Response is stale\""

    .line 51
    .line 52
    invoke-interface {p1, p2, p3}, Lcz/msebera/android/httpclient/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-object p1
.end method

.method private generateGatewayTimeout(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 3

    .line 1
    sget-object v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    .line 7
    .line 8
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    .line 9
    .line 10
    const/16 v1, 0x1f8

    .line 11
    .line 12
    const-string v2, "Gateway Timeout"

    .line 13
    .line 14
    invoke-direct {p1, v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private generateViaHeader(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpMessage;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->viaHeaders:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return-object v4

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string v5, "cz.msebera.android.httpclient.client"

    .line 29
    .line 30
    invoke-static {v5, v4}, Lcz/msebera/android/httpclient/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/util/VersionInfo;->getRelease()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v4, "UNAVAILABLE"

    .line 42
    .line 43
    :goto_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMajor()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMinor()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const-string v7, "http"

    .line 52
    .line 53
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->getProtocol()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_2

    .line 62
    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v5, v3, v2

    .line 74
    .line 75
    aput-object v6, v3, v1

    .line 76
    .line 77
    aput-object v4, v3, v0

    .line 78
    .line 79
    const-string v0, "%d.%d localhost (Apache-HttpClient/%s (cache))"

    .line 80
    .line 81
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->getProtocol()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const/4 v8, 0x4

    .line 99
    new-array v8, v8, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object v7, v8, v2

    .line 102
    .line 103
    aput-object v5, v8, v1

    .line 104
    .line 105
    aput-object v6, v8, v0

    .line 106
    .line 107
    aput-object v4, v8, v3

    .line 108
    .line 109
    const-string v0, "%s/%d.%d localhost (Apache-HttpClient/%s (cache))"

    .line 110
    .line 111
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->viaHeaders:Ljava/util/Map;

    .line 116
    .line 117
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method private getExistingCacheVariants(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/Variant;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->getVariantCacheEntriesWithEtags(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 10
    .line 11
    const-string v0, "Unable to retrieve variant entries from cache"

    .line 12
    .line 13
    invoke-virtual {p2, v0, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method private getFatallyNoncompliantResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestIsFatallyNonCompliant(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    .line 23
    .line 24
    sget-object v1, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    .line 25
    .line 26
    invoke-direct {p0, p2, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->getErrorForRequest(Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;)Lcz/msebera/android/httpclient/HttpResponse;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method

.method private getUpdatedVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;Lcz/msebera/android/httpclient/impl/client/cache/Variant;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 2
    .line 3
    invoke-virtual {p6}, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v4, p5

    .line 12
    move-object v3, p7

    .line 13
    :try_start_1
    invoke-interface/range {v0 .. v7}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->updateVariantCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    :goto_0
    move-object p1, v0

    .line 23
    goto :goto_3

    .line 24
    :catch_0
    move-exception v0

    .line 25
    :goto_1
    move-object p1, v0

    .line 26
    goto :goto_2

    .line 27
    :catchall_1
    move-exception v0

    .line 28
    move-object v4, p5

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception v0

    .line 31
    move-object v4, p5

    .line 32
    move-object v3, p7

    .line 33
    goto :goto_1

    .line 34
    :goto_2
    :try_start_2
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 35
    .line 36
    const-string p3, "Could not update cache entry"

    .line 37
    .line 38
    invoke-virtual {p2, p3, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    .line 42
    .line 43
    .line 44
    return-object v3

    .line 45
    :goto_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method private handleCacheHit(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->recordCacheHit(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object v7

    .line 12
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    .line 13
    .line 14
    invoke-virtual {v1, v0, p2, p5, v7}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->canCachedResponseBeUsed(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 21
    .line 22
    const-string v1, "Cache hit"

    .line 23
    .line 24
    invoke-virtual {p4, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p2, p3, p5, v7}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateCachedResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->mayCallBackend(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    iget-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 39
    .line 40
    const-string p5, "Cache entry not suitable but only-if-cached requested"

    .line 41
    .line 42
    invoke-virtual {p4, p5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateGatewayTimeout(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    :goto_0
    const-string p5, "http.route"

    .line 50
    .line 51
    invoke-virtual {p3, p5, p1}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const-string p1, "http.target_host"

    .line 55
    .line 56
    invoke-virtual {p3, p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string p1, "http.request"

    .line 60
    .line 61
    invoke-virtual {p3, p1, p2}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "http.response"

    .line 65
    .line 66
    invoke-virtual {p3, p1, p4}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    const-string p2, "http.request_sent"

    .line 72
    .line 73
    invoke-virtual {p3, p2, p1}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-object p4

    .line 77
    :cond_1
    invoke-virtual {p5}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusCode()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/16 v1, 0x130

    .line 82
    .line 83
    if-ne v0, v1, :cond_3

    .line 84
    .line 85
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    .line 86
    .line 87
    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object p5, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 95
    .line 96
    const-string v0, "Cache entry not usable; calling backend"

    .line 97
    .line 98
    invoke-virtual {p5, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :cond_3
    :goto_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 107
    .line 108
    const-string v1, "Revalidating cache entry"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object v1, p0

    .line 114
    move-object v2, p1

    .line 115
    move-object v3, p2

    .line 116
    move-object v4, p3

    .line 117
    move-object v5, p4

    .line 118
    move-object v6, p5

    .line 119
    invoke-direct/range {v1 .. v7}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->revalidateCacheEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1
.end method

.method private handleCacheMiss(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->recordCacheMiss(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->mayCallBackend(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    .line 15
    .line 16
    sget-object p2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    .line 17
    .line 18
    const/16 p3, 0x1f8

    .line 19
    .line 20
    const-string p4, "Gateway Timeout"

    .line 21
    .line 22
    invoke-direct {p1, p2, p3, p4}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getExistingCacheVariants(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    move-object v0, p0

    .line 43
    move-object v1, p1

    .line 44
    move-object v2, p2

    .line 45
    move-object v3, p3

    .line 46
    move-object v4, p4

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->negotiateResponseFromVariants(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Ljava/util/Map;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_1
    move-object v1, p1

    .line 53
    move-object v2, p2

    .line 54
    move-object v3, p3

    .line 55
    move-object v4, p4

    .line 56
    invoke-virtual {p0, v1, v2, v3, v4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method private handleRevalidationFailure(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->staleResponseNotAllowed(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateGatewayTimeout(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->unvalidatedCacheHit(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method private mayCallBackend(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Z
    .locals 8

    .line 1
    const-string v0, "Cache-Control"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    aget-object v3, p1, v2

    .line 13
    .line 14
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    array-length v4, v3

    .line 19
    move v5, v1

    .line 20
    :goto_1
    if-ge v5, v4, :cond_1

    .line 21
    .line 22
    aget-object v6, v3, v5

    .line 23
    .line 24
    const-string v7, "only-if-cached"

    .line 25
    .line 26
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 37
    .line 38
    const-string v0, "Request marked only-if-cached"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p1, 0x1

    .line 51
    return p1
.end method

.method private recordCacheHit(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isTraceEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Cache hit [host: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "; uri: "

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, "]"

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private recordCacheMiss(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isTraceEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Cache miss [host: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "; uri: "

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, "]"

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private recordCacheUpdate(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->VALIDATED:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private retryRequestUnconditionally(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p5}, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;->buildUnconditionalRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private revalidateCacheEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->asynchRevalidator:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p2, p5, p6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->staleResponseNotAllowed(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 3
    invoke-virtual {v0, p5, p6}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mayReturnStaleWhileRevalidating(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Serving stale with asynchronous revalidation"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p2, p3, p5, p6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateCachedResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->asynchRevalidator:Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcz/msebera/android/httpclient/impl/client/cache/AsynchronousValidator;->revalidateCacheEntry(Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-object v2, p0

    move-object p2, v4

    move-object p3, v5

    move-object p5, v7

    goto :goto_0

    :catch_1
    move-object v2, p0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_2
    invoke-virtual/range {p0 .. p5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->revalidateCacheEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, p0

    return-object p1

    .line 8
    :goto_0
    invoke-direct {p0, p2, p3, p5, p6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleRevalidationFailure(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method private revalidationResponseIsTooOld(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 1

    .line 1
    const-string v0, "Date"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p2}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p1}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_1
    :goto_0
    return v0
.end method

.method private satisfyFromCache(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->getCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 10
    .line 11
    const-string v0, "Unable to retrieve entries from cache"

    .line 12
    .line 13
    invoke-virtual {p2, v0, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method private setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "http.cache.response.status"

    .line 4
    .line 5
    invoke-interface {p1, v0, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private shouldSendNotModifiedResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    .line 10
    .line 11
    new-instance v1, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method private staleIfErrorAppliesTo(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private staleResponseNotAllowed(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheConfig:Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->explicitFreshnessRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 35
    return p1
.end method

.method private storeRequestIfModifiedSinceFor304Response(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x130

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const-string v0, "If-Modified-Since"

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string v0, "Last-Modified"

    .line 22
    .line 23
    invoke-interface {p1}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, v0, p1}, Lcz/msebera/android/httpclient/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private tryToUpdateVariantMap(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/impl/client/cache/Variant;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->reuseVariantEntryFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/impl/client/cache/Variant;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 9
    .line 10
    const-string p3, "Could not update cache entry to reuse variant"

    .line 11
    .line 12
    invoke-virtual {p2, p3, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private unvalidatedCacheHit(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p3, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_HIT:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "Warning"

    .line 13
    .line 14
    const-string p3, "111 localhost \"Revalidation failed\""

    .line 15
    .line 16
    invoke-interface {p1, p2, p3}, Lcz/msebera/android/httpclient/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method


# virtual methods
.method public callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 6
    .line 7
    const-string v1, "Calling the backend"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    :try_start_0
    const-string p1, "Via"

    .line 19
    .line 20
    invoke-direct {p0, v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateViaHeader(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    invoke-interface {v6, p1, p4}, Lcz/msebera/android/httpclient/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    move-object v1, p0

    .line 32
    move-object v2, p2

    .line 33
    move-object v3, p3

    .line 34
    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleBackendResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    move-object p1, v0

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    .line 43
    move-object p1, v0

    .line 44
    goto :goto_1

    .line 45
    :goto_0
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :goto_1
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public clientRequestsOurOptions(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "OPTIONS"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    const-string v1, "*"

    .line 20
    .line 21
    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    const-string v0, "Max-Forwards"

    .line 33
    .line 34
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "0"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    return v2

    .line 51
    :cond_2
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->create()Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 3
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v1

    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateViaHeader(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_MISS:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-direct {p0, p3, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    .line 6
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->clientRequestsOurOptions(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    sget-object p1, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    invoke-direct {p0, p3, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->setResponseStatus(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;)V

    .line 8
    new-instance p1, Lcz/msebera/android/httpclient/impl/client/cache/OptionsHttp11Response;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/client/cache/OptionsHttp11Response;-><init>()V

    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-direct {p0, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getFatallyNoncompliantResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {v2}, Lcz/msebera/android/httpclient/impl/client/cache/Proxies;->enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->requestCompliance:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;

    invoke-virtual {v2, p2}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->makeRequestCompliant(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V

    .line 12
    const-string v2, "Via"

    invoke-virtual {p2, v2, v1}, Lcz/msebera/android/httpclient/message/AbstractHttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheableRequestPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;

    invoke-virtual {v1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheableRequestPolicy;->isServableFromCache(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Request is not servable from cache"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->flushEntriesInvalidatedByRequest(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V

    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1

    .line 17
    :cond_2
    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->satisfyFromCache(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v5

    if-nez v5, :cond_3

    .line 18
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Cache miss"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleCacheMiss(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleCacheHit(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getCacheHits()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getCacheMisses()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getCacheUpdates()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getCurrentDate()Ljava/util/Date;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public handleBackendResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 2
    .line 3
    const-string v1, "Handling Backend response"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCompliance:Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->ensureProtocolCompliance(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCachingPolicy:Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;

    .line 18
    .line 19
    invoke-virtual {p2, p1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 24
    .line 25
    invoke-interface {v0, v2, p1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->flushInvalidatedCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 26
    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-direct {p0, v2, p1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->alreadyHaveNewerCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-direct {p0, p1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->storeRequestIfModifiedSinceFor304Response(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 40
    .line 41
    move-object v3, p1

    .line 42
    move-object v5, p3

    .line 43
    move-object v6, p4

    .line 44
    move-object v4, p5

    .line 45
    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->cacheAndReturnResponse(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_0
    move-object v3, p1

    .line 51
    move-object v4, p5

    .line 52
    if-nez p2, :cond_1

    .line 53
    .line 54
    :try_start_0
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 55
    .line 56
    invoke-interface {p1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->flushCacheEntriesFor(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-object v4

    .line 60
    :catch_0
    move-exception v0

    .line 61
    move-object p1, v0

    .line 62
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 63
    .line 64
    const-string p3, "Unable to flush invalid cache entries"

    .line 65
    .line 66
    invoke-virtual {p2, p3, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-object v4
.end method

.method public negotiateResponseFromVariants(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Ljava/util/Map;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;",
            "Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;",
            "Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/Variant;",
            ">;)",
            "Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p5}, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;->buildConditionalRequestFromVariants(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Ljava/util/Map;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    .line 12
    .line 13
    invoke-interface {v0, p1, v3, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v0, "Via"

    .line 22
    .line 23
    invoke-direct {p0, v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateViaHeader(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v6, v0, v1}, Lcz/msebera/android/httpclient/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 38
    const/16 v1, 0x130

    .line 39
    .line 40
    if-eq v0, v1, :cond_0

    .line 41
    .line 42
    move-object v7, v4

    .line 43
    move-object v8, v5

    .line 44
    move-object v9, v6

    .line 45
    move-object v4, p0

    .line 46
    move-object v5, p2

    .line 47
    move-object v6, p3

    .line 48
    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleBackendResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 49
    .line 50
    .line 51
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    move-object v1, v4

    .line 53
    return-object p1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    move-object v1, v4

    .line 56
    :goto_0
    move-object p1, v0

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :catch_1
    move-exception v0

    .line 60
    move-object v1, v4

    .line 61
    :goto_1
    move-object p1, v0

    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_0
    move-object v1, p0

    .line 65
    move-object v7, v4

    .line 66
    move-object v8, v5

    .line 67
    move-object v9, v6

    .line 68
    move-object v5, p2

    .line 69
    move-object v4, p3

    .line 70
    :try_start_2
    const-string p2, "ETag"

    .line 71
    .line 72
    invoke-interface {v9, p2}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-nez p2, :cond_1

    .line 77
    .line 78
    iget-object p2, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 79
    .line 80
    const-string p3, "304 response did not contain ETag"

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v9}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1, v5, v4, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :catch_2
    move-exception v0

    .line 101
    goto :goto_0

    .line 102
    :catch_3
    move-exception v0

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    invoke-interface {p2}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lcz/msebera/android/httpclient/impl/client/cache/Variant;

    .line 113
    .line 114
    if-nez p2, :cond_2

    .line 115
    .line 116
    iget-object p2, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 117
    .line 118
    const-string p3, "304 response did not contain ETag matching one sent in If-None-Match"

    .line 119
    .line 120
    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v9}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1, v5, v4, p4}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->callBackend(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :cond_2
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/Variant;->getEntry()Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-direct {p0, v9, v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->revalidationResponseIsTooOld(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    if-eqz p3, :cond_3

    .line 147
    .line 148
    invoke-interface {v9}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    .line 156
    .line 157
    .line 158
    move-object v2, p1

    .line 159
    move-object v3, v5

    .line 160
    move-object v5, p4

    .line 161
    invoke-direct/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->retryRequestUnconditionally(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    return-object p1

    .line 166
    :cond_3
    move-object p3, v4

    .line 167
    move-object p1, v5

    .line 168
    invoke-direct {p0, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->recordCacheUpdate(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    .line 172
    .line 173
    .line 174
    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 175
    move-object v4, v7

    .line 176
    move-object v5, v8

    .line 177
    move-object v7, p2

    .line 178
    move-object v8, v6

    .line 179
    move-object v6, v9

    .line 180
    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getUpdatedVariantEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;Lcz/msebera/android/httpclient/impl/client/cache/Variant;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 181
    .line 182
    .line 183
    move-result-object p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 184
    move-object v9, v6

    .line 185
    :try_start_4
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    .line 186
    .line 187
    .line 188
    iget-object p4, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    .line 189
    .line 190
    invoke-virtual {p4, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 191
    .line 192
    .line 193
    move-result-object p4

    .line 194
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    invoke-direct {p0, p3, p1, v7}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->tryToUpdateVariantMap(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/impl/client/cache/Variant;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->shouldSendNotModifiedResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_4

    .line 206
    .line 207
    iget-object p1, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 210
    .line 211
    .line 212
    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 213
    return-object p1

    .line 214
    :cond_4
    return-object p4

    .line 215
    :catch_4
    move-exception v0

    .line 216
    :goto_2
    move-object v9, v6

    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :catch_5
    move-exception v0

    .line 220
    :goto_3
    move-object v9, v6

    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :catch_6
    move-exception v0

    .line 224
    move-object v1, p0

    .line 225
    goto :goto_2

    .line 226
    :catch_7
    move-exception v0

    .line 227
    move-object v1, p0

    .line 228
    goto :goto_3

    .line 229
    :goto_4
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    .line 230
    .line 231
    .line 232
    throw p1

    .line 233
    :goto_5
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    .line 234
    .line 235
    .line 236
    throw p1
.end method

.method public revalidateCacheEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    move-object v3, p5

    .line 9
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    invoke-virtual {v0, p2, p5}, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;->buildConditionalRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isNormalizeUri()Z

    move-result v0

    invoke-static {v1, p1, v0}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURIForRoute(Ljava/net/URI;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Z)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 12
    new-instance p2, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid URI: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    invoke-interface {v1, p1, v2, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v4

    .line 16
    invoke-direct {p0, v1, p5}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->revalidationResponseIsTooOld(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 17
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 18
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->conditionalRequestBuilder:Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;

    .line 19
    invoke-virtual {v0, p2, p5}, Lcz/msebera/android/httpclient/impl/client/cache/ConditionalRequestBuilder;->buildUnconditionalRequest(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v1

    .line 21
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->backend:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    invoke-interface {v4, p1, v0, p3, p4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    .line 22
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object v4

    move-object v6, p1

    move-object v5, v4

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v6, v1

    move-object v5, v4

    move-object v4, v0

    .line 23
    :goto_1
    const-string p1, "Via"

    invoke-direct {p0, v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->generateViaHeader(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v6, p1, p4}, Lcz/msebera/android/httpclient/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p4, 0x130

    if-eq p1, p4, :cond_2

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 25
    :cond_2
    invoke-direct {p0, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->recordCacheUpdate(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    :cond_3
    if-ne p1, p4, :cond_5

    .line 26
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseCache:Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;

    .line 27
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    move-object v2, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v2

    move-object v2, p2

    .line 28
    invoke-interface/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/client/cache/HttpCache;->updateCacheEntry(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object p1

    move-object p4, v2

    .line 29
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    invoke-virtual {p3, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->suitabilityChecker:Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 30
    invoke-virtual {p3, p2, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 31
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    .line 32
    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1

    .line 33
    :cond_4
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {p3, p2, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1

    :cond_5
    move-object p4, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, p4

    move-object p4, p2

    .line 34
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->staleIfErrorAppliesTo(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 35
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->getCurrentDate()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p2, p5, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->staleResponseNotAllowed(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->validityPolicy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 36
    invoke-virtual {p1, p2, p5, v6}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 37
    :try_start_1
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->responseGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {p1, p2, p5}, Lcz/msebera/android/httpclient/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    .line 38
    const-string p2, "Warning"

    const-string p3, "110 localhost \"Response is stale\""

    invoke-interface {p1, p2, p3}, Lcz/msebera/android/httpclient/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    .line 40
    throw p1

    :cond_6
    move-object v1, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, p0

    move-object v3, p3

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/client/cache/CachingExec;->handleBackendResponse(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public supportsRangeAndContentRangeHeaders()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
