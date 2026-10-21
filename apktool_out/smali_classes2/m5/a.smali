.class public final Lm5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/d;


# instance fields
.field public final synthetic a:Lm5/b;


# direct methods
.method public constructor <init>(Lm5/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm5/a;->a:Lm5/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/a;->a:Lm5/b;

    .line 2
    .line 3
    iget-object v1, v0, Lm5/b;->m:Landroid/os/PowerManager$WakeLock;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :cond_0
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    const-string p1, "Seed-mode config sync failed: %s"

    .line 23
    .line 24
    const-string v2, "ConfigSyncJob"

    .line 25
    .line 26
    invoke-static {v2, p1, v1}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "seed network error"

    .line 30
    .line 31
    invoke-static {v0, p1}, Lm5/b;->a(Lm5/b;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lm5/a;->a:Lm5/b;

    .line 3
    .line 4
    iget-object v2, v1, Lm5/b;->m:Landroid/os/PowerManager$WakeLock;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    :cond_0
    const/4 v2, 0x1

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p1, v2, v0

    .line 21
    .line 22
    const-string v3, "ConfigSyncJob"

    .line 23
    .line 24
    const-string v4, "Seed-mode config received: %s"

    .line 25
    .line 26
    invoke-static {v3, v4, v2}, Ls5/b;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v4, "config:"

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "<html"

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    const-string v5, "404 not found"

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-string v4, "^config:[^,<>\"]+,\\d{1,5}.*$"

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    :goto_0
    move v2, v0

    .line 74
    :goto_1
    if-nez v2, :cond_5

    .line 75
    .line 76
    new-array p1, v0, [Ljava/lang/Object;

    .line 77
    .line 78
    const-string v0, "Seed-mode: invalid config response, skipping write/reload"

    .line 79
    .line 80
    invoke-static {v3, v0, p1}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const-string p1, "invalid config"

    .line 84
    .line 85
    invoke-static {v1, p1}, Lm5/b;->a(Lm5/b;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_5
    iput v0, v1, Lm5/b;->n:I

    .line 90
    .line 91
    iget-object v2, v1, Lm5/b;->e:Lq5/a;

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Lq5/a;->writeToFile(Ljava/lang/String;)Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v2, v1, Lm5/b;->f:Lr5/a;

    .line 98
    .line 99
    if-eqz v2, :cond_6

    .line 100
    .line 101
    new-array p1, v0, [Ljava/lang/Object;

    .line 102
    .line 103
    const-string v0, "Seed-mode: proxy running, reloading config"

    .line 104
    .line 105
    invoke-static {v3, v0, p1}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lio/hopmonsdk/HopmnSrv;->reload()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6
    new-instance v0, Lr5/a;

    .line 113
    .line 114
    invoke-direct {v0}, Lr5/a;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v0, v1, Lm5/b;->f:Lr5/a;

    .line 118
    .line 119
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    filled-new-array {p1}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v0, v1, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    .line 131
    .line 132
    return-void
.end method
