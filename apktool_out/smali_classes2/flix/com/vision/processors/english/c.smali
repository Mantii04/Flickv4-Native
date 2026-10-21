.class public final synthetic Lflix/com/vision/processors/english/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/processors/english/m;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/processors/english/m;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lflix/com/vision/processors/english/c;->b:I

    iput-object p1, p0, Lflix/com/vision/processors/english/c;->e:Lflix/com/vision/processors/english/m;

    iput-object p2, p0, Lflix/com/vision/processors/english/c;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lflix/com/vision/processors/english/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/processors/english/c;->f:Ljava/lang/String;

    .line 7
    .line 8
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 9
    .line 10
    iget-object v1, p0, Lflix/com/vision/processors/english/c;->e:Lflix/com/vision/processors/english/m;

    .line 11
    .line 12
    const-string v2, "requestId"

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v2, LG4/b;->c:Ljava/util/HashSet;

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    new-instance v2, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v2, LG4/b;->c:Ljava/util/HashSet;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    sget-object v2, LG4/b;->c:Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    new-instance v2, Landroid/os/Handler;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lflix/com/vision/processors/english/e;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-direct {v3, v4, v1, v0, p1}, Lflix/com/vision/processors/english/e;-><init>(ILflix/com/vision/processors/english/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v0, 0x7d0

    .line 68
    .line 69
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_2
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/processors/english/c;->f:Ljava/lang/String;

    .line 78
    .line 79
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 80
    .line 81
    iget-object v1, p0, Lflix/com/vision/processors/english/c;->e:Lflix/com/vision/processors/english/m;

    .line 82
    .line 83
    const-string v2, "torrent_id"

    .line 84
    .line 85
    const-string v3, "data"

    .line 86
    .line 87
    const-string v4, "success"

    .line 88
    .line 89
    :try_start_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_4

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    goto :goto_3

    .line 134
    :catch_1
    move-exception v0

    .line 135
    move-object p1, v0

    .line 136
    goto :goto_4

    .line 137
    :cond_2
    const-string v2, "id"

    .line 138
    .line 139
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :goto_3
    sget-object v2, LJ4/b;->c:Ljava/util/HashSet;

    .line 148
    .line 149
    if-nez v2, :cond_3

    .line 150
    .line 151
    new-instance v2, Ljava/util/HashSet;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 154
    .line 155
    .line 156
    sput-object v2, LJ4/b;->c:Ljava/util/HashSet;

    .line 157
    .line 158
    :cond_3
    sget-object v2, LJ4/b;->c:Ljava/util/HashSet;

    .line 159
    .line 160
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    new-instance v2, Landroid/os/Handler;

    .line 164
    .line 165
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 166
    .line 167
    .line 168
    new-instance v3, Lflix/com/vision/processors/english/e;

    .line 169
    .line 170
    const/4 v4, 0x1

    .line 171
    invoke-direct {v3, v4, v1, v0, p1}, Lflix/com/vision/processors/english/e;-><init>(ILflix/com/vision/processors/english/m;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-wide/16 v0, 0x5dc

    .line 175
    .line 176
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    :cond_4
    :goto_5
    return-void

    .line 184
    :pswitch_1
    iget-object v4, p0, Lflix/com/vision/processors/english/c;->f:Ljava/lang/String;

    .line 185
    .line 186
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 187
    .line 188
    iget-object v1, p0, Lflix/com/vision/processors/english/c;->e:Lflix/com/vision/processors/english/m;

    .line 189
    .line 190
    const-string v0, "files"

    .line 191
    .line 192
    const-string v2, "size"

    .line 193
    .line 194
    const-string v3, "webdl_id"

    .line 195
    .line 196
    const-string v5, "data"

    .line 197
    .line 198
    const-string v6, "success"

    .line 199
    .line 200
    :try_start_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-eqz v7, :cond_8

    .line 209
    .line 210
    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-eqz v6, :cond_8

    .line 219
    .line 220
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_8

    .line 225
    .line 226
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_5

    .line 235
    .line 236
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    goto :goto_6

    .line 245
    :catch_2
    move-exception v0

    .line 246
    move-object p1, v0

    .line 247
    goto :goto_8

    .line 248
    :cond_5
    const-string v3, "id"

    .line 249
    .line 250
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    :goto_6
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-eqz v5, :cond_6

    .line 263
    .line 264
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 269
    .line 270
    .line 271
    move-result-wide v5

    .line 272
    goto :goto_7

    .line 273
    :cond_6
    const-wide/16 v5, 0x0

    .line 274
    .line 275
    :goto_7
    const-string v2, "0"

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    if-eqz v7, :cond_7

    .line 282
    .line 283
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-lez v0, :cond_7

    .line 292
    .line 293
    invoke-static {p1}, Lflix/com/vision/processors/english/m;->b(Lcom/google/gson/JsonObject;)[Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    if-eqz p1, :cond_7

    .line 298
    .line 299
    const/4 v0, 0x0

    .line 300
    aget-object v2, p1, v0

    .line 301
    .line 302
    :cond_7
    invoke-static {v3, v2}, LD4/a;->getTorboxWebDownloadLink(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    new-instance v0, Lflix/com/vision/processors/english/f;

    .line 323
    .line 324
    move-wide v2, v5

    .line 325
    const/4 v5, 0x0

    .line 326
    invoke-direct/range {v0 .. v5}, Lflix/com/vision/processors/english/f;-><init>(Lflix/com/vision/processors/english/m;JLjava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    new-instance v1, LA4/c;

    .line 330
    .line 331
    const/16 v2, 0x17

    .line 332
    .line 333
    invoke-direct {v1, v2}, LA4/c;-><init>(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 337
    .line 338
    .line 339
    goto :goto_9

    .line 340
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    .line 342
    .line 343
    :cond_8
    :goto_9
    return-void

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
