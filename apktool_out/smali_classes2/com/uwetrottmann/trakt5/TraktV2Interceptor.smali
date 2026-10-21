.class public Lcom/uwetrottmann/trakt5/TraktV2Interceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final trakt:Lcom/uwetrottmann/trakt5/TraktV2;


# direct methods
.method public constructor <init>(Lcom/uwetrottmann/trakt5/TraktV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/uwetrottmann/trakt5/TraktV2Interceptor;->trakt:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 5
    .line 6
    return-void
.end method

.method private static accessTokenIsNotEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static handleIntercept(Lokhttp3/Interceptor$Chain;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "api.trakt.tv"

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "api-staging.trakt.tv"

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "Content-Type"

    .line 47
    .line 48
    const-string v3, "application/json"

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 51
    .line 52
    .line 53
    const-string v2, "trakt-api-key"

    .line 54
    .line 55
    invoke-virtual {v1, v2, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 56
    .line 57
    .line 58
    const-string v2, "trakt-api-version"

    .line 59
    .line 60
    const-string v3, "2"

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/uwetrottmann/trakt5/TraktV2Interceptor;->hasNoAuthorizationHeader(Lokhttp3/Request;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-static {p2}, Lcom/uwetrottmann/trakt5/TraktV2Interceptor;->accessTokenIsNotEmpty(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "Bearer "

    .line 80
    .line 81
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v2, "Authorization"

    .line 92
    .line 93
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    const/16 v2, 0x1ad

    .line 109
    .line 110
    if-ne v1, v2, :cond_3

    .line 111
    .line 112
    const-string v1, "Retry-After"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    int-to-double v1, v1

    .line 125
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 126
    .line 127
    add-double/2addr v1, v3

    .line 128
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    mul-double/2addr v1, v3

    .line 134
    double-to-int v1, v1

    .line 135
    int-to-long v1, v1

    .line 136
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_2

    .line 144
    .line 145
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    .line 150
    .line 151
    .line 152
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Interceptor;->handleIntercept(Lokhttp3/Interceptor$Chain;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    .line 153
    .line 154
    .line 155
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-object p0

    .line 157
    :catch_0
    :cond_3
    return-object v0
.end method

.method private static hasNoAuthorizationHeader(Lokhttp3/Request;)Z
    .locals 1

    .line 1
    const-string v0, "Authorization"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/TraktV2Interceptor;->trakt:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/uwetrottmann/trakt5/TraktV2;->apiKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/TraktV2Interceptor;->trakt:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/uwetrottmann/trakt5/TraktV2;->accessToken()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1, v0, v1}, Lcom/uwetrottmann/trakt5/TraktV2Interceptor;->handleIntercept(Lokhttp3/Interceptor$Chain;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
