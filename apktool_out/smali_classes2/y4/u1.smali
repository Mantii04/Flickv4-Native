.class public final synthetic Ly4/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/UserTorrentsActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/UserTorrentsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/u1;->b:I

    iput-object p1, p0, Ly4/u1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Unknown"

    .line 4
    .line 5
    const-string v2, "]"

    .line 6
    .line 7
    const-string v3, "link"

    .line 8
    .line 9
    const-string v4, "links"

    .line 10
    .line 11
    const-string v5, "filename"

    .line 12
    .line 13
    const-string v6, "magnets"

    .line 14
    .line 15
    const-string v7, "name"

    .line 16
    .line 17
    const-string v10, "size"

    .line 18
    .line 19
    const-string v11, "id"

    .line 20
    .line 21
    const-string v12, "data"

    .line 22
    .line 23
    const-string v13, ""

    .line 24
    .line 25
    const-string v14, "success"

    .line 26
    .line 27
    const-string v15, "status"

    .line 28
    .line 29
    const-wide/16 v16, 0x0

    .line 30
    .line 31
    iget-object v8, v1, Ly4/u1;->e:Lflix/com/vision/activities/UserTorrentsActivity;

    .line 32
    .line 33
    iget v9, v1, Ly4/u1;->b:I

    .line 34
    .line 35
    packed-switch v9, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    move-object/from16 v0, p1

    .line 39
    .line 40
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 41
    .line 42
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 43
    .line 44
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v2, 0x0

    .line 84
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object v4, v8, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 89
    .line 90
    if-ge v2, v3, :cond_0

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 113
    .line 114
    .line 115
    move-result-wide v16

    .line 116
    invoke-static/range {v16 .. v17}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    invoke-virtual {v3, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    new-instance v14, Lflix/com/vision/models/torrent/UserTorrent;

    .line 137
    .line 138
    invoke-direct {v14}, Lflix/com/vision/models/torrent/UserTorrent;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v3, v14, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v9, v14, Lflix/com/vision/models/torrent/UserTorrent;->file_size_label:Ljava/lang/String;

    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    iput-object v3, v14, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 161
    .line 162
    sget-object v3, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->f:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 163
    .line 164
    iput-object v3, v14, Lflix/com/vision/models/torrent/UserTorrent;->source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 165
    .line 166
    iput-object v12, v14, Lflix/com/vision/models/torrent/UserTorrent;->filename:Ljava/lang/String;

    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    iput-boolean v3, v14, Lflix/com/vision/models/torrent/UserTorrent;->is_all_debrid:Z

    .line 170
    .line 171
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    add-int/2addr v2, v3

    .line 175
    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-lez v0, :cond_1

    .line 181
    .line 182
    iget-object v0, v8, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 183
    .line 184
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 185
    .line 186
    .line 187
    :cond_1
    return-void

    .line 188
    :pswitch_0
    move-object/from16 v0, p1

    .line 189
    .line 190
    check-cast v0, Ljava/lang/Throwable;

    .line 191
    .line 192
    sget v0, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 193
    .line 194
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_1
    move-object/from16 v0, p1

    .line 199
    .line 200
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 201
    .line 202
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 203
    .line 204
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-nez v2, :cond_2

    .line 224
    .line 225
    const-string v0, "Error getting torrent links from Premiumize Server"

    .line 226
    .line 227
    const/4 v2, 0x0

    .line 228
    invoke-static {v8, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_2
    const-string v2, "transfers"

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const/4 v2, 0x0

    .line 247
    :goto_1
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    iget-object v4, v8, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 252
    .line 253
    if-ge v2, v3, :cond_3

    .line 254
    .line 255
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    new-instance v5, Lflix/com/vision/models/torrent/UserTorrent;

    .line 264
    .line 265
    invoke-direct {v5}, Lflix/com/vision/models/torrent/UserTorrent;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    iput-object v6, v5, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    iput-object v6, v5, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 287
    .line 288
    sget-object v6, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->e:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 289
    .line 290
    iput-object v6, v5, Lflix/com/vision/models/torrent/UserTorrent;->source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 291
    .line 292
    iget-object v6, v5, Lflix/com/vision/models/torrent/UserTorrent;->src:Ljava/util/ArrayList;

    .line 293
    .line 294
    const-string v9, "src"

    .line 295
    .line 296
    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    iput-object v3, v5, Lflix/com/vision/models/torrent/UserTorrent;->filename:Ljava/lang/String;

    .line 316
    .line 317
    const/4 v3, 0x1

    .line 318
    iput-boolean v3, v5, Lflix/com/vision/models/torrent/UserTorrent;->is_premiumize:Z

    .line 319
    .line 320
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    add-int/2addr v2, v3

    .line 324
    goto :goto_1

    .line 325
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-lez v0, :cond_4

    .line 330
    .line 331
    iget-object v0, v8, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 332
    .line 333
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 334
    .line 335
    .line 336
    :cond_4
    :goto_2
    return-void

    .line 337
    :pswitch_2
    move-object/from16 v0, p1

    .line 338
    .line 339
    check-cast v0, Ljava/lang/Throwable;

    .line 340
    .line 341
    sget v0, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 342
    .line 343
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :pswitch_3
    move-object/from16 v0, p1

    .line 348
    .line 349
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 350
    .line 351
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 352
    .line 353
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const/4 v2, 0x0

    .line 361
    :goto_3
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    iget-object v6, v8, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 366
    .line 367
    if-ge v2, v3, :cond_7

    .line 368
    .line 369
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    new-instance v7, Lflix/com/vision/models/torrent/UserTorrent;

    .line 378
    .line 379
    invoke-direct {v7}, Lflix/com/vision/models/torrent/UserTorrent;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v9, "bytes"

    .line 383
    .line 384
    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 389
    .line 390
    .line 391
    move-result-wide v9

    .line 392
    iput-wide v9, v7, Lflix/com/vision/models/torrent/UserTorrent;->filesize:J

    .line 393
    .line 394
    const-string v9, "host"

    .line 395
    .line 396
    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v9

    .line 404
    iput-object v9, v7, Lflix/com/vision/models/torrent/UserTorrent;->host:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 407
    .line 408
    .line 409
    move-result-object v9

    .line 410
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    iput-object v9, v7, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 415
    .line 416
    iget-wide v9, v7, Lflix/com/vision/models/torrent/UserTorrent;->filesize:J

    .line 417
    .line 418
    const-wide/32 v12, 0xf4240

    .line 419
    .line 420
    .line 421
    cmp-long v12, v9, v12

    .line 422
    .line 423
    if-lez v12, :cond_5

    .line 424
    .line 425
    invoke-static {v9, v10}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v9

    .line 429
    iput-object v9, v7, Lflix/com/vision/models/torrent/UserTorrent;->file_size_label:Ljava/lang/String;

    .line 430
    .line 431
    :cond_5
    invoke-virtual {v3, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v9

    .line 439
    iput-object v9, v7, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 442
    .line 443
    .line 444
    move-result-object v9

    .line 445
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    iput-object v9, v7, Lflix/com/vision/models/torrent/UserTorrent;->filename:Ljava/lang/String;

    .line 450
    .line 451
    sget-object v9, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->b:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 452
    .line 453
    iput-object v9, v7, Lflix/com/vision/models/torrent/UserTorrent;->source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 454
    .line 455
    iget-object v9, v7, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 456
    .line 457
    if-eqz v9, :cond_6

    .line 458
    .line 459
    const-string v10, "error"

    .line 460
    .line 461
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v9

    .line 465
    if-nez v9, :cond_6

    .line 466
    .line 467
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    if-lez v9, :cond_6

    .line 480
    .line 481
    const/4 v9, 0x0

    .line 482
    :goto_4
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    .line 483
    .line 484
    .line 485
    move-result v10

    .line 486
    if-ge v9, v10, :cond_6

    .line 487
    .line 488
    iget-object v10, v7, Lflix/com/vision/models/torrent/UserTorrent;->src:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-virtual {v3, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 491
    .line 492
    .line 493
    move-result-object v12

    .line 494
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v12

    .line 498
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    const/16 v18, 0x1

    .line 502
    .line 503
    add-int/lit8 v9, v9, 0x1

    .line 504
    .line 505
    goto :goto_4

    .line 506
    :cond_6
    const/16 v18, 0x1

    .line 507
    .line 508
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    add-int/lit8 v2, v2, 0x1

    .line 512
    .line 513
    goto/16 :goto_3

    .line 514
    .line 515
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-lez v0, :cond_8

    .line 520
    .line 521
    iget-object v0, v8, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 522
    .line 523
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 524
    .line 525
    .line 526
    :cond_8
    return-void

    .line 527
    :pswitch_4
    move-object/from16 v0, p1

    .line 528
    .line 529
    check-cast v0, Ljava/lang/Throwable;

    .line 530
    .line 531
    sget v0, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 532
    .line 533
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 534
    .line 535
    .line 536
    const-string v0, "Failed to connect to Torbox API."

    .line 537
    .line 538
    const/4 v2, 0x0

    .line 539
    invoke-static {v8, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :pswitch_5
    move-object/from16 v0, p1

    .line 548
    .line 549
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 550
    .line 551
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 552
    .line 553
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 554
    .line 555
    .line 556
    invoke-static {v0}, Lflix/com/vision/utils/JsonUtils;->parseRDVideo(Lcom/google/gson/JsonElement;)Lflix/com/vision/models/VideoSource;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    if-eqz v0, :cond_9

    .line 561
    .line 562
    invoke-static {v0}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 563
    .line 564
    .line 565
    :cond_9
    iget-object v2, v8, Lflix/com/vision/activities/UserTorrentsActivity;->x:Ljava/util/ArrayList;

    .line 566
    .line 567
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    invoke-virtual {v8, v2}, Lflix/com/vision/activities/UserTorrentsActivity;->e(Ljava/util/ArrayList;)V

    .line 571
    .line 572
    .line 573
    return-void

    .line 574
    :pswitch_6
    move-object/from16 v0, p1

    .line 575
    .line 576
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 577
    .line 578
    sget v4, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 579
    .line 580
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v4

    .line 595
    if-eqz v4, :cond_d

    .line 596
    .line 597
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    if-eqz v4, :cond_d

    .line 602
    .line 603
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    const-string v4, "filesize"

    .line 620
    .line 621
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 626
    .line 627
    .line 628
    move-result-wide v4

    .line 629
    const-wide/32 v6, 0x5f5e100

    .line 630
    .line 631
    .line 632
    cmp-long v0, v4, v6

    .line 633
    .line 634
    if-gez v0, :cond_a

    .line 635
    .line 636
    goto :goto_5

    .line 637
    :cond_a
    cmp-long v0, v4, v16

    .line 638
    .line 639
    if-eqz v0, :cond_b

    .line 640
    .line 641
    const-wide/16 v6, -0x1

    .line 642
    .line 643
    cmp-long v0, v4, v6

    .line 644
    .line 645
    if-eqz v0, :cond_b

    .line 646
    .line 647
    invoke-static {v4, v5}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v13

    .line 651
    :cond_b
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 652
    .line 653
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 654
    .line 655
    .line 656
    const/4 v4, 0x1

    .line 657
    iput-boolean v4, v0, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 658
    .line 659
    const-string v5, "[ALLDEBRID] [FAST] ["

    .line 660
    .line 661
    invoke-static {v5, v13, v2}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    iput-object v2, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 666
    .line 667
    iput-object v3, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 668
    .line 669
    iput-boolean v4, v0, Lflix/com/vision/models/VideoSource;->isAllDebrid:Z

    .line 670
    .line 671
    invoke-static {v0}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 672
    .line 673
    .line 674
    iget v2, v0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 675
    .line 676
    if-nez v2, :cond_c

    .line 677
    .line 678
    const/16 v2, 0x12c

    .line 679
    .line 680
    iput v2, v0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 681
    .line 682
    :cond_c
    iget-object v2, v8, Lflix/com/vision/activities/UserTorrentsActivity;->x:Ljava/util/ArrayList;

    .line 683
    .line 684
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    :cond_d
    :goto_5
    return-void

    .line 688
    :pswitch_7
    move-object/from16 v0, p1

    .line 689
    .line 690
    check-cast v0, Ljava/lang/Throwable;

    .line 691
    .line 692
    sget v0, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 693
    .line 694
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 695
    .line 696
    .line 697
    const-string v0, "Failed to explore Offcloud files."

    .line 698
    .line 699
    const/4 v2, 0x0

    .line 700
    invoke-static {v8, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 705
    .line 706
    .line 707
    return-void

    .line 708
    :pswitch_8
    move-object/from16 v0, p1

    .line 709
    .line 710
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 711
    .line 712
    sget v3, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 713
    .line 714
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    .line 718
    .line 719
    .line 720
    move-result v3

    .line 721
    if-eqz v3, :cond_e

    .line 722
    .line 723
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    const-string v4, "files"

    .line 728
    .line 729
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    if-eqz v3, :cond_e

    .line 734
    .line 735
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    goto :goto_6

    .line 744
    :cond_e
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    if-eqz v3, :cond_f

    .line 749
    .line 750
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    goto :goto_6

    .line 755
    :cond_f
    const/4 v0, 0x0

    .line 756
    :goto_6
    if-eqz v0, :cond_18

    .line 757
    .line 758
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 759
    .line 760
    .line 761
    move-result v3

    .line 762
    if-lez v3, :cond_18

    .line 763
    .line 764
    const/4 v3, 0x0

    .line 765
    :goto_7
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 766
    .line 767
    .line 768
    move-result v4

    .line 769
    iget-object v5, v8, Lflix/com/vision/activities/UserTorrentsActivity;->x:Ljava/util/ArrayList;

    .line 770
    .line 771
    if-ge v3, v4, :cond_15

    .line 772
    .line 773
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 782
    .line 783
    .line 784
    move-result v6

    .line 785
    if-eqz v6, :cond_10

    .line 786
    .line 787
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 788
    .line 789
    .line 790
    move-result-object v6

    .line 791
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v6

    .line 795
    goto :goto_8

    .line 796
    :cond_10
    const-string v6, "File "

    .line 797
    .line 798
    invoke-static {v3, v6}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v6

    .line 802
    :goto_8
    const-string v9, "url"

    .line 803
    .line 804
    invoke-virtual {v4, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 805
    .line 806
    .line 807
    move-result v11

    .line 808
    if-eqz v11, :cond_11

    .line 809
    .line 810
    invoke-virtual {v4, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 811
    .line 812
    .line 813
    move-result-object v9

    .line 814
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v9

    .line 818
    goto :goto_9

    .line 819
    :cond_11
    move-object v9, v13

    .line 820
    :goto_9
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v11

    .line 824
    const-string v12, ".mp4"

    .line 825
    .line 826
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 827
    .line 828
    .line 829
    move-result v11

    .line 830
    if-nez v11, :cond_13

    .line 831
    .line 832
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v11

    .line 836
    const-string v12, ".mkv"

    .line 837
    .line 838
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 839
    .line 840
    .line 841
    move-result v11

    .line 842
    if-nez v11, :cond_13

    .line 843
    .line 844
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v11

    .line 848
    const-string v12, ".avi"

    .line 849
    .line 850
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 851
    .line 852
    .line 853
    move-result v11

    .line 854
    if-eqz v11, :cond_12

    .line 855
    .line 856
    goto :goto_a

    .line 857
    :cond_12
    const/4 v14, 0x1

    .line 858
    goto :goto_c

    .line 859
    :cond_13
    :goto_a
    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 860
    .line 861
    .line 862
    move-result v11

    .line 863
    if-eqz v11, :cond_14

    .line 864
    .line 865
    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 866
    .line 867
    .line 868
    move-result-object v4

    .line 869
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 870
    .line 871
    .line 872
    move-result-wide v11

    .line 873
    goto :goto_b

    .line 874
    :cond_14
    move-wide/from16 v11, v16

    .line 875
    .line 876
    :goto_b
    new-instance v4, Lflix/com/vision/models/VideoSource;

    .line 877
    .line 878
    invoke-direct {v4}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 879
    .line 880
    .line 881
    const/4 v14, 0x1

    .line 882
    iput-boolean v14, v4, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 883
    .line 884
    const-string v15, " ["

    .line 885
    .line 886
    invoke-static {v6, v15}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    move-result-object v15

    .line 890
    invoke-static {v11, v12}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v11

    .line 894
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v11

    .line 904
    iput-object v11, v4, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 905
    .line 906
    iput-object v9, v4, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 907
    .line 908
    iput-object v6, v4, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 909
    .line 910
    iput-boolean v14, v4, Lflix/com/vision/models/VideoSource;->isOffCloud:Z

    .line 911
    .line 912
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    :goto_c
    add-int/2addr v3, v14

    .line 916
    goto/16 :goto_7

    .line 917
    .line 918
    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 919
    .line 920
    .line 921
    move-result v0

    .line 922
    if-lez v0, :cond_17

    .line 923
    .line 924
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 925
    .line 926
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 930
    .line 931
    .line 932
    move-result-object v2

    .line 933
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 934
    .line 935
    .line 936
    move-result v3

    .line 937
    if-eqz v3, :cond_16

    .line 938
    .line 939
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v3

    .line 943
    check-cast v3, Lflix/com/vision/models/VideoSource;

    .line 944
    .line 945
    iget-object v3, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 946
    .line 947
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    .line 949
    .line 950
    goto :goto_d

    .line 951
    :catch_0
    move-exception v0

    .line 952
    goto :goto_e

    .line 953
    :cond_16
    const/4 v2, 0x0

    .line 954
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 955
    .line 956
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    check-cast v0, [Ljava/lang/CharSequence;

    .line 961
    .line 962
    new-instance v2, Le/r;

    .line 963
    .line 964
    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 965
    .line 966
    sget v4, Lflix/com/vision/R$style;->AlertDialogNoHeader:I

    .line 967
    .line 968
    invoke-direct {v3, v8, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 969
    .line 970
    .line 971
    invoke-direct {v2, v3}, Le/r;-><init>(Landroid/content/Context;)V

    .line 972
    .line 973
    .line 974
    new-instance v3, Ly4/w1;

    .line 975
    .line 976
    const/4 v4, 0x2

    .line 977
    invoke-direct {v3, v8, v5, v4}, Ly4/w1;-><init>(Lflix/com/vision/activities/UserTorrentsActivity;Ljava/util/ArrayList;I)V

    .line 978
    .line 979
    .line 980
    const/4 v4, -0x1

    .line 981
    invoke-virtual {v2, v0, v4, v3}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 982
    .line 983
    .line 984
    const/4 v3, 0x1

    .line 985
    invoke-virtual {v2, v3}, Le/r;->setCancelable(Z)Le/r;

    .line 986
    .line 987
    .line 988
    invoke-virtual {v2}, Le/r;->show()Le/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    .line 990
    .line 991
    goto :goto_f

    .line 992
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 993
    .line 994
    .line 995
    goto :goto_f

    .line 996
    :cond_17
    const-string v0, "No playable video files found."

    .line 997
    .line 998
    const/4 v2, 0x0

    .line 999
    invoke-static {v8, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1004
    .line 1005
    .line 1006
    :cond_18
    :goto_f
    return-void

    .line 1007
    :pswitch_9
    move-object/from16 v0, p1

    .line 1008
    .line 1009
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 1010
    .line 1011
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 1012
    .line 1013
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    invoke-virtual {v0, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v2

    .line 1024
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v2

    .line 1028
    if-eqz v2, :cond_1b

    .line 1029
    .line 1030
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v2

    .line 1034
    if-eqz v2, :cond_1b

    .line 1035
    .line 1036
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    const/4 v2, 0x0

    .line 1061
    :goto_10
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 1062
    .line 1063
    .line 1064
    move-result v4

    .line 1065
    if-ge v2, v4, :cond_1a

    .line 1066
    .line 1067
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v4

    .line 1071
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v4

    .line 1075
    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v5

    .line 1079
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 1080
    .line 1081
    .line 1082
    move-result-wide v5

    .line 1083
    const-wide/32 v11, 0x1a0684

    .line 1084
    .line 1085
    .line 1086
    cmp-long v5, v5, v11

    .line 1087
    .line 1088
    if-lez v5, :cond_19

    .line 1089
    .line 1090
    invoke-virtual {v4, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v4

    .line 1094
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v4

    .line 1098
    invoke-virtual {v8, v4}, Lflix/com/vision/activities/UserTorrentsActivity;->unlockLinkAllRebrid(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    :cond_19
    const/16 v18, 0x1

    .line 1102
    .line 1103
    add-int/lit8 v2, v2, 0x1

    .line 1104
    .line 1105
    goto :goto_10

    .line 1106
    :cond_1a
    iget-object v0, v8, Lflix/com/vision/activities/UserTorrentsActivity;->x:Ljava/util/ArrayList;

    .line 1107
    .line 1108
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1109
    .line 1110
    .line 1111
    move-result v0

    .line 1112
    if-nez v0, :cond_1b

    .line 1113
    .line 1114
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 1115
    .line 1116
    .line 1117
    const-string v0, "Not available to stream"

    .line 1118
    .line 1119
    const/4 v2, 0x0

    .line 1120
    invoke-static {v8, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v0

    .line 1124
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1125
    .line 1126
    .line 1127
    :cond_1b
    return-void

    .line 1128
    :pswitch_a
    move-object/from16 v0, p1

    .line 1129
    .line 1130
    check-cast v0, Ljava/lang/Throwable;

    .line 1131
    .line 1132
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 1133
    .line 1134
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1138
    .line 1139
    .line 1140
    return-void

    .line 1141
    :pswitch_b
    move-object/from16 v2, p1

    .line 1142
    .line 1143
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 1144
    .line 1145
    sget v3, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 1146
    .line 1147
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v3

    .line 1154
    if-eqz v3, :cond_22

    .line 1155
    .line 1156
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    const/4 v3, 0x0

    .line 1161
    :goto_11
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    .line 1162
    .line 1163
    .line 1164
    move-result v4

    .line 1165
    iget-object v5, v8, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 1166
    .line 1167
    if-ge v3, v4, :cond_21

    .line 1168
    .line 1169
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v4

    .line 1173
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v4

    .line 1177
    new-instance v6, Lflix/com/vision/models/torrent/UserTorrent;

    .line 1178
    .line 1179
    invoke-direct {v6}, Lflix/com/vision/models/torrent/UserTorrent;-><init>()V

    .line 1180
    .line 1181
    .line 1182
    const-string v7, "requestId"

    .line 1183
    .line 1184
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 1185
    .line 1186
    .line 1187
    move-result v9

    .line 1188
    if-eqz v9, :cond_1c

    .line 1189
    .line 1190
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v7

    .line 1194
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v7

    .line 1198
    goto :goto_12

    .line 1199
    :cond_1c
    move-object v7, v13

    .line 1200
    :goto_12
    iput-object v7, v6, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 1201
    .line 1202
    const-string v7, "fileName"

    .line 1203
    .line 1204
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v9

    .line 1208
    if-eqz v9, :cond_1d

    .line 1209
    .line 1210
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v7

    .line 1214
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v7

    .line 1218
    goto :goto_13

    .line 1219
    :cond_1d
    move-object v7, v0

    .line 1220
    :goto_13
    iput-object v7, v6, Lflix/com/vision/models/torrent/UserTorrent;->filename:Ljava/lang/String;

    .line 1221
    .line 1222
    invoke-virtual {v4, v15}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v7

    .line 1226
    if-eqz v7, :cond_1e

    .line 1227
    .line 1228
    invoke-virtual {v4, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v7

    .line 1232
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v7

    .line 1236
    goto :goto_14

    .line 1237
    :cond_1e
    move-object v7, v13

    .line 1238
    :goto_14
    iput-object v7, v6, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 1239
    .line 1240
    const-string v7, "fileSize"

    .line 1241
    .line 1242
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v9

    .line 1246
    if-eqz v9, :cond_1f

    .line 1247
    .line 1248
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v4

    .line 1252
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 1253
    .line 1254
    .line 1255
    move-result-wide v9

    .line 1256
    goto :goto_15

    .line 1257
    :cond_1f
    move-wide/from16 v9, v16

    .line 1258
    .line 1259
    :goto_15
    iput-wide v9, v6, Lflix/com/vision/models/torrent/UserTorrent;->filesize:J

    .line 1260
    .line 1261
    cmp-long v4, v9, v16

    .line 1262
    .line 1263
    if-lez v4, :cond_20

    .line 1264
    .line 1265
    invoke-static {v9, v10}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v4

    .line 1269
    iput-object v4, v6, Lflix/com/vision/models/torrent/UserTorrent;->file_size_label:Ljava/lang/String;

    .line 1270
    .line 1271
    :cond_20
    sget-object v4, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->m:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 1272
    .line 1273
    iput-object v4, v6, Lflix/com/vision/models/torrent/UserTorrent;->source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 1274
    .line 1275
    const/4 v4, 0x0

    .line 1276
    iput-boolean v4, v6, Lflix/com/vision/models/torrent/UserTorrent;->streamable:Z

    .line 1277
    .line 1278
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    .line 1280
    .line 1281
    const/16 v18, 0x1

    .line 1282
    .line 1283
    add-int/lit8 v3, v3, 0x1

    .line 1284
    .line 1285
    goto :goto_11

    .line 1286
    :cond_21
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    if-lez v0, :cond_22

    .line 1291
    .line 1292
    iget-object v0, v8, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 1293
    .line 1294
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 1295
    .line 1296
    .line 1297
    :cond_22
    return-void

    .line 1298
    :pswitch_c
    move-object/from16 v0, p1

    .line 1299
    .line 1300
    check-cast v0, Ljava/lang/Throwable;

    .line 1301
    .line 1302
    sget v2, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 1303
    .line 1304
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1308
    .line 1309
    .line 1310
    return-void

    .line 1311
    :pswitch_d
    move-object/from16 v2, p1

    .line 1312
    .line 1313
    check-cast v2, Lcom/google/gson/JsonElement;

    .line 1314
    .line 1315
    sget v3, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 1316
    .line 1317
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v2

    .line 1324
    invoke-virtual {v2, v14}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 1325
    .line 1326
    .line 1327
    move-result v3

    .line 1328
    if-eqz v3, :cond_29

    .line 1329
    .line 1330
    invoke-virtual {v2, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v3

    .line 1334
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 1335
    .line 1336
    .line 1337
    move-result v3

    .line 1338
    if-eqz v3, :cond_29

    .line 1339
    .line 1340
    invoke-virtual {v2, v12}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    const/4 v3, 0x0

    .line 1345
    :goto_16
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    .line 1346
    .line 1347
    .line 1348
    move-result v4

    .line 1349
    iget-object v5, v8, Lflix/com/vision/activities/UserTorrentsActivity;->b:Ljava/util/ArrayList;

    .line 1350
    .line 1351
    if-ge v3, v4, :cond_28

    .line 1352
    .line 1353
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v4

    .line 1357
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v4

    .line 1361
    new-instance v6, Lflix/com/vision/models/torrent/UserTorrent;

    .line 1362
    .line 1363
    invoke-direct {v6}, Lflix/com/vision/models/torrent/UserTorrent;-><init>()V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v4, v11}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 1367
    .line 1368
    .line 1369
    move-result v9

    .line 1370
    if-eqz v9, :cond_23

    .line 1371
    .line 1372
    invoke-virtual {v4, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v9

    .line 1376
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v9

    .line 1380
    goto :goto_17

    .line 1381
    :cond_23
    move-object v9, v13

    .line 1382
    :goto_17
    iput-object v9, v6, Lflix/com/vision/models/torrent/UserTorrent;->file_id:Ljava/lang/String;

    .line 1383
    .line 1384
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 1385
    .line 1386
    .line 1387
    move-result v9

    .line 1388
    if-eqz v9, :cond_24

    .line 1389
    .line 1390
    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v9

    .line 1394
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v9

    .line 1398
    goto :goto_18

    .line 1399
    :cond_24
    move-object v9, v0

    .line 1400
    :goto_18
    iput-object v9, v6, Lflix/com/vision/models/torrent/UserTorrent;->filename:Ljava/lang/String;

    .line 1401
    .line 1402
    const-string v9, "download_state"

    .line 1403
    .line 1404
    invoke-virtual {v4, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v12

    .line 1408
    if-eqz v12, :cond_25

    .line 1409
    .line 1410
    invoke-virtual {v4, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v9

    .line 1414
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v9

    .line 1418
    goto :goto_19

    .line 1419
    :cond_25
    move-object v9, v13

    .line 1420
    :goto_19
    iput-object v9, v6, Lflix/com/vision/models/torrent/UserTorrent;->status:Ljava/lang/String;

    .line 1421
    .line 1422
    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    .line 1423
    .line 1424
    .line 1425
    move-result v9

    .line 1426
    if-eqz v9, :cond_26

    .line 1427
    .line 1428
    invoke-virtual {v4, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v4

    .line 1432
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 1433
    .line 1434
    .line 1435
    move-result-wide v14

    .line 1436
    goto :goto_1a

    .line 1437
    :cond_26
    move-wide/from16 v14, v16

    .line 1438
    .line 1439
    :goto_1a
    iput-wide v14, v6, Lflix/com/vision/models/torrent/UserTorrent;->filesize:J

    .line 1440
    .line 1441
    cmp-long v4, v14, v16

    .line 1442
    .line 1443
    if-lez v4, :cond_27

    .line 1444
    .line 1445
    invoke-static {v14, v15}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v4

    .line 1449
    iput-object v4, v6, Lflix/com/vision/models/torrent/UserTorrent;->file_size_label:Ljava/lang/String;

    .line 1450
    .line 1451
    :cond_27
    sget-object v4, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->j:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 1452
    .line 1453
    iput-object v4, v6, Lflix/com/vision/models/torrent/UserTorrent;->source_type:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 1454
    .line 1455
    const/4 v4, 0x0

    .line 1456
    iput-boolean v4, v6, Lflix/com/vision/models/torrent/UserTorrent;->streamable:Z

    .line 1457
    .line 1458
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    .line 1460
    .line 1461
    const/16 v18, 0x1

    .line 1462
    .line 1463
    add-int/lit8 v3, v3, 0x1

    .line 1464
    .line 1465
    goto :goto_16

    .line 1466
    :cond_28
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1467
    .line 1468
    .line 1469
    move-result v0

    .line 1470
    if-lez v0, :cond_29

    .line 1471
    .line 1472
    iget-object v0, v8, Lflix/com/vision/activities/UserTorrentsActivity;->r:LC4/h0;

    .line 1473
    .line 1474
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 1475
    .line 1476
    .line 1477
    :cond_29
    return-void

    .line 1478
    :pswitch_e
    move-object/from16 v0, p1

    .line 1479
    .line 1480
    check-cast v0, Ljava/lang/Throwable;

    .line 1481
    .line 1482
    sget v0, Lflix/com/vision/activities/UserTorrentsActivity;->y:I

    .line 1483
    .line 1484
    invoke-virtual {v8}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 1485
    .line 1486
    .line 1487
    return-void

    .line 1488
    nop

    .line 1489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
