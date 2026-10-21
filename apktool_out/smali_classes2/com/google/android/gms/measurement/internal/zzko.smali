.class final Lcom/google/android/gms/measurement/internal/zzko;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Ljava/net/URL;

.field public final e:Lcom/google/android/gms/measurement/internal/zzkp;

.field public final f:Ljava/lang/String;

.field public final synthetic j:Lcom/google/android/gms/measurement/internal/zzkm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkm;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzkp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzkp;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzko;->j:Lcom/google/android/gms/measurement/internal/zzkm;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzko;->b:Ljava/net/URL;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzko;->e:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzko;->f:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzko;->j:Lcom/google/android/gms/measurement/internal/zzkm;

    .line 2
    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzr()V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzko;->b:Ljava/net/URL;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcq;->zza()Lcom/google/android/gms/internal/measurement/zzcq;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "client-measurement"

    .line 15
    .line 16
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/measurement/zzcq;->zza(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URLConnection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v3, v0, Ljava/net/HttpURLConnection;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    move-object v3, v0

    .line 25
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 28
    .line 29
    .line 30
    const v0, 0xea60

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 34
    .line 35
    .line 36
    const v0, 0xee48

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 47
    .line 48
    .line 49
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 50
    .line 51
    .line 52
    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 53
    :try_start_2
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    :try_start_3
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkm;->a(Ljava/net/HttpURLConnection;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 69
    .line 70
    move-object v3, p0

    .line 71
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzko;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhh;->zzb(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto :goto_2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    goto :goto_3

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    :goto_0
    move-object v7, v5

    .line 84
    goto :goto_2

    .line 85
    :catch_1
    move-exception v0

    .line 86
    :goto_1
    move-object v7, v5

    .line 87
    goto :goto_3

    .line 88
    :catchall_2
    move-exception v0

    .line 89
    move v4, v2

    .line 90
    goto :goto_0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    move v4, v2

    .line 93
    goto :goto_1

    .line 94
    :catchall_3
    move-exception v0

    .line 95
    move v4, v2

    .line 96
    move-object v3, v5

    .line 97
    move-object v7, v3

    .line 98
    goto :goto_2

    .line 99
    :catch_3
    move-exception v0

    .line 100
    move v4, v2

    .line 101
    move-object v3, v5

    .line 102
    move-object v7, v3

    .line 103
    goto :goto_3

    .line 104
    :cond_0
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    .line 105
    .line 106
    const-string v3, "Failed to obtain HTTP connection"

    .line 107
    .line 108
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 112
    :goto_2
    if-eqz v3, :cond_1

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 122
    .line 123
    move-object v6, v5

    .line 124
    move-object v3, p0

    .line 125
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzko;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhh;->zzb(Ljava/lang/Runnable;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    :goto_3
    if-eqz v3, :cond_2

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    .line 136
    .line 137
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 142
    .line 143
    move-object v3, p0

    .line 144
    move-object v6, v5

    .line 145
    move-object v5, v0

    .line 146
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/zzko;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhh;->zzb(Ljava/lang/Runnable;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method
