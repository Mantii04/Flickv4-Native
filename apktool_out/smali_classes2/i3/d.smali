.class public final Li3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li3/c;

.field public final b:Li3/c;

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    sget v3, Li3/a;->x:I

    .line 2
    .line 3
    sget v0, Li3/a;->w:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v6, Li3/c;

    .line 9
    .line 10
    invoke-direct {v6}, Li3/c;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v6, p0, Li3/d;->b:Li3/c;

    .line 14
    .line 15
    new-instance v7, Li3/c;

    .line 16
    .line 17
    invoke-direct {v7}, Li3/c;-><init>()V

    .line 18
    .line 19
    .line 20
    iget v1, v7, Li3/c;->b:I

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v2, "badge"

    .line 26
    .line 27
    invoke-static {p1, v1, v2}, Lt3/c;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    move v2, v8

    .line 38
    :goto_0
    if-nez v2, :cond_1

    .line 39
    .line 40
    move v4, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v4, v2

    .line 43
    :goto_1
    sget-object v2, Lcom/google/android/material/R$styleable;->Badge:[I

    .line 44
    .line 45
    new-array v5, v8, [I

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    invoke-static/range {v0 .. v5}, Lx3/L;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeRadius:I

    .line 57
    .line 58
    const/4 v3, -0x1

    .line 59
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    int-to-float v2, v2

    .line 64
    iput v2, p0, Li3/d;->c:F

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget v4, Lcom/google/android/material/R$dimen;->mtrl_badge_horizontal_edge_offset:I

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput v2, p0, Li3/d;->i:I

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sget v4, Lcom/google/android/material/R$dimen;->mtrl_badge_text_horizontal_edge_offset:I

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput v2, p0, Li3/d;->j:I

    .line 89
    .line 90
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextRadius:I

    .line 91
    .line 92
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    int-to-float v2, v2

    .line 97
    iput v2, p0, Li3/d;->d:F

    .line 98
    .line 99
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWidth:I

    .line 100
    .line 101
    sget v4, Lcom/google/android/material/R$dimen;->m3_badge_size:I

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, p0, Li3/d;->e:F

    .line 112
    .line 113
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextWidth:I

    .line 114
    .line 115
    sget v4, Lcom/google/android/material/R$dimen;->m3_badge_with_text_size:I

    .line 116
    .line 117
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iput v2, p0, Li3/d;->g:F

    .line 126
    .line 127
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeHeight:I

    .line 128
    .line 129
    sget v4, Lcom/google/android/material/R$dimen;->m3_badge_size:I

    .line 130
    .line 131
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    iput v2, p0, Li3/d;->f:F

    .line 140
    .line 141
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextHeight:I

    .line 142
    .line 143
    sget v4, Lcom/google/android/material/R$dimen;->m3_badge_with_text_size:I

    .line 144
    .line 145
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    iput v2, p0, Li3/d;->h:F

    .line 154
    .line 155
    sget v2, Lcom/google/android/material/R$styleable;->Badge_offsetAlignmentMode:I

    .line 156
    .line 157
    const/4 v4, 0x1

    .line 158
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    iput v2, p0, Li3/d;->k:I

    .line 163
    .line 164
    iget v2, v7, Li3/c;->r:I

    .line 165
    .line 166
    const/4 v5, -0x2

    .line 167
    if-ne v2, v5, :cond_2

    .line 168
    .line 169
    const/16 v2, 0xff

    .line 170
    .line 171
    :cond_2
    iput v2, v6, Li3/c;->r:I

    .line 172
    .line 173
    iget v2, v7, Li3/c;->t:I

    .line 174
    .line 175
    if-eq v2, v5, :cond_3

    .line 176
    .line 177
    iput v2, v6, Li3/c;->t:I

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_3
    sget v2, Lcom/google/android/material/R$styleable;->Badge_number:I

    .line 181
    .line 182
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_4

    .line 187
    .line 188
    sget v2, Lcom/google/android/material/R$styleable;->Badge_number:I

    .line 189
    .line 190
    invoke-virtual {p1, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    iput v2, v6, Li3/c;->t:I

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_4
    iput v3, v6, Li3/c;->t:I

    .line 198
    .line 199
    :goto_2
    iget-object v2, v7, Li3/c;->s:Ljava/lang/String;

    .line 200
    .line 201
    if-eqz v2, :cond_5

    .line 202
    .line 203
    iput-object v2, v6, Li3/c;->s:Ljava/lang/String;

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_5
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeText:I

    .line 207
    .line 208
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_6

    .line 213
    .line 214
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeText:I

    .line 215
    .line 216
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iput-object v2, v6, Li3/c;->s:Ljava/lang/String;

    .line 221
    .line 222
    :cond_6
    :goto_3
    iget-object v2, v7, Li3/c;->x:Ljava/lang/String;

    .line 223
    .line 224
    iput-object v2, v6, Li3/c;->x:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v2, v7, Li3/c;->y:Ljava/lang/CharSequence;

    .line 227
    .line 228
    if-nez v2, :cond_7

    .line 229
    .line 230
    sget v2, Lcom/google/android/material/R$string;->mtrl_badge_numberless_content_description:I

    .line 231
    .line 232
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    :cond_7
    iput-object v2, v6, Li3/c;->y:Ljava/lang/CharSequence;

    .line 237
    .line 238
    iget v2, v7, Li3/c;->z:I

    .line 239
    .line 240
    if-nez v2, :cond_8

    .line 241
    .line 242
    sget v2, Lcom/google/android/material/R$plurals;->mtrl_badge_content_description:I

    .line 243
    .line 244
    :cond_8
    iput v2, v6, Li3/c;->z:I

    .line 245
    .line 246
    iget v2, v7, Li3/c;->A:I

    .line 247
    .line 248
    if-nez v2, :cond_9

    .line 249
    .line 250
    sget v2, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_content_description:I

    .line 251
    .line 252
    :cond_9
    iput v2, v6, Li3/c;->A:I

    .line 253
    .line 254
    iget-object v2, v7, Li3/c;->C:Ljava/lang/Boolean;

    .line 255
    .line 256
    if-eqz v2, :cond_b

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_a

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_a
    move v4, v8

    .line 266
    :cond_b
    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    iput-object v2, v6, Li3/c;->C:Ljava/lang/Boolean;

    .line 271
    .line 272
    iget v2, v7, Li3/c;->u:I

    .line 273
    .line 274
    if-ne v2, v5, :cond_c

    .line 275
    .line 276
    sget v2, Lcom/google/android/material/R$styleable;->Badge_maxCharacterCount:I

    .line 277
    .line 278
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    :cond_c
    iput v2, v6, Li3/c;->u:I

    .line 283
    .line 284
    iget v2, v7, Li3/c;->v:I

    .line 285
    .line 286
    if-ne v2, v5, :cond_d

    .line 287
    .line 288
    sget v2, Lcom/google/android/material/R$styleable;->Badge_maxNumber:I

    .line 289
    .line 290
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    :cond_d
    iput v2, v6, Li3/c;->v:I

    .line 295
    .line 296
    iget-object v2, v7, Li3/c;->m:Ljava/lang/Integer;

    .line 297
    .line 298
    if-nez v2, :cond_e

    .line 299
    .line 300
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeShapeAppearance:I

    .line 301
    .line 302
    sget v3, Lcom/google/android/material/R$style;->ShapeAppearance_M3_Sys_Shape_Corner_Full:I

    .line 303
    .line 304
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    goto :goto_5

    .line 309
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    iput-object v2, v6, Li3/c;->m:Ljava/lang/Integer;

    .line 318
    .line 319
    iget-object v2, v7, Li3/c;->n:Ljava/lang/Integer;

    .line 320
    .line 321
    if-nez v2, :cond_f

    .line 322
    .line 323
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeShapeAppearanceOverlay:I

    .line 324
    .line 325
    invoke-virtual {p1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    goto :goto_6

    .line 330
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    iput-object v2, v6, Li3/c;->n:Ljava/lang/Integer;

    .line 339
    .line 340
    iget-object v2, v7, Li3/c;->p:Ljava/lang/Integer;

    .line 341
    .line 342
    if-nez v2, :cond_10

    .line 343
    .line 344
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextShapeAppearance:I

    .line 345
    .line 346
    sget v3, Lcom/google/android/material/R$style;->ShapeAppearance_M3_Sys_Shape_Corner_Full:I

    .line 347
    .line 348
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    goto :goto_7

    .line 353
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    iput-object v2, v6, Li3/c;->p:Ljava/lang/Integer;

    .line 362
    .line 363
    iget-object v2, v7, Li3/c;->q:Ljava/lang/Integer;

    .line 364
    .line 365
    if-nez v2, :cond_11

    .line 366
    .line 367
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextShapeAppearanceOverlay:I

    .line 368
    .line 369
    invoke-virtual {p1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    goto :goto_8

    .line 374
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    iput-object v2, v6, Li3/c;->q:Ljava/lang/Integer;

    .line 383
    .line 384
    iget-object v2, v7, Li3/c;->e:Ljava/lang/Integer;

    .line 385
    .line 386
    if-nez v2, :cond_12

    .line 387
    .line 388
    sget v2, Lcom/google/android/material/R$styleable;->Badge_backgroundColor:I

    .line 389
    .line 390
    invoke-static {v0, p1, v2}, LC3/d;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    goto :goto_9

    .line 399
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    iput-object v2, v6, Li3/c;->e:Ljava/lang/Integer;

    .line 408
    .line 409
    iget-object v2, v7, Li3/c;->j:Ljava/lang/Integer;

    .line 410
    .line 411
    if-nez v2, :cond_13

    .line 412
    .line 413
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeTextAppearance:I

    .line 414
    .line 415
    sget v3, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    .line 416
    .line 417
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    goto :goto_a

    .line 422
    :cond_13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    :goto_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    iput-object v2, v6, Li3/c;->j:Ljava/lang/Integer;

    .line 431
    .line 432
    iget-object v2, v7, Li3/c;->f:Ljava/lang/Integer;

    .line 433
    .line 434
    if-eqz v2, :cond_14

    .line 435
    .line 436
    iput-object v2, v6, Li3/c;->f:Ljava/lang/Integer;

    .line 437
    .line 438
    goto :goto_b

    .line 439
    :cond_14
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    .line 440
    .line 441
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-eqz v2, :cond_15

    .line 446
    .line 447
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    .line 448
    .line 449
    invoke-static {v0, p1, v2}, LC3/d;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    iput-object v0, v6, Li3/c;->f:Ljava/lang/Integer;

    .line 462
    .line 463
    goto :goto_b

    .line 464
    :cond_15
    new-instance v2, LC3/g;

    .line 465
    .line 466
    iget-object v3, v6, Li3/c;->j:Ljava/lang/Integer;

    .line 467
    .line 468
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    invoke-direct {v2, v0, v3}, LC3/g;-><init>(Landroid/content/Context;I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2}, LC3/g;->getTextColor()Landroid/content/res/ColorStateList;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    iput-object v0, v6, Li3/c;->f:Ljava/lang/Integer;

    .line 488
    .line 489
    :goto_b
    iget-object v0, v7, Li3/c;->B:Ljava/lang/Integer;

    .line 490
    .line 491
    if-nez v0, :cond_16

    .line 492
    .line 493
    sget v0, Lcom/google/android/material/R$styleable;->Badge_badgeGravity:I

    .line 494
    .line 495
    const v2, 0x800035

    .line 496
    .line 497
    .line 498
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    goto :goto_c

    .line 503
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    iput-object v0, v6, Li3/c;->B:Ljava/lang/Integer;

    .line 512
    .line 513
    iget-object v0, v7, Li3/c;->D:Ljava/lang/Integer;

    .line 514
    .line 515
    if-nez v0, :cond_17

    .line 516
    .line 517
    sget v0, Lcom/google/android/material/R$styleable;->Badge_badgeWidePadding:I

    .line 518
    .line 519
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    .line 520
    .line 521
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    goto :goto_d

    .line 530
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    :goto_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    iput-object v0, v6, Li3/c;->D:Ljava/lang/Integer;

    .line 539
    .line 540
    iget-object v0, v7, Li3/c;->E:Ljava/lang/Integer;

    .line 541
    .line 542
    if-nez v0, :cond_18

    .line 543
    .line 544
    sget v0, Lcom/google/android/material/R$styleable;->Badge_badgeVerticalPadding:I

    .line 545
    .line 546
    sget v2, Lcom/google/android/material/R$dimen;->m3_badge_with_text_vertical_padding:I

    .line 547
    .line 548
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    goto :goto_e

    .line 557
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    iput-object v0, v6, Li3/c;->E:Ljava/lang/Integer;

    .line 566
    .line 567
    iget-object v0, v7, Li3/c;->F:Ljava/lang/Integer;

    .line 568
    .line 569
    if-nez v0, :cond_19

    .line 570
    .line 571
    sget v0, Lcom/google/android/material/R$styleable;->Badge_horizontalOffset:I

    .line 572
    .line 573
    invoke-virtual {p1, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    goto :goto_f

    .line 578
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    iput-object v0, v6, Li3/c;->F:Ljava/lang/Integer;

    .line 587
    .line 588
    iget-object v0, v7, Li3/c;->G:Ljava/lang/Integer;

    .line 589
    .line 590
    if-nez v0, :cond_1a

    .line 591
    .line 592
    sget v0, Lcom/google/android/material/R$styleable;->Badge_verticalOffset:I

    .line 593
    .line 594
    invoke-virtual {p1, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    goto :goto_10

    .line 599
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    :goto_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    iput-object v0, v6, Li3/c;->G:Ljava/lang/Integer;

    .line 608
    .line 609
    iget-object v0, v7, Li3/c;->H:Ljava/lang/Integer;

    .line 610
    .line 611
    if-nez v0, :cond_1b

    .line 612
    .line 613
    sget v0, Lcom/google/android/material/R$styleable;->Badge_horizontalOffsetWithText:I

    .line 614
    .line 615
    iget-object v1, v6, Li3/c;->F:Ljava/lang/Integer;

    .line 616
    .line 617
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 618
    .line 619
    .line 620
    move-result v1

    .line 621
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    goto :goto_11

    .line 626
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    :goto_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    iput-object v0, v6, Li3/c;->H:Ljava/lang/Integer;

    .line 635
    .line 636
    iget-object v0, v7, Li3/c;->I:Ljava/lang/Integer;

    .line 637
    .line 638
    if-nez v0, :cond_1c

    .line 639
    .line 640
    sget v0, Lcom/google/android/material/R$styleable;->Badge_verticalOffsetWithText:I

    .line 641
    .line 642
    iget-object v1, v6, Li3/c;->G:Ljava/lang/Integer;

    .line 643
    .line 644
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    goto :goto_12

    .line 653
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    :goto_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    iput-object v0, v6, Li3/c;->I:Ljava/lang/Integer;

    .line 662
    .line 663
    iget-object v0, v7, Li3/c;->L:Ljava/lang/Integer;

    .line 664
    .line 665
    if-nez v0, :cond_1d

    .line 666
    .line 667
    sget v0, Lcom/google/android/material/R$styleable;->Badge_largeFontVerticalOffsetAdjustment:I

    .line 668
    .line 669
    invoke-virtual {p1, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    goto :goto_13

    .line 674
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    :goto_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    iput-object v0, v6, Li3/c;->L:Ljava/lang/Integer;

    .line 683
    .line 684
    iget-object v0, v7, Li3/c;->J:Ljava/lang/Integer;

    .line 685
    .line 686
    if-nez v0, :cond_1e

    .line 687
    .line 688
    move v0, v8

    .line 689
    goto :goto_14

    .line 690
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    :goto_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    iput-object v0, v6, Li3/c;->J:Ljava/lang/Integer;

    .line 699
    .line 700
    iget-object v0, v7, Li3/c;->K:Ljava/lang/Integer;

    .line 701
    .line 702
    if-nez v0, :cond_1f

    .line 703
    .line 704
    move v0, v8

    .line 705
    goto :goto_15

    .line 706
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    iput-object v0, v6, Li3/c;->K:Ljava/lang/Integer;

    .line 715
    .line 716
    iget-object v0, v7, Li3/c;->M:Ljava/lang/Boolean;

    .line 717
    .line 718
    if-nez v0, :cond_20

    .line 719
    .line 720
    sget v0, Lcom/google/android/material/R$styleable;->Badge_autoAdjustToWithinGrandparentBounds:I

    .line 721
    .line 722
    invoke-virtual {p1, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    goto :goto_16

    .line 727
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    iput-object v0, v6, Li3/c;->M:Ljava/lang/Boolean;

    .line 736
    .line 737
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 738
    .line 739
    .line 740
    iget-object p1, v7, Li3/c;->w:Ljava/util/Locale;

    .line 741
    .line 742
    if-nez p1, :cond_22

    .line 743
    .line 744
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 745
    .line 746
    const/16 v0, 0x18

    .line 747
    .line 748
    if-lt p1, v0, :cond_21

    .line 749
    .line 750
    invoke-static {}, Le/N;->j()Ljava/util/Locale$Category;

    .line 751
    .line 752
    .line 753
    invoke-static {}, Le/N;->k()Ljava/util/Locale;

    .line 754
    .line 755
    .line 756
    move-result-object p1

    .line 757
    goto :goto_17

    .line 758
    :cond_21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 759
    .line 760
    .line 761
    move-result-object p1

    .line 762
    :goto_17
    iput-object p1, v6, Li3/c;->w:Ljava/util/Locale;

    .line 763
    .line 764
    goto :goto_18

    .line 765
    :cond_22
    iput-object p1, v6, Li3/c;->w:Ljava/util/Locale;

    .line 766
    .line 767
    :goto_18
    iput-object v7, p0, Li3/d;->a:Li3/c;

    .line 768
    .line 769
    return-void
.end method
