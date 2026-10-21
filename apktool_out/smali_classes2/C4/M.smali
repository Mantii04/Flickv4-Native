.class public final synthetic LC4/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/u1;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/Consumer;
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LC4/P;Lflix/com/vision/models/Movie;ILl/v1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LC4/M;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC4/M;->f:Ljava/lang/Object;

    iput-object p2, p0, LC4/M;->j:Ljava/lang/Object;

    iput p3, p0, LC4/M;->e:I

    iput-object p4, p0, LC4/M;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LC4/M;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC4/M;->f:Ljava/lang/Object;

    iput p4, p0, LC4/M;->e:I

    iput-object p2, p0, LC4/M;->j:Ljava/lang/Object;

    iput-object p3, p0, LC4/M;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 3
    iput p5, p0, LC4/M;->b:I

    iput-object p1, p0, LC4/M;->f:Ljava/lang/Object;

    iput-object p2, p0, LC4/M;->j:Ljava/lang/Object;

    iput-object p3, p0, LC4/M;->m:Ljava/lang/Object;

    iput p4, p0, LC4/M;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget-object v0, p0, LC4/M;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, LC4/M;->j:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, LC4/M;->m:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget v3, p0, LC4/M;->e:I

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;ILandroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, LC4/M;->b:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC4/M;->j:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v1, p0, LC4/M;->m:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v2, p0, LC4/M;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v3, p0, LC4/M;->e:I

    invoke-static {v2, v0, v1, v3, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->q(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_0
    iget v0, p0, LC4/M;->e:I

    iget-object v1, p0, LC4/M;->j:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Player$PositionInfo;

    iget-object v2, p0, LC4/M;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v3, p0, LC4/M;->m:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/Player$PositionInfo;

    invoke-static {v2, v0, v1, v3, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->O(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    iget-object v0, p0, LC4/M;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LC4/P;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget v2, Lflix/com/vision/R$id;->action_add_favorites_live_tv:I

    .line 13
    .line 14
    iget-object v3, p0, LC4/M;->j:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lflix/com/vision/models/Movie;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    iget-object v5, v0, LC4/P;->e:Landroid/content/Context;

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, LP4/e;->addMovieFavorites(Lflix/com/vision/models/Movie;)Z

    .line 30
    .line 31
    .line 32
    sget v1, Lflix/com/vision/R$string;->added_fav_label:I

    .line 33
    .line 34
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v5, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    sget v1, Lflix/com/vision/R$id;->action_remove_favorites_live_tv:I

    .line 50
    .line 51
    if-ne p1, v1, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 58
    .line 59
    invoke-virtual {p1, v3}, LP4/e;->deleteFavoriteMovie(Lflix/com/vision/models/Movie;)V

    .line 60
    .line 61
    .line 62
    sget p1, Lflix/com/vision/R$string;->removed_fav_label:I

    .line 63
    .line 64
    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v5, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 73
    .line 74
    .line 75
    iget-object p1, v0, LC4/P;->d:LU4/j;

    .line 76
    .line 77
    iget v0, p0, LC4/M;->e:I

    .line 78
    .line 79
    invoke-interface {p1, v0}, LU4/j;->favoriteDeleted(I)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object p1, p0, LC4/M;->m:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Ll/v1;

    .line 85
    .line 86
    invoke-virtual {p1}, Ll/v1;->dismiss()V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x1

    .line 90
    return p1
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, LC4/M;->f:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, Lflix/com/vision/processors/english/m;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "files"

    .line 12
    .line 13
    const-string v1, "progress"

    .line 14
    .line 15
    const-string v3, "download_state"

    .line 16
    .line 17
    const-string v4, "data"

    .line 18
    .line 19
    const-string v5, "success"

    .line 20
    .line 21
    const-string v6, "Skipping link: Not fully cached or missing files. State: "

    .line 22
    .line 23
    :try_start_0
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_9

    .line 36
    .line 37
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_9

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_9

    .line 52
    .line 53
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x0

    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-lez v4, :cond_0

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    move-object p1, v0

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_1

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const/4 p1, 0x0

    .line 103
    :goto_0
    if-eqz p1, :cond_9

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    const-string v3, ""

    .line 121
    .line 122
    :goto_1
    const-string v4, "completed"

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    const/4 v7, 0x1

    .line 129
    if-nez v4, :cond_4

    .line 130
    .line 131
    const-string v4, "cached"

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_3

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    move v4, v5

    .line 141
    goto :goto_3

    .line 142
    :cond_4
    :goto_2
    move v4, v7

    .line 143
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_5

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    .line 154
    .line 155
    .line 156
    move-result-wide v8

    .line 157
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 158
    .line 159
    cmpl-double v1, v8, v10

    .line 160
    .line 161
    if-nez v1, :cond_5

    .line 162
    .line 163
    move v4, v7

    .line 164
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_6

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 175
    .line 176
    .line 177
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    if-lez v0, :cond_6

    .line 179
    .line 180
    move v0, v7

    .line 181
    goto :goto_4

    .line 182
    :cond_6
    move v0, v5

    .line 183
    :goto_4
    iget-object v1, p0, LC4/M;->j:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v1, Ljava/lang/String;

    .line 186
    .line 187
    iget-object v8, p0, LC4/M;->m:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v8, Ljava/lang/String;

    .line 190
    .line 191
    if-eqz v4, :cond_7

    .line 192
    .line 193
    if-eqz v0, :cond_7

    .line 194
    .line 195
    :try_start_1
    invoke-static {p1}, Lflix/com/vision/processors/english/m;->b(Lcom/google/gson/JsonObject;)[Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_9

    .line 200
    .line 201
    aget-object v0, p1, v5

    .line 202
    .line 203
    aget-object p1, p1, v7

    .line 204
    .line 205
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 206
    .line 207
    .line 208
    move-result-wide v3

    .line 209
    invoke-static {v8, v0}, LD4/a;->getTorboxDownloadLink(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    move-object v5, v1

    .line 230
    new-instance v1, Lflix/com/vision/processors/english/f;

    .line 231
    .line 232
    const/4 v6, 0x1

    .line 233
    invoke-direct/range {v1 .. v6}, Lflix/com/vision/processors/english/f;-><init>(Lflix/com/vision/processors/english/m;JLjava/lang/String;I)V

    .line 234
    .line 235
    .line 236
    new-instance v0, LA4/c;

    .line 237
    .line 238
    const/16 v2, 0x1a

    .line 239
    .line 240
    invoke-direct {v0, v2}, LA4/c;-><init>(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_7
    move-object v5, v1

    .line 248
    if-nez v0, :cond_8

    .line 249
    .line 250
    const/4 p1, 0x3

    .line 251
    move-object v1, v5

    .line 252
    iget v5, p0, LC4/M;->e:I

    .line 253
    .line 254
    if-ge v5, p1, :cond_8

    .line 255
    .line 256
    :try_start_2
    new-instance p1, Landroid/os/Handler;

    .line 257
    .line 258
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 259
    .line 260
    .line 261
    move-object v3, v1

    .line 262
    new-instance v1, Lflix/com/vision/processors/english/i;

    .line 263
    .line 264
    const/4 v6, 0x0

    .line 265
    move-object v4, v8

    .line 266
    invoke-direct/range {v1 .. v6}, Lflix/com/vision/processors/english/i;-><init>(Lflix/com/vision/processors/english/m;Ljava/lang/String;Ljava/lang/String;II)V

    .line 267
    .line 268
    .line 269
    const-wide/16 v2, 0x7d0

    .line 270
    .line 271
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :cond_8
    const-string p1, "Torbox"

    .line 276
    .line 277
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    .line 287
    .line 288
    :cond_9
    return-void
.end method
