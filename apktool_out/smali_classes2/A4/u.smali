.class public final synthetic LA4/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LA4/u;->b:I

    iput-object p2, p0, LA4/u;->e:Ljava/lang/Object;

    iput-object p3, p0, LA4/u;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "message"

    .line 4
    .line 5
    const-string v2, "Successfully logged in"

    .line 6
    .line 7
    const-string v3, "status"

    .line 8
    .line 9
    const-string v4, "email"

    .line 10
    .line 11
    const-string v5, "https://image.tmdb.org/t/p/w500"

    .line 12
    .line 13
    const-string v6, "API Key not valid: "

    .line 14
    .line 15
    const-string v7, "data"

    .line 16
    .line 17
    const/16 v8, 0x50

    .line 18
    .line 19
    const-string v9, "success"

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v11, 0x0

    .line 23
    const/4 v12, 0x1

    .line 24
    iget-object v13, v1, LA4/u;->f:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v14, v1, LA4/u;->e:Ljava/lang/Object;

    .line 27
    .line 28
    iget v15, v1, LA4/u;->b:I

    .line 29
    .line 30
    packed-switch v15, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    move-object/from16 v0, p1

    .line 34
    .line 35
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 36
    .line 37
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 38
    .line 39
    check-cast v14, Lflix/com/vision/activities/UserTorrentsActivity;

    .line 40
    .line 41
    invoke-virtual {v14}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v13, Lflix/com/vision/models/VideoSource;

    .line 73
    .line 74
    iput-object v0, v13, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 75
    .line 76
    iput-boolean v12, v13, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 77
    .line 78
    invoke-static {v13}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 79
    .line 80
    .line 81
    iget v0, v13, Lflix/com/vision/models/VideoSource;->quality:I

    .line 82
    .line 83
    if-nez v0, :cond_0

    .line 84
    .line 85
    const/16 v0, 0x12c

    .line 86
    .line 87
    iput v0, v13, Lflix/com/vision/models/VideoSource;->quality:I

    .line 88
    .line 89
    :cond_0
    invoke-virtual {v14, v13}, Lflix/com/vision/activities/UserTorrentsActivity;->i(Lflix/com/vision/models/VideoSource;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "Torbox could not generate a stream link."

    .line 94
    .line 95
    invoke-static {v14, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void

    .line 103
    :pswitch_0
    move-object/from16 v0, p1

    .line 104
    .line 105
    check-cast v0, Ljava/lang/Throwable;

    .line 106
    .line 107
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 108
    .line 109
    check-cast v14, Lflix/com/vision/activities/UserTorrentsActivity;

    .line 110
    .line 111
    invoke-virtual {v14}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 112
    .line 113
    .line 114
    const-class v2, Lflix/com/vision/activities/MainActivity;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v13, Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v2, v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_1
    check-cast v13, Lflix/com/vision/models/tmdb/Network;

    .line 127
    .line 128
    move-object/from16 v0, p1

    .line 129
    .line 130
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 131
    .line 132
    check-cast v14, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 133
    .line 134
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    :try_start_0
    invoke-static {v0, v12}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_2

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-lez v2, :cond_2

    .line 148
    .line 149
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lflix/com/vision/models/Movie;

    .line 154
    .line 155
    iget-object v2, v14, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->y0:Ljava/util/HashMap;

    .line 156
    .line 157
    iget v3, v13, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 158
    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    iget-boolean v2, v14, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->D0:Z

    .line 167
    .line 168
    if-eqz v2, :cond_2

    .line 169
    .line 170
    iget-object v2, v14, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->C0:Lflix/com/vision/models/tmdb/Network;

    .line 171
    .line 172
    if-eqz v2, :cond_2

    .line 173
    .line 174
    iget v2, v2, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 175
    .line 176
    iget v3, v13, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 177
    .line 178
    if-ne v2, v3, :cond_2

    .line 179
    .line 180
    iget-object v2, v14, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->V0:Lflix/com/vision/activities/leanback/fragment/d;

    .line 181
    .line 182
    if-eqz v2, :cond_2

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Lflix/com/vision/activities/leanback/fragment/d;->onMovieSelected(Lflix/com/vision/models/Movie;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    :cond_2
    :goto_1
    return-void

    .line 193
    :pswitch_2
    move-object/from16 v0, p1

    .line 194
    .line 195
    check-cast v0, Lflix/com/vision/models/TmdbImagesResponse;

    .line 196
    .line 197
    check-cast v14, Lflix/com/vision/activities/leanback/fragment/d;

    .line 198
    .line 199
    iget-object v2, v0, Lflix/com/vision/models/TmdbImagesResponse;->logos:Ljava/util/List;

    .line 200
    .line 201
    if-eqz v2, :cond_5

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_5

    .line 208
    .line 209
    iget-object v2, v0, Lflix/com/vision/models/TmdbImagesResponse;->logos:Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_4

    .line 220
    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    check-cast v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;

    .line 226
    .line 227
    iget-object v4, v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->language:Ljava/lang/String;

    .line 228
    .line 229
    const-string v6, "en"

    .line 230
    .line 231
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_3

    .line 236
    .line 237
    iget-object v4, v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->filePath:Ljava/lang/String;

    .line 238
    .line 239
    if-eqz v4, :cond_3

    .line 240
    .line 241
    const-string v6, "png"

    .line 242
    .line 243
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-eqz v4, :cond_3

    .line 248
    .line 249
    iget-object v10, v3, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->filePath:Ljava/lang/String;

    .line 250
    .line 251
    :cond_4
    if-nez v10, :cond_5

    .line 252
    .line 253
    iget-object v0, v0, Lflix/com/vision/models/TmdbImagesResponse;->logos:Ljava/util/List;

    .line 254
    .line 255
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;

    .line 260
    .line 261
    iget-object v10, v0, Lflix/com/vision/models/TmdbImagesResponse$TmdbLogo;->filePath:Ljava/lang/String;

    .line 262
    .line 263
    :cond_5
    if-eqz v10, :cond_6

    .line 264
    .line 265
    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v13, Lflix/com/vision/models/Movie;

    .line 270
    .line 271
    iput-object v0, v13, Lflix/com/vision/models/Movie;->logoUrl:Ljava/lang/String;

    .line 272
    .line 273
    :try_start_1
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v2, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v2, v14, Lflix/com/vision/activities/leanback/fragment/d;->q0:Landroid/widget/ImageView;

    .line 282
    .line 283
    new-instance v3, Lflix/com/vision/activities/leanback/fragment/c;

    .line 284
    .line 285
    invoke-direct {v3, v14, v13}, Lflix/com/vision/activities/leanback/fragment/c;-><init>(Lflix/com/vision/activities/leanback/fragment/d;Lflix/com/vision/models/Movie;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v2, v3}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :catch_1
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 294
    .line 295
    .line 296
    :cond_6
    :goto_2
    return-void

    .line 297
    :pswitch_3
    move-object/from16 v0, p1

    .line 298
    .line 299
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 300
    .line 301
    sget v2, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;->p:I

    .line 302
    .line 303
    check-cast v14, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;

    .line 304
    .line 305
    iget-object v2, v14, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;->n:LQ4/d;

    .line 306
    .line 307
    if-eqz v2, :cond_7

    .line 308
    .line 309
    :try_start_2
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 310
    .line 311
    .line 312
    :catch_2
    :cond_7
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_c

    .line 321
    .line 322
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_c

    .line 331
    .line 332
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 337
    .line 338
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-eqz v3, :cond_8

    .line 355
    .line 356
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-nez v3, :cond_8

    .line 365
    .line 366
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    goto :goto_3

    .line 375
    :cond_8
    const-string v3, "Torbox User"

    .line 376
    .line 377
    :goto_3
    const-string v4, "plan"

    .line 378
    .line 379
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_9

    .line 384
    .line 385
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    goto :goto_4

    .line 394
    :cond_9
    move v4, v11

    .line 395
    :goto_4
    if-lez v4, :cond_a

    .line 396
    .line 397
    move v11, v12

    .line 398
    :cond_a
    const-string v4, "premium_expires_at"

    .line 399
    .line 400
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_b

    .line 405
    .line 406
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    if-nez v5, :cond_b

    .line 415
    .line 416
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-static {v0}, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;->formatTorboxDate(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    const-string v4, "pref_torbox_premium_until"

    .line 429
    .line 430
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 431
    .line 432
    .line 433
    :cond_b
    const-string v0, "torbox_logged_in"

    .line 434
    .line 435
    invoke-interface {v2, v0, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 436
    .line 437
    .line 438
    const-string v0, "pref_torbox_username"

    .line 439
    .line 440
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    .line 442
    .line 443
    const-string v0, "pref_torbox_is_premium"

    .line 444
    .line 445
    invoke-interface {v2, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 446
    .line 447
    .line 448
    check-cast v13, Ljava/lang/String;

    .line 449
    .line 450
    const-string v0, "torbox_apikey"

    .line 451
    .line 452
    invoke-interface {v2, v0, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 453
    .line 454
    .line 455
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    .line 457
    .line 458
    sput-boolean v12, LJ4/b;->a:Z

    .line 459
    .line 460
    sput-object v13, LJ4/b;->b:Ljava/lang/String;

    .line 461
    .line 462
    const-string v0, "Successfully logged into Torbox"

    .line 463
    .line 464
    invoke-static {v14, v0, v10, v8, v12}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    .line 468
    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_c
    const-string v2, "detail"

    .line 472
    .line 473
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_d

    .line 478
    .line 479
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    goto :goto_5

    .line 488
    :cond_d
    const-string v0, "Unknown error"

    .line 489
    .line 490
    :goto_5
    invoke-static {v6, v0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-static {v14, v0, v10, v8, v12}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 495
    .line 496
    .line 497
    :goto_6
    return-void

    .line 498
    :pswitch_4
    move-object/from16 v4, p1

    .line 499
    .line 500
    check-cast v4, Lcom/google/gson/JsonElement;

    .line 501
    .line 502
    sget v5, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->p:I

    .line 503
    .line 504
    check-cast v14, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;

    .line 505
    .line 506
    iget-object v5, v14, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->n:LQ4/d;

    .line 507
    .line 508
    if-eqz v5, :cond_e

    .line 509
    .line 510
    :try_start_3
    invoke-virtual {v5}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 511
    .line 512
    .line 513
    :catch_3
    :cond_e
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    invoke-virtual {v4, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    if-eqz v3, :cond_10

    .line 530
    .line 531
    const-string v0, "premium_until"

    .line 532
    .line 533
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-lez v0, :cond_f

    .line 542
    .line 543
    int-to-long v3, v0

    .line 544
    invoke-static {v3, v4}, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->getDate(J)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 553
    .line 554
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    const-string v4, "PREM_PREMIUM_UNTIL"

    .line 559
    .line 560
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 565
    .line 566
    .line 567
    :cond_f
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 572
    .line 573
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    const-string v3, "PREM_LOGGED_IN"

    .line 578
    .line 579
    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 584
    .line 585
    .line 586
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 591
    .line 592
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    sget-object v3, LT4/f;->a:Ljava/lang/String;

    .line 597
    .line 598
    check-cast v13, Ljava/lang/String;

    .line 599
    .line 600
    const-string v3, "prem_apikey"

    .line 601
    .line 602
    invoke-interface {v0, v3, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 607
    .line 608
    .line 609
    sput-boolean v12, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 610
    .line 611
    sput-object v13, Lflix/com/vision/api/premiumize/PremiumizeCommon;->e:Ljava/lang/String;

    .line 612
    .line 613
    invoke-static {v14, v2, v10, v8, v12}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    .line 617
    .line 618
    .line 619
    goto :goto_7

    .line 620
    :cond_10
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-static {v6, v0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-static {v14, v0, v10, v8, v12}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 633
    .line 634
    .line 635
    :goto_7
    return-void

    .line 636
    :pswitch_5
    move-object/from16 v0, p1

    .line 637
    .line 638
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 639
    .line 640
    sget v2, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->p:I

    .line 641
    .line 642
    check-cast v14, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;

    .line 643
    .line 644
    iget-object v2, v14, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->n:LQ4/d;

    .line 645
    .line 646
    if-eqz v2, :cond_11

    .line 647
    .line 648
    :try_start_4
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 649
    .line 650
    .line 651
    :catch_4
    :cond_11
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    .line 652
    .line 653
    .line 654
    move-result v2

    .line 655
    if-eqz v2, :cond_12

    .line 656
    .line 657
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 662
    .line 663
    .line 664
    move-result v2

    .line 665
    if-eqz v2, :cond_12

    .line 666
    .line 667
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 672
    .line 673
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 682
    .line 683
    .line 684
    move-result-object v3

    .line 685
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    const-string v5, "is_premium"

    .line 694
    .line 695
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 696
    .line 697
    .line 698
    move-result-object v4

    .line 699
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 700
    .line 701
    .line 702
    move-result v4

    .line 703
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    const-string v5, "expiration_date"

    .line 708
    .line 709
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    const-string v5, "pref_offcloud_premium_until"

    .line 718
    .line 719
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 720
    .line 721
    .line 722
    const-string v0, "pref_offcloud_username"

    .line 723
    .line 724
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 725
    .line 726
    .line 727
    const-string v0, "offcloud_logged_in"

    .line 728
    .line 729
    invoke-interface {v2, v0, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 730
    .line 731
    .line 732
    const-string v0, "pref_offcloud_is_premium"

    .line 733
    .line 734
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 735
    .line 736
    .line 737
    check-cast v13, Ljava/lang/String;

    .line 738
    .line 739
    const-string v0, "offcloud_apikey"

    .line 740
    .line 741
    invoke-interface {v2, v0, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 742
    .line 743
    .line 744
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 745
    .line 746
    .line 747
    sput-boolean v12, LG4/b;->a:Z

    .line 748
    .line 749
    sput-object v13, LG4/b;->b:Ljava/lang/String;

    .line 750
    .line 751
    const-string v0, "Successfully logged into Offcloud"

    .line 752
    .line 753
    invoke-static {v14, v0, v10, v8, v12}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    .line 757
    .line 758
    .line 759
    goto :goto_8

    .line 760
    :cond_12
    const-string v0, "API Key not valid."

    .line 761
    .line 762
    invoke-static {v14, v0, v10, v8, v12}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 763
    .line 764
    .line 765
    :goto_8
    return-void

    .line 766
    :pswitch_6
    move-object/from16 v4, p1

    .line 767
    .line 768
    check-cast v4, Lcom/google/gson/JsonElement;

    .line 769
    .line 770
    sget v5, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;->p:I

    .line 771
    .line 772
    check-cast v14, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;

    .line 773
    .line 774
    iget-object v5, v14, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;->n:LQ4/d;

    .line 775
    .line 776
    if-eqz v5, :cond_13

    .line 777
    .line 778
    :try_start_5
    invoke-virtual {v5}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 779
    .line 780
    .line 781
    :catch_5
    :cond_13
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 782
    .line 783
    .line 784
    move-result-object v4

    .line 785
    invoke-virtual {v4, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v3

    .line 797
    if-eqz v3, :cond_15

    .line 798
    .line 799
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 804
    .line 805
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 810
    .line 811
    .line 812
    move-result-object v3

    .line 813
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    const-string v4, "user"

    .line 818
    .line 819
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    const-string v4, "username"

    .line 828
    .line 829
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 830
    .line 831
    .line 832
    move-result-object v4

    .line 833
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    const-string v5, "isPremium"

    .line 838
    .line 839
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 840
    .line 841
    .line 842
    move-result-object v5

    .line 843
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 844
    .line 845
    .line 846
    move-result v5

    .line 847
    const-string v6, "premiumUntil"

    .line 848
    .line 849
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 854
    .line 855
    .line 856
    move-result v3

    .line 857
    if-lez v3, :cond_14

    .line 858
    .line 859
    int-to-long v6, v3

    .line 860
    invoke-static {v6, v7}, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;->getDate(J)Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    const-string v6, "ALL_DEBRID_PREMIUM_UNTIL"

    .line 865
    .line 866
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 867
    .line 868
    .line 869
    :cond_14
    const-string v3, "ALL_DEBRID_LOGGED_IN"

    .line 870
    .line 871
    invoke-interface {v0, v3, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 872
    .line 873
    .line 874
    const-string v3, "ALL_DEBRID_USERNAME"

    .line 875
    .line 876
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 877
    .line 878
    .line 879
    const-string v3, "ALL_DEBRID_IS_PREMIUM"

    .line 880
    .line 881
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 882
    .line 883
    .line 884
    sget-object v3, LT4/f;->a:Ljava/lang/String;

    .line 885
    .line 886
    check-cast v13, Ljava/lang/String;

    .line 887
    .line 888
    const-string v3, "all_debrid_apikey"

    .line 889
    .line 890
    invoke-interface {v0, v3, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 891
    .line 892
    .line 893
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 894
    .line 895
    .line 896
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 897
    .line 898
    .line 899
    sput-boolean v12, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 900
    .line 901
    sput-object v13, Lflix/com/vision/api/alldebrid/AllDebridCommon;->j:Ljava/lang/String;

    .line 902
    .line 903
    invoke-static {v14, v2, v10, v8, v12}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    .line 907
    .line 908
    .line 909
    goto :goto_9

    .line 910
    :cond_15
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    invoke-static {v6, v0}, LA/i;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v0

    .line 922
    invoke-static {v14, v0, v10, v8, v12}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 923
    .line 924
    .line 925
    :goto_9
    return-void

    .line 926
    :pswitch_7
    move-object/from16 v0, p1

    .line 927
    .line 928
    check-cast v0, Ljava/lang/String;

    .line 929
    .line 930
    check-cast v14, Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 931
    .line 932
    const/16 v2, 0x8

    .line 933
    .line 934
    if-eqz v0, :cond_16

    .line 935
    .line 936
    sget v3, Lflix/com/vision/activities/leanback/SlideshowActivity;->v:I

    .line 937
    .line 938
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 942
    .line 943
    .line 944
    move-result v3

    .line 945
    if-nez v3, :cond_16

    .line 946
    .line 947
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    check-cast v13, Lflix/com/vision/models/Movie;

    .line 952
    .line 953
    iput-boolean v12, v13, Lflix/com/vision/models/Movie;->is_title_logo_available:Z

    .line 954
    .line 955
    iput-object v0, v13, Lflix/com/vision/models/Movie;->logoUrl:Ljava/lang/String;

    .line 956
    .line 957
    iget-object v3, v14, Lflix/com/vision/activities/leanback/SlideshowActivity;->b:Landroid/widget/TextView;

    .line 958
    .line 959
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 960
    .line 961
    .line 962
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    invoke-virtual {v2, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    iget-object v2, v14, Lflix/com/vision/activities/leanback/SlideshowActivity;->f:Landroid/widget/ImageView;

    .line 971
    .line 972
    new-instance v3, LA4/B;

    .line 973
    .line 974
    invoke-direct {v3, v14, v13}, LA4/B;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;Lflix/com/vision/models/Movie;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v0, v2, v3}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V

    .line 978
    .line 979
    .line 980
    new-instance v0, Landroid/os/Handler;

    .line 981
    .line 982
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 983
    .line 984
    .line 985
    new-instance v2, LA4/t;

    .line 986
    .line 987
    invoke-direct {v2, v14, v12}, LA4/t;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;I)V

    .line 988
    .line 989
    .line 990
    const-wide/16 v3, 0xbb8

    .line 991
    .line 992
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 993
    .line 994
    .line 995
    goto :goto_a

    .line 996
    :cond_16
    iget-object v0, v14, Lflix/com/vision/activities/leanback/SlideshowActivity;->f:Landroid/widget/ImageView;

    .line 997
    .line 998
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 999
    .line 1000
    .line 1001
    iget-object v0, v14, Lflix/com/vision/activities/leanback/SlideshowActivity;->b:Landroid/widget/TextView;

    .line 1002
    .line 1003
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1004
    .line 1005
    .line 1006
    :goto_a
    return-void

    .line 1007
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
