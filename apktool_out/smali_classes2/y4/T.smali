.class public final synthetic Ly4/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/LinksActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/LinksActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/T;->b:I

    iput-object p1, p0, Ly4/T;->e:Lflix/com/vision/activities/LinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const-string v0, "pref_ml_host"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "1080p - 720p - 480p [FLIXVISION5]"

    .line 5
    .line 6
    const-string v3, "1080p - 720p - 480p [FLIXVISION2]"

    .line 7
    .line 8
    const-string v4, "https://embed.smashystream.com/playere.php?tmdb="

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v6, p0, Ly4/T;->e:Lflix/com/vision/activities/LinksActivity;

    .line 12
    .line 13
    iget v7, p0, Ly4/T;->b:I

    .line 14
    .line 15
    packed-switch v7, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->f:Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    new-instance v1, Ly4/Q;

    .line 21
    .line 22
    invoke-direct {v1, v6, v5}, Ly4/Q;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->r:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->j:Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    :pswitch_1
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 47
    .line 48
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 49
    .line 50
    .line 51
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 52
    .line 53
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v4, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 62
    .line 63
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 64
    .line 65
    .line 66
    move-result-wide v8

    .line 67
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, "&season="

    .line 71
    .line 72
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v4, v6, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 76
    .line 77
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, "&episode="

    .line 81
    .line 82
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v4, v6, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 86
    .line 87
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iput-object v4, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v3, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 97
    .line 98
    iput-boolean v5, v0, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 99
    .line 100
    iget-object v3, v6, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    .line 101
    .line 102
    invoke-virtual {v3, v0}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 103
    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    iget-object v4, v6, Lflix/com/vision/activities/LinksActivity;->M:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v4, "/tv/tmdb/"

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v4, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 121
    .line 122
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 123
    .line 124
    .line 125
    move-result-wide v7

    .line 126
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v4, "-"

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget v7, v6, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 135
    .line 136
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v7, v6, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 143
    .line 144
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    iput-object v3, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 152
    .line 153
    const-string v3, "1080p - 720p - 480p-[FLIXVISION3]"

    .line 154
    .line 155
    iput-object v3, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 156
    .line 157
    iput-boolean v5, v0, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 158
    .line 159
    iget-object v3, v6, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    .line 160
    .line 161
    invoke-virtual {v3, v0}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 162
    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v3, "https://vixsrc.to/tv/"

    .line 167
    .line 168
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v3, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 172
    .line 173
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v3, "/"

    .line 181
    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget v7, v6, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 186
    .line 187
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget v7, v6, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 194
    .line 195
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    new-instance v7, Lflix/com/vision/models/VideoSource;

    .line 203
    .line 204
    invoke-direct {v7}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 205
    .line 206
    .line 207
    iput-object v0, v7, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 208
    .line 209
    const-string v0, "1080p - 720p - 480p - [FLIXVISION11]"

    .line 210
    .line 211
    iput-object v0, v7, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 212
    .line 213
    iput-boolean v5, v7, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 214
    .line 215
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    .line 216
    .line 217
    invoke-virtual {v0, v7}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 218
    .line 219
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v7, "https://vidsrc.sh/embed/tv/"

    .line 223
    .line 224
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v7, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 228
    .line 229
    invoke-virtual {v7}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 230
    .line 231
    .line 232
    move-result-wide v7

    .line 233
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget v7, v6, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 240
    .line 241
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget v4, v6, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 248
    .line 249
    invoke-static {v0, v4, v3}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    new-instance v3, Lflix/com/vision/models/VideoSource;

    .line 254
    .line 255
    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 256
    .line 257
    .line 258
    iput-object v0, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 259
    .line 260
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 261
    .line 262
    iput-boolean v5, v3, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 263
    .line 264
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    .line 265
    .line 266
    invoke-virtual {v0, v3}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 267
    .line 268
    .line 269
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->y:LC4/j0;

    .line 270
    .line 271
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 272
    .line 273
    .line 274
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lm1/b0;)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :pswitch_2
    sget v1, Lflix/com/vision/activities/LinksActivity;->b0:I

    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 290
    .line 291
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 292
    .line 293
    sget v2, Lflix/com/vision/R$string;->ml_host:I

    .line 294
    .line 295
    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    new-instance v1, Ld5/l;

    .line 304
    .line 305
    invoke-direct {v1, v6, v6, v0}, Ld5/l;-><init>(Landroid/content/Context;LU4/f;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 309
    .line 310
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget v2, v6, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 315
    .line 316
    iget v3, v6, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 317
    .line 318
    invoke-virtual {v1, v0, v2, v3}, Ld5/l;->process(Ljava/lang/String;II)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :pswitch_3
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 323
    .line 324
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 325
    .line 326
    .line 327
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 328
    .line 329
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 330
    .line 331
    .line 332
    new-instance v0, Lflix/com/vision/models/VideoSource;

    .line 333
    .line 334
    invoke-direct {v0}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 335
    .line 336
    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object v4, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 343
    .line 344
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 345
    .line 346
    .line 347
    move-result-wide v8

    .line 348
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    iput-object v4, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 356
    .line 357
    iput-object v3, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 358
    .line 359
    iput-boolean v5, v0, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 360
    .line 361
    iget-object v3, v6, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    .line 362
    .line 363
    invoke-virtual {v3, v0}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 364
    .line 365
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v3, "https://vidsrc.xyz/embed/movie/"

    .line 369
    .line 370
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-object v3, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 374
    .line 375
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 376
    .line 377
    .line 378
    move-result-wide v3

    .line 379
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    new-instance v3, Lflix/com/vision/models/VideoSource;

    .line 387
    .line 388
    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 389
    .line 390
    .line 391
    iput-object v0, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 392
    .line 393
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 394
    .line 395
    iput-boolean v5, v3, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 396
    .line 397
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    .line 398
    .line 399
    invoke-virtual {v0, v3}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 400
    .line 401
    .line 402
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->y:LC4/j0;

    .line 403
    .line 404
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 405
    .line 406
    .line 407
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lm1/b0;)V

    .line 410
    .line 411
    .line 412
    return-void

    .line 413
    :pswitch_4
    sget v1, Lflix/com/vision/activities/LinksActivity;->b0:I

    .line 414
    .line 415
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 423
    .line 424
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 425
    .line 426
    sget v2, Lflix/com/vision/R$string;->ml_host:I

    .line 427
    .line 428
    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    new-instance v1, Ld5/f;

    .line 437
    .line 438
    invoke-direct {v1, v6, v6, v0}, Ld5/f;-><init>(Landroid/content/Context;LU4/f;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    iget-object v0, v6, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 442
    .line 443
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v1, v0}, Ld5/f;->process(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    return-void

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
