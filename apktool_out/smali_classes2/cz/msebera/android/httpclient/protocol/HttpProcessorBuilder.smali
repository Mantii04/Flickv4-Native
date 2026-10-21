.class public Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 13
    .line 14
    return-object v0
.end method

.method private getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAll([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAllLast([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAll([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAllLast([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAllFirst([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllFirst([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public varargs addAllFirst([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllFirst([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public varargs addAllLast([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllLast([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public varargs addAllLast([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllLast([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .locals 4

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    .line 2
    .line 3
    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->build()Ljava/util/LinkedList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v2

    .line 14
    :goto_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->build()Ljava/util/LinkedList;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_1
    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
