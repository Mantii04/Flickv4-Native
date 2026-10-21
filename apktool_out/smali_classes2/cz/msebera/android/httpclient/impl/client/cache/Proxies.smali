.class Lcz/msebera/android/httpclient/impl/client/cache/Proxies;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static enhanceResponse(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 4

    .line 1
    const-string v0, "HTTP response"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-class v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Ljava/lang/Class;

    .line 21
    .line 22
    const-class v2, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v2, v1, v3

    .line 26
    .line 27
    new-instance v2, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProxyHandler;-><init>(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    .line 37
    .line 38
    return-object p0
.end method
