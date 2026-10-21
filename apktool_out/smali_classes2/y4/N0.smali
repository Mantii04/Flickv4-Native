.class public final synthetic Ly4/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SearchResultsActivity;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SearchResultsActivity;II)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/N0;->b:I

    iput-object p1, p0, Ly4/N0;->e:Lflix/com/vision/activities/SearchResultsActivity;

    iput p2, p0, Ly4/N0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Ly4/N0;->b:I

    .line 2
    .line 3
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ly4/N0;->e:Lflix/com/vision/activities/SearchResultsActivity;

    .line 9
    .line 10
    iget-object v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->E:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {p1, v1}, Lflix/com/vision/utils/JsonUtils;->parseSearchMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object v3, v0, Lflix/com/vision/activities/SearchResultsActivity;->w:Ljava/util/ArrayList;

    .line 27
    .line 28
    const-string v4, "Series \u00b7 "

    .line 29
    .line 30
    const-string v5, ""

    .line 31
    .line 32
    const-string v6, "+"

    .line 33
    .line 34
    const/16 v7, 0x64

    .line 35
    .line 36
    if-ge v2, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne p1, v7, :cond_0

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :goto_1
    iget-object v0, v0, Lflix/com/vision/activities/SearchResultsActivity;->f:Landroid/widget/TextView;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    iget v2, v0, Lflix/com/vision/activities/SearchResultsActivity;->s:I

    .line 111
    .line 112
    if-ne v1, v2, :cond_3

    .line 113
    .line 114
    iget-object v2, v0, Lflix/com/vision/activities/SearchResultsActivity;->u:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v8, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-nez v8, :cond_2

    .line 132
    .line 133
    iget-object p1, v0, Lflix/com/vision/activities/SearchResultsActivity;->F:LC4/P;

    .line 134
    .line 135
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    iget-object v8, v0, Lflix/com/vision/activities/SearchResultsActivity;->F:LC4/P;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    sub-int/2addr v2, v1

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    invoke-virtual {v8, v2, p1}, Lm1/V;->notifyItemRangeInserted(II)V

    .line 151
    .line 152
    .line 153
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-ne p1, v7, :cond_4

    .line 158
    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    goto :goto_4

    .line 179
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :goto_4
    const/4 v2, 0x5

    .line 196
    iget v3, p0, Ly4/N0;->f:I

    .line 197
    .line 198
    if-ge v3, v2, :cond_5

    .line 199
    .line 200
    add-int/2addr v3, v1

    .line 201
    invoke-virtual {v0, v3}, Lflix/com/vision/activities/SearchResultsActivity;->g(I)V

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_5
    iget-object v0, v0, Lflix/com/vision/activities/SearchResultsActivity;->f:Landroid/widget/TextView;

    .line 206
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    :goto_5
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Ly4/N0;->e:Lflix/com/vision/activities/SearchResultsActivity;

    .line 224
    .line 225
    iget-object v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->E:Landroid/widget/LinearLayout;

    .line 226
    .line 227
    const/16 v2, 0x8

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    const/4 v1, 0x0

    .line 233
    invoke-static {p1, v1}, Lflix/com/vision/utils/JsonUtils;->parseSearchMovies(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    iget-object v2, v0, Lflix/com/vision/activities/SearchResultsActivity;->t:Ljava/util/ArrayList;

    .line 242
    .line 243
    const-string v3, "Movies \u00b7 "

    .line 244
    .line 245
    const-string v4, ""

    .line 246
    .line 247
    const-string v5, "+"

    .line 248
    .line 249
    const/16 v6, 0x64

    .line 250
    .line 251
    const/4 v7, 0x1

    .line 252
    if-ge v1, v7, :cond_7

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-ne p1, v6, :cond_6

    .line 259
    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    :goto_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    goto :goto_7

    .line 280
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :goto_7
    iget-object v0, v0, Lflix/com/vision/activities/SearchResultsActivity;->j:Landroid/widget/TextView;

    .line 297
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_b

    .line 314
    .line 315
    :cond_7
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v1, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 324
    .line 325
    .line 326
    iget v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->s:I

    .line 327
    .line 328
    if-nez v1, :cond_9

    .line 329
    .line 330
    iget-object v1, v0, Lflix/com/vision/activities/SearchResultsActivity;->u:Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    invoke-virtual {v8, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    if-nez v8, :cond_8

    .line 348
    .line 349
    iget-object p1, v0, Lflix/com/vision/activities/SearchResultsActivity;->F:LC4/P;

    .line 350
    .line 351
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 352
    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_8
    iget-object v8, v0, Lflix/com/vision/activities/SearchResultsActivity;->F:LC4/P;

    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    sub-int/2addr v1, v7

    .line 362
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    invoke-virtual {v8, v1, p1}, Lm1/V;->notifyItemRangeInserted(II)V

    .line 367
    .line 368
    .line 369
    :cond_9
    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    if-ne p1, v6, :cond_a

    .line 374
    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    :goto_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    goto :goto_a

    .line 395
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    goto :goto_9

    .line 411
    :goto_a
    const/4 v1, 0x5

    .line 412
    iget v2, p0, Ly4/N0;->f:I

    .line 413
    .line 414
    if-ge v2, v1, :cond_b

    .line 415
    .line 416
    add-int/2addr v2, v7

    .line 417
    invoke-virtual {v0, v2}, Lflix/com/vision/activities/SearchResultsActivity;->e(I)V

    .line 418
    .line 419
    .line 420
    goto :goto_b

    .line 421
    :cond_b
    iget-object v0, v0, Lflix/com/vision/activities/SearchResultsActivity;->j:Landroid/widget/TextView;

    .line 422
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    :goto_b
    return-void

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
