.class public Lcom/ax/altpop/AltPop;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb/d;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lb/d;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ax/altpop/AltPop;->a:Lb/d;

    .line 10
    .line 11
    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/ax/altpop/AltConfig;)Lcom/ax/altpop/AltPop;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    if-eqz p0, :cond_9

    .line 2
    .line 3
    if-eqz p1, :cond_9

    .line 4
    .line 5
    new-instance v0, Lcom/ax/altpop/AltPop;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/ax/altpop/AltPop;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, LQ1/b;->a(Landroid/content/Context;)LQ1/b;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getPublisher()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_8

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getPublisher()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, ""

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_8

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getDelay()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ltz v2, :cond_7

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getBWLimit()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ltz v2, :cond_6

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getBWLimit()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-lez v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getTimeOut()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-lez v2, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p1, "Timeout has to have positive value"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_1
    :goto_0
    sget-object v2, LQ1/c;->d:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getPublisher()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v3}, LQ1/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v1, LQ1/c;->c:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getLoggable()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v1, v2}, LQ1/b;->a(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getFg()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 v2, 0x1a

    .line 95
    .line 96
    if-lt v1, v2, :cond_5

    .line 97
    .line 98
    const-string v1, "android.permission.FOREGROUND_SERVICE"

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const/16 v4, 0x1000

    .line 110
    .line 111
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 116
    .line 117
    if-nez p0, :cond_2

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    array-length v3, p0

    .line 121
    move v4, v2

    .line 122
    :goto_1
    if-ge v4, v3, :cond_4

    .line 123
    .line 124
    aget-object v5, p0, v4

    .line 125
    .line 126
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    if-eqz v5, :cond_3

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catch_0
    :cond_4
    :goto_2
    const-string p0, "com.ax.altpop.AltPop"

    .line 137
    .line 138
    const-string v1, "FG Permission Not Found"

    .line 139
    .line 140
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    sget-object p0, LQ1/c;->e:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {p0, v2}, LQ1/b;->a(Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    sget-object p0, LQ1/c;->u:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {p0, v2}, LQ1/b;->a(Ljava/lang/String;Z)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    :goto_3
    sget-object p0, LQ1/c;->e:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getFg()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-static {p0, v1}, LQ1/b;->a(Ljava/lang/String;Z)V

    .line 161
    .line 162
    .line 163
    sget-object p0, LQ1/c;->u:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getOnBoot()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-static {p0, v1}, LQ1/b;->a(Ljava/lang/String;Z)V

    .line 170
    .line 171
    .line 172
    :goto_4
    sget-object p0, LQ1/c;->j:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getDelay()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-static {p0, v1}, LQ1/b;->a(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    sget-object p0, LQ1/c;->k:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getBWLimit()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-static {p0, v1}, LQ1/b;->a(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    sget-object v1, LQ1/c;->n:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getTimeOut()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {v1, v2}, LQ1/b;->a(Ljava/lang/String;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getBWLimit()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-static {p0, v2}, LQ1/b;->a(Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getTimeOut()I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    invoke-static {v1, p0}, LQ1/b;->a(Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getNotification()Landroid/app/Notification;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-static {p0}, LQ1/b;->a(Landroid/app/Notification;)V

    .line 218
    .line 219
    .line 220
    sget-object p0, LQ1/c;->g:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getIcon()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-static {p0, v1}, LQ1/b;->a(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    sget-object p0, LQ1/c;->f:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getAppName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {p0, v1}, LQ1/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sget-object p0, LQ1/c;->h:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getNotificationMessage()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {p0, v1}, LQ1/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sget-object p0, LQ1/c;->i:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/ax/altpop/AltConfig;->getActivityClass()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {p0, p1}, LQ1/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    return-object v0

    .line 257
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 258
    .line 259
    const-string p1, "The bandwidth cannot have a negative value"

    .line 260
    .line 261
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p0

    .line 265
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 266
    .line 267
    const-string p1, "The delay cannot have a negative value"

    .line 268
    .line 269
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p0

    .line 273
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    const-string p1, "The publisher cannot be null or empty"

    .line 276
    .line 277
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p0

    .line 281
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 282
    .line 283
    const-string p1, "Context and config cannot have null values"

    .line 284
    .line 285
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p0
.end method


# virtual methods
.method public start()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ax/altpop/AltPop;->a:Lb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb/d;->c()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public stop()V
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ax/altpop/AltPop;->a:Lb/d;

    .line 2
    .line 3
    iget-object v1, v0, Lb/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "a.b"

    .line 6
    .line 7
    const-string v3, "stop"

    .line 8
    .line 9
    invoke-static {v1}, LQ1/a;->a(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    :try_start_0
    iget-object v1, v0, Lb/d;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, v0, Lb/d;->a:Landroid/content/Context;

    .line 23
    .line 24
    const-string v2, "a.b"

    .line 25
    .line 26
    const-string v3, "cancelling delayed start"

    .line 27
    .line 28
    invoke-static {v1}, LQ1/a;->a(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v1, v0, Lb/d;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    sget-boolean v1, Lcom/ax/altpop/sdk_actions/AltSrvc;->f:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object v1, v0, Lb/d;->a:Landroid/content/Context;

    .line 48
    .line 49
    sget-object v2, LQ1/c;->p:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v3, Landroid/content/Intent;

    .line 52
    .line 53
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lb/d;->a:Landroid/content/Context;

    .line 57
    .line 58
    const-class v4, Lcom/ax/altpop/sdk_actions/AltSrvc;

    .line 59
    .line 60
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :catch_0
    :cond_3
    const-class v0, Lcom/ax/altpop/fg/a;

    .line 70
    .line 71
    monitor-enter v0

    .line 72
    :try_start_1
    sget-object v1, Lcom/ax/altpop/fg/a;->d:Landroid/os/Handler;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    sget-object v2, Lcom/ax/altpop/fg/a;->e:LA4/n;

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 87
    sput-object v1, Lcom/ax/altpop/fg/a;->d:Landroid/os/Handler;

    .line 88
    .line 89
    sput-object v1, Lcom/ax/altpop/fg/a;->e:LA4/n;

    .line 90
    .line 91
    sget-object v2, Lcom/ax/altpop/fg/a;->a:Landroidx/lifecycle/o;

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    sget-object v3, Lcom/ax/altpop/fg/a;->b:Landroidx/lifecycle/f;

    .line 96
    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroidx/lifecycle/o;->removeObserver(Landroidx/lifecycle/s;)V

    .line 100
    .line 101
    .line 102
    sput-object v1, Lcom/ax/altpop/fg/a;->b:Landroidx/lifecycle/f;

    .line 103
    .line 104
    :cond_5
    const/4 v1, 0x0

    .line 105
    sput-boolean v1, Lcom/ax/altpop/fg/a;->c:Z

    .line 106
    .line 107
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    return-void

    .line 109
    :goto_1
    monitor-exit v0

    .line 110
    throw v1
.end method
