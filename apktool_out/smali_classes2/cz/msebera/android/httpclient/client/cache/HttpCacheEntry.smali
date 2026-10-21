.class public Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final REQUEST_METHOD_HEADER_NAME:Ljava/lang/String; = "Hc-Request-Method"

.field private static final serialVersionUID:J = -0x576fdc1d5b5b2ca5L


# instance fields
.field private final date:Ljava/util/Date;

.field private final requestDate:Ljava/util/Date;

.field private final resource:Lcz/msebera/android/httpclient/client/cache/Resource;

.field private final responseDate:Ljava/util/Date;

.field private final responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

.field private final statusLine:Lcz/msebera/android/httpclient/StatusLine;

.field private final variantMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;)V
    .locals 7

    .line 15
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/lang/String;)V
    .locals 8

    .line 16
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcz/msebera/android/httpclient/StatusLine;",
            "[",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/client/cache/Resource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 14
    invoke-direct/range {v0 .. v7}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcz/msebera/android/httpclient/StatusLine;",
            "[",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/client/cache/Resource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string p7, "Request date"

    invoke-static {p1, p7}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    const-string p7, "Response date"

    invoke-static {p2, p7}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    const-string p7, "Status line"

    invoke-static {p3, p7}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    const-string p7, "Response headers"

    invoke-static {p4, p7}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    .line 7
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    .line 8
    iput-object p3, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    .line 9
    new-instance p1, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 10
    invoke-virtual {p1, p4}, Lcz/msebera/android/httpclient/message/HeaderGroup;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    .line 11
    iput-object p5, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    if-eqz p6, :cond_0

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->variantMap:Ljava/util/Map;

    .line 13
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->parseDate()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->date:Ljava/util/Date;

    return-void
.end method

.method private parseDate()Ljava/util/Date;
    .locals 1

    .line 1
    const-string v0, "Date"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method


# virtual methods
.method public getAllHeaders()[Lcz/msebera/android/httpclient/Header;
    .locals 5

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 2
    .line 3
    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->iterator()Lcz/msebera/android/httpclient/HeaderIterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcz/msebera/android/httpclient/Header;

    .line 23
    .line 24
    invoke-interface {v2}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "Hc-Request-Method"

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/message/HeaderGroup;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->date:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 1
    const-string v0, "Hc-Request-Method"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 1
    const-string v0, "Hc-Request-Method"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    new-array p1, p1, [Lcz/msebera/android/httpclient/Header;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    .line 2
    .line 3
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    .line 2
    .line 3
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequestDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseHeaders:Lcz/msebera/android/httpclient/message/HeaderGroup;

    .line 2
    .line 3
    const-string v1, "Hc-Request-Method"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string v0, "GET"

    .line 17
    .line 18
    return-object v0
.end method

.method public getResource()Lcz/msebera/android/httpclient/client/cache/Resource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    .line 2
    .line 3
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStatusLine()Lcz/msebera/android/httpclient/StatusLine;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVariantMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->variantMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hasVariants()Z
    .locals 1

    .line 1
    const-string v0, "Vary"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[request date="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->requestDate:Ljava/util/Date;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "; response date="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->responseDate:Ljava/util/Date;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "; statusLine="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->statusLine:Lcz/msebera/android/httpclient/StatusLine;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "]"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
