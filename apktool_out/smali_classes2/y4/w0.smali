.class public final synthetic Ly4/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

.field public final synthetic f:Lflix/com/vision/models/Movie;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;Lflix/com/vision/models/Movie;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/w0;->b:I

    iput-object p1, p0, Ly4/w0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    iput-object p2, p0, Ly4/w0;->f:Lflix/com/vision/models/Movie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "US"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Ly4/w0;->f:Lflix/com/vision/models/Movie;

    .line 6
    .line 7
    iget-object v4, p0, Ly4/w0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 8
    .line 9
    iget v5, p0, Ly4/w0;->b:I

    .line 10
    .line 11
    packed-switch v5, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 15
    .line 16
    sget v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v4}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getType()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {p1, v0, v1}, Lflix/com/vision/utils/JsonUtils;->parseRatingSeries(Lcom/google/gson/JsonElement;ILjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->J:Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->J:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 64
    .line 65
    iput-object p1, v0, Lflix/com/vision/models/Movie;->certification:Ljava/lang/String;

    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :pswitch_0
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 69
    .line 70
    sget v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getType()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {p1, v0}, Lflix/com/vision/utils/JsonUtils;->parseListMovie(Lcom/google/gson/JsonElement;I)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    iget-object v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->M0:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, p1}, Lflix/com/vision/App;->filterList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    .line 102
    iget-object p1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->T:LC4/P;

    .line 103
    .line 104
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 105
    .line 106
    .line 107
    iget-object p1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a0:Landroidx/leanback/widget/HorizontalGridView;

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/t;->smoothScrollToPosition(I)V

    .line 110
    .line 111
    .line 112
    :cond_2
    return-void

    .line 113
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 114
    .line 115
    const/16 v1, 0x8

    .line 116
    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    sget v5, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_3

    .line 126
    .line 127
    iput-boolean v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->Y0:Z

    .line 128
    .line 129
    const-string v2, "https://image.tmdb.org/t/p/w500"

    .line 130
    .line 131
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-boolean v0, v3, Lflix/com/vision/models/Movie;->is_title_logo_available:Z

    .line 136
    .line 137
    iput-object p1, v3, Lflix/com/vision/models/Movie;->logoUrl:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K0:Lme/grantland/widget/AutofitTextView;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    :try_start_1
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, p1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 153
    .line 154
    new-instance v1, Ly4/C0;

    .line 155
    .line 156
    invoke-direct {v1, v4, v3}, Ly4/C0;-><init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;Lflix/com/vision/models/Movie;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0, v1}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_1
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_3
    iget-object p1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K0:Lme/grantland/widget/AutofitTextView;

    .line 174
    .line 175
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    :goto_0
    return-void

    .line 179
    :pswitch_2
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 180
    .line 181
    sget v1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 182
    .line 183
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getType()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-static {p1, v1}, Lflix/com/vision/utils/JsonUtils;->parseMovieInfo(Lcom/google/gson/JsonElement;I)Lflix/com/vision/models/Movie;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    :try_start_2
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 192
    .line 193
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getGenres()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v1, v3}, Lflix/com/vision/models/Movie;->setGenres(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 201
    .line 202
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getProduction()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v1, v3}, Lflix/com/vision/models/Movie;->setProduction(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 210
    .line 211
    iget-object v3, p1, Lflix/com/vision/models/Movie;->rawReleaseDate:Ljava/lang/String;

    .line 212
    .line 213
    iput-object v3, v1, Lflix/com/vision/models/Movie;->rawReleaseDate:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->released()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    iput-boolean v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->V0:Z

    .line 220
    .line 221
    iget-object v3, p1, Lflix/com/vision/models/Movie;->rawReleaseDate:Ljava/lang/String;

    .line 222
    .line 223
    iput-object v3, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->W0:Ljava/lang/String;

    .line 224
    .line 225
    if-nez v1, :cond_4

    .line 226
    .line 227
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K:Landroid/widget/TextView;

    .line 228
    .line 229
    if-eqz v1, :cond_4

    .line 230
    .line 231
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K:Landroid/widget/TextView;

    .line 235
    .line 236
    const-string v3, "  SOON"

    .line 237
    .line 238
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->K:Landroid/widget/TextView;

    .line 242
    .line 243
    invoke-virtual {v4}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    sget v5, Lflix/com/vision/R$color;->accent:I

    .line 248
    .line 249
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    :cond_4
    iget-boolean v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->V0:Z

    .line 257
    .line 258
    if-eqz v1, :cond_5

    .line 259
    .line 260
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 261
    .line 262
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-nez v1, :cond_5

    .line 267
    .line 268
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 269
    .line 270
    invoke-virtual {v4, v1}, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->e(Lflix/com/vision/models/Movie;)V

    .line 271
    .line 272
    .line 273
    :cond_5
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->belongsToCollection()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_8

    .line 278
    .line 279
    iget-wide v5, p1, Lflix/com/vision/models/Movie;->collectionId:J

    .line 280
    .line 281
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->k0:Lio/reactivex/disposables/Disposable;

    .line 282
    .line 283
    if-eqz v1, :cond_6

    .line 284
    .line 285
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 286
    .line 287
    .line 288
    :cond_6
    invoke-static {v5, v6}, LD4/a;->getCollection(J)Lio/reactivex/Observable;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    new-instance v3, Ly4/x0;

    .line 309
    .line 310
    const/4 v5, 0x3

    .line 311
    invoke-direct {v3, v4, v5}, Ly4/x0;-><init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V

    .line 312
    .line 313
    .line 314
    new-instance v5, Lx4/d;

    .line 315
    .line 316
    const/16 v6, 0x1b

    .line 317
    .line 318
    invoke-direct {v5, v6}, Lx4/d;-><init>(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v3, v5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    iput-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->k0:Lio/reactivex/disposables/Disposable;

    .line 326
    .line 327
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->c0:Landroidx/leanback/widget/HorizontalGridView;

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    iget-object v1, p1, Lflix/com/vision/models/Movie;->collectionName:Ljava/lang/String;

    .line 333
    .line 334
    if-nez v1, :cond_7

    .line 335
    .line 336
    const-string v1, "COLLECTION"

    .line 337
    .line 338
    iput-object v1, p1, Lflix/com/vision/models/Movie;->collectionName:Ljava/lang/String;

    .line 339
    .line 340
    :cond_7
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->I:Landroid/widget/TextView;

    .line 341
    .line 342
    iget-object v3, p1, Lflix/com/vision/models/Movie;->collectionName:Ljava/lang/String;

    .line 343
    .line 344
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 345
    .line 346
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .line 352
    .line 353
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->I:Landroid/widget/TextView;

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    :cond_8
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->u0:Lio/github/giangpham96/expandable_textview/ExpandableTextView;

    .line 359
    .line 360
    if-eqz v1, :cond_9

    .line 361
    .line 362
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getOverview()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v1, v3}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->setOriginalText(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_9
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 370
    .line 371
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getOverview()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v1, v3}, Lflix/com/vision/models/Movie;->setOverview(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getType()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-ne v1, v0, :cond_a

    .line 383
    .line 384
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->z0:Landroid/widget/TextView;

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v0:Landroid/widget/TextView;

    .line 390
    .line 391
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v0:Landroid/widget/TextView;

    .line 395
    .line 396
    iget-object v2, p1, Lflix/com/vision/models/Movie;->created_by:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 399
    .line 400
    .line 401
    :cond_a
    :try_start_3
    new-instance v1, Ljava/text/DecimalFormat;

    .line 402
    .line 403
    const-string v2, "#.#"

    .line 404
    .line 405
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getRating()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 413
    .line 414
    .line 415
    move-result-wide v2

    .line 416
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    iget-object v2, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->E:Landroid/widget/TextView;

    .line 421
    .line 422
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    .line 424
    .line 425
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 426
    .line 427
    if-eqz v1, :cond_b

    .line 428
    .line 429
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getRating()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-virtual {v1, v2}, Lflix/com/vision/models/Movie;->setRating(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 434
    .line 435
    .line 436
    :catch_2
    :cond_b
    :try_start_4
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    iput-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->T0:Ljava/lang/String;

    .line 441
    .line 442
    if-eqz v1, :cond_c

    .line 443
    .line 444
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    if-lez v1, :cond_c

    .line 449
    .line 450
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 451
    .line 452
    iget-object v2, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->T0:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v1, v2}, Lflix/com/vision/models/Movie;->setImdbID(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :cond_c
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 458
    .line 459
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    invoke-virtual {v1, v2}, Lflix/com/vision/models/Movie;->setSeason_count(I)V

    .line 464
    .line 465
    .line 466
    iget-object v1, p1, Lflix/com/vision/models/Movie;->seasons:Ljava/util/ArrayList;

    .line 467
    .line 468
    if-eqz v1, :cond_d

    .line 469
    .line 470
    iget-object v2, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->R0:Ljava/util/ArrayList;

    .line 471
    .line 472
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 473
    .line 474
    .line 475
    :cond_d
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 476
    .line 477
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-virtual {v1, v2}, Lflix/com/vision/models/Movie;->setCover(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 485
    .line 486
    iget-object v2, p1, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;

    .line 487
    .line 488
    iput-object v2, v1, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 489
    .line 490
    :try_start_5
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iget-object v2, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 495
    .line 496
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-virtual {v1, v2}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v1}, Lm4/J;->fit()Lm4/J;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-virtual {v1}, Lm4/J;->centerCrop()Lm4/J;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    iget-object v2, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->G0:Landroid/widget/ImageView;

    .line 513
    .line 514
    new-instance v3, Ly4/B0;

    .line 515
    .line 516
    invoke-direct {v3, v4}, Ly4/B0;-><init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v2, v3}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 520
    .line 521
    .line 522
    goto :goto_1

    .line 523
    :catch_3
    move-exception v1

    .line 524
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 525
    .line 526
    .line 527
    :catch_4
    :goto_1
    :try_start_7
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getGenres()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    iget-object v2, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 532
    .line 533
    iget-object v3, v2, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 534
    .line 535
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    if-nez v2, :cond_e

    .line 540
    .line 541
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-lez v2, :cond_e

    .line 546
    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 553
    .line 554
    .line 555
    move-result v5

    .line 556
    div-int/lit8 v5, v5, 0x3c

    .line 557
    .line 558
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    const-string v5, "h "

    .line 562
    .line 563
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    rem-int/lit8 v5, v5, 0x3c

    .line 571
    .line 572
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v5, "m"

    .line 576
    .line 577
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    goto :goto_2

    .line 585
    :cond_e
    const/4 v2, 0x0

    .line 586
    :goto_2
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 587
    .line 588
    .line 589
    move-result v5

    .line 590
    if-le v5, v0, :cond_f

    .line 591
    .line 592
    const-string v0, " seasons"

    .line 593
    .line 594
    goto :goto_3

    .line 595
    :cond_f
    const-string v0, " season"

    .line 596
    .line 597
    :goto_3
    invoke-static {v1}, Lh5/n;->removeTrailingColon(Ljava/lang/String;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 601
    const-string v5, "  \u00b7  "

    .line 602
    .line 603
    if-eqz v2, :cond_10

    .line 604
    .line 605
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    :cond_10
    iget-object v2, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 624
    .line 625
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-eqz v2, :cond_11

    .line 630
    .line 631
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    if-lez v2, :cond_11

    .line 636
    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    .line 638
    .line 639
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 649
    .line 650
    .line 651
    move-result v3

    .line 652
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    iget-object v1, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->w0:Landroid/widget/TextView;

    .line 681
    .line 682
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    .line 684
    .line 685
    iget-object v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 686
    .line 687
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 688
    .line 689
    .line 690
    move-result p1

    .line 691
    invoke-virtual {v0, p1}, Lflix/com/vision/models/Movie;->setDuration(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 692
    .line 693
    .line 694
    :catch_5
    return-void

    .line 695
    :pswitch_3
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 696
    .line 697
    sget v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 698
    .line 699
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    .line 701
    .line 702
    :try_start_9
    invoke-virtual {v4}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 711
    .line 712
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 716
    :catch_6
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getType()I

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    invoke-static {p1, v0, v1}, Lflix/com/vision/utils/JsonUtils;->parseRating(Lcom/google/gson/JsonElement;ILjava/lang/String;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object p1

    .line 724
    if-eqz p1, :cond_13

    .line 725
    .line 726
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 727
    .line 728
    .line 729
    move-result v0

    .line 730
    if-nez v0, :cond_13

    .line 731
    .line 732
    iget-object v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->J:Landroid/widget/TextView;

    .line 733
    .line 734
    if-eqz v0, :cond_12

    .line 735
    .line 736
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    .line 738
    .line 739
    iget-object v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->J:Landroid/widget/TextView;

    .line 740
    .line 741
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 742
    .line 743
    .line 744
    :cond_12
    iget-object v0, v4, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 745
    .line 746
    iput-object p1, v0, Lflix/com/vision/models/Movie;->certification:Ljava/lang/String;

    .line 747
    .line 748
    :cond_13
    return-void

    .line 749
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
