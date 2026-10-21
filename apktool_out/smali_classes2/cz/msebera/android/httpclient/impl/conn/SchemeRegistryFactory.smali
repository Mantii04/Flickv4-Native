.class public final Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->SAFE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


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

.method public static createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 5

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 2
    .line 3
    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 7
    .line 8
    const/16 v2, 0x50

    .line 9
    .line 10
    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "http"

    .line 15
    .line 16
    invoke-direct {v1, v4, v2, v3}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 23
    .line 24
    const/16 v2, 0x1bb

    .line 25
    .line 26
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "https"

    .line 31
    .line 32
    invoke-direct {v1, v4, v2, v3}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public static createSystemDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 5

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 2
    .line 3
    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 7
    .line 8
    const/16 v2, 0x50

    .line 9
    .line 10
    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "http"

    .line 15
    .line 16
    invoke-direct {v1, v4, v2, v3}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 23
    .line 24
    const/16 v2, 0x1bb

    .line 25
    .line 26
    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->getSystemSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "https"

    .line 31
    .line 32
    invoke-direct {v1, v4, v2, v3}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
