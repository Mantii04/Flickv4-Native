.class public final synthetic Ly4/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MovieDetailActivity;

.field public final synthetic f:Lflix/com/vision/models/Movie;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MovieDetailActivity;Lflix/com/vision/models/Movie;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/l0;->b:I

    iput-object p1, p0, Ly4/l0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    iput-object p2, p0, Ly4/l0;->f:Lflix/com/vision/models/Movie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "US"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Ly4/l0;->f:Lflix/com/vision/models/Movie;

    .line 5
    .line 6
    iget-object v3, p0, Ly4/l0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    .line 7
    .line 8
    iget v4, p0, Ly4/l0;->b:I

    .line 9
    .line 10
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 11
    .line 12
    packed-switch v4, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget v4, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v3}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {p1, v2, v0}, Lflix/com/vision/utils/JsonUtils;->parseRatingSeries(Lcom/google/gson/JsonElement;ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->C:Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->C:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 63
    .line 64
    iput-object p1, v0, Lflix/com/vision/models/Movie;->certification:Ljava/lang/String;

    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :pswitch_0
    sget v0, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getType()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_2

    .line 85
    .line 86
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->E0:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    .line 98
    .line 99
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->L:LC4/P;

    .line 100
    .line 101
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 102
    .line 103
    .line 104
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->S:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void

    .line 110
    :pswitch_1
    sget v4, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    :try_start_1
    invoke-virtual {v3}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :catch_1
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getType()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-static {p1, v2, v0}, Lflix/com/vision/utils/JsonUtils;->parseRating(Lcom/google/gson/JsonElement;ILjava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_4

    .line 144
    .line 145
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->C:Landroid/widget/TextView;

    .line 146
    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->C:Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    :cond_3
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 158
    .line 159
    iput-object p1, v0, Lflix/com/vision/models/Movie;->certification:Ljava/lang/String;

    .line 160
    .line 161
    :cond_4
    return-void

    .line 162
    :pswitch_2
    sget v0, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 163
    .line 164
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getType()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseMovieInfo(Lcom/google/gson/JsonElement;I)Lflix/com/vision/models/Movie;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    :try_start_2
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->released()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iput-boolean v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->N0:Z

    .line 177
    .line 178
    iget-object v2, p1, Lflix/com/vision/models/Movie;->raw_release_date:Ljava/lang/String;

    .line 179
    .line 180
    iput-object v2, v3, Lflix/com/vision/activities/MovieDetailActivity;->O0:Ljava/lang/String;

    .line 181
    .line 182
    if-nez v0, :cond_5

    .line 183
    .line 184
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->D:Landroid/widget/TextView;

    .line 185
    .line 186
    if-eqz v0, :cond_5

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->D:Landroid/widget/TextView;

    .line 192
    .line 193
    const-string v2, "  SOON"

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->D:Landroid/widget/TextView;

    .line 199
    .line 200
    invoke-virtual {v3}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    sget v4, Lflix/com/vision/R$color;->accent:I

    .line 205
    .line 206
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    .line 212
    .line 213
    :cond_5
    iget-boolean v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->N0:Z

    .line 214
    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 218
    .line 219
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_6

    .line 224
    .line 225
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 226
    .line 227
    invoke-virtual {v3, v0}, Lflix/com/vision/activities/MovieDetailActivity;->e(Lflix/com/vision/models/Movie;)V

    .line 228
    .line 229
    .line 230
    :cond_6
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->belongsToCollection()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_9

    .line 235
    .line 236
    iget-wide v4, p1, Lflix/com/vision/models/Movie;->collectionId:J

    .line 237
    .line 238
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->c0:Lio/reactivex/disposables/Disposable;

    .line 239
    .line 240
    if-eqz v0, :cond_7

    .line 241
    .line 242
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 243
    .line 244
    .line 245
    :cond_7
    invoke-static {v4, v5}, LD4/a;->getCollection(J)Lio/reactivex/Observable;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    new-instance v2, Ly4/m0;

    .line 266
    .line 267
    const/4 v4, 0x4

    .line 268
    invoke-direct {v2, v3, v4}, Ly4/m0;-><init>(Lflix/com/vision/activities/MovieDetailActivity;I)V

    .line 269
    .line 270
    .line 271
    new-instance v4, Lx4/d;

    .line 272
    .line 273
    const/16 v5, 0x13

    .line 274
    .line 275
    invoke-direct {v4, v5}, Lx4/d;-><init>(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iput-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->c0:Lio/reactivex/disposables/Disposable;

    .line 283
    .line 284
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->U:Landroidx/recyclerview/widget/RecyclerView;

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    iget-object v0, p1, Lflix/com/vision/models/Movie;->collectionName:Ljava/lang/String;

    .line 290
    .line 291
    if-nez v0, :cond_8

    .line 292
    .line 293
    const-string v0, "COLLECTION"

    .line 294
    .line 295
    iput-object v0, p1, Lflix/com/vision/models/Movie;->collectionName:Ljava/lang/String;

    .line 296
    .line 297
    :cond_8
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->B:Landroid/widget/TextView;

    .line 298
    .line 299
    iget-object v2, p1, Lflix/com/vision/models/Movie;->collectionName:Ljava/lang/String;

    .line 300
    .line 301
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 302
    .line 303
    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->B:Landroid/widget/TextView;

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    :cond_9
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->m0:Lio/github/giangpham96/expandable_textview/ExpandableTextView;

    .line 316
    .line 317
    if-eqz v0, :cond_a

    .line 318
    .line 319
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getOverview()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v0, v2}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->setOriginalText(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_a
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 327
    .line 328
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getOverview()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v0, v2}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 336
    .line 337
    iget-object v2, p1, Lflix/com/vision/models/Movie;->last_air_date:Ljava/lang/String;

    .line 338
    .line 339
    iput-object v2, v0, Lflix/com/vision/models/Movie;->last_air_date:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getType()I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    const/4 v2, 0x1

    .line 346
    if-ne v0, v2, :cond_b

    .line 347
    .line 348
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->r0:Landroid/widget/TextView;

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->n0:Landroid/widget/TextView;

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->n0:Landroid/widget/TextView;

    .line 359
    .line 360
    iget-object v1, p1, Lflix/com/vision/models/Movie;->created_by:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 363
    .line 364
    .line 365
    :cond_b
    :try_start_3
    new-instance v0, Ljava/text/DecimalFormat;

    .line 366
    .line 367
    const-string v1, "#.#"

    .line 368
    .line 369
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getRating()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 377
    .line 378
    .line 379
    move-result-wide v4

    .line 380
    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->x:Landroid/widget/TextView;

    .line 385
    .line 386
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 390
    .line 391
    if-eqz v0, :cond_c

    .line 392
    .line 393
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getRating()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setRating(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 398
    .line 399
    .line 400
    :catch_2
    :cond_c
    :try_start_4
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    iput-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->L0:Ljava/lang/String;

    .line 405
    .line 406
    if-eqz v0, :cond_d

    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-lez v0, :cond_d

    .line 413
    .line 414
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 415
    .line 416
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->L0:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setImdbID(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    :cond_d
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 422
    .line 423
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setSeason_count(I)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p1, Lflix/com/vision/models/Movie;->seasons:Ljava/util/ArrayList;

    .line 431
    .line 432
    if-eqz v0, :cond_e

    .line 433
    .line 434
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->J0:Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 437
    .line 438
    .line 439
    :cond_e
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 440
    .line 441
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setCover(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 449
    .line 450
    iget-object v1, p1, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;

    .line 451
    .line 452
    iput-object v1, v0, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 453
    .line 454
    :try_start_5
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 459
    .line 460
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-virtual {v0, v1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lm4/J;->fit()Lm4/J;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lm4/J;->centerCrop()Lm4/J;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->y0:Landroid/widget/ImageView;

    .line 477
    .line 478
    new-instance v4, Ly4/s0;

    .line 479
    .line 480
    invoke-direct {v4, v3}, Ly4/s0;-><init>(Lflix/com/vision/activities/MovieDetailActivity;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v1, v4}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 484
    .line 485
    .line 486
    goto :goto_0

    .line 487
    :catch_3
    move-exception v0

    .line 488
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 489
    .line 490
    .line 491
    :catch_4
    :goto_0
    :try_start_7
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getGenres()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 496
    .line 497
    iget-object v4, v1, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 498
    .line 499
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    if-nez v1, :cond_f

    .line 504
    .line 505
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-lez v1, :cond_f

    .line 510
    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 517
    .line 518
    .line 519
    move-result v5

    .line 520
    div-int/lit8 v5, v5, 0x3c

    .line 521
    .line 522
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v5, "h "

    .line 526
    .line 527
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    rem-int/lit8 v5, v5, 0x3c

    .line 535
    .line 536
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v5, "m"

    .line 540
    .line 541
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    goto :goto_1

    .line 549
    :cond_f
    const/4 v1, 0x0

    .line 550
    :goto_1
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 551
    .line 552
    .line 553
    move-result v5

    .line 554
    if-le v5, v2, :cond_10

    .line 555
    .line 556
    const-string v2, " seasons"

    .line 557
    .line 558
    goto :goto_2

    .line 559
    :cond_10
    const-string v2, " season"

    .line 560
    .line 561
    :goto_2
    invoke-static {v0}, Lh5/n;->removeTrailingColon(Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 565
    const-string v5, "  \u00b7  "

    .line 566
    .line 567
    if-eqz v1, :cond_11

    .line 568
    .line 569
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    :cond_11
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 588
    .line 589
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    if-eqz v1, :cond_12

    .line 594
    .line 595
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    if-lez v1, :cond_12

    .line 600
    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->o0:Landroid/widget/TextView;

    .line 645
    .line 646
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    .line 648
    .line 649
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 650
    .line 651
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 652
    .line 653
    .line 654
    move-result p1

    .line 655
    invoke-virtual {v0, p1}, Lflix/com/vision/models/Movie;->setDuration(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 656
    .line 657
    .line 658
    :catch_5
    return-void

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
