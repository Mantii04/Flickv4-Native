.class public final Lcom/squareup/picasso/d;
.super Lm4/L;
.source "SourceFile"


# instance fields
.field public final a:Lm4/q;

.field public final b:Lm4/P;


# direct methods
.method public constructor <init>(Lm4/q;Lm4/P;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm4/L;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/squareup/picasso/d;->a:Lm4/q;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/squareup/picasso/d;->b:Lm4/P;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method

.method public canHandleRequest(Lm4/I;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lm4/I;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "http"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string v0, "https"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public final d(Landroid/net/NetworkInfo;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public load(Lm4/I;I)Lm4/K;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->isOfflineOnly(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p2, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lokhttp3/CacheControl$Builder;

    .line 13
    .line 14
    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->shouldReadFromDiskCache(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->shouldWriteToDiskCache(I)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 p2, 0x0

    .line 41
    :goto_0
    new-instance v0, Lokhttp3/Request$Builder;

    .line 42
    .line 43
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p1, Lm4/I;->a:Landroid/net/Uri;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p2, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/squareup/picasso/d;->a:Lm4/q;

    .line 66
    .line 67
    check-cast p2, Lm4/x;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lm4/x;->load(Lokhttp3/Request;)Lokhttp3/Response;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_9

    .line 82
    .line 83
    invoke-virtual {p1}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->e:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 88
    .line 89
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->f:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 90
    .line 91
    if-nez p1, :cond_5

    .line 92
    .line 93
    move-object p1, v1

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    move-object p1, v0

    .line 96
    :goto_1
    const-wide/16 v2, 0x0

    .line 97
    .line 98
    if-ne p1, v0, :cond_7

    .line 99
    .line 100
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    cmp-long v0, v4, v2

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 110
    .line 111
    .line 112
    new-instance p1, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;

    .line 113
    .line 114
    const-string p2, "Received response with 0 content-length header."

    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_7
    :goto_2
    if-ne p1, v1, :cond_8

    .line 121
    .line 122
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    cmp-long v0, v0, v2

    .line 127
    .line 128
    if-lez v0, :cond_8

    .line 129
    .line 130
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    iget-object v2, p0, Lcom/squareup/picasso/d;->b:Lm4/P;

    .line 135
    .line 136
    iget-object v2, v2, Lm4/P;->b:Lm4/O;

    .line 137
    .line 138
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const/4 v1, 0x4

    .line 143
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    .line 149
    .line 150
    :cond_8
    new-instance v0, Lm4/K;

    .line 151
    .line 152
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->source()Le6/n;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-direct {v0, p2, p1}, Lm4/K;-><init>(Le6/L;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    .line 157
    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_9
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 161
    .line 162
    .line 163
    new-instance p2, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;

    .line 164
    .line 165
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    invoke-direct {p2, p1}, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;-><init>(I)V

    .line 170
    .line 171
    .line 172
    throw p2
.end method
