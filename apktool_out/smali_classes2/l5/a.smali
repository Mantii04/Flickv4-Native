.class public abstract Ll5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Ljava/lang/Boolean;


# direct methods
.method public static disable(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, LB1/I;->getInstance(Landroid/content/Context;)LB1/I;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "DownloaderSdkQueryWork"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, LB1/I;->cancelUniqueWork(Ljava/lang/String;)LB1/B;

    .line 12
    .line 13
    .line 14
    const-string v0, "DownloaderSdkQueryWorkOnce"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, LB1/I;->cancelUniqueWork(Ljava/lang/String;)LB1/B;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    aput-object p0, v0, v1

    .line 30
    .line 31
    const-string p0, "ImsdkActivation"

    .line 32
    .line 33
    const-string v1, "cancel imsdk work failed: %s"

    .line 34
    .line 35
    invoke-static {p0, v1, v0}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {}, Ll5/a;->stopImsdk()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Ll5/a;->isImsdkPresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "ImsdkActivation"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-array p0, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string p1, "im-sdk not present on classpath - imsdk activation skipped"

    .line 13
    .line 14
    invoke-static {v2, p1, p0}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-eqz p2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, LB1/g;

    .line 32
    .line 33
    invoke-direct {v0}, LB1/g;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "PUBLISHER_ID"

    .line 37
    .line 38
    invoke-virtual {v0, v3, p1}, LB1/g;->putString(Ljava/lang/String;Ljava/lang/String;)LB1/g;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v3, "SEED_CSV"

    .line 43
    .line 44
    invoke-virtual {v0, v3, p2}, LB1/g;->putString(Ljava/lang/String;Ljava/lang/String;)LB1/g;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, LB1/g;->build()LB1/h;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance v0, LB1/u;

    .line 57
    .line 58
    const-class v3, Lio/hopmonsdk/imsdk/ImsdkQueryWorker;

    .line 59
    .line 60
    invoke-direct {v0, v3}, LB1/u;-><init>(Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, LB1/J;->setInputData(LB1/h;)LB1/J;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, LB1/u;

    .line 68
    .line 69
    sget-object v4, Landroidx/work/BackoffPolicy;->b:Landroidx/work/BackoffPolicy;

    .line 70
    .line 71
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 72
    .line 73
    const-wide/16 v6, 0x1e

    .line 74
    .line 75
    invoke-virtual {v0, v4, v6, v7, v5}, LB1/J;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)LB1/J;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, LB1/u;

    .line 80
    .line 81
    invoke-virtual {v0}, LB1/J;->build()LB1/L;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, LB1/w;

    .line 86
    .line 87
    invoke-static {p0}, LB1/I;->getInstance(Landroid/content/Context;)LB1/I;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    sget-object v7, Landroidx/work/ExistingWorkPolicy;->b:Landroidx/work/ExistingWorkPolicy;

    .line 92
    .line 93
    const-string v8, "DownloaderSdkQueryWorkOnce"

    .line 94
    .line 95
    invoke-virtual {v6, v8, v7, v0}, LB1/I;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;LB1/w;)LB1/B;

    .line 96
    .line 97
    .line 98
    new-instance v0, LB1/C;

    .line 99
    .line 100
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 101
    .line 102
    const-wide/16 v7, 0x3c

    .line 103
    .line 104
    invoke-direct {v0, v3, v7, v8, v6}, LB1/C;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p2}, LB1/J;->setInputData(LB1/h;)LB1/J;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, LB1/C;

    .line 112
    .line 113
    const-wide/16 v6, 0x78

    .line 114
    .line 115
    invoke-virtual {p2, v4, v6, v7, v5}, LB1/J;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)LB1/J;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, LB1/C;

    .line 120
    .line 121
    invoke-virtual {p2}, LB1/J;->build()LB1/L;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    check-cast p2, LB1/E;

    .line 126
    .line 127
    invoke-static {p0}, LB1/I;->getInstance(Landroid/content/Context;)LB1/I;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->e:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 132
    .line 133
    const-string v3, "DownloaderSdkQueryWork"

    .line 134
    .line 135
    invoke-virtual {p0, v3, v0, p2}, LB1/I;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;LB1/E;)LB1/B;

    .line 136
    .line 137
    .line 138
    const/4 p0, 0x1

    .line 139
    new-array p0, p0, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object p1, p0, v1

    .line 142
    .line 143
    const-string p1, "imsdk activation enabled (immediate + hourly), pub=%s"

    .line 144
    .line 145
    invoke-static {v2, p1, p0}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_2
    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    .line 150
    .line 151
    const-string p1, "no seed CSV - cannot schedule imsdk activation"

    .line 152
    .line 153
    invoke-static {v2, p1, p0}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public static isImsdkPresent()Z
    .locals 1

    .line 1
    sget-object v0, Ll5/a;->a:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    :goto_0
    sput-object v0, Ll5/a;->a:Ljava/lang/Boolean;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public static startImsdk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const-string v3, "ImsdkActivation"

    .line 5
    .line 6
    :try_start_0
    const-class v4, Lb4/b;

    .line 7
    .line 8
    const-string v5, "start"

    .line 9
    .line 10
    new-array v6, v0, [Ljava/lang/Class;

    .line 11
    .line 12
    const-class v7, Landroid/content/Context;

    .line 13
    .line 14
    aput-object v7, v6, v2

    .line 15
    .line 16
    const-class v7, Ljava/lang/String;

    .line 17
    .line 18
    aput-object v7, v6, v1

    .line 19
    .line 20
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p0, v0, v2

    .line 31
    .line 32
    aput-object p1, v0, v1

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string p0, "IMSDK.start(pub=%s) invoked"

    .line 39
    .line 40
    new-array v0, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object p1, v0, v2

    .line 43
    .line 44
    invoke-static {v3, p0, v0}, Ls5/b;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-array p1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object p0, p1, v2

    .line 56
    .line 57
    const-string p0, "IMSDK.start reflection failed: %s"

    .line 58
    .line 59
    invoke-static {v3, p0, p1}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static stopImsdk()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "ImsdkActivation"

    .line 3
    .line 4
    :try_start_0
    const-class v2, Lb4/b;

    .line 5
    .line 6
    const-string v3, "stop"

    .line 7
    .line 8
    new-array v4, v0, [Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-array v3, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v2, "IMSDK.stop() invoked"

    .line 21
    .line 22
    new-array v3, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {v1, v2, v3}, Ls5/b;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    new-array v3, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object v2, v3, v0

    .line 37
    .line 38
    const-string v0, "IMSDK.stop reflection failed: %s"

    .line 39
    .line 40
    invoke-static {v1, v0, v3}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
