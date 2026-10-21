.class public final synthetic LE4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LE4/c;->b:I

    iput-object p1, p0, LE4/c;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v2, "Network error. Please try again."

    .line 4
    .line 5
    const/16 v8, 0xf

    .line 6
    .line 7
    const/16 v9, 0x8

    .line 8
    .line 9
    const/16 v10, 0x10

    .line 10
    .line 11
    const/16 v11, 0x9

    .line 12
    .line 13
    const/16 v12, 0xa

    .line 14
    .line 15
    const/16 v14, 0x11

    .line 16
    .line 17
    const/4 v15, 0x0

    .line 18
    const-string v1, "https://api.real-debrid.com/rest/1.0/torrents/info/"

    .line 19
    .line 20
    const/16 v16, 0x1

    .line 21
    .line 22
    const-string v13, "http"

    .line 23
    .line 24
    const-string v3, "uri"

    .line 25
    .line 26
    const-string v4, "id"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    iget-object v6, v0, LE4/c;->e:Ljava/lang/Object;

    .line 30
    .line 31
    iget v7, v0, LE4/c;->b:I

    .line 32
    .line 33
    packed-switch v7, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    move-object/from16 v1, p1

    .line 37
    .line 38
    check-cast v1, Lcom/google/gson/JsonElement;

    .line 39
    .line 40
    sget v2, Lflix/com/vision/activities/LinksActivity;->b0:I

    .line 41
    .line 42
    check-cast v6, Lflix/com/vision/activities/LinksActivity;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "still_path"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_0

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    sget-object v4, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, "original"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move-object v2, v15

    .line 92
    :goto_0
    const-string v3, "overview"

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_1

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    move-object v3, v15

    .line 114
    :goto_1
    const-string v4, "name"

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_2

    .line 125
    .line 126
    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    :cond_2
    const-string v4, "runtime"

    .line 135
    .line 136
    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-nez v5, :cond_3

    .line 145
    .line 146
    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    iput v4, v6, Lflix/com/vision/activities/LinksActivity;->X:I

    .line 155
    .line 156
    :cond_3
    if-eqz v15, :cond_4

    .line 157
    .line 158
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-nez v4, :cond_4

    .line 163
    .line 164
    iput-object v15, v6, Lflix/com/vision/activities/LinksActivity;->W:Ljava/lang/String;

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    const-string v15, "Episode "

    .line 168
    .line 169
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    iget v5, v6, Lflix/com/vision/activities/LinksActivity;->X:I

    .line 175
    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v5, "min  \u00b7 aired on "

    .line 180
    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v5, "air_date"

    .line 185
    .line 186
    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-eqz v2, :cond_5

    .line 202
    .line 203
    if-eqz v3, :cond_5

    .line 204
    .line 205
    :try_start_0
    invoke-virtual {v6, v2, v3, v15, v1}, Lflix/com/vision/activities/LinksActivity;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    .line 208
    :catch_0
    :cond_5
    return-void

    .line 209
    :pswitch_0
    move-object/from16 v1, p1

    .line 210
    .line 211
    check-cast v1, Lcom/google/gson/JsonElement;

    .line 212
    .line 213
    check-cast v6, Lflix/com/vision/activities/FilterActivity;

    .line 214
    .line 215
    iget v2, v6, Lflix/com/vision/activities/FilterActivity;->e:I

    .line 216
    .line 217
    invoke-static {v1, v2}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    iget-object v3, v6, Lflix/com/vision/activities/FilterActivity;->r:Ljava/util/ArrayList;

    .line 226
    .line 227
    if-lez v2, :cond_6

    .line 228
    .line 229
    iget-boolean v2, v6, Lflix/com/vision/activities/FilterActivity;->x:Z

    .line 230
    .line 231
    if-eqz v2, :cond_6

    .line 232
    .line 233
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 234
    .line 235
    .line 236
    iput-boolean v5, v6, Lflix/com/vision/activities/FilterActivity;->x:Z

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_7

    .line 244
    .line 245
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const-string v2, "No more result"

    .line 250
    .line 251
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 256
    .line 257
    .line 258
    iget-object v1, v6, Lflix/com/vision/activities/FilterActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 259
    .line 260
    const/16 v2, 0x14

    .line 261
    .line 262
    invoke-virtual {v1, v15, v2}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setupMoreListener(Ld4/a;I)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v6, Lflix/com/vision/activities/FilterActivity;->I:LC4/P;

    .line 266
    .line 267
    invoke-virtual {v1}, Lm1/V;->notifyDataSetChanged()V

    .line 268
    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_7
    :goto_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v2, v1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-le v2, v4, :cond_8

    .line 291
    .line 292
    iget-object v2, v6, Lflix/com/vision/activities/FilterActivity;->I:LC4/P;

    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    add-int/lit8 v4, v4, -0x1

    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    invoke-virtual {v2, v4, v5}, Lm1/V;->notifyItemRangeChanged(II)V

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_8
    iget-object v2, v6, Lflix/com/vision/activities/FilterActivity;->I:LC4/P;

    .line 309
    .line 310
    invoke-virtual {v2}, Lm1/V;->notifyDataSetChanged()V

    .line 311
    .line 312
    .line 313
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-lez v1, :cond_9

    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-nez v1, :cond_9

    .line 324
    .line 325
    iget v1, v6, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 326
    .line 327
    add-int/lit8 v1, v1, 0x1

    .line 328
    .line 329
    iput v1, v6, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 330
    .line 331
    invoke-virtual {v6, v1}, Lflix/com/vision/activities/FilterActivity;->e(I)V

    .line 332
    .line 333
    .line 334
    :cond_9
    :goto_5
    return-void

    .line 335
    :pswitch_1
    move-object/from16 v2, p1

    .line 336
    .line 337
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 338
    .line 339
    check-cast v6, La5/x;

    .line 340
    .line 341
    iget-boolean v7, v6, La5/x;->g:Z

    .line 342
    .line 343
    if-eqz v7, :cond_a

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_a
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    if-eqz v2, :cond_b

    .line 367
    .line 368
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_b

    .line 373
    .line 374
    new-instance v1, La5/v;

    .line 375
    .line 376
    new-instance v3, LX4/a;

    .line 377
    .line 378
    invoke-direct {v3, v12, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    new-instance v4, LJ0/g;

    .line 382
    .line 383
    invoke-direct {v4, v14}, LJ0/g;-><init>(I)V

    .line 384
    .line 385
    .line 386
    invoke-direct {v1, v5, v2, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 387
    .line 388
    .line 389
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-virtual {v2}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_b
    if-eqz v4, :cond_c

    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-lez v2, :cond_c

    .line 408
    .line 409
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    new-instance v2, La5/v;

    .line 414
    .line 415
    new-instance v3, LX4/a;

    .line 416
    .line 417
    invoke-direct {v3, v12, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    new-instance v4, LJ0/g;

    .line 421
    .line 422
    invoke-direct {v4, v14}, LJ0/g;-><init>(I)V

    .line 423
    .line 424
    .line 425
    invoke-direct {v2, v5, v1, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 426
    .line 427
    .line 428
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 437
    .line 438
    .line 439
    :cond_c
    :goto_6
    return-void

    .line 440
    :pswitch_2
    move-object/from16 v2, p1

    .line 441
    .line 442
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 443
    .line 444
    check-cast v6, La5/t;

    .line 445
    .line 446
    iget-boolean v7, v6, La5/t;->c:Z

    .line 447
    .line 448
    if-eqz v7, :cond_d

    .line 449
    .line 450
    goto :goto_7

    .line 451
    :cond_d
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    if-eqz v2, :cond_e

    .line 472
    .line 473
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_e

    .line 478
    .line 479
    new-instance v1, La5/r;

    .line 480
    .line 481
    new-instance v3, LX4/a;

    .line 482
    .line 483
    invoke-direct {v3, v11, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    new-instance v4, LJ0/g;

    .line 487
    .line 488
    invoke-direct {v4, v10}, LJ0/g;-><init>(I)V

    .line 489
    .line 490
    .line 491
    invoke-direct {v1, v5, v2, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 492
    .line 493
    .line 494
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v2}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 503
    .line 504
    .line 505
    goto :goto_7

    .line 506
    :cond_e
    if-eqz v4, :cond_f

    .line 507
    .line 508
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    if-lez v2, :cond_f

    .line 513
    .line 514
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    new-instance v2, La5/r;

    .line 519
    .line 520
    new-instance v3, LX4/a;

    .line 521
    .line 522
    invoke-direct {v3, v11, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    new-instance v4, LJ0/g;

    .line 526
    .line 527
    invoke-direct {v4, v10}, LJ0/g;-><init>(I)V

    .line 528
    .line 529
    .line 530
    invoke-direct {v2, v5, v1, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 531
    .line 532
    .line 533
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-virtual {v1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 542
    .line 543
    .line 544
    :cond_f
    :goto_7
    return-void

    .line 545
    :pswitch_3
    move-object/from16 v2, p1

    .line 546
    .line 547
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 548
    .line 549
    check-cast v6, La5/p;

    .line 550
    .line 551
    iget-boolean v7, v6, La5/p;->f:Z

    .line 552
    .line 553
    if-eqz v7, :cond_10

    .line 554
    .line 555
    goto :goto_8

    .line 556
    :cond_10
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    if-eqz v2, :cond_11

    .line 577
    .line 578
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-eqz v3, :cond_11

    .line 583
    .line 584
    new-instance v1, La5/n;

    .line 585
    .line 586
    new-instance v3, LX4/a;

    .line 587
    .line 588
    invoke-direct {v3, v9, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    new-instance v4, LJ0/g;

    .line 592
    .line 593
    invoke-direct {v4, v8}, LJ0/g;-><init>(I)V

    .line 594
    .line 595
    .line 596
    invoke-direct {v1, v5, v2, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 597
    .line 598
    .line 599
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-virtual {v2}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 608
    .line 609
    .line 610
    goto :goto_8

    .line 611
    :cond_11
    if-eqz v4, :cond_12

    .line 612
    .line 613
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    if-lez v2, :cond_12

    .line 618
    .line 619
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    new-instance v2, La5/n;

    .line 624
    .line 625
    new-instance v3, LX4/a;

    .line 626
    .line 627
    invoke-direct {v3, v9, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    new-instance v4, LJ0/g;

    .line 631
    .line 632
    invoke-direct {v4, v8}, LJ0/g;-><init>(I)V

    .line 633
    .line 634
    .line 635
    invoke-direct {v2, v5, v1, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 636
    .line 637
    .line 638
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-virtual {v1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 647
    .line 648
    .line 649
    :cond_12
    :goto_8
    return-void

    .line 650
    :pswitch_4
    move-object/from16 v2, p1

    .line 651
    .line 652
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 653
    .line 654
    check-cast v6, La5/l;

    .line 655
    .line 656
    iget-boolean v7, v6, La5/l;->c:Z

    .line 657
    .line 658
    if-eqz v7, :cond_13

    .line 659
    .line 660
    goto :goto_9

    .line 661
    :cond_13
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 666
    .line 667
    .line 668
    move-result-object v4

    .line 669
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v4

    .line 673
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    if-eqz v2, :cond_14

    .line 682
    .line 683
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 684
    .line 685
    .line 686
    move-result v3

    .line 687
    if-eqz v3, :cond_14

    .line 688
    .line 689
    new-instance v1, La5/j;

    .line 690
    .line 691
    new-instance v3, LX4/a;

    .line 692
    .line 693
    const/4 v7, 0x7

    .line 694
    invoke-direct {v3, v7, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    new-instance v4, LJ0/g;

    .line 698
    .line 699
    const/16 v6, 0xe

    .line 700
    .line 701
    invoke-direct {v4, v6}, LJ0/g;-><init>(I)V

    .line 702
    .line 703
    .line 704
    invoke-direct {v1, v5, v2, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 705
    .line 706
    .line 707
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    invoke-virtual {v2}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 716
    .line 717
    .line 718
    goto :goto_9

    .line 719
    :cond_14
    if-eqz v4, :cond_15

    .line 720
    .line 721
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 722
    .line 723
    .line 724
    move-result v2

    .line 725
    if-lez v2, :cond_15

    .line 726
    .line 727
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    new-instance v2, La5/j;

    .line 732
    .line 733
    new-instance v3, LX4/a;

    .line 734
    .line 735
    const/4 v7, 0x7

    .line 736
    invoke-direct {v3, v7, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    new-instance v4, LJ0/g;

    .line 740
    .line 741
    const/16 v6, 0xe

    .line 742
    .line 743
    invoke-direct {v4, v6}, LJ0/g;-><init>(I)V

    .line 744
    .line 745
    .line 746
    invoke-direct {v2, v5, v1, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 747
    .line 748
    .line 749
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    invoke-virtual {v1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 758
    .line 759
    .line 760
    :cond_15
    :goto_9
    return-void

    .line 761
    :pswitch_5
    move-object/from16 v2, p1

    .line 762
    .line 763
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 764
    .line 765
    check-cast v6, La5/h;

    .line 766
    .line 767
    iget-boolean v7, v6, La5/h;->f:Z

    .line 768
    .line 769
    if-eqz v7, :cond_16

    .line 770
    .line 771
    goto :goto_a

    .line 772
    :cond_16
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    if-eqz v2, :cond_17

    .line 793
    .line 794
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    if-eqz v3, :cond_17

    .line 799
    .line 800
    new-instance v1, La5/f;

    .line 801
    .line 802
    new-instance v3, LX4/a;

    .line 803
    .line 804
    const/4 v7, 0x6

    .line 805
    invoke-direct {v3, v7, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 806
    .line 807
    .line 808
    new-instance v4, LJ0/g;

    .line 809
    .line 810
    const/16 v6, 0xd

    .line 811
    .line 812
    invoke-direct {v4, v6}, LJ0/g;-><init>(I)V

    .line 813
    .line 814
    .line 815
    invoke-direct {v1, v5, v2, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 816
    .line 817
    .line 818
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 819
    .line 820
    .line 821
    move-result-object v2

    .line 822
    invoke-virtual {v2}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 823
    .line 824
    .line 825
    move-result-object v2

    .line 826
    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 827
    .line 828
    .line 829
    goto :goto_a

    .line 830
    :cond_17
    if-eqz v4, :cond_18

    .line 831
    .line 832
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 833
    .line 834
    .line 835
    move-result v2

    .line 836
    if-lez v2, :cond_18

    .line 837
    .line 838
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    new-instance v2, La5/f;

    .line 843
    .line 844
    new-instance v3, LX4/a;

    .line 845
    .line 846
    const/4 v7, 0x6

    .line 847
    invoke-direct {v3, v7, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 848
    .line 849
    .line 850
    new-instance v4, LJ0/g;

    .line 851
    .line 852
    const/16 v6, 0xd

    .line 853
    .line 854
    invoke-direct {v4, v6}, LJ0/g;-><init>(I)V

    .line 855
    .line 856
    .line 857
    invoke-direct {v2, v5, v1, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 858
    .line 859
    .line 860
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    invoke-virtual {v1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 865
    .line 866
    .line 867
    move-result-object v1

    .line 868
    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 869
    .line 870
    .line 871
    :cond_18
    :goto_a
    return-void

    .line 872
    :pswitch_6
    move-object/from16 v2, p1

    .line 873
    .line 874
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 875
    .line 876
    check-cast v6, La5/d;

    .line 877
    .line 878
    iget-boolean v7, v6, La5/d;->c:Z

    .line 879
    .line 880
    if-eqz v7, :cond_19

    .line 881
    .line 882
    goto :goto_b

    .line 883
    :cond_19
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 888
    .line 889
    .line 890
    move-result-object v4

    .line 891
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v4

    .line 895
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    if-eqz v2, :cond_1a

    .line 904
    .line 905
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 906
    .line 907
    .line 908
    move-result v3

    .line 909
    if-eqz v3, :cond_1a

    .line 910
    .line 911
    new-instance v1, La5/b;

    .line 912
    .line 913
    new-instance v3, LX4/a;

    .line 914
    .line 915
    const/4 v7, 0x5

    .line 916
    invoke-direct {v3, v7, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 917
    .line 918
    .line 919
    new-instance v4, LA0/a;

    .line 920
    .line 921
    invoke-direct {v4, v6, v14}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 922
    .line 923
    .line 924
    invoke-direct {v1, v5, v2, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 925
    .line 926
    .line 927
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    invoke-virtual {v2}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 936
    .line 937
    .line 938
    goto :goto_b

    .line 939
    :cond_1a
    if-eqz v4, :cond_1b

    .line 940
    .line 941
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 942
    .line 943
    .line 944
    move-result v2

    .line 945
    if-lez v2, :cond_1b

    .line 946
    .line 947
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    new-instance v2, La5/b;

    .line 952
    .line 953
    new-instance v3, LX4/a;

    .line 954
    .line 955
    const/4 v7, 0x5

    .line 956
    invoke-direct {v3, v7, v6, v4}, LX4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 957
    .line 958
    .line 959
    new-instance v4, LA0/a;

    .line 960
    .line 961
    invoke-direct {v4, v6, v14}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 962
    .line 963
    .line 964
    invoke-direct {v2, v5, v1, v3, v4}, Lh2/t;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 965
    .line 966
    .line 967
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    invoke-virtual {v1}, Lflix/com/vision/App;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 976
    .line 977
    .line 978
    :cond_1b
    :goto_b
    return-void

    .line 979
    :pswitch_7
    move-object/from16 v1, p1

    .line 980
    .line 981
    check-cast v1, Ljava/lang/String;

    .line 982
    .line 983
    check-cast v6, LZ4/o;

    .line 984
    .line 985
    iget-boolean v2, v6, LZ4/o;->d:Z

    .line 986
    .line 987
    if-nez v2, :cond_1c

    .line 988
    .line 989
    invoke-virtual {v6, v1}, LZ4/o;->e(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    :cond_1c
    return-void

    .line 993
    :pswitch_8
    move-object/from16 v1, p1

    .line 994
    .line 995
    check-cast v1, Ljava/lang/Throwable;

    .line 996
    .line 997
    sget v1, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;->p:I

    .line 998
    .line 999
    check-cast v6, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;

    .line 1000
    .line 1001
    iget-object v1, v6, Lflix/com/vision/api/torbox/TorBoxApiKeyEntryActivity;->n:LQ4/d;

    .line 1002
    .line 1003
    if-eqz v1, :cond_1d

    .line 1004
    .line 1005
    :try_start_1
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1006
    .line 1007
    .line 1008
    :catch_1
    :cond_1d
    move/from16 v1, v16

    .line 1009
    .line 1010
    const/16 v3, 0x50

    .line 1011
    .line 1012
    invoke-static {v6, v2, v15, v3, v1}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1013
    .line 1014
    .line 1015
    return-void

    .line 1016
    :pswitch_9
    move-object/from16 v1, p1

    .line 1017
    .line 1018
    check-cast v1, Ljava/lang/Throwable;

    .line 1019
    .line 1020
    sget v1, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->p:I

    .line 1021
    .line 1022
    check-cast v6, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;

    .line 1023
    .line 1024
    iget-object v1, v6, Lflix/com/vision/api/premiumize/PremApiKeyEntryActivity;->n:LQ4/d;

    .line 1025
    .line 1026
    if-eqz v1, :cond_1e

    .line 1027
    .line 1028
    :try_start_2
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1029
    .line 1030
    .line 1031
    :catch_2
    :cond_1e
    return-void

    .line 1032
    :pswitch_a
    move-object/from16 v1, p1

    .line 1033
    .line 1034
    check-cast v1, Ljava/lang/Throwable;

    .line 1035
    .line 1036
    sget v1, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->p:I

    .line 1037
    .line 1038
    check-cast v6, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;

    .line 1039
    .line 1040
    iget-object v1, v6, Lflix/com/vision/api/offcloud/OffCloudApiKeyEntryActivity;->n:LQ4/d;

    .line 1041
    .line 1042
    if-eqz v1, :cond_1f

    .line 1043
    .line 1044
    :try_start_3
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1045
    .line 1046
    .line 1047
    :catch_3
    :cond_1f
    const/4 v1, 0x1

    .line 1048
    const/16 v3, 0x50

    .line 1049
    .line 1050
    invoke-static {v6, v2, v15, v3, v1}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1051
    .line 1052
    .line 1053
    return-void

    .line 1054
    :pswitch_b
    move-object/from16 v1, p1

    .line 1055
    .line 1056
    check-cast v1, Ljava/lang/Throwable;

    .line 1057
    .line 1058
    sget v1, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;->p:I

    .line 1059
    .line 1060
    check-cast v6, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;

    .line 1061
    .line 1062
    iget-object v1, v6, Lflix/com/vision/api/alldebrid/AllDebridApiKeyEntryActivity;->n:LQ4/d;

    .line 1063
    .line 1064
    if-eqz v1, :cond_20

    .line 1065
    .line 1066
    :try_start_4
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1067
    .line 1068
    .line 1069
    :catch_4
    :cond_20
    return-void

    .line 1070
    nop

    .line 1071
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
