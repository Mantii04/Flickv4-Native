.class public final Lf1/B0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lf1/k;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/content/pm/PackageManager;

.field public final e:Ljava/util/ArrayList;

.field public f:Z

.field public final g:Lf1/y0;

.field public final h:Lf1/z0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf1/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf1/B0;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lf1/y0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lf1/y0;-><init>(Lf1/B0;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf1/B0;->g:Lf1/y0;

    .line 17
    .line 18
    new-instance v0, Lf1/z0;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lf1/z0;-><init>(Lf1/B0;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lf1/B0;->h:Lf1/z0;

    .line 24
    .line 25
    iput-object p1, p0, Lf1/B0;->a:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lf1/B0;->b:Lf1/k;

    .line 28
    .line 29
    new-instance p2, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lf1/B0;->c:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lf1/B0;->d:Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lf1/B0;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v2, 0x1e

    .line 15
    .line 16
    iget-object v3, p0, Lf1/B0;->d:Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-lt v1, v2, :cond_2

    .line 20
    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v1, "android.media.MediaRoute2ProviderService"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 52
    .line 53
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v0, v1

    .line 60
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .line 61
    .line 62
    const-string v2, "android.media.MediaRouteProviderService"

    .line 63
    .line 64
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    move v2, v4

    .line 76
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    iget-object v5, p0, Lf1/B0;->e:Ljava/util/ArrayList;

    .line 81
    .line 82
    iget-object v6, p0, Lf1/B0;->b:Lf1/k;

    .line 83
    .line 84
    if-eqz v3, :cond_b

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 91
    .line 92
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 93
    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-static {}, Lf1/X;->isMediaTransferEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_7

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_7

    .line 119
    .line 120
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Landroid/content/pm/ServiceInfo;

    .line 125
    .line 126
    iget-object v9, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_6

    .line 135
    .line 136
    iget-object v9, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_6

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_7
    :goto_2
    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    move v10, v4

    .line 156
    :goto_3
    if-ge v10, v9, :cond_9

    .line 157
    .line 158
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    check-cast v11, Lf1/x0;

    .line 163
    .line 164
    invoke-virtual {v11, v7, v8}, Lf1/x0;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    if-eqz v11, :cond_8

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_9
    const/4 v10, -0x1

    .line 175
    :goto_4
    if-gez v10, :cond_a

    .line 176
    .line 177
    new-instance v7, Lf1/x0;

    .line 178
    .line 179
    new-instance v8, Landroid/content/ComponentName;

    .line 180
    .line 181
    iget-object v9, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 184
    .line 185
    invoke-direct {v8, v9, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v3, p0, Lf1/B0;->a:Landroid/content/Context;

    .line 189
    .line 190
    invoke-direct {v7, v3, v8}, Lf1/x0;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 191
    .line 192
    .line 193
    new-instance v3, LX4/a;

    .line 194
    .line 195
    const/16 v8, 0x1b

    .line 196
    .line 197
    invoke-direct {v3, v8, p0, v7}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7, v3}, Lf1/x0;->setControllerCallback(Lf1/q0;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7}, Lf1/x0;->start()V

    .line 204
    .line 205
    .line 206
    add-int/lit8 v3, v2, 0x1

    .line 207
    .line 208
    invoke-virtual {v5, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v7}, Lf1/k;->addProvider(Lf1/G;)V

    .line 212
    .line 213
    .line 214
    :goto_5
    move v2, v3

    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :cond_a
    if-lt v10, v2, :cond_3

    .line 218
    .line 219
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Lf1/x0;

    .line 224
    .line 225
    invoke-virtual {v3}, Lf1/x0;->start()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Lf1/x0;->rebindIfDisconnected()V

    .line 229
    .line 230
    .line 231
    add-int/lit8 v3, v2, 0x1

    .line 232
    .line 233
    invoke-static {v5, v10, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-ge v2, v0, :cond_c

    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    add-int/lit8 v0, v0, -0x1

    .line 248
    .line 249
    :goto_6
    if-lt v0, v2, :cond_c

    .line 250
    .line 251
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Lf1/x0;

    .line 256
    .line 257
    invoke-virtual {v6, v1}, Lf1/k;->removeProvider(Lf1/G;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    const/4 v3, 0x0

    .line 264
    invoke-virtual {v1, v3}, Lf1/x0;->setControllerCallback(Lf1/q0;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Lf1/x0;->stop()V

    .line 268
    .line 269
    .line 270
    add-int/lit8 v0, v0, -0x1

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_c
    :goto_7
    return-void
.end method

.method public rescan()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/B0;->c:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lf1/B0;->h:Lf1/z0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public start()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lf1/B0;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lf1/B0;->f:Z

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "package"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    iget-object v2, p0, Lf1/B0;->c:Landroid/os/Handler;

    .line 46
    .line 47
    const/16 v3, 0x21

    .line 48
    .line 49
    iget-object v4, p0, Lf1/B0;->g:Lf1/y0;

    .line 50
    .line 51
    iget-object v5, p0, Lf1/B0;->a:Landroid/content/Context;

    .line 52
    .line 53
    if-ge v1, v3, :cond_0

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v5, v4, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v1, 0x4

    .line 61
    invoke-static {v5, v4, v0, v2, v1}, Lf1/A0;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object v0, p0, Lf1/B0;->h:Lf1/z0;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method
