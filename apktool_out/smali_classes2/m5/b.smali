.class public final Lm5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Landroid/content/Context;

.field public final e:Lq5/a;

.field public f:Lr5/a;

.field public final j:Landroid/os/Handler;

.field public final m:Landroid/os/PowerManager$WakeLock;

.field public n:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm5/b;->j:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lm5/b;->n:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lm5/b;->r:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lm5/b;->s:Z

    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Lio/hopmonsdk/Hopmn;->getInstance(Landroid/content/Context;)Lio/hopmonsdk/Hopmn;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object p1, p0, Lm5/b;->b:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Lm5/b;->m:Landroid/os/PowerManager$WakeLock;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/hopmonsdk/Hopmn;->getConfigManager()Lq5/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lm5/b;->e:Lq5/a;

    .line 31
    .line 32
    invoke-virtual {v1}, Lio/hopmonsdk/Hopmn;->getHttpManager()Lp5/b;

    .line 33
    .line 34
    .line 35
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 p2, 0xa

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 p2, 0x1

    .line 49
    new-array p2, p2, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object p1, p2, v0

    .line 52
    .line 53
    const-string p1, "create ConfigSyncJob failed! Error = %s "

    .line 54
    .line 55
    const-string v0, "ConfigSyncJob"

    .line 56
    .line 57
    invoke-static {v0, p1, p2}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static a(Lm5/b;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lm5/b;->n:I

    .line 4
    .line 5
    add-int/2addr v2, v1

    .line 6
    iput v2, p0, Lm5/b;->n:I

    .line 7
    .line 8
    iget-object v2, p0, Lm5/b;->j:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget v3, p0, Lm5/b;->n:I

    .line 14
    .line 15
    const/16 v4, 0xa

    .line 16
    .line 17
    const-string v5, "ConfigSyncJob"

    .line 18
    .line 19
    if-lt v3, v4, :cond_0

    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p1, v1, v0

    .line 24
    .line 25
    const-string p1, "Retry limit reached after %s. Waiting 5 minutes."

    .line 26
    .line 27
    invoke-static {v5, p1, v1}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput v0, p0, Lm5/b;->n:I

    .line 31
    .line 32
    const-wide/32 v0, 0x493e0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-wide/16 v6, 0x7d0

    .line 40
    .line 41
    if-le v3, v1, :cond_1

    .line 42
    .line 43
    int-to-long v3, v3

    .line 44
    mul-long/2addr v6, v3

    .line 45
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x2

    .line 50
    new-array v4, v4, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object v3, v4, v0

    .line 53
    .line 54
    aput-object p1, v4, v1

    .line 55
    .line 56
    const-string p1, "Scheduling retry in %d ms due to %s"

    .line 57
    .line 58
    invoke-static {v5, p1, v4}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final b(Lio/hopmonsdk/Hopmn;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lio/hopmonsdk/Hopmn;->getPublisher()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "syncjobnullpub"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lio/hopmonsdk/Hopmn;->getPublisher()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    iget-object v1, p0, Lm5/b;->p:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, "syncjobnulluid"

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Lio/hopmonsdk/Hopmn;->isForegroundRunning()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lm5/b;->q:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object v3, p0, Lm5/b;->q:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    :goto_1
    const-string v3, "CC"

    .line 43
    .line 44
    :goto_2
    invoke-virtual {p1}, Lio/hopmonsdk/Hopmn;->getDomain()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, "/?domain="

    .line 49
    .line 50
    const-string v6, "&uid="

    .line 51
    .line 52
    const-string v7, "&pub="

    .line 53
    .line 54
    invoke-static {v5, v4, v6, v1, v7}, LA/i;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "&foreground="

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, "&ver=15.0.17&get=1&cc="

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/4 v1, 0x1

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    aput-object v0, v1, v2

    .line 86
    .line 87
    const-string v2, "Seed-mode config sync, path: %s"

    .line 88
    .line 89
    const-string v3, "ConfigSyncJob"

    .line 90
    .line 91
    invoke-static {v3, v2, v1}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lio/hopmonsdk/Hopmn;->getSeedDiscovery()Lo5/e;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v1, Lm5/a;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lm5/a;-><init>(Lm5/b;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0, v1}, Lo5/e;->executeGet(Ljava/lang/String;Lo5/d;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public getUpTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/b;->f:Lr5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lr5/a;->getUpTime(Ljava/util/concurrent/TimeUnit;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/b;->f:Lr5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lr5/a;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lm5/b;->s:Z

    .line 4
    .line 5
    const-string v3, "ConfigSyncJob"

    .line 6
    .line 7
    if-nez v2, :cond_1

    .line 8
    .line 9
    iget-boolean v4, p0, Lm5/b;->r:Z

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    iget-object v2, p0, Lm5/b;->b:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v2}, Lio/hopmonsdk/Hopmn;->getInstance(Landroid/content/Context;)Lio/hopmonsdk/Hopmn;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lio/hopmonsdk/Hopmn;->getDelayMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    const-wide/16 v8, 0x3e8

    .line 29
    .line 30
    rem-long/2addr v6, v8

    .line 31
    sub-long/2addr v4, v6

    .line 32
    iget-object v6, p0, Lm5/b;->j:Landroid/os/Handler;

    .line 33
    .line 34
    invoke-virtual {v6, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    iget-object v6, p0, Lm5/b;->m:Landroid/os/PowerManager$WakeLock;

    .line 38
    .line 39
    invoke-virtual {v6, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2}, Lm5/b;->b(Lio/hopmonsdk/Hopmn;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v2, v1, v0

    .line 54
    .line 55
    const-string v0, "run ConfigSyncJob failed! Error = %s "

    .line 56
    .line 57
    invoke-static {v3, v0, v1}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-boolean v4, p0, Lm5/b;->r:Z

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const/4 v5, 0x2

    .line 72
    new-array v5, v5, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v2, v5, v0

    .line 75
    .line 76
    aput-object v4, v5, v1

    .line 77
    .line 78
    const-string v0, "ConfigSyncJob run ignored. shutdown=%s scheduled=%s"

    .line 79
    .line 80
    invoke-static {v3, v0, v5}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public schedule(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lm5/b;->p:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lm5/b;->q:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean p1, p0, Lm5/b;->s:Z

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    const-string v0, "ConfigSyncJob"

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-array p1, p2, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string p2, "ConfigSyncJob is shutdown - ignoring schedule"

    .line 15
    .line 16
    invoke-static {v0, p2, p1}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean p1, p0, Lm5/b;->r:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    new-array p1, p2, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string p2, "ConfigSyncJob already scheduled - skipping duplicate schedule"

    .line 27
    .line 28
    invoke-static {v0, p2, p1}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lm5/b;->r:Z

    .line 34
    .line 35
    iget-object p1, p0, Lm5/b;->j:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    new-array p1, p2, [Ljava/lang/Object;

    .line 44
    .line 45
    const-string p2, "Scheduled configuration synchronization job"

    .line 46
    .line 47
    invoke-static {v0, p2, p1}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "Shutdown configuration synchronization job"

    .line 5
    .line 6
    const-string v3, "ConfigSyncJob"

    .line 7
    .line 8
    invoke-static {v3, v2, v1}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lm5/b;->s:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lm5/b;->r:Z

    .line 15
    .line 16
    iget-object v0, p0, Lm5/b;->j:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lm5/b;->m:Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lm5/b;->f:Lr5/a;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lio/hopmonsdk/HopmnSrv;->stop()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lm5/b;->f:Lr5/a;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lm5/b;->f:Lr5/a;

    .line 48
    .line 49
    :cond_1
    return-void
.end method
