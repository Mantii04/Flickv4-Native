.class public final synthetic LA4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LW4/e;LW4/d;)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    iput p1, p0, LA4/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LA4/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, LA4/g;->b:I

    iput-object p1, p0, LA4/g;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const v1, 0x3f828f5c    # 1.02f

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x64

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, p0, LA4/g;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iget v6, p0, LA4/g;->b:I

    .line 12
    .line 13
    packed-switch v6, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Lflix/com/vision/activities/TraktTvConfigActivity;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-object p1, v5, Lflix/com/vision/activities/TraktTvConfigActivity;->x:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v5}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, v5, Lflix/com/vision/activities/TraktTvConfigActivity;->x:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v5}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :pswitch_0
    check-cast v5, Lflix/com/vision/activities/DramaDetailActivity;

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    iget-object p1, v5, Lflix/com/vision/activities/DramaDetailActivity;->b:Landroid/widget/ImageView;

    .line 57
    .line 58
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 59
    .line 60
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 61
    .line 62
    invoke-static {v5, v0}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 67
    .line 68
    invoke-direct {p2, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v5, Lflix/com/vision/activities/DramaDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 75
    .line 76
    invoke-static {p1, v2, v3, v1}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v5, Lflix/com/vision/activities/DramaDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 80
    .line 81
    invoke-static {p1, v2, v3, v1}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-object p1, v5, Lflix/com/vision/activities/DramaDetailActivity;->b:Landroid/widget/ImageView;

    .line 86
    .line 87
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 88
    .line 89
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 90
    .line 91
    invoke-static {v5, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 96
    .line 97
    invoke-direct {p2, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, v5, Lflix/com/vision/activities/DramaDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 104
    .line 105
    invoke-static {p1, v2, v3, v0}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 106
    .line 107
    .line 108
    iget-object p1, v5, Lflix/com/vision/activities/DramaDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 109
    .line 110
    invoke-static {p1, v2, v3, v0}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void

    .line 114
    :pswitch_1
    check-cast v5, Lflix/com/vision/activities/AnimeDetailActivity;

    .line 115
    .line 116
    if-eqz p2, :cond_2

    .line 117
    .line 118
    iget-object p1, v5, Lflix/com/vision/activities/AnimeDetailActivity;->b:Landroid/widget/ImageView;

    .line 119
    .line 120
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 121
    .line 122
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 123
    .line 124
    invoke-static {v5, v0}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 129
    .line 130
    invoke-direct {p2, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, v5, Lflix/com/vision/activities/AnimeDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    invoke-static {p1, v2, v3, v1}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 139
    .line 140
    .line 141
    iget-object p1, v5, Lflix/com/vision/activities/AnimeDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 142
    .line 143
    invoke-static {p1, v2, v3, v1}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    iget-object p1, v5, Lflix/com/vision/activities/AnimeDetailActivity;->b:Landroid/widget/ImageView;

    .line 148
    .line 149
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 150
    .line 151
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 152
    .line 153
    invoke-static {v5, v1}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 158
    .line 159
    invoke-direct {p2, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, v5, Lflix/com/vision/activities/AnimeDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 166
    .line 167
    invoke-static {p1, v2, v3, v0}, Lb/c;->r(Landroid/widget/RelativeLayout;JF)V

    .line 168
    .line 169
    .line 170
    iget-object p1, v5, Lflix/com/vision/activities/AnimeDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 171
    .line 172
    invoke-static {p1, v2, v3, v0}, Lb/c;->w(Landroid/widget/RelativeLayout;JF)V

    .line 173
    .line 174
    .line 175
    :goto_2
    return-void

    .line 176
    :pswitch_2
    check-cast v5, Lflix/com/vision/tv/MyImportActivity;

    .line 177
    .line 178
    if-eqz p2, :cond_3

    .line 179
    .line 180
    iget-object p1, v5, Lflix/com/vision/tv/MyImportActivity;->m:Landroid/widget/ImageView;

    .line 181
    .line 182
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 183
    .line 184
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 185
    .line 186
    invoke-static {v5, v0}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 191
    .line 192
    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_3
    iget-object p1, v5, Lflix/com/vision/tv/MyImportActivity;->m:Landroid/widget/ImageView;

    .line 200
    .line 201
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 202
    .line 203
    sget v0, Lflix/com/vision/R$color;->white:I

    .line 204
    .line 205
    invoke-static {v5, v0}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 210
    .line 211
    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 215
    .line 216
    .line 217
    :goto_3
    return-void

    .line 218
    :pswitch_3
    check-cast v5, LW4/d;

    .line 219
    .line 220
    iget-object v0, v5, LW4/d;->f:Lflix/com/vision/models/tmdb/Network;

    .line 221
    .line 222
    if-nez v0, :cond_4

    .line 223
    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :cond_4
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const-string v2, "disney"

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_5

    .line 239
    .line 240
    sget v0, Lflix/com/vision/R$drawable;->disney_gif:I

    .line 241
    .line 242
    goto/16 :goto_4

    .line 243
    .line 244
    :cond_5
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const-string v2, "prime"

    .line 251
    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_6

    .line 257
    .line 258
    sget v0, Lflix/com/vision/R$drawable;->prime_gif:I

    .line 259
    .line 260
    goto/16 :goto_4

    .line 261
    .line 262
    :cond_6
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    const-string v2, "netflix"

    .line 269
    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_7

    .line 275
    .line 276
    sget v0, Lflix/com/vision/R$drawable;->netflix_gif:I

    .line 277
    .line 278
    goto/16 :goto_4

    .line 279
    .line 280
    :cond_7
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    const-string v2, "paramount"

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_8

    .line 293
    .line 294
    sget v0, Lflix/com/vision/R$drawable;->paramount_gif:I

    .line 295
    .line 296
    goto/16 :goto_4

    .line 297
    .line 298
    :cond_8
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const-string v2, "hbo"

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_9

    .line 311
    .line 312
    sget v0, Lflix/com/vision/R$drawable;->hbo_max_gif:I

    .line 313
    .line 314
    goto/16 :goto_4

    .line 315
    .line 316
    :cond_9
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    const-string v2, "apple"

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_a

    .line 329
    .line 330
    sget v0, Lflix/com/vision/R$drawable;->apple_gif:I

    .line 331
    .line 332
    goto/16 :goto_4

    .line 333
    .line 334
    :cond_a
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    const-string v2, "hulu"

    .line 341
    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_b

    .line 347
    .line 348
    sget v0, Lflix/com/vision/R$drawable;->hulu_gif:I

    .line 349
    .line 350
    goto/16 :goto_4

    .line 351
    .line 352
    :cond_b
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    const-string v2, "starz"

    .line 359
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_c

    .line 365
    .line 366
    sget v0, Lflix/com/vision/R$drawable;->starz_gif:I

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_c
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    const-string v2, "marvel"

    .line 376
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_d

    .line 382
    .line 383
    sget v0, Lflix/com/vision/R$drawable;->marvel_gif:I

    .line 384
    .line 385
    goto :goto_4

    .line 386
    :cond_d
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    const-string v2, "cbs"

    .line 393
    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_e

    .line 399
    .line 400
    sget v0, Lflix/com/vision/R$drawable;->cbs_gif:I

    .line 401
    .line 402
    goto :goto_4

    .line 403
    :cond_e
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    const-string v2, "peacock"

    .line 410
    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_f

    .line 416
    .line 417
    sget v0, Lflix/com/vision/R$drawable;->peacock_gif:I

    .line 418
    .line 419
    goto :goto_4

    .line 420
    :cond_f
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    const-string v2, "amc"

    .line 427
    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_10

    .line 433
    .line 434
    sget v0, Lflix/com/vision/R$drawable;->amc1_gif:I

    .line 435
    .line 436
    goto :goto_4

    .line 437
    :cond_10
    iget-object v1, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    const-string v2, "bet"

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_11

    .line 450
    .line 451
    sget v0, Lflix/com/vision/R$drawable;->bet_gif:I

    .line 452
    .line 453
    goto :goto_4

    .line 454
    :cond_11
    iget-object v0, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    const-string v1, "britbox"

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_12

    .line 467
    .line 468
    sget v0, Lflix/com/vision/R$drawable;->britbox_gif:I

    .line 469
    .line 470
    goto :goto_4

    .line 471
    :cond_12
    move v0, v4

    .line 472
    :goto_4
    const/high16 v1, 0x41400000    # 12.0f

    .line 473
    .line 474
    iget-object v2, v5, LW4/d;->b:Landroid/widget/ImageView;

    .line 475
    .line 476
    if-eqz p2, :cond_14

    .line 477
    .line 478
    if-nez v0, :cond_13

    .line 479
    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 493
    .line 494
    mul-float/2addr p1, v1

    .line 495
    float-to-int p1, p1

    .line 496
    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 497
    .line 498
    .line 499
    invoke-static {v5}, LW4/e;->a(LW4/d;)V

    .line 500
    .line 501
    .line 502
    goto :goto_5

    .line 503
    :cond_13
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    invoke-static {p1}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/q;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    invoke-virtual {p1}, Lcom/bumptech/glide/q;->asGif()Lcom/bumptech/glide/m;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object p2

    .line 522
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/m;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/m;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    invoke-virtual {p1}, LC2/a;->centerCrop()LC2/a;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    check-cast p1, Lcom/bumptech/glide/m;

    .line 531
    .line 532
    sget-object p2, Ln2/u;->c:Ln2/s;

    .line 533
    .line 534
    invoke-virtual {p1, p2}, LC2/a;->diskCacheStrategy(Ln2/u;)LC2/a;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    check-cast p1, Lcom/bumptech/glide/m;

    .line 539
    .line 540
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/m;->into(Landroid/widget/ImageView;)LD2/n;

    .line 541
    .line 542
    .line 543
    goto :goto_5

    .line 544
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 553
    .line 554
    .line 555
    move-result-object p1

    .line 556
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 557
    .line 558
    mul-float/2addr p1, v1

    .line 559
    float-to-int p1, p1

    .line 560
    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 561
    .line 562
    .line 563
    invoke-static {v5}, LW4/e;->a(LW4/d;)V

    .line 564
    .line 565
    .line 566
    :goto_5
    return-void

    .line 567
    :pswitch_4
    check-cast v5, LK3/l;

    .line 568
    .line 569
    iput-boolean p2, v5, LK3/l;->l:Z

    .line 570
    .line 571
    invoke-virtual {v5}, LK3/r;->l()V

    .line 572
    .line 573
    .line 574
    if-nez p2, :cond_15

    .line 575
    .line 576
    invoke-virtual {v5, v4}, LK3/l;->o(Z)V

    .line 577
    .line 578
    .line 579
    iput-boolean v4, v5, LK3/l;->m:Z

    .line 580
    .line 581
    :cond_15
    return-void

    .line 582
    :pswitch_5
    check-cast v5, LK3/d;

    .line 583
    .line 584
    invoke-virtual {v5}, LK3/d;->p()Z

    .line 585
    .line 586
    .line 587
    move-result p1

    .line 588
    invoke-virtual {v5, p1}, LK3/d;->o(Z)V

    .line 589
    .line 590
    .line 591
    return-void

    .line 592
    :pswitch_6
    check-cast v5, LC4/i0;

    .line 593
    .line 594
    const/4 p1, 0x6

    .line 595
    if-eqz p2, :cond_16

    .line 596
    .line 597
    iget-object p2, v5, LC4/i0;->x:Landroid/widget/TextView;

    .line 598
    .line 599
    const/4 v0, 0x1

    .line 600
    invoke-virtual {p2, v0}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 601
    .line 602
    .line 603
    iget-object p2, v5, LC4/i0;->x:Landroid/widget/TextView;

    .line 604
    .line 605
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 606
    .line 607
    .line 608
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 609
    .line 610
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 623
    .line 624
    .line 625
    goto :goto_6

    .line 626
    :cond_16
    iget-object p2, v5, LC4/i0;->x:Landroid/widget/TextView;

    .line 627
    .line 628
    invoke-virtual {p2, v4}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 629
    .line 630
    .line 631
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 632
    .line 633
    iget-object v0, v5, LC4/i0;->x:Landroid/widget/TextView;

    .line 634
    .line 635
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 648
    .line 649
    .line 650
    :goto_6
    return-void

    .line 651
    :pswitch_7
    check-cast v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 652
    .line 653
    if-eqz p2, :cond_17

    .line 654
    .line 655
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 656
    .line 657
    iget-object p1, p1, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 658
    .line 659
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    invoke-virtual {v5}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 664
    .line 665
    .line 666
    move-result-object p2

    .line 667
    sget v0, Lflix/com/vision/R$color;->md_yellow_500:I

    .line 668
    .line 669
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 670
    .line 671
    .line 672
    move-result p2

    .line 673
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 674
    .line 675
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 676
    .line 677
    .line 678
    goto :goto_7

    .line 679
    :cond_17
    iget-object p1, v5, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 680
    .line 681
    iget-object p1, p1, Lflix/com/vision/bvp/BetterVideoPlayer;->C:Landroid/widget/SeekBar;

    .line 682
    .line 683
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    invoke-virtual {v5}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 688
    .line 689
    .line 690
    move-result-object p2

    .line 691
    sget v0, Lflix/com/vision/R$color;->accent:I

    .line 692
    .line 693
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 694
    .line 695
    .line 696
    move-result p2

    .line 697
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 698
    .line 699
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 700
    .line 701
    .line 702
    :goto_7
    return-void

    .line 703
    :pswitch_8
    sget p1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 704
    .line 705
    check-cast v5, Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 706
    .line 707
    if-eqz p2, :cond_18

    .line 708
    .line 709
    invoke-virtual {v5}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 710
    .line 711
    .line 712
    move-result p1

    .line 713
    if-nez p1, :cond_18

    .line 714
    .line 715
    invoke-virtual {v5}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->h()V

    .line 716
    .line 717
    .line 718
    goto :goto_8

    .line 719
    :cond_18
    if-nez p2, :cond_19

    .line 720
    .line 721
    invoke-virtual {v5}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 722
    .line 723
    .line 724
    move-result p1

    .line 725
    if-eqz p1, :cond_1a

    .line 726
    .line 727
    invoke-virtual {v5}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 728
    .line 729
    .line 730
    goto :goto_8

    .line 731
    :cond_19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 732
    .line 733
    .line 734
    :cond_1a
    :goto_8
    return-void

    .line 735
    :pswitch_9
    sget v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 736
    .line 737
    check-cast v5, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 738
    .line 739
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    if-eqz p2, :cond_1b

    .line 743
    .line 744
    instance-of p2, p1, Landroid/widget/TextView;

    .line 745
    .line 746
    if-eqz p2, :cond_1b

    .line 747
    .line 748
    check-cast p1, Landroid/widget/TextView;

    .line 749
    .line 750
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 751
    .line 752
    .line 753
    move-result-object p2

    .line 754
    sget v0, Lflix/com/vision/R$color;->black:I

    .line 755
    .line 756
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 757
    .line 758
    .line 759
    move-result p2

    .line 760
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 761
    .line 762
    .line 763
    goto :goto_9

    .line 764
    :cond_1b
    instance-of p2, p1, Landroid/widget/TextView;

    .line 765
    .line 766
    if-eqz p2, :cond_1c

    .line 767
    .line 768
    check-cast p1, Landroid/widget/TextView;

    .line 769
    .line 770
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 771
    .line 772
    .line 773
    move-result-object p2

    .line 774
    sget v0, Lflix/com/vision/R$color;->white_grey:I

    .line 775
    .line 776
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 777
    .line 778
    .line 779
    move-result p2

    .line 780
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 781
    .line 782
    .line 783
    :cond_1c
    :goto_9
    return-void

    .line 784
    nop

    .line 785
    :pswitch_data_0
    .packed-switch 0x0
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
