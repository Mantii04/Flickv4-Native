.class public final Lf1/t;
.super Lf1/G;
.source "SourceFile"


# static fields
.field public static final synthetic r:I


# instance fields
.field public final i:Landroid/media/MediaRouter2;

.field public final j:Lf1/h;

.field public final k:Landroid/util/ArrayMap;

.field public final l:Landroid/media/MediaRouter2$RouteCallback;

.field public final m:Lf1/s;

.field public final n:Lf1/l;

.field public final o:Landroidx/media3/common/util/e;

.field public p:Ljava/util/ArrayList;

.field public final q:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MR2Provider"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf1/h;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lf1/G;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf1/t;->k:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Lf1/s;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lf1/s;-><init>(Lf1/t;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lf1/t;->m:Lf1/s;

    .line 17
    .line 18
    new-instance v0, Lf1/l;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lf1/l;-><init>(Lf1/t;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lf1/t;->n:Lf1/l;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lf1/t;->p:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lf1/t;->q:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-static {p1}, LM/l1;->g(Landroid/content/Context;)Landroid/media/MediaRouter2;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 44
    .line 45
    iput-object p2, p0, Lf1/t;->j:Lf1/h;

    .line 46
    .line 47
    new-instance p1, Landroid/os/Handler;

    .line 48
    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Landroidx/media3/common/util/e;

    .line 57
    .line 58
    invoke-direct {p2, p1}, Landroidx/media3/common/util/e;-><init>(Landroid/os/Handler;)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Lf1/t;->o:Landroidx/media3/common/util/e;

    .line 62
    .line 63
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    const/16 p2, 0x22

    .line 66
    .line 67
    if-lt p1, p2, :cond_0

    .line 68
    .line 69
    new-instance p1, Lf1/r;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lf1/r;-><init>(Lf1/t;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lf1/t;->l:Landroid/media/MediaRouter2$RouteCallback;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    new-instance p1, Lf1/q;

    .line 78
    .line 79
    invoke-direct {p1, p0}, Lf1/q;-><init>(Lf1/t;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lf1/t;->l:Landroid/media/MediaRouter2$RouteCallback;

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf1/t;->p:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, LM/l1;->c(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroidx/media3/exoplayer/source/mediaparser/b;->k(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public final b(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lf1/t;->k:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf1/o;

    .line 8
    .line 9
    const-string v1, "MR2Provider"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "setDynamicRouteDescriptors: No matching routeController found. routingController="

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {p1}, LM/l1;->m(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "setDynamicRouteDescriptors: No selected routes. This may happen when the selected routes become invalid.routingController="

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-static {v2}, Lf1/W;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, LM/l1;->c(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lf1/W;->toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Lf1/v;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/b;->h(Landroid/media/MediaRouter2$RoutingController;)Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {p0}, Lf1/G;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    sget v6, Landroidx/mediarouter/R$string;->mr_dialog_default_group_name:I

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const/4 v6, 0x0

    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    :try_start_0
    const-string v7, "androidx.mediarouter.media.KEY_SESSION_NAME"

    .line 94
    .line 95
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-nez v8, :cond_2

    .line 104
    .line 105
    move-object v5, v7

    .line 106
    :cond_2
    const-string v7, "androidx.mediarouter.media.KEY_GROUP_ROUTE"

    .line 107
    .line 108
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    invoke-static {v4}, Lf1/v;->fromBundle(Landroid/os/Bundle;)Lf1/v;

    .line 115
    .line 116
    .line 117
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 119
    :catch_0
    move-exception v4

    .line 120
    const-string v7, "Exception while unparceling control hints."

    .line 121
    .line 122
    invoke-static {v1, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_0
    const/4 v4, 0x1

    .line 126
    if-nez v6, :cond_4

    .line 127
    .line 128
    new-instance v6, Lf1/u;

    .line 129
    .line 130
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/b;->l(Landroid/media/MediaRouter2$RoutingController;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-direct {v6, v7, v5}, Lf1/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const/4 v5, 0x2

    .line 138
    invoke-virtual {v6, v5}, Lf1/u;->setConnectionState(I)Lf1/u;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v5, v4}, Lf1/u;->setPlaybackType(I)Lf1/u;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    new-instance v5, Lf1/u;

    .line 148
    .line 149
    invoke-direct {v5, v6}, Lf1/u;-><init>(Lf1/v;)V

    .line 150
    .line 151
    .line 152
    :goto_1
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/b;->d(Landroid/media/MediaRouter2$RoutingController;)I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    invoke-virtual {v5, v6}, Lf1/u;->setVolume(I)Lf1/u;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/b;->z(Landroid/media/MediaRouter2$RoutingController;)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-virtual {v5, v6}, Lf1/u;->setVolumeMax(I)Lf1/u;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/b;->D(Landroid/media/MediaRouter2$RoutingController;)I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    invoke-virtual {v5, v6}, Lf1/u;->setVolumeHandling(I)Lf1/u;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v5}, Lf1/u;->clearControlFilters()Lf1/u;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v2}, Lf1/v;->getControlFilters()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v5, v2}, Lf1/u;->addControlFilters(Ljava/util/Collection;)Lf1/u;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lf1/u;->clearGroupMemberIds()Lf1/u;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2, v3}, Lf1/u;->addGroupMemberIds(Ljava/util/Collection;)Lf1/u;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lf1/u;->build()Lf1/v;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/b;->m(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-static {v5}, Lf1/W;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/b;->C(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {p1}, Lf1/W;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p0}, Lf1/G;->getDescriptor()Lf1/I;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    if-nez v6, :cond_5

    .line 221
    .line 222
    const-string p1, "setDynamicRouteDescriptors: providerDescriptor is not set."

    .line 223
    .line 224
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6}, Lf1/I;->getRoutes()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-nez v7, :cond_7

    .line 242
    .line 243
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-eqz v7, :cond_7

    .line 252
    .line 253
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    check-cast v7, Lf1/v;

    .line 258
    .line 259
    invoke-virtual {v7}, Lf1/v;->getId()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    new-instance v9, Lf1/A;

    .line 264
    .line 265
    invoke-direct {v9, v7}, Lf1/A;-><init>(Lf1/v;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-eqz v7, :cond_6

    .line 273
    .line 274
    const/4 v7, 0x3

    .line 275
    goto :goto_3

    .line 276
    :cond_6
    move v7, v4

    .line 277
    :goto_3
    invoke-virtual {v9, v7}, Lf1/A;->setSelectionState(I)Lf1/A;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    invoke-virtual {v7, v9}, Lf1/A;->setIsGroupable(Z)Lf1/A;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    invoke-virtual {v7, v8}, Lf1/A;->setIsUnselectable(Z)Lf1/A;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v7, v4}, Lf1/A;->setIsTransferable(Z)Lf1/A;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v7}, Lf1/A;->build()Lf1/B;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_7
    iput-object v2, v0, Lf1/o;->o:Lf1/v;

    .line 310
    .line 311
    invoke-virtual {v0, v2, v1}, Lf1/C;->notifyDynamicRoutesChanged(Lf1/v;Ljava/util/Collection;)V

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method public onCreateDynamicGroupRouteController(Ljava/lang/String;)Lf1/C;
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/t;->k:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lf1/o;

    .line 28
    .line 29
    iget-object v2, v1, Lf1/o;->f:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method public onCreateRouteController(Ljava/lang/String;)Lf1/F;
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/t;->q:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Lf1/p;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lf1/p;-><init>(Ljava/lang/String;Lf1/o;)V

    return-object v0
.end method

.method public onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Lf1/F;
    .locals 4

    .line 3
    iget-object v0, p0, Lf1/t;->q:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lf1/t;->k:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/o;

    .line 5
    invoke-virtual {v2}, Lf1/o;->getGroupRouteId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    new-instance p1, Lf1/p;

    invoke-direct {p1, v0, v2}, Lf1/p;-><init>(Ljava/lang/String;Lf1/o;)V

    return-object p1

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find the matching GroupRouteController. routeId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", routeGroupId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MR2Provider"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p1, Lf1/p;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lf1/p;-><init>(Ljava/lang/String;Lf1/o;)V

    return-object p1
.end method

.method public onDiscoveryRequestChanged(Lf1/w;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lf1/t;->l:Landroid/media/MediaRouter2$RouteCallback;

    .line 2
    .line 3
    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lf1/X;->c:Lf1/k;

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    move v3, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget v3, v3, Lf1/k;->z:I

    .line 17
    .line 18
    :goto_0
    iget-object v4, p0, Lf1/t;->n:Lf1/l;

    .line 19
    .line 20
    iget-object v5, p0, Lf1/t;->m:Lf1/s;

    .line 21
    .line 22
    if-lez v3, :cond_a

    .line 23
    .line 24
    invoke-static {}, Lf1/X;->b()Lf1/k;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v3, v3, Lf1/k;->p:Lf1/l0;

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    move v3, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v3}, Lf1/l0;->isTransferToLocalEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :goto_1
    if-nez p1, :cond_2

    .line 39
    .line 40
    new-instance p1, Lf1/w;

    .line 41
    .line 42
    sget-object v6, Lf1/L;->c:Lf1/L;

    .line 43
    .line 44
    invoke-direct {p1, v6, v2}, Lf1/w;-><init>(Lf1/L;Z)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p1}, Lf1/w;->getSelector()Lf1/L;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6}, Lf1/L;->getControlCategories()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_2
    new-instance v3, Lf1/K;

    .line 71
    .line 72
    invoke-direct {v3}, Lf1/K;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v6}, Lf1/K;->addControlCategories(Ljava/util/Collection;)Lf1/K;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lf1/K;->build()Lf1/L;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-instance v6, Lf1/w;

    .line 84
    .line 85
    invoke-virtual {p1}, Lf1/w;->isActiveScan()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-direct {v6, v3, p1}, Lf1/w;-><init>(Lf1/L;Z)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 93
    .line 94
    invoke-virtual {v6}, Lf1/w;->isValid()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    invoke-static {}, LM/l1;->n()V

    .line 101
    .line 102
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lf1/m;->d(Ljava/util/ArrayList;)Landroid/media/RouteDiscoveryPreference$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, LM/l1;->j(Landroid/media/RouteDiscoveryPreference$Builder;)Landroid/media/RouteDiscoveryPreference;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    goto/16 :goto_6

    .line 117
    .line 118
    :cond_5
    invoke-virtual {v6}, Lf1/w;->isActiveScan()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    new-instance v7, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6}, Lf1/w;->getSelector()Lf1/L;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v6}, Lf1/L;->getControlCategories()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_9

    .line 144
    .line 145
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    check-cast v8, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const/4 v9, -0x1

    .line 155
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    sparse-switch v10, :sswitch_data_0

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :sswitch_0
    const-string v10, "android.media.intent.category.LIVE_VIDEO"

    .line 164
    .line 165
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-nez v10, :cond_6

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_6
    const/4 v9, 0x2

    .line 173
    goto :goto_4

    .line 174
    :sswitch_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-nez v10, :cond_7

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_7
    const/4 v9, 0x1

    .line 182
    goto :goto_4

    .line 183
    :sswitch_2
    const-string v10, "android.media.intent.category.REMOTE_PLAYBACK"

    .line 184
    .line 185
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-nez v10, :cond_8

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_8
    move v9, v2

    .line 193
    :goto_4
    packed-switch v9, :pswitch_data_0

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :pswitch_0
    const-string v8, "android.media.route.feature.LIVE_VIDEO"

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :pswitch_1
    const-string v8, "android.media.route.feature.LIVE_AUDIO"

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :pswitch_2
    const-string v8, "android.media.route.feature.REMOTE_PLAYBACK"

    .line 204
    .line 205
    :goto_5
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_9
    invoke-static {v7, v3}, Lf1/m;->e(Ljava/util/ArrayList;Z)Landroid/media/RouteDiscoveryPreference$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v1}, LM/l1;->j(Landroid/media/RouteDiscoveryPreference$Builder;)Landroid/media/RouteDiscoveryPreference;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    :goto_6
    iget-object v2, p0, Lf1/t;->o:Landroidx/media3/common/util/e;

    .line 218
    .line 219
    invoke-static {p1, v2, v0, v1}, Landroidx/media3/exoplayer/source/mediaparser/b;->p(Landroid/media/MediaRouter2;Landroidx/media3/common/util/e;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 223
    .line 224
    invoke-static {p1, v2, v5}, Landroidx/media3/exoplayer/source/mediaparser/b;->r(Landroid/media/MediaRouter2;Landroidx/media3/common/util/e;Lf1/s;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 228
    .line 229
    invoke-static {p1, v2, v4}, Landroidx/media3/exoplayer/source/mediaparser/b;->q(Landroid/media/MediaRouter2;Landroidx/media3/common/util/e;Lf1/l;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_a
    iget-object p1, p0, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 234
    .line 235
    invoke-static {p1, v0}, LM/l1;->q(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RouteCallback;)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 239
    .line 240
    invoke-static {p1, v5}, Landroidx/media3/exoplayer/source/mediaparser/b;->t(Landroid/media/MediaRouter2;Lf1/s;)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 244
    .line 245
    invoke-static {p1, v4}, Landroidx/media3/exoplayer/source/mediaparser/b;->s(Landroid/media/MediaRouter2;Lf1/l;)V

    .line 246
    .line 247
    .line 248
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b1e3633 -> :sswitch_2
        0x3909bb2a -> :sswitch_1
        0x3a2c33cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshRoutes()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 12
    .line 13
    invoke-static {v2}, Landroidx/media3/exoplayer/source/mediaparser/b;->n(Landroid/media/MediaRouter2;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, LM/l1;->c(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    invoke-static {v3}, Landroidx/media3/exoplayer/source/mediaparser/b;->w(Landroid/media/MediaRoute2Info;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, p0, Lf1/t;->p:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    iput-object v0, p0, Lf1/t;->p:Ljava/util/ArrayList;

    .line 67
    .line 68
    iget-object v0, p0, Lf1/t;->q:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lf1/t;->p:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2}, LM/l1;->c(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Landroidx/media3/exoplayer/source/mediaparser/b;->g(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    const-string v4, "androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    if-nez v5, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    invoke-static {v2}, Landroidx/media3/exoplayer/source/mediaparser/b;->k(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v4, "Cannot find the original route Id. route="

    .line 123
    .line 124
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v3, "MR2Provider"

    .line 135
    .line 136
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lf1/t;->p:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_8

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v2}, LM/l1;->c(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {v2}, Lf1/W;->toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Lf1/v;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-eqz v2, :cond_7

    .line 170
    .line 171
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    new-instance v1, Lf1/H;

    .line 176
    .line 177
    invoke-direct {v1}, Lf1/H;-><init>()V

    .line 178
    .line 179
    .line 180
    const/4 v2, 0x1

    .line 181
    invoke-virtual {v1, v2}, Lf1/H;->setSupportsDynamicGroupRoute(Z)Lf1/H;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1, v0}, Lf1/H;->addRoutes(Ljava/util/Collection;)Lf1/H;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lf1/H;->build()Lf1/I;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Lf1/G;->setDescriptor(Lf1/I;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public transferTo(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lf1/t;->a(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "transferTo: Specified route not found. routeId="

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "MR2Provider"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p1, p0, Lf1/t;->i:Landroid/media/MediaRouter2;

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/source/mediaparser/b;->o(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
