.class public Lcom/ax/altpop/sdk_actions/AltSrvc;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile f:Z = false


# instance fields
.field public final b:LP1/b;

.field public e:Lcom/ax/altpop/sdk_actions/AltSdkEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LP1/b;

    .line 5
    .line 6
    invoke-direct {v0}, LP1/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ax/altpop/sdk_actions/AltSrvc;->b:LP1/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_9

    .line 6
    .line 7
    invoke-static {p0}, LQ1/b;->a(Landroid/content/Context;)LQ1/b;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, LQ1/c;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v2, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_9

    .line 24
    .line 25
    invoke-static {p0}, LQ1/b;->a(Landroid/content/Context;)LQ1/b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v2, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    sget-object v3, LQ1/c;->t:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    array-length v5, v2

    .line 56
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    .line 61
    .line 62
    sget-object v2, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    .line 64
    invoke-interface {v2, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    move-object v5, v2

    .line 69
    check-cast v5, Landroid/app/Notification;

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 72
    .line 73
    .line 74
    :cond_0
    if-eqz v5, :cond_3

    .line 75
    .line 76
    iget v2, v5, Landroid/app/Notification;->icon:I

    .line 77
    .line 78
    if-nez v2, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    if-lt v0, v1, :cond_2

    .line 82
    .line 83
    invoke-static {v5}, Le/P;->m(Landroid/app/Notification;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const/16 v2, 0x64

    .line 98
    .line 99
    if-le v1, v2, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 103
    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    iget-object v1, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 107
    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    const-string v2, "android.title"

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_3
    :goto_0
    invoke-static {p0}, LQ1/a;->a(Landroid/content/Context;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    const-string v1, "com.ax.altpop.fg.b"

    .line 127
    .line 128
    const-string v2, "showNotification"

    .line 129
    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_4
    invoke-static {p0}, LQ1/b;->a(Landroid/content/Context;)LQ1/b;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    sget-object v2, LQ1/c;->g:Ljava/lang/String;

    .line 138
    .line 139
    sget v3, Lcom/ax/altpop/R$drawable;->ic_android_notify:I

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    sget-object v1, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 145
    .line 146
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    sget-object v2, LQ1/c;->i:Ljava/lang/String;

    .line 151
    .line 152
    const-class v3, Lcom/ax/altpop/sdk_actions/AltSrvc;

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    sget-object v5, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 159
    .line 160
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    sget-object v3, LQ1/c;->f:Ljava/lang/String;

    .line 169
    .line 170
    sget-object v5, LQ1/c;->a:Ljava/lang/String;

    .line 171
    .line 172
    sget-object v6, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 173
    .line 174
    invoke-interface {v6, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    sget-object v5, LQ1/c;->h:Ljava/lang/String;

    .line 179
    .line 180
    sget-object v6, LQ1/c;->x:Ljava/lang/String;

    .line 181
    .line 182
    sget-object v7, LQ1/b;->a:Landroid/content/SharedPreferences;

    .line 183
    .line 184
    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    new-instance v6, Landroid/content/Intent;

    .line 189
    .line 190
    invoke-direct {v6, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .line 192
    .line 193
    sget-object v2, LQ1/c;->s:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    const/high16 v2, 0x14000000

    .line 199
    .line 200
    invoke-static {p0, v4, v6, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 205
    .line 206
    sget-object v6, LQ1/c;->y:Ljava/lang/String;

    .line 207
    .line 208
    invoke-direct {v4, v1, v6, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    new-instance v6, Landroid/app/Notification$Builder;

    .line 216
    .line 217
    invoke-static {}, LB4/o;->p()V

    .line 218
    .line 219
    .line 220
    sget-object v6, LQ1/c;->q:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {v6, v3}, Le/P;->h(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-static {v7}, Le/P;->t(Landroid/app/NotificationChannel;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v7}, Le/P;->B(Landroid/app/NotificationChannel;)V

    .line 230
    .line 231
    .line 232
    const-string v8, "notification"

    .line 233
    .line 234
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    check-cast v8, Landroid/app/NotificationManager;

    .line 239
    .line 240
    invoke-static {v8, v7}, LB4/o;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 241
    .line 242
    .line 243
    invoke-static {p0, v6}, Le/P;->d(Lcom/ax/altpop/sdk_actions/AltSrvc;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    :cond_5
    :goto_1
    const/16 v1, 0x1d

    .line 272
    .line 273
    const/4 v2, 0x1

    .line 274
    if-lt v0, v1, :cond_8

    .line 275
    .line 276
    const/16 v1, 0x22

    .line 277
    .line 278
    if-lt v0, v1, :cond_7

    .line 279
    .line 280
    const-string v0, "android.permission.FOREGROUND_SERVICE_SPECIAL_USE"

    .line 281
    .line 282
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_6

    .line 287
    .line 288
    const/high16 v2, 0x40000000    # 2.0f

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_6
    const-string v0, "android.permission.FOREGROUND_SERVICE_DATA_SYNC"

    .line 292
    .line 293
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_7

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_7
    const/4 v2, -0x1

    .line 301
    :goto_2
    invoke-static {p0, v5, v2}, Landroidx/media3/exoplayer/source/mediaparser/a;->n(Lcom/ax/altpop/sdk_actions/AltSrvc;Landroid/app/Notification;I)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :cond_8
    invoke-virtual {p0, v2, v5}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 306
    .line 307
    .line 308
    :cond_9
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ax/altpop/sdk_actions/AltSrvc;->b:LP1/b;

    .line 2
    .line 3
    return-object p1
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->d:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->c:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->d:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;-><init>(Lcom/ax/altpop/sdk_actions/AltSrvc;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->d:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->d:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ax/altpop/sdk_actions/AltSrvc;->e:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 29
    .line 30
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ax/altpop/sdk_actions/AltSrvc;->e:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->stopSDK()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "err: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "com.ax.altpop.sdk_actions.AltSrvc"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lb/c;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lcom/ax/altpop/sdk_actions/AltSrvc;->f:Z

    .line 22
    .line 23
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    const-string v0, "com.ax.altpop.sdk_actions.AltSrvc"

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x3

    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    sget-object v1, LQ1/c;->o:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    sget-object v2, LQ1/c;->p:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_6

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    :try_start_0
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    sget-boolean v1, Lcom/ax/altpop/sdk_actions/AltSrvc;->f:Z

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const-string v1, "Already running!"

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return p2

    .line 61
    :catch_0
    move-exception v1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/ax/altpop/sdk_actions/AltSrvc;->a()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/ax/altpop/sdk_actions/AltSrvc;->e:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->d()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/ax/altpop/sdk_actions/AltSrvc;->e:Lcom/ax/altpop/sdk_actions/AltSdkEngine;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/ax/altpop/sdk_actions/AltSdkEngine;->b()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    sput-boolean v1, Lcom/ax/altpop/sdk_actions/AltSrvc;->f:Z

    .line 78
    .line 79
    return p2

    .line 80
    :cond_3
    sget-object v1, LQ1/c;->p:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    .line 90
    const/16 v2, 0x18

    .line 91
    .line 92
    if-lt v1, v2, :cond_4

    .line 93
    .line 94
    invoke-static {p0}, Le/N;->q(Lcom/ax/altpop/sdk_actions/AltSrvc;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    const/4 v1, 0x1

    .line 99
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return p2

    .line 106
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    sget-object v3, LQ1/c;->v:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    invoke-static {p0, p1}, Lcom/ax/altpop/fg/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string v1, "action "

    .line 131
    .line 132
    const-string v2, " failed! Error = "

    .line 133
    .line 134
    const-string v3, " "

    .line 135
    .line 136
    invoke-static {v1, p3, v2, p1, v3}, Lb/c;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :cond_6
    :goto_2
    return p2
.end method

.method public final onTimeout(II)V
    .locals 3

    .line 1
    const-string v0, "onTimeout: startId:"

    .line 2
    .line 3
    const-string v1, " , fgsType:"

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1}, LA/i;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, LQ1/a;->a(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "com.ax.altpop.sdk_actions.AltSrvc"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v1, 0x18

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 35
    .line 36
    .line 37
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onTimeout(II)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
