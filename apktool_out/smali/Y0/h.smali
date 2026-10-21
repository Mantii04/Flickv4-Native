.class public abstract LY0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static applyStylesToSpan(Landroid/text/Spannable;IILY0/i;LY0/c;Ljava/util/Map;I)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "II",
            "LY0/i;",
            "LY0/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LY0/i;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, LY0/i;->getStyle()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x21

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 11
    .line 12
    invoke-virtual {p3}, LY0/i;->getStyle()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p3}, LY0/i;->isLinethrough()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p3}, LY0/i;->isUnderline()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Landroid/text/style/UnderlineSpan;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p3}, LY0/i;->hasFontColor()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 57
    .line 58
    invoke-virtual {p3}, LY0/i;->getFontColor()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p3}, LY0/i;->hasBackgroundColor()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 75
    .line 76
    invoke-virtual {p3}, LY0/i;->getBackgroundColor()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-direct {v0, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {p3}, LY0/i;->getFontFamily()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 93
    .line 94
    invoke-virtual {p3}, LY0/i;->getFontFamily()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-direct {v0, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v0, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-virtual {p3}, LY0/i;->getTextEmphasis()LY0/b;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const/4 v3, 0x2

    .line 109
    const/4 v4, 0x3

    .line 110
    const/4 v5, 0x1

    .line 111
    if-eqz v0, :cond_a

    .line 112
    .line 113
    invoke-virtual {p3}, LY0/i;->getTextEmphasis()LY0/b;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, LY0/b;

    .line 122
    .line 123
    iget v6, v0, LY0/b;->a:I

    .line 124
    .line 125
    if-ne v6, v2, :cond_8

    .line 126
    .line 127
    if-eq p6, v3, :cond_7

    .line 128
    .line 129
    if-ne p6, v5, :cond_6

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    move v6, v5

    .line 133
    goto :goto_1

    .line 134
    :cond_7
    :goto_0
    move v6, v4

    .line 135
    :goto_1
    move p6, v5

    .line 136
    goto :goto_2

    .line 137
    :cond_8
    iget p6, v0, LY0/b;->b:I

    .line 138
    .line 139
    :goto_2
    const/4 v7, -0x2

    .line 140
    iget v0, v0, LY0/b;->c:I

    .line 141
    .line 142
    if-ne v0, v7, :cond_9

    .line 143
    .line 144
    move v0, v5

    .line 145
    :cond_9
    new-instance v7, Landroidx/media3/common/text/TextEmphasisSpan;

    .line 146
    .line 147
    invoke-direct {v7, v6, p6, v0}, Landroidx/media3/common/text/TextEmphasisSpan;-><init>(III)V

    .line 148
    .line 149
    .line 150
    invoke-static {p0, v7, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 151
    .line 152
    .line 153
    :cond_a
    invoke-virtual {p3}, LY0/i;->getRubyType()I

    .line 154
    .line 155
    .line 156
    move-result p6

    .line 157
    if-eq p6, v3, :cond_c

    .line 158
    .line 159
    if-eq p6, v4, :cond_b

    .line 160
    .line 161
    const/4 p4, 0x4

    .line 162
    if-eq p6, p4, :cond_b

    .line 163
    .line 164
    goto/16 :goto_8

    .line 165
    .line 166
    :cond_b
    new-instance p4, LY0/a;

    .line 167
    .line 168
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-interface {p0, p4, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_8

    .line 175
    .line 176
    :cond_c
    :goto_3
    const/4 p6, 0x0

    .line 177
    if-eqz p4, :cond_e

    .line 178
    .line 179
    iget-object v0, p4, LY0/c;->f:LY0/i;

    .line 180
    .line 181
    invoke-virtual {p4}, LY0/c;->getStyleIds()[Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-static {v0, v6, p5}, LY0/h;->resolveStyle(LY0/i;[Ljava/lang/String;Ljava/util/Map;)LY0/i;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_d

    .line 190
    .line 191
    invoke-virtual {v0}, LY0/i;->getRubyType()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-ne v0, v5, :cond_d

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_d
    iget-object p4, p4, LY0/c;->j:LY0/c;

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_e
    move-object p4, p6

    .line 202
    :goto_4
    if-nez p4, :cond_f

    .line 203
    .line 204
    goto/16 :goto_8

    .line 205
    .line 206
    :cond_f
    new-instance v0, Ljava/util/ArrayDeque;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, p4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-nez v6, :cond_12

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    check-cast v6, LY0/c;

    .line 225
    .line 226
    iget-object v7, v6, LY0/c;->f:LY0/i;

    .line 227
    .line 228
    invoke-virtual {v6}, LY0/c;->getStyleIds()[Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-static {v7, v8, p5}, LY0/h;->resolveStyle(LY0/i;[Ljava/lang/String;Ljava/util/Map;)LY0/i;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    if-eqz v7, :cond_11

    .line 237
    .line 238
    invoke-virtual {v7}, LY0/i;->getRubyType()I

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-ne v7, v4, :cond_11

    .line 243
    .line 244
    move-object p6, v6

    .line 245
    goto :goto_6

    .line 246
    :cond_11
    invoke-virtual {v6}, LY0/c;->getChildCount()I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    sub-int/2addr v7, v5

    .line 251
    :goto_5
    if-ltz v7, :cond_10

    .line 252
    .line 253
    invoke-virtual {v6, v7}, LY0/c;->getChild(I)LY0/c;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    add-int/lit8 v7, v7, -0x1

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_12
    :goto_6
    if-nez p6, :cond_13

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_13
    invoke-virtual {p6}, LY0/c;->getChildCount()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-ne v0, v5, :cond_16

    .line 271
    .line 272
    const/4 v0, 0x0

    .line 273
    invoke-virtual {p6, v0}, LY0/c;->getChild(I)LY0/c;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    iget-object v6, v6, LY0/c;->b:Ljava/lang/String;

    .line 278
    .line 279
    if-eqz v6, :cond_16

    .line 280
    .line 281
    invoke-virtual {p6, v0}, LY0/c;->getChild(I)LY0/c;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iget-object v0, v0, LY0/c;->b:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Ljava/lang/String;

    .line 292
    .line 293
    iget-object v6, p6, LY0/c;->f:LY0/i;

    .line 294
    .line 295
    invoke-virtual {p6}, LY0/c;->getStyleIds()[Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p6

    .line 299
    invoke-static {v6, p6, p5}, LY0/h;->resolveStyle(LY0/i;[Ljava/lang/String;Ljava/util/Map;)LY0/i;

    .line 300
    .line 301
    .line 302
    move-result-object p6

    .line 303
    if-eqz p6, :cond_14

    .line 304
    .line 305
    invoke-virtual {p6}, LY0/i;->getRubyPosition()I

    .line 306
    .line 307
    .line 308
    move-result p6

    .line 309
    goto :goto_7

    .line 310
    :cond_14
    move p6, v2

    .line 311
    :goto_7
    if-ne p6, v2, :cond_15

    .line 312
    .line 313
    iget-object v2, p4, LY0/c;->f:LY0/i;

    .line 314
    .line 315
    invoke-virtual {p4}, LY0/c;->getStyleIds()[Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p4

    .line 319
    invoke-static {v2, p4, p5}, LY0/h;->resolveStyle(LY0/i;[Ljava/lang/String;Ljava/util/Map;)LY0/i;

    .line 320
    .line 321
    .line 322
    move-result-object p4

    .line 323
    if-eqz p4, :cond_15

    .line 324
    .line 325
    invoke-virtual {p4}, LY0/i;->getRubyPosition()I

    .line 326
    .line 327
    .line 328
    move-result p6

    .line 329
    :cond_15
    new-instance p4, Landroidx/media3/common/text/RubySpan;

    .line 330
    .line 331
    invoke-direct {p4, v0, p6}, Landroidx/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    .line 332
    .line 333
    .line 334
    invoke-interface {p0, p4, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 335
    .line 336
    .line 337
    goto :goto_8

    .line 338
    :cond_16
    const-string p4, "TtmlRenderUtil"

    .line 339
    .line 340
    const-string p5, "Skipping rubyText node without exactly one text child."

    .line 341
    .line 342
    invoke-static {p4, p5}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :goto_8
    invoke-virtual {p3}, LY0/i;->getTextCombine()Z

    .line 346
    .line 347
    .line 348
    move-result p4

    .line 349
    if-eqz p4, :cond_17

    .line 350
    .line 351
    new-instance p4, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    .line 352
    .line 353
    invoke-direct {p4}, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-static {p0, p4, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 357
    .line 358
    .line 359
    :cond_17
    invoke-virtual {p3}, LY0/i;->getFontSizeUnit()I

    .line 360
    .line 361
    .line 362
    move-result p4

    .line 363
    if-eq p4, v5, :cond_1a

    .line 364
    .line 365
    if-eq p4, v3, :cond_19

    .line 366
    .line 367
    if-eq p4, v4, :cond_18

    .line 368
    .line 369
    return-void

    .line 370
    :cond_18
    invoke-virtual {p3}, LY0/i;->getFontSize()F

    .line 371
    .line 372
    .line 373
    move-result p3

    .line 374
    const/high16 p4, 0x42c80000    # 100.0f

    .line 375
    .line 376
    div-float/2addr p3, p4

    .line 377
    invoke-static {p0, p3, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addInheritedRelativeSizeSpan(Landroid/text/Spannable;FIII)V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :cond_19
    new-instance p4, Landroid/text/style/RelativeSizeSpan;

    .line 382
    .line 383
    invoke-virtual {p3}, LY0/i;->getFontSize()F

    .line 384
    .line 385
    .line 386
    move-result p3

    .line 387
    invoke-direct {p4, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 388
    .line 389
    .line 390
    invoke-static {p0, p4, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :cond_1a
    new-instance p4, Landroid/text/style/AbsoluteSizeSpan;

    .line 395
    .line 396
    invoke-virtual {p3}, LY0/i;->getFontSize()F

    .line 397
    .line 398
    .line 399
    move-result p3

    .line 400
    float-to-int p3, p3

    .line 401
    invoke-direct {p4, p3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 402
    .line 403
    .line 404
    invoke-static {p0, p4, p1, p2, v1}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 405
    .line 406
    .line 407
    return-void
.end method

.method public static resolveStyle(LY0/i;[Ljava/lang/String;Ljava/util/Map;)LY0/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY0/i;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LY0/i;",
            ">;)",
            "LY0/i;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p0, :cond_3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    array-length v2, p1

    .line 10
    if-ne v2, v1, :cond_1

    .line 11
    .line 12
    aget-object p0, p1, v0

    .line 13
    .line 14
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, LY0/i;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    array-length v2, p1

    .line 22
    if-le v2, v1, :cond_5

    .line 23
    .line 24
    new-instance p0, LY0/i;

    .line 25
    .line 26
    invoke-direct {p0}, LY0/i;-><init>()V

    .line 27
    .line 28
    .line 29
    array-length v1, p1

    .line 30
    :goto_0
    if-ge v0, v1, :cond_2

    .line 31
    .line 32
    aget-object v2, p1, v0

    .line 33
    .line 34
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, LY0/i;

    .line 39
    .line 40
    invoke-virtual {p0, v2}, LY0/i;->chain(LY0/i;)LY0/i;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-object p0

    .line 47
    :cond_3
    if-eqz p1, :cond_4

    .line 48
    .line 49
    array-length v2, p1

    .line 50
    if-ne v2, v1, :cond_4

    .line 51
    .line 52
    aget-object p1, p1, v0

    .line 53
    .line 54
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, LY0/i;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, LY0/i;->chain(LY0/i;)LY0/i;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_4
    if-eqz p1, :cond_5

    .line 66
    .line 67
    array-length v2, p1

    .line 68
    if-le v2, v1, :cond_5

    .line 69
    .line 70
    array-length v1, p1

    .line 71
    :goto_1
    if-ge v0, v1, :cond_5

    .line 72
    .line 73
    aget-object v2, p1, v0

    .line 74
    .line 75
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, LY0/i;

    .line 80
    .line 81
    invoke-virtual {p0, v2}, LY0/i;->chain(LY0/i;)LY0/i;

    .line 82
    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    return-object p0
.end method
