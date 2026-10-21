.class public final synthetic LA4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V
    .locals 0

    .line 1
    iput p2, p0, LA4/e;->b:I

    iput-object p1, p0, LA4/e;->e:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    iget-object v0, p0, LA4/e;->e:Lflix/com/vision/activities/leanback/FilterActivityLeanBack;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p0, LA4/e;->b:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v2, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 10
    .line 11
    const-string v2, "Year: "

    .line 12
    .line 13
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 14
    .line 15
    .line 16
    iget p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->v:I

    .line 17
    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->H:Landroid/widget/TextView;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->n:[Ljava/lang/String;

    .line 29
    .line 30
    aget-object v2, v2, p2

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iput p2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->v:I

    .line 43
    .line 44
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->n:[Ljava/lang/String;

    .line 45
    .line 46
    aget-object p1, p1, p2

    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->w:Ljava/lang/String;

    .line 53
    .line 54
    iput-boolean v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->z:Z

    .line 55
    .line 56
    iput v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :catch_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    sget v2, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 63
    .line 64
    const-string v2, "Sort:"

    .line 65
    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    .line 68
    .line 69
    iget p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->u:I

    .line 70
    .line 71
    if-ne p1, p2, :cond_1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :try_start_1
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->I:Landroid/widget/TextView;

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->m:[Ljava/lang/String;

    .line 82
    .line 83
    aget-object v2, v2, p2

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iput p2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->u:I

    .line 96
    .line 97
    if-nez p2, :cond_2

    .line 98
    .line 99
    const-string p1, "popularity.desc"

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    const-string p1, "primary_release_date.desc"

    .line 103
    .line 104
    :goto_1
    iput-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->O:Ljava/lang/String;

    .line 105
    .line 106
    iput-boolean v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->z:Z

    .line 107
    .line 108
    iput v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->d(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    .line 112
    .line 113
    :catch_1
    :goto_2
    return-void

    .line 114
    :pswitch_1
    sget v2, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 115
    .line 116
    const-string v2, "Network: "

    .line 117
    .line 118
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 119
    .line 120
    .line 121
    iget p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->D:I

    .line 122
    .line 123
    if-ne p1, p2, :cond_3

    .line 124
    .line 125
    goto/16 :goto_3

    .line 126
    .line 127
    :cond_3
    :try_start_2
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->K:Landroid/widget/TextView;

    .line 128
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->q:[Ljava/lang/String;

    .line 135
    .line 136
    aget-object v2, v2, p2

    .line 137
    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iput p2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->D:I

    .line 149
    .line 150
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->A:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lflix/com/vision/models/tmdb/Network;

    .line 157
    .line 158
    iget p1, p1, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 159
    .line 160
    iput p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->E:I

    .line 161
    .line 162
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->A:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Lflix/com/vision/models/tmdb/Network;

    .line 169
    .line 170
    iget-object p1, p1, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 171
    .line 172
    iput-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 173
    .line 174
    if-eqz p1, :cond_5

    .line 175
    .line 176
    const-string p2, "AMC"

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_4

    .line 183
    .line 184
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 185
    .line 186
    const-string p2, "ABC"

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-nez p1, :cond_4

    .line 193
    .line 194
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 195
    .line 196
    const-string p2, "CBS"

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_4

    .line 203
    .line 204
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 205
    .line 206
    const-string p2, "Discovery+"

    .line 207
    .line 208
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_4

    .line 213
    .line 214
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 215
    .line 216
    const-string p2, "HBO Max"

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-nez p1, :cond_4

    .line 223
    .line 224
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 225
    .line 226
    const-string p2, "BET+"

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-nez p1, :cond_4

    .line 233
    .line 234
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 235
    .line 236
    const-string p2, "BritBox"

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-eqz p1, :cond_5

    .line 243
    .line 244
    :cond_4
    iput v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->t:I

    .line 245
    .line 246
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->J:Landroid/widget/TextView;

    .line 247
    .line 248
    iget-object p2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->p:[Ljava/lang/String;

    .line 249
    .line 250
    aget-object p2, p2, v1

    .line 251
    .line 252
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    iput v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e:I

    .line 256
    .line 257
    invoke-virtual {v0}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e()V

    .line 258
    .line 259
    .line 260
    :cond_5
    iput-boolean v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->z:Z

    .line 261
    .line 262
    iput v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->d(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 265
    .line 266
    .line 267
    :catch_2
    :goto_3
    return-void

    .line 268
    :pswitch_2
    sget v2, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 269
    .line 270
    const-string v2, "Genres: "

    .line 271
    .line 272
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 273
    .line 274
    .line 275
    iget p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->s:I

    .line 276
    .line 277
    if-ne p1, p2, :cond_6

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_6
    :try_start_3
    iget p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e:I

    .line 281
    .line 282
    if-nez p1, :cond_8

    .line 283
    .line 284
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->f:[Ljava/lang/String;

    .line 285
    .line 286
    aget-object p1, p1, p2

    .line 287
    .line 288
    invoke-static {}, LT4/f;->getMovieCategories()Ljava/util/ArrayList;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    if-lez p2, :cond_7

    .line 293
    .line 294
    add-int/lit8 v4, p2, -0x1

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_7
    move v4, p2

    .line 298
    :goto_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Lflix/com/vision/models/Genre;

    .line 303
    .line 304
    iget v3, v3, Lflix/com/vision/models/Genre;->id:I

    .line 305
    .line 306
    iput v3, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->b:I

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_8
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->j:[Ljava/lang/String;

    .line 310
    .line 311
    aget-object p1, p1, p2

    .line 312
    .line 313
    invoke-static {}, LT4/f;->getSeriesCategories()Ljava/util/ArrayList;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    if-lez p2, :cond_9

    .line 318
    .line 319
    add-int/lit8 v4, p2, -0x1

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_9
    move v4, p2

    .line 323
    :goto_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    check-cast v3, Lflix/com/vision/models/Genre;

    .line 328
    .line 329
    iget v3, v3, Lflix/com/vision/models/Genre;->id:I

    .line 330
    .line 331
    iput v3, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->b:I

    .line 332
    .line 333
    :goto_6
    iput p2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->s:I

    .line 334
    .line 335
    iput-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->x:Ljava/lang/String;

    .line 336
    .line 337
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->G:Landroid/widget/TextView;

    .line 338
    .line 339
    new-instance p2, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object v2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->x:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    .line 355
    .line 356
    iput-boolean v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->z:Z

    .line 357
    .line 358
    iput v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->d(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 361
    .line 362
    .line 363
    :catch_3
    :goto_7
    return-void

    .line 364
    :pswitch_3
    sget v2, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->T:I

    .line 365
    .line 366
    const-string v2, "Network:"

    .line 367
    .line 368
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 369
    .line 370
    .line 371
    iget p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->t:I

    .line 372
    .line 373
    if-ne p1, p2, :cond_a

    .line 374
    .line 375
    goto :goto_8

    .line 376
    :cond_a
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 381
    .line 382
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    const-string v3, "filter_type_index"

    .line 387
    .line 388
    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    .line 394
    .line 395
    if-nez p2, :cond_b

    .line 396
    .line 397
    iget p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->E:I

    .line 398
    .line 399
    const/16 v3, 0x3e7

    .line 400
    .line 401
    if-eq p1, v3, :cond_b

    .line 402
    .line 403
    const/16 v3, 0x270f

    .line 404
    .line 405
    if-eq p1, v3, :cond_b

    .line 406
    .line 407
    const v3, 0x1869f

    .line 408
    .line 409
    .line 410
    if-eq p1, v3, :cond_b

    .line 411
    .line 412
    const/4 p1, 0x0

    .line 413
    :try_start_4
    iput p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->D:I

    .line 414
    .line 415
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->K:Landroid/widget/TextView;

    .line 416
    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-object v2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->q:[Ljava/lang/String;

    .line 423
    .line 424
    iget v4, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->D:I

    .line 425
    .line 426
    aget-object v2, v2, v4

    .line 427
    .line 428
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    const/4 p1, -0x1

    .line 439
    iput p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->E:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 440
    .line 441
    :catch_4
    :cond_b
    :try_start_5
    iget-object p1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->J:Landroid/widget/TextView;

    .line 442
    .line 443
    iget-object v2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->p:[Ljava/lang/String;

    .line 444
    .line 445
    aget-object v2, v2, p2

    .line 446
    .line 447
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    .line 449
    .line 450
    iput p2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->t:I

    .line 451
    .line 452
    iput p2, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e:I

    .line 453
    .line 454
    invoke-virtual {v0}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e()V

    .line 455
    .line 456
    .line 457
    iput-boolean v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->z:Z

    .line 458
    .line 459
    iput v1, v0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 460
    .line 461
    invoke-virtual {v0, v1}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->d(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 462
    .line 463
    .line 464
    :catch_5
    :goto_8
    return-void

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
