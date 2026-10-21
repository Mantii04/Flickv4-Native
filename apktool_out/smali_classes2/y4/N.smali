.class public final synthetic Ly4/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/FilterActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/FilterActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/N;->b:I

    iput-object p1, p0, Ly4/N;->e:Lflix/com/vision/activities/FilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ly4/N;->e:Lflix/com/vision/activities/FilterActivity;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    iget v3, p0, Ly4/N;->b:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 11
    .line 12
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 13
    .line 14
    .line 15
    iget p1, v1, Lflix/com/vision/activities/FilterActivity;->t:I

    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_0
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->F:Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v0, v1, Lflix/com/vision/activities/FilterActivity;->m:[Ljava/lang/String;

    .line 23
    .line 24
    aget-object v0, v0, p2

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iput p2, v1, Lflix/com/vision/activities/FilterActivity;->t:I

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    const-string p1, "popularity.desc"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p1, "primary_release_date.desc"

    .line 37
    .line 38
    :goto_0
    iput-object p1, v1, Lflix/com/vision/activities/FilterActivity;->J:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean v2, v1, Lflix/com/vision/activities/FilterActivity;->x:Z

    .line 41
    .line 42
    iput v2, v1, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lflix/com/vision/activities/FilterActivity;->e(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :goto_1
    return-void

    .line 48
    :pswitch_0
    sget v3, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 49
    .line 50
    const-string v3, "Network: "

    .line 51
    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 53
    .line 54
    .line 55
    iget p1, v1, Lflix/com/vision/activities/FilterActivity;->A:I

    .line 56
    .line 57
    if-ne p1, p2, :cond_2

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_2
    :try_start_1
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->H:Landroid/widget/TextView;

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v1, Lflix/com/vision/activities/FilterActivity;->q:[Ljava/lang/String;

    .line 69
    .line 70
    aget-object v3, v3, p2

    .line 71
    .line 72
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iput p2, v1, Lflix/com/vision/activities/FilterActivity;->A:I

    .line 83
    .line 84
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->y:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lflix/com/vision/models/tmdb/Network;

    .line 91
    .line 92
    iget p1, p1, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 93
    .line 94
    iput p1, v1, Lflix/com/vision/activities/FilterActivity;->B:I

    .line 95
    .line 96
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->y:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lflix/com/vision/models/tmdb/Network;

    .line 103
    .line 104
    iget-object p1, p1, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 105
    .line 106
    iput-object p1, v1, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    const-string p2, "AMC"

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_3

    .line 117
    .line 118
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 119
    .line 120
    const-string p2, "ABC"

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_3

    .line 127
    .line 128
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 129
    .line 130
    const-string p2, "CBS"

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_3

    .line 137
    .line 138
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 139
    .line 140
    const-string p2, "Discovery+"

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_3

    .line 147
    .line 148
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 149
    .line 150
    const-string p2, "HBO Max"

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_3

    .line 157
    .line 158
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 159
    .line 160
    const-string p2, "BET+"

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_3

    .line 167
    .line 168
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 169
    .line 170
    const-string p2, "BritBox"

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_4

    .line 177
    .line 178
    :cond_3
    iput v2, v1, Lflix/com/vision/activities/FilterActivity;->s:I

    .line 179
    .line 180
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->G:Landroid/widget/TextView;

    .line 181
    .line 182
    iget-object p2, v1, Lflix/com/vision/activities/FilterActivity;->p:[Ljava/lang/String;

    .line 183
    .line 184
    aget-object p2, p2, v2

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iput v2, v1, Lflix/com/vision/activities/FilterActivity;->e:I

    .line 190
    .line 191
    iput v0, v1, Lflix/com/vision/activities/FilterActivity;->b:I

    .line 192
    .line 193
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->D:Landroid/widget/TextView;

    .line 194
    .line 195
    iget-object p2, v1, Lflix/com/vision/activities/FilterActivity;->j:[Ljava/lang/String;

    .line 196
    .line 197
    aget-object p2, p2, v0

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    :cond_4
    iput-boolean v2, v1, Lflix/com/vision/activities/FilterActivity;->x:Z

    .line 203
    .line 204
    iput v2, v1, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Lflix/com/vision/activities/FilterActivity;->e(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    .line 208
    .line 209
    :catch_1
    :goto_2
    return-void

    .line 210
    :pswitch_1
    sget v0, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 211
    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    .line 214
    .line 215
    iget p1, v1, Lflix/com/vision/activities/FilterActivity;->u:I

    .line 216
    .line 217
    if-ne p1, p2, :cond_5

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_5
    :try_start_2
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->E:Landroid/widget/TextView;

    .line 221
    .line 222
    iget-object v0, v1, Lflix/com/vision/activities/FilterActivity;->n:[Ljava/lang/String;

    .line 223
    .line 224
    aget-object v0, v0, p2

    .line 225
    .line 226
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    iput p2, v1, Lflix/com/vision/activities/FilterActivity;->u:I

    .line 230
    .line 231
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->n:[Ljava/lang/String;

    .line 232
    .line 233
    aget-object p1, p1, p2

    .line 234
    .line 235
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iput-object p1, v1, Lflix/com/vision/activities/FilterActivity;->v:Ljava/lang/String;

    .line 240
    .line 241
    iput-boolean v2, v1, Lflix/com/vision/activities/FilterActivity;->x:Z

    .line 242
    .line 243
    iput v2, v1, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Lflix/com/vision/activities/FilterActivity;->e(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 246
    .line 247
    .line 248
    :catch_2
    :goto_3
    return-void

    .line 249
    :pswitch_2
    sget v0, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 250
    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    .line 253
    .line 254
    if-nez p2, :cond_6

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_6
    :try_start_3
    iget p1, v1, Lflix/com/vision/activities/FilterActivity;->e:I

    .line 258
    .line 259
    if-nez p1, :cond_8

    .line 260
    .line 261
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->f:[Ljava/lang/String;

    .line 262
    .line 263
    aget-object p1, p1, p2

    .line 264
    .line 265
    invoke-static {}, LT4/f;->getMovieCategories()Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-lez p2, :cond_7

    .line 270
    .line 271
    sub-int/2addr p2, v2

    .line 272
    :cond_7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    check-cast p2, Lflix/com/vision/models/Genre;

    .line 277
    .line 278
    iget p2, p2, Lflix/com/vision/models/Genre;->id:I

    .line 279
    .line 280
    iput p2, v1, Lflix/com/vision/activities/FilterActivity;->b:I

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_8
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->j:[Ljava/lang/String;

    .line 284
    .line 285
    aget-object p1, p1, p2

    .line 286
    .line 287
    invoke-static {}, LT4/f;->getSeriesCategories()Ljava/util/ArrayList;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    if-lez p2, :cond_9

    .line 292
    .line 293
    sub-int/2addr p2, v2

    .line 294
    :cond_9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    check-cast p2, Lflix/com/vision/models/Genre;

    .line 299
    .line 300
    iget p2, p2, Lflix/com/vision/models/Genre;->id:I

    .line 301
    .line 302
    iput p2, v1, Lflix/com/vision/activities/FilterActivity;->b:I

    .line 303
    .line 304
    :goto_4
    iget-object p2, v1, Lflix/com/vision/activities/FilterActivity;->D:Landroid/widget/TextView;

    .line 305
    .line 306
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    iput-boolean v2, v1, Lflix/com/vision/activities/FilterActivity;->x:Z

    .line 310
    .line 311
    iput v2, v1, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 312
    .line 313
    invoke-virtual {v1, v2}, Lflix/com/vision/activities/FilterActivity;->e(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 314
    .line 315
    .line 316
    :catch_3
    :goto_5
    return-void

    .line 317
    :pswitch_3
    sget v3, Lflix/com/vision/activities/FilterActivity;->O:I

    .line 318
    .line 319
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 320
    .line 321
    .line 322
    iget p1, v1, Lflix/com/vision/activities/FilterActivity;->s:I

    .line 323
    .line 324
    if-ne p1, p2, :cond_a

    .line 325
    .line 326
    goto :goto_7

    .line 327
    :cond_a
    if-nez p2, :cond_b

    .line 328
    .line 329
    iget p1, v1, Lflix/com/vision/activities/FilterActivity;->B:I

    .line 330
    .line 331
    const/16 v3, 0x3e7

    .line 332
    .line 333
    if-eq p1, v3, :cond_b

    .line 334
    .line 335
    const/16 v3, 0x270f

    .line 336
    .line 337
    if-eq p1, v3, :cond_b

    .line 338
    .line 339
    const v3, 0x1869f

    .line 340
    .line 341
    .line 342
    if-eq p1, v3, :cond_b

    .line 343
    .line 344
    :try_start_4
    iput v0, v1, Lflix/com/vision/activities/FilterActivity;->A:I

    .line 345
    .line 346
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->H:Landroid/widget/TextView;

    .line 347
    .line 348
    iget-object v3, v1, Lflix/com/vision/activities/FilterActivity;->q:[Ljava/lang/String;

    .line 349
    .line 350
    aget-object v3, v3, v0

    .line 351
    .line 352
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    const/4 p1, -0x1

    .line 356
    iput p1, v1, Lflix/com/vision/activities/FilterActivity;->B:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 357
    .line 358
    :catch_4
    :cond_b
    :try_start_5
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->G:Landroid/widget/TextView;

    .line 359
    .line 360
    iget-object v3, v1, Lflix/com/vision/activities/FilterActivity;->p:[Ljava/lang/String;

    .line 361
    .line 362
    aget-object v3, v3, p2

    .line 363
    .line 364
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    .line 367
    iput p2, v1, Lflix/com/vision/activities/FilterActivity;->s:I

    .line 368
    .line 369
    iput p2, v1, Lflix/com/vision/activities/FilterActivity;->e:I

    .line 370
    .line 371
    iput v0, v1, Lflix/com/vision/activities/FilterActivity;->b:I

    .line 372
    .line 373
    iget-object p1, v1, Lflix/com/vision/activities/FilterActivity;->D:Landroid/widget/TextView;

    .line 374
    .line 375
    if-nez p2, :cond_c

    .line 376
    .line 377
    iget-object p2, v1, Lflix/com/vision/activities/FilterActivity;->f:[Ljava/lang/String;

    .line 378
    .line 379
    aget-object p2, p2, v0

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_c
    iget-object p2, v1, Lflix/com/vision/activities/FilterActivity;->j:[Ljava/lang/String;

    .line 383
    .line 384
    aget-object p2, p2, v0

    .line 385
    .line 386
    :goto_6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    iput-boolean v2, v1, Lflix/com/vision/activities/FilterActivity;->x:Z

    .line 390
    .line 391
    iput v2, v1, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 392
    .line 393
    invoke-virtual {v1, v2}, Lflix/com/vision/activities/FilterActivity;->e(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 394
    .line 395
    .line 396
    :catch_5
    :goto_7
    return-void

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
