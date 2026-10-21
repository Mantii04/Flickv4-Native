.class public Lio/hopmonsdk/service/MoneytiserService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public b:Lm5/b;

.field public e:Lp5/b;

.field public final f:Lp5/d;

.field public final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lp5/d;

    invoke-direct {v0, p0}, Lp5/d;-><init>(Lio/hopmonsdk/service/MoneytiserService;)V

    iput-object v0, p0, Lio/hopmonsdk/service/MoneytiserService;->f:Lp5/d;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/hopmonsdk/service/MoneytiserService;->j:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 2

    .line 1
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/P;->f(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Le/P;->e()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v0, v1}, LB4/o;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance v0, Lz/B;

    const-string v1, "hopmn_service_chan_fallback"

    invoke-direct {v0, p0, v1}, Lz/B;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "Background service is running"

    invoke-virtual {v0, v1}, Lz/B;->setContentTitle(Ljava/lang/CharSequence;)Lz/B;

    move-result-object v0

    const v1, 0x108007c

    invoke-virtual {v0, v1}, Lz/B;->setSmallIcon(I)Lz/B;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz/B;->setOngoing(Z)Lz/B;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lz/B;->setPriority(I)Lz/B;

    move-result-object v0

    invoke-virtual {v0}, Lz/B;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    const-string v1, "MoneytiserService"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, "foreground Service - create notification"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/hopmonsdk/service/MoneytiserService;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "showNotification failed, using fallback: %s"

    invoke-static {v1, v2, v3}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p0}, Lio/hopmonsdk/service/MoneytiserService;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/hopmonsdk/service/MoneytiserService;->e(Landroid/app/Notification;)V

    const-string v2, "entered foreground with fallback notification"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return v4

    :catchall_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "startForeground failed entirely: %s"

    invoke-static {v1, v2, v3}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final c(ILjava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "MoneytiserService"

    .line 4
    .line 5
    const-string v3, "&ver=15.0.17&regcc=1&cid="

    .line 6
    .line 7
    const-string v4, "/?domain="

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Lio/hopmonsdk/Hopmn;->getInstance(Landroid/content/Context;)Lio/hopmonsdk/Hopmn;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-virtual {v5}, Lio/hopmonsdk/Hopmn;->getPublisher()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {v5}, Lio/hopmonsdk/Hopmn;->getCategory()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual {v5}, Lio/hopmonsdk/Hopmn;->getDomain()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-virtual {v5}, Lio/hopmonsdk/Hopmn;->isForegroundRunning()Z

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    new-instance v10, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, "&uid="

    .line 42
    .line 43
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v4, "&pub="

    .line 50
    .line 51
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v4, "&foreground="

    .line 58
    .line 59
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const-string v4, "Seed-mode registration attempt %d/%d, path: %s"

    .line 76
    .line 77
    add-int/lit8 v6, p1, 0x1

    .line 78
    .line 79
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const/4 v7, 0x6

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    const/4 v8, 0x3

    .line 89
    new-array v8, v8, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object v6, v8, v0

    .line 92
    .line 93
    aput-object v7, v8, v1

    .line 94
    .line 95
    const/4 v1, 0x2

    .line 96
    aput-object v3, v8, v1

    .line 97
    .line 98
    invoke-static {v2, v4, v8}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Lio/hopmonsdk/Hopmn;->getSeedDiscovery()Lo5/e;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    new-instance v4, Lp5/c;

    .line 106
    .line 107
    invoke-direct {v4, p0, p2, v5, p1}, Lp5/c;-><init>(Lio/hopmonsdk/service/MoneytiserService;Ljava/lang/String;Lio/hopmonsdk/Hopmn;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3, v4}, Lo5/e;->executePost(Ljava/lang/String;Lo5/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catch_0
    move-exception p1

    .line 115
    new-array p2, v0, [Ljava/lang/Object;

    .line 116
    .line 117
    const-string v0, "registerWithSeedMode exception: "

    .line 118
    .line 119
    invoke-static {v2, v0, p1, p2}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    invoke-static {p0}, Lk5/a;->getInstance(Landroid/content/Context;)Lk5/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "APPNAME"

    .line 6
    .line 7
    const-string v2, "Hopmn"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lk5/a;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "MESSAGE"

    .line 14
    .line 15
    const-string v3, "Background service is running"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Lk5/a;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-class v3, Landroid/app/NotificationManager;

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/app/NotificationManager;

    .line 28
    .line 29
    invoke-static {v3}, Le/P;->z(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    invoke-static {v1}, Le/P;->g(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v4}, Lb4/h;->u(Landroid/app/NotificationChannel;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Le/P;->C(Landroid/app/NotificationChannel;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Le/P;->D(Landroid/app/NotificationChannel;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4}, LB4/o;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    sget v3, Lio/hopmon/R$drawable;->ic_android_notify:I

    .line 52
    .line 53
    const-string v4, "ICON_NAME"

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-virtual {v0, v4, v5}, Lk5/a;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v7, "drawable"

    .line 71
    .line 72
    invoke-virtual {v5, v4, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    move v3, v4

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string v4, "ICON"

    .line 81
    .line 82
    invoke-virtual {v0, v4, v3}, Lk5/a;->getInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    move v3, v0

    .line 94
    :catch_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 95
    .line 96
    const-class v4, Lio/hopmonsdk/service/MoneytiserService;

    .line 97
    .line 98
    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    const-string v4, "ACTION_NOTIFY_CLICKED"

    .line 102
    .line 103
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/high16 v4, 0x14000000

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    invoke-static {p0, v5, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v4, Lz/B;

    .line 115
    .line 116
    const-string v6, "hopmn_service_chan"

    .line 117
    .line 118
    invoke-direct {v4, p0, v6}, Lz/B;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v1}, Lz/B;->setContentTitle(Ljava/lang/CharSequence;)Lz/B;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1, v2}, Lz/B;->setContentText(Ljava/lang/CharSequence;)Lz/B;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1, v3}, Lz/B;->setSmallIcon(I)Lz/B;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Lz/B;->setContentIntent(Landroid/app/PendingIntent;)Lz/B;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/4 v2, 0x1

    .line 138
    invoke-virtual {v1, v2}, Lz/B;->setOngoing(Z)Lz/B;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const/4 v2, -0x1

    .line 143
    invoke-virtual {v1, v2}, Lz/B;->setPriority(I)Lz/B;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v2, Lz/y;

    .line 148
    .line 149
    const v3, 0x1080038

    .line 150
    .line 151
    .line 152
    const-string v4, "Close"

    .line 153
    .line 154
    invoke-direct {v2, v3, v4, v0}, Lz/y;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Lz/B;->addAction(Lz/y;)Lz/B;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lz/B;->build()Landroid/app/Notification;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-array v1, v5, [Ljava/lang/Object;

    .line 165
    .line 166
    const-string v2, "foreground Service - REGULAR FOREGROUND"

    .line 167
    .line 168
    const-string v3, "MoneytiserService"

    .line 169
    .line 170
    invoke-static {v3, v2, v1}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lio/hopmonsdk/service/MoneytiserService;->e(Landroid/app/Notification;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final e(Landroid/app/Notification;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const-string v3, "MoneytiserService"

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    :try_start_0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/mediaparser/a;->o(Lio/hopmonsdk/service/MoneytiserService;Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "typed startForeground(SPECIAL_USE) refused, retrying untyped: %s"

    invoke-static {v3, v0, v2}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v4, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    :try_start_1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/mediaparser/a;->z(Lio/hopmonsdk/service/MoneytiserService;Landroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "typed startForeground(DATA_SYNC) refused, retrying untyped: %s"

    invoke-static {v3, v0, v2}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, v4, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public getProxyUpTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    iget-object v0, p0, Lio/hopmonsdk/service/MoneytiserService;->b:Lm5/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lm5/b;->getUpTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lio/hopmonsdk/service/MoneytiserService;->b:Lm5/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm5/b;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lio/hopmonsdk/service/MoneytiserService;->f:Lp5/d;

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    const-string v0, "MoneytiserService"

    invoke-virtual {p0}, Lio/hopmonsdk/service/MoneytiserService;->b()Z

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lio/hopmonsdk/Hopmn;->getInstance(Landroid/content/Context;)Lio/hopmonsdk/Hopmn;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/hopmonsdk/Hopmn;->getHttpManager()Lp5/b;

    move-result-object v3

    iput-object v3, p0, Lio/hopmonsdk/service/MoneytiserService;->e:Lp5/b;

    new-instance v3, Lm5/b;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lm5/b;-><init>(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V

    iput-object v3, p0, Lio/hopmonsdk/service/MoneytiserService;->b:Lm5/b;

    const-string v1, "Service was created"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Failed to getInstance on MoneytiserService onCreate: "

    invoke-static {v0, v3, v1, v2}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lio/hopmonsdk/service/MoneytiserService;->e:Lp5/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp5/b;->stop()V

    :cond_0
    iget-object v0, p0, Lio/hopmonsdk/service/MoneytiserService;->b:Lm5/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lm5/b;->shutdown()V

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Service was stopped"

    const-string v2, "MoneytiserService"

    invoke-static {v2, v1, v0}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Detected low memory"

    const-string v2, "MoneytiserService"

    invoke-static {v2, v1, v0}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-array v2, v1, [Ljava/lang/Object;

    .line 4
    .line 5
    const-string v3, "onStartCommand called"

    .line 6
    .line 7
    const-string v4, "MoneytiserService"

    .line 8
    .line 9
    invoke-static {v4, v3, v2}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lio/hopmonsdk/service/MoneytiserService;->b()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x2

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    new-array p1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string p3, "could not enter foreground, stopping service"

    .line 25
    .line 26
    invoke-static {v4, p3, p1}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 30
    .line 31
    .line 32
    return p2

    .line 33
    :cond_0
    :try_start_0
    invoke-static {p0}, Lio/hopmonsdk/Hopmn;->getInstance(Landroid/content/Context;)Lio/hopmonsdk/Hopmn;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    const-string p1, "Hopmn instance is null, cannot start service logic - stopping"

    .line 40
    .line 41
    new-array p3, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v4, p1, p3}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 47
    .line 48
    .line 49
    return p2

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    iget-object p3, p0, Lio/hopmonsdk/service/MoneytiserService;->b:Lm5/b;

    .line 54
    .line 55
    if-nez p3, :cond_2

    .line 56
    .line 57
    const-string p3, "power"

    .line 58
    .line 59
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Landroid/os/PowerManager;

    .line 64
    .line 65
    new-instance v2, Lm5/b;

    .line 66
    .line 67
    invoke-virtual {p3, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-direct {v2, p0, p3}, Lm5/b;-><init>(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lio/hopmonsdk/service/MoneytiserService;->b:Lm5/b;

    .line 75
    .line 76
    :cond_2
    invoke-virtual {p1}, Lio/hopmonsdk/Hopmn;->getDataStore()Lk5/a;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget p3, Lio/hopmon/R$string;->hopmon_uid_key:I

    .line 81
    .line 82
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p1, p3}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    sget v2, Lio/hopmon/R$string;->hopmon_country_key:I

    .line 91
    .line 92
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p1, v2}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const-wide/16 v5, 0x0

    .line 101
    .line 102
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v3, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    iget-wide v7, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catch_1
    move-wide v7, v5

    .line 118
    :goto_0
    :try_start_2
    const-string v3, "hopmon.registered_at"

    .line 119
    .line 120
    invoke-virtual {p1, v3, v5, v6}, Lk5/a;->getLong(Ljava/lang/String;J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    const-string v3, "hopmon.registered_version"

    .line 125
    .line 126
    invoke-virtual {p1, v3}, Lk5/a;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string v3, "15.0.17"

    .line 131
    .line 132
    cmp-long v5, v7, v5

    .line 133
    .line 134
    if-lez v5, :cond_3

    .line 135
    .line 136
    move v5, v0

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    move v5, v1

    .line 139
    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    xor-int/lit8 v3, p1, 0x1

    .line 144
    .line 145
    if-eqz p3, :cond_5

    .line 146
    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    if-nez v5, :cond_5

    .line 150
    .line 151
    if-nez p1, :cond_4

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    const-string p1, "Device already registered, uid=%s cc=%s"

    .line 155
    .line 156
    new-array p2, p2, [Ljava/lang/Object;

    .line 157
    .line 158
    aput-object p3, p2, v1

    .line 159
    .line 160
    aput-object v2, p2, v0

    .line 161
    .line 162
    invoke-static {v4, p1, p2}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lio/hopmonsdk/service/MoneytiserService;->b:Lm5/b;

    .line 166
    .line 167
    invoke-virtual {p1, p3, v2}, Lm5/b;->schedule(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_5
    :goto_2
    const-string p1, "Registering device \u2014 uid=%s freshInstall=%s versionChanged=%s"

    .line 172
    .line 173
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    const/4 v5, 0x3

    .line 182
    new-array v5, v5, [Ljava/lang/Object;

    .line 183
    .line 184
    aput-object p3, v5, v1

    .line 185
    .line 186
    aput-object v2, v5, v0

    .line 187
    .line 188
    aput-object v3, v5, p2

    .line 189
    .line 190
    invoke-static {v4, p1, v5}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p0, v1, p1}, Lio/hopmonsdk/service/MoneytiserService;->c(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    new-array p2, v0, [Ljava/lang/Object;

    .line 210
    .line 211
    aput-object p1, p2, v1

    .line 212
    .line 213
    const-string p1, "OnStartCommand failed! Error = %s "

    .line 214
    .line 215
    invoke-static {v4, p1, p2}, Ls5/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :goto_4
    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Task removed"

    const-string v1, "MoneytiserService"

    invoke-static {v1, v0, p1}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTimeout(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "FGS onTimeout(startId=%d) \u2014 stopping to comply with platform limit"

    const-string v2, "MoneytiserService"

    invoke-static {v2, p1, v1}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    invoke-static {p0}, Le/N;->r(Lio/hopmonsdk/service/MoneytiserService;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onTimeout(II)V
    .locals 2

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p2, "FGS onTimeout(startId=%d, type=%d) \u2014 stopping to comply with Android 15 dataSync limit"

    const-string v1, "MoneytiserService"

    invoke-static {v1, p2, v0}, Ls5/b;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :try_start_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_0

    invoke-static {p0}, Le/N;->r(Lio/hopmonsdk/service/MoneytiserService;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
