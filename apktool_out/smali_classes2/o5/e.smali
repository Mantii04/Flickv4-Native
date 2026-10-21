.class public final Lo5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Landroid/os/Handler;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "https://pubs.abnetworks.io/postconsent"

    .line 2
    .line 3
    const-string v1, "https://pubs.myrc.xyz/postconsent"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lo5/e;->k:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lo5/e;->c:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lo5/e;->d:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lo5/e;->e:I

    .line 23
    .line 24
    const-string v0, "https://cloudflare-dns.com"

    .line 25
    .line 26
    iput-object v0, p0, Lo5/e;->f:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lo5/e;->g:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 36
    .line 37
    iput-object v0, p0, Lo5/e;->h:Ljava/util/List;

    .line 38
    .line 39
    iput-object v0, p0, Lo5/e;->i:Ljava/util/List;

    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    iput-wide v0, p0, Lo5/e;->j:J

    .line 44
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lo5/e;->a:Ljava/util/ArrayList;

    .line 51
    .line 52
    iput-object p2, p0, Lo5/e;->b:Ljava/lang/String;

    .line 53
    .line 54
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const-string v3, "SeedDiscovery"

    .line 5
    .line 6
    new-instance v4, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0}, Lo5/e;->e(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/16 v6, 0x2710

    .line 16
    .line 17
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 21
    .line 22
    .line 23
    const-string v6, "GET"

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const/16 v7, 0xc8

    .line 33
    .line 34
    if-eq v6, v7, :cond_0

    .line 35
    .line 36
    const-string v7, "Seed %s returned HTTP %d"

    .line 37
    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    new-array v8, v1, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p0, v8, v2

    .line 45
    .line 46
    aput-object v6, v8, v0

    .line 47
    .line 48
    invoke-static {v3, v7, v8}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 52
    .line 53
    .line 54
    return-object v4

    .line 55
    :catch_0
    move-exception v5

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    .line 58
    .line 59
    new-instance v7, Ljava/io/InputStreamReader;

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_2

    .line 86
    .line 87
    move v8, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const-string v8, "^(\\d{1,3}\\.){3}\\d{1,3}$"

    .line 90
    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    :goto_1
    if-eqz v8, :cond_1

    .line 96
    .line 97
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 105
    .line 106
    .line 107
    const-string v5, "Seed %s returned %d API IPs"

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    new-array v7, v1, [Ljava/lang/Object;

    .line 118
    .line 119
    aput-object p0, v7, v2

    .line 120
    .line 121
    aput-object v6, v7, v0

    .line 122
    .line 123
    invoke-static {v3, v5, v7}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    return-object v4

    .line 127
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    .line 132
    .line 133
    aput-object p0, v1, v2

    .line 134
    .line 135
    aput-object v5, v1, v0

    .line 136
    .line 137
    const-string p0, "Failed to fetch API IPs from seed %s: %s"

    .line 138
    .line 139
    invoke-static {v3, p0, v1}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-object v4
.end method

.method public static e(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 18
    .line 19
    new-instance v1, Lo5/c;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object v1, v2, v3

    .line 29
    .line 30
    const-string v1, "TLS"

    .line 31
    .line 32
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v3, Ljava/security/SecureRandom;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v1, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lh5/f;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lo5/e;->e:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "http://"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, ":"

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    const-string v0, "https://"

    .line 32
    .line 33
    invoke-static {v0, p1, p2}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final d()Ljava/util/List;
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v5, p0, Lo5/e;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_d

    .line 25
    .line 26
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Ljava/lang/String;

    .line 31
    .line 32
    const-string v7, "://"

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_2

    .line 39
    .line 40
    invoke-static {v6}, Lo5/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-nez v8, :cond_1

    .line 52
    .line 53
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    new-array v8, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v6, v8, v1

    .line 59
    .line 60
    aput-object v7, v8, v2

    .line 61
    .line 62
    const-string v6, "SeedDiscovery"

    .line 63
    .line 64
    const-string v7, "Seed entry is a full URL: %s (host=%s)"

    .line 65
    .line 66
    invoke-static {v6, v7, v8}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    move v7, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const-string v7, "^(\\d{1,3}\\.){3}\\d{1,3}$"

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    :goto_1
    if-eqz v7, :cond_4

    .line 85
    .line 86
    const-string v7, "/v1/seeds"

    .line 87
    .line 88
    invoke-virtual {p0, v6, v7}, Lo5/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-array v7, v2, [Ljava/lang/Object;

    .line 99
    .line 100
    aput-object v6, v7, v1

    .line 101
    .line 102
    const-string v6, "SeedDiscovery"

    .line 103
    .line 104
    const-string v8, "Seed %s is a direct IP, skipping DoH"

    .line 105
    .line 106
    invoke-static {v6, v8, v7}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-object v9, p0, Lo5/e;->f:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v9, "/dns-query?name="

    .line 126
    .line 127
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v9, "&type=A"

    .line 134
    .line 135
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-static {v8}, Lo5/e;->e(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    const-string v9, "accept"

    .line 147
    .line 148
    const-string v10, "application/dns-json"

    .line 149
    .line 150
    invoke-virtual {v8, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/16 v9, 0x2710

    .line 154
    .line 155
    invoke-virtual {v8, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 159
    .line 160
    .line 161
    const-string v9, "GET"

    .line 162
    .line 163
    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    const/16 v10, 0xc8

    .line 171
    .line 172
    if-eq v9, v10, :cond_5

    .line 173
    .line 174
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_7

    .line 178
    .line 179
    :catch_0
    move-exception v8

    .line 180
    goto/16 :goto_6

    .line 181
    .line 182
    :cond_5
    new-instance v9, Ljava/io/BufferedReader;

    .line 183
    .line 184
    new-instance v10, Ljava/io/InputStreamReader;

    .line 185
    .line 186
    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 194
    .line 195
    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    :goto_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    if-eqz v11, :cond_6

    .line 206
    .line 207
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 215
    .line 216
    .line 217
    new-instance v8, Lorg/json/JSONObject;

    .line 218
    .line 219
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v9, "Status"

    .line 227
    .line 228
    const/4 v10, -0x1

    .line 229
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    if-eqz v9, :cond_7

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_7
    const-string v9, "Answer"

    .line 237
    .line 238
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    if-nez v8, :cond_8

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_8
    move v9, v1

    .line 246
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    if-ge v9, v10, :cond_c

    .line 251
    .line 252
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    const-string v11, "type"

    .line 257
    .line 258
    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    if-eq v11, v2, :cond_9

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_9
    const-string v11, "data"

    .line 266
    .line 267
    const-string v12, ""

    .line 268
    .line 269
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v11

    .line 281
    if-eqz v11, :cond_a

    .line 282
    .line 283
    move v11, v1

    .line 284
    goto :goto_4

    .line 285
    :cond_a
    const-string v11, "^(\\d{1,3}\\.){3}\\d{1,3}$"

    .line 286
    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    :goto_4
    if-eqz v11, :cond_b

    .line 292
    .line 293
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .line 295
    .line 296
    :cond_b
    :goto_5
    add-int/2addr v9, v2

    .line 297
    goto :goto_3

    .line 298
    :goto_6
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    new-array v9, v0, [Ljava/lang/Object;

    .line 303
    .line 304
    aput-object v6, v9, v1

    .line 305
    .line 306
    aput-object v8, v9, v2

    .line 307
    .line 308
    const-string v8, "SeedDiscovery"

    .line 309
    .line 310
    const-string v10, "DoH resolution failed for %s: %s"

    .line 311
    .line 312
    invoke-static {v8, v10, v9}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_c
    :goto_7
    new-array v8, v0, [Ljava/lang/Object;

    .line 316
    .line 317
    aput-object v6, v8, v1

    .line 318
    .line 319
    aput-object v7, v8, v2

    .line 320
    .line 321
    const-string v6, "SeedDiscovery"

    .line 322
    .line 323
    const-string v9, "DoH %s -> %s"

    .line 324
    .line 325
    invoke-static {v6, v9, v8}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    if-eqz v7, :cond_0

    .line 337
    .line 338
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    check-cast v7, Ljava/lang/String;

    .line 343
    .line 344
    const-string v8, "/v1/seeds"

    .line 345
    .line 346
    invoke-virtual {p0, v7, v8}, Lo5/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    if-eqz v6, :cond_e

    .line 367
    .line 368
    iget-object v3, p0, Lo5/e;->a:Ljava/util/ArrayList;

    .line 369
    .line 370
    new-array v4, v2, [Ljava/lang/Object;

    .line 371
    .line 372
    aput-object v3, v4, v1

    .line 373
    .line 374
    const-string v3, "SeedDiscovery"

    .line 375
    .line 376
    const-string v6, "No seed endpoints available for %s"

    .line 377
    .line 378
    invoke-static {v3, v6, v4}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    goto :goto_9

    .line 382
    :cond_e
    iget-object v6, p0, Lo5/e;->g:Ljava/lang/Object;

    .line 383
    .line 384
    monitor-enter v6

    .line 385
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 388
    .line 389
    .line 390
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 391
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-eqz v4, :cond_10

    .line 400
    .line 401
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    check-cast v4, Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v4}, Lo5/e;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    if-nez v7, :cond_f

    .line 416
    .line 417
    invoke-static {v4}, Lo5/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 421
    .line 422
    .line 423
    :cond_10
    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-eqz v3, :cond_12

    .line 428
    .line 429
    iget-object v3, p0, Lo5/e;->b:Ljava/lang/String;

    .line 430
    .line 431
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    if-nez v3, :cond_12

    .line 436
    .line 437
    iget-object v3, p0, Lo5/e;->b:Ljava/lang/String;

    .line 438
    .line 439
    new-array v4, v2, [Ljava/lang/Object;

    .line 440
    .line 441
    aput-object v3, v4, v1

    .line 442
    .line 443
    const-string v3, "SeedDiscovery"

    .line 444
    .line 445
    const-string v6, "Seeds returned no API IPs; trying postconsent fallback for pub=%s"

    .line 446
    .line 447
    invoke-static {v3, v6, v4}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    sget-object v3, Lo5/e;->k:[Ljava/lang/String;

    .line 451
    .line 452
    move v4, v1

    .line 453
    :goto_a
    if-ge v4, v0, :cond_12

    .line 454
    .line 455
    aget-object v6, v3, v4

    .line 456
    .line 457
    const-string v7, "?pub="

    .line 458
    .line 459
    invoke-static {v6, v7}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    iget-object v8, p0, Lo5/e;->b:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v8, "&key=9221346234fa4fb880caf324effcff004025a41a51d672a7"

    .line 469
    .line 470
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    invoke-static {v7}, Lo5/e;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 478
    .line 479
    .line 480
    move-result-object v7

    .line 481
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 482
    .line 483
    .line 484
    move-result v8

    .line 485
    if-nez v8, :cond_11

    .line 486
    .line 487
    invoke-static {v6}, Lo5/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 491
    .line 492
    .line 493
    invoke-static {v6}, Lo5/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 498
    .line 499
    .line 500
    move-result v4

    .line 501
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    iget-object v6, p0, Lo5/e;->b:Ljava/lang/String;

    .line 506
    .line 507
    const/4 v7, 0x3

    .line 508
    new-array v7, v7, [Ljava/lang/Object;

    .line 509
    .line 510
    aput-object v3, v7, v1

    .line 511
    .line 512
    aput-object v4, v7, v2

    .line 513
    .line 514
    aput-object v6, v7, v0

    .line 515
    .line 516
    const-string v0, "SeedDiscovery"

    .line 517
    .line 518
    const-string v3, "FALLBACK USED: postconsent %s returned %d API IPs for pub=%s"

    .line 519
    .line 520
    invoke-static {v0, v3, v7}, Ls5/b;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    .line 522
    .line 523
    goto :goto_b

    .line 524
    :cond_11
    add-int/2addr v4, v2

    .line 525
    goto :goto_a

    .line 526
    :cond_12
    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_13

    .line 531
    .line 532
    new-array v0, v1, [Ljava/lang/Object;

    .line 533
    .line 534
    const-string v1, "SeedDiscovery"

    .line 535
    .line 536
    const-string v2, "No API IPs from seeds or postconsent fallback"

    .line 537
    .line 538
    invoke-static {v1, v2, v0}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 542
    .line 543
    return-object v0

    .line 544
    :cond_13
    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 545
    .line 546
    .line 547
    iget-object v0, p0, Lo5/e;->g:Ljava/lang/Object;

    .line 548
    .line 549
    monitor-enter v0

    .line 550
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    .line 551
    .line 552
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 553
    .line 554
    .line 555
    iput-object v3, p0, Lo5/e;->i:Ljava/util/List;

    .line 556
    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 558
    .line 559
    .line 560
    move-result-wide v3

    .line 561
    iput-wide v3, p0, Lo5/e;->j:J

    .line 562
    .line 563
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 564
    new-array v0, v2, [Ljava/lang/Object;

    .line 565
    .line 566
    aput-object v5, v0, v1

    .line 567
    .line 568
    const-string v1, "SeedDiscovery"

    .line 569
    .line 570
    const-string v2, "API IP cache refreshed: %s"

    .line 571
    .line 572
    invoke-static {v1, v2, v0}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    new-instance v0, Ljava/util/ArrayList;

    .line 576
    .line 577
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 578
    .line 579
    .line 580
    return-object v0

    .line 581
    :catchall_0
    move-exception v1

    .line 582
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 583
    throw v1

    .line 584
    :catchall_1
    move-exception v0

    .line 585
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 586
    throw v0
.end method

.method public executeGet(Ljava/lang/String;Lo5/d;)V
    .locals 2

    .line 1
    new-instance v0, Lo5/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1, p2}, Lo5/a;-><init>(Lo5/e;Ljava/lang/String;ZLo5/d;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lo5/e;->c:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public executePost(Ljava/lang/String;Lo5/d;)V
    .locals 2

    .line 1
    new-instance v0, Lo5/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1, p2}, Lo5/a;-><init>(Lo5/e;Ljava/lang/String;ZLo5/d;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lo5/e;->c:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "SeedDiscovery"

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_7

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Ljava/lang/String;

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0, v4, p1}, Lo5/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v6, "%s %s"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    const-string v7, "GET"

    .line 29
    .line 30
    const-string v8, "POST"

    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    move-object v9, v8

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    move-object v9, v7

    .line 37
    :goto_1
    :try_start_1
    new-array v10, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v9, v10, v1

    .line 40
    .line 41
    aput-object v5, v10, v2

    .line 42
    .line 43
    invoke-static {v3, v6, v10}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, Lo5/e;->e(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const/16 v6, 0x2710

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 56
    .line 57
    .line 58
    if-eqz p3, :cond_1

    .line 59
    .line 60
    move-object v7, v8

    .line 61
    :cond_1
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    if-eqz p3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v5, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception v5

    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    const/16 v7, 0x1f4

    .line 85
    .line 86
    if-lt v6, v7, :cond_3

    .line 87
    .line 88
    const-string v7, "API IP %s returned HTTP %d, trying next"

    .line 89
    .line 90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    new-array v8, v0, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v4, v8, v1

    .line 97
    .line 98
    aput-object v6, v8, v2

    .line 99
    .line 100
    invoke-static {v3, v7, v8}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const/16 v7, 0xc8

    .line 108
    .line 109
    if-eq v6, v7, :cond_4

    .line 110
    .line 111
    const-string v7, "API IP %s returned HTTP %d (no retry)"

    .line 112
    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    new-array v8, v0, [Ljava/lang/Object;

    .line 118
    .line 119
    aput-object v4, v8, v1

    .line 120
    .line 121
    aput-object v6, v8, v2

    .line 122
    .line 123
    invoke-static {v3, v7, v8}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_4
    new-instance v6, Ljava/io/BufferedReader;

    .line 131
    .line 132
    new-instance v7, Ljava/io/InputStreamReader;

    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 142
    .line 143
    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    :goto_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    if-eqz v8, :cond_5

    .line 154
    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_6

    .line 178
    .line 179
    const-string v5, "API IP %s returned empty body, trying next"

    .line 180
    .line 181
    new-array v6, v2, [Ljava/lang/Object;

    .line 182
    .line 183
    aput-object v4, v6, v1

    .line 184
    .line 185
    invoke-static {v3, v5, v6}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_6
    const-string v6, "Success from API IP %s"

    .line 191
    .line 192
    new-array v7, v2, [Ljava/lang/Object;

    .line 193
    .line 194
    aput-object v4, v7, v1

    .line 195
    .line 196
    invoke-static {v3, v6, v7}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    .line 198
    .line 199
    return-object v5

    .line 200
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    new-array v6, v0, [Ljava/lang/Object;

    .line 205
    .line 206
    aput-object v4, v6, v1

    .line 207
    .line 208
    aput-object v5, v6, v2

    .line 209
    .line 210
    const-string v4, "Request to %s failed: %s"

    .line 211
    .line 212
    invoke-static {v3, v4, v6}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_7
    :goto_5
    const/4 p1, 0x0

    .line 218
    return-object p1
.end method

.method public getCachedApiIps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo5/e;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Lo5/e;->i:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public isCacheFresh()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lo5/e;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lo5/e;->i:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, p0, Lo5/e;->j:J

    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    const-wide/32 v3, 0x493e0

    .line 20
    .line 21
    .line 22
    cmp-long v1, v1, v3

    .line 23
    .line 24
    if-gez v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    monitor-exit v0

    .line 32
    return v1

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method
