.class public final synthetic LA4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/leanback/MainActivityLeanback;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/leanback/MainActivityLeanback;I)V
    .locals 0

    .line 1
    iput p2, p0, LA4/k;->b:I

    iput-object p1, p0, LA4/k;->e:Lflix/com/vision/activities/leanback/MainActivityLeanback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, LA4/k;->e:Lflix/com/vision/activities/leanback/MainActivityLeanback;

    .line 3
    .line 4
    iget v2, p0, LA4/k;->b:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 15
    .line 16
    :try_start_0
    invoke-static {v1, v0}, LA/h;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, -0x1

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 24
    .line 25
    filled-new-array {v2, v0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v2, 0x2711

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Lz/d;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->C:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->C:Landroid/widget/TextView;

    .line 49
    .line 50
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 51
    .line 52
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->C:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 79
    .line 80
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 81
    .line 82
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->D:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->t:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->t:Landroid/widget/TextView;

    .line 109
    .line 110
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 111
    .line 112
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->t:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->u:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_4

    .line 137
    .line 138
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->u:Landroid/widget/TextView;

    .line 139
    .line 140
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 141
    .line 142
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->u:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    .line 159
    .line 160
    :cond_4
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->v:Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_5

    .line 167
    .line 168
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->v:Landroid/widget/TextView;

    .line 169
    .line 170
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 171
    .line 172
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->v:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .line 189
    .line 190
    :cond_5
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->w:Landroid/widget/TextView;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_6

    .line 197
    .line 198
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->w:Landroid/widget/TextView;

    .line 199
    .line 200
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 201
    .line 202
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 203
    .line 204
    .line 205
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->w:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    .line 219
    .line 220
    :cond_6
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->x:Landroid/widget/TextView;

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_7

    .line 227
    .line 228
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->x:Landroid/widget/TextView;

    .line 229
    .line 230
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 231
    .line 232
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->x:Landroid/widget/TextView;

    .line 236
    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    .line 249
    .line 250
    :cond_7
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->y:Landroid/widget/TextView;

    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_8

    .line 257
    .line 258
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->y:Landroid/widget/TextView;

    .line 259
    .line 260
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 261
    .line 262
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 263
    .line 264
    .line 265
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->y:Landroid/widget/TextView;

    .line 266
    .line 267
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    .line 279
    .line 280
    :cond_8
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->B:Landroid/widget/TextView;

    .line 281
    .line 282
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_9

    .line 287
    .line 288
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->B:Landroid/widget/TextView;

    .line 289
    .line 290
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 291
    .line 292
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->B:Landroid/widget/TextView;

    .line 296
    .line 297
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    .line 309
    .line 310
    :cond_9
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->z:Landroid/widget/TextView;

    .line 311
    .line 312
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-nez v0, :cond_a

    .line 317
    .line 318
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->z:Landroid/widget/TextView;

    .line 319
    .line 320
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 321
    .line 322
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 323
    .line 324
    .line 325
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->z:Landroid/widget/TextView;

    .line 326
    .line 327
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    sget v3, Lflix/com/vision/R$color;->color_grey:I

    .line 332
    .line 333
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    .line 339
    .line 340
    :cond_a
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->A:Landroid/widget/TextView;

    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-nez v0, :cond_b

    .line 347
    .line 348
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->A:Landroid/widget/TextView;

    .line 349
    .line 350
    sget v2, Lflix/com/vision/R$color;->white:I

    .line 351
    .line 352
    invoke-static {v0, v2}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->j(Landroid/widget/TextView;I)V

    .line 353
    .line 354
    .line 355
    iget-object v0, v1, Lflix/com/vision/activities/leanback/MainActivityLeanback;->A:Landroid/widget/TextView;

    .line 356
    .line 357
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    sget v2, Lflix/com/vision/R$color;->color_grey:I

    .line 362
    .line 363
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    .line 369
    .line 370
    :cond_b
    return-void

    .line 371
    :pswitch_1
    sget v0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 372
    .line 373
    invoke-virtual {v1}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->g()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_c

    .line 378
    .line 379
    invoke-virtual {v1}, Lflix/com/vision/activities/leanback/MainActivityLeanback;->e()V

    .line 380
    .line 381
    .line 382
    :cond_c
    return-void

    .line 383
    :pswitch_2
    sget v2, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 384
    .line 385
    const-string v2, ""

    .line 386
    .line 387
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    goto :goto_1

    .line 417
    :catch_1
    move-exception v3

    .line 418
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 419
    .line 420
    .line 421
    const-string v3, "x.x.x"

    .line 422
    .line 423
    :goto_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 428
    .line 429
    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    if-nez v4, :cond_f

    .line 434
    .line 435
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 440
    .line 441
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    sget v5, Lflix/com/vision/R$string;->start_count_label:I

    .line 446
    .line 447
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    .line 457
    .line 458
    sget-object v4, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    if-eqz v5, :cond_d

    .line 469
    .line 470
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    check-cast v5, Ljava/lang/String;

    .line 475
    .line 476
    invoke-static {v2, v5}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    goto :goto_2

    .line 481
    :cond_d
    new-instance v4, Le/r;

    .line 482
    .line 483
    sget v5, Lflix/com/vision/R$style;->AlertDialogCustom:I

    .line 484
    .line 485
    invoke-direct {v4, v1, v5}, Le/r;-><init>(Landroid/content/Context;I)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    sget v6, Lflix/com/vision/R$layout;->dialog_release_notes:I

    .line 493
    .line 494
    const/4 v7, 0x0

    .line 495
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    invoke-virtual {v4, v5}, Le/r;->setView(Landroid/view/View;)Le/r;

    .line 500
    .line 501
    .line 502
    sget v6, Lflix/com/vision/R$id;->rn_title:I

    .line 503
    .line 504
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 505
    .line 506
    .line 507
    move-result-object v6

    .line 508
    check-cast v6, Landroid/widget/TextView;

    .line 509
    .line 510
    sget v7, Lflix/com/vision/R$id;->rn_content:I

    .line 511
    .line 512
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    check-cast v7, Landroid/widget/TextView;

    .line 517
    .line 518
    sget v8, Lflix/com/vision/R$id;->rn_btn_ok:I

    .line 519
    .line 520
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    new-instance v8, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    const-string v9, "v"

    .line 527
    .line 528
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    const-string v9, " Release Notes"

    .line 535
    .line 536
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v8

    .line 543
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v4}, Le/r;->create()Le/s;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    const/4 v4, 0x1

    .line 554
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    if-eqz v6, :cond_e

    .line 562
    .line 563
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 568
    .line 569
    invoke-direct {v7, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    .line 574
    .line 575
    :cond_e
    new-instance v6, LA4/m;

    .line 576
    .line 577
    invoke-direct {v6, v0, v1, v2}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    .line 582
    .line 583
    :try_start_2
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 584
    .line 585
    .line 586
    goto :goto_3

    .line 587
    :catch_2
    move-exception v0

    .line 588
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 589
    .line 590
    .line 591
    :goto_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 596
    .line 597
    invoke-static {v0, v3, v4}, LA/i;->x(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 598
    .line 599
    .line 600
    :cond_f
    return-void

    .line 601
    :pswitch_3
    sget v0, Lflix/com/vision/activities/leanback/MainActivityLeanback;->I:I

    .line 602
    .line 603
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    .line 605
    .line 606
    new-instance v0, Landroid/content/Intent;

    .line 607
    .line 608
    const-class v2, Lflix/com/vision/activities/leanback/SlideshowActivity;

    .line 609
    .line 610
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 614
    .line 615
    .line 616
    return-void

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
