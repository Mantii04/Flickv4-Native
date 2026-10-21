.class public final synthetic Ly4/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MovieDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MovieDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/p0;->b:I

    iput-object p1, p0, Ly4/p0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    const/16 p1, 0x30

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Ly4/p0;->e:Lflix/com/vision/activities/MovieDetailActivity;

    .line 7
    .line 8
    iget v4, p0, Ly4/p0;->b:I

    .line 9
    .line 10
    packed-switch v4, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 14
    .line 15
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->J0:Ljava/util/ArrayList;

    .line 20
    .line 21
    const-string v4, "seasons"

    .line 22
    .line 23
    const-string v5, "movie"

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Landroid/content/Intent;

    .line 32
    .line 33
    const-class v1, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;

    .line 34
    .line 35
    invoke-direct {p1, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 40
    .line 41
    const-class v1, Lflix/com/vision/activities/SeriesDetailActivity;

    .line 42
    .line 43
    invoke-direct {p1, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 47
    .line 48
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 60
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, v0, Lflix/com/vision/models/Movie;->seasons:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-boolean p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->N0:Z

    .line 73
    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 77
    .line 78
    iget-object p1, p1, Lflix/com/vision/models/Movie;->raw_release_date:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v0, "This Movie Is Not Yet Released \nRelease Date: "

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->O0:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v3, p1, v2}, Lh5/i;->makeToastLong(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    const-string p1, "This Movie Is Not Yet Released"

    .line 103
    .line 104
    invoke-static {v3, p1, v2}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->g0:Landroid/widget/LinearLayout;

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Landroid/os/Handler;

    .line 114
    .line 115
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v1, Ly4/k0;

    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    invoke-direct {v1, v3, v2}, Ly4/k0;-><init>(Lflix/com/vision/activities/MovieDetailActivity;I)V

    .line 122
    .line 123
    .line 124
    const-wide/16 v6, 0x3e8

    .line 125
    .line 126
    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    .line 128
    .line 129
    new-instance p1, Landroid/content/Intent;

    .line 130
    .line 131
    const-class v1, Lflix/com/vision/activities/LinksActivity;

    .line 132
    .line 133
    invoke-direct {p1, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 137
    .line 138
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 145
    .line 146
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v1, "mini_poster"

    .line 151
    .line 152
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 156
    .line 157
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getPlot()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v1, "plot"

    .line 162
    .line 163
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    .line 168
    .line 169
    :goto_1
    return-void

    .line 170
    :pswitch_0
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->g0:Landroid/widget/LinearLayout;

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    .line 174
    .line 175
    new-instance p1, Landroid/os/Handler;

    .line 176
    .line 177
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 178
    .line 179
    .line 180
    new-instance v0, Ly4/k0;

    .line 181
    .line 182
    const/4 v2, 0x3

    .line 183
    invoke-direct {v0, v3, v2}, Ly4/k0;-><init>(Lflix/com/vision/activities/MovieDetailActivity;I)V

    .line 184
    .line 185
    .line 186
    const-wide/16 v4, 0x7d0

    .line 187
    .line 188
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    .line 190
    .line 191
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->M0:Ljava/lang/String;

    .line 192
    .line 193
    if-eqz p1, :cond_7

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_4

    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :cond_4
    const-string p1, ".png"

    .line 204
    .line 205
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 206
    .line 207
    const-class v1, Lflix/com/vision/activities/player/YouTubeWebviewActivity;

    .line 208
    .line 209
    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .line 211
    .line 212
    const-string v1, "url"

    .line 213
    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    iget-object v4, v4, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v4, "/ext/goyt2.html?link="

    .line 229
    .line 230
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivity;->M0:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    const-string v1, "poster"

    .line 246
    .line 247
    iget-object v2, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 248
    .line 249
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    const-string v1, "video_id"

    .line 257
    .line 258
    iget-object v2, v3, Lflix/com/vision/activities/MovieDetailActivity;->M0:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    .line 262
    .line 263
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 264
    .line 265
    iget-boolean v1, v1, Lflix/com/vision/models/Movie;->is_title_logo_available:Z

    .line 266
    .line 267
    if-eqz v1, :cond_6

    .line 268
    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    iget-object v2, v2, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    sget v2, Lflix/com/vision/R$string;->api_path_movie:I

    .line 284
    .line 285
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    iget-object v2, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 293
    .line 294
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 295
    .line 296
    .line 297
    move-result-wide v4

    .line 298
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iget-object v2, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 309
    .line 310
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_5

    .line 315
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    iget-object v2, v2, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    sget v2, Lflix/com/vision/R$string;->api_path_tv:I

    .line 331
    .line 332
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget-object v2, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 340
    .line 341
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 342
    .line 343
    .line 344
    move-result-wide v4

    .line 345
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    :cond_5
    const-string p1, "title_logo"

    .line 356
    .line 357
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    .line 359
    .line 360
    :cond_6
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_7
    :goto_2
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    const-string v0, "No Trailer Found!"

    .line 369
    .line 370
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 375
    .line 376
    .line 377
    :catch_0
    :goto_3
    return-void

    .line 378
    :pswitch_1
    sget p1, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 384
    .line 385
    if-eqz p1, :cond_8

    .line 386
    .line 387
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 392
    .line 393
    const-string v0, "pref_classic_search"

    .line 394
    .line 395
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    if-nez p1, :cond_8

    .line 400
    .line 401
    new-instance p1, Landroid/content/Intent;

    .line 402
    .line 403
    const-class v0, Lflix/com/vision/activities/SearchActivityTV;

    .line 404
    .line 405
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 409
    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_8
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->e0:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 413
    .line 414
    invoke-virtual {p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 415
    .line 416
    .line 417
    :goto_4
    return-void

    .line 418
    :pswitch_2
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivity;->w0:Landroid/widget/TextView;

    .line 419
    .line 420
    const-string v5, "PLAY"

    .line 421
    .line 422
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    .line 424
    .line 425
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivity;->p:Landroid/widget/LinearLayout;

    .line 426
    .line 427
    const/16 v5, 0x8

    .line 428
    .line 429
    if-eqz v4, :cond_9

    .line 430
    .line 431
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    :cond_9
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivity;->z0:Landroid/widget/ImageView;

    .line 435
    .line 436
    sget v6, Lflix/com/vision/R$drawable;->ic_play:I

    .line 437
    .line 438
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    .line 440
    .line 441
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivity;->k0:Landroid/widget/RelativeLayout;

    .line 442
    .line 443
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 444
    .line 445
    .line 446
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    iget-object v4, v4, Lflix/com/vision/App;->r:LP4/e;

    .line 451
    .line 452
    iget-object v5, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 453
    .line 454
    invoke-virtual {v4, v5}, LP4/e;->markAsWatched(Lflix/com/vision/models/Movie;)V

    .line 455
    .line 456
    .line 457
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 458
    .line 459
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    if-eqz v4, :cond_c

    .line 464
    .line 465
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 470
    .line 471
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    iget-object v6, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 481
    .line 482
    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 483
    .line 484
    .line 485
    move-result-wide v6

    .line 486
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v6, "watched_season_index"

    .line 490
    .line 491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 503
    .line 504
    .line 505
    const-string v4, ""

    .line 506
    .line 507
    :try_start_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    iget-object v5, v5, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 512
    .line 513
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 514
    .line 515
    .line 516
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    move v6, v1

    .line 518
    :goto_5
    iget-object v7, v3, Lflix/com/vision/activities/MovieDetailActivity;->J0:Ljava/util/ArrayList;

    .line 519
    .line 520
    :try_start_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 521
    .line 522
    .line 523
    move-result v8

    .line 524
    if-ge v6, v8, :cond_c

    .line 525
    .line 526
    move v8, v1

    .line 527
    :cond_a
    :goto_6
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    check-cast v9, Lflix/com/vision/models/Season;

    .line 532
    .line 533
    iget v9, v9, Lflix/com/vision/models/Season;->episode_count:I

    .line 534
    .line 535
    if-ge v8, v9, :cond_b

    .line 536
    .line 537
    new-instance v9, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .line 541
    .line 542
    iget-object v10, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 543
    .line 544
    invoke-virtual {v10}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 545
    .line 546
    .line 547
    move-result-wide v10

    .line 548
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    add-int/lit8 v10, v6, 0x1

    .line 555
    .line 556
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    add-int/2addr v8, v2

    .line 563
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v9

    .line 570
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    iget-object v10, v10, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 575
    .line 576
    invoke-interface {v10, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 577
    .line 578
    .line 579
    move-result v10

    .line 580
    if-eqz v10, :cond_a

    .line 581
    .line 582
    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 583
    .line 584
    .line 585
    goto :goto_6

    .line 586
    :cond_b
    add-int/2addr v6, v2

    .line 587
    goto :goto_5

    .line 588
    :catch_1
    :cond_c
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    iput-boolean v2, v4, Lflix/com/vision/App;->e:Z

    .line 593
    .line 594
    :try_start_3
    const-string v2, "Marked as Watched"

    .line 595
    .line 596
    invoke-static {v3, v2, v0, p1, v1}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 597
    .line 598
    .line 599
    :catch_2
    return-void

    .line 600
    :pswitch_3
    sget v4, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 601
    .line 602
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    iget-object v4, v4, Lflix/com/vision/App;->r:LP4/e;

    .line 610
    .line 611
    iget-object v5, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 612
    .line 613
    invoke-virtual {v4, v5}, LP4/e;->isMovieFavorited(Lflix/com/vision/models/Movie;)Z

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    if-nez v4, :cond_d

    .line 618
    .line 619
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    iget-object v4, v4, Lflix/com/vision/App;->r:LP4/e;

    .line 624
    .line 625
    iget-object v5, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 626
    .line 627
    invoke-virtual {v4, v5}, LP4/e;->addMovieFavorites(Lflix/com/vision/models/Movie;)Z

    .line 628
    .line 629
    .line 630
    iput-boolean v2, v3, Lflix/com/vision/activities/MovieDetailActivity;->K:Z

    .line 631
    .line 632
    :try_start_4
    const-string v2, "Added to your List"

    .line 633
    .line 634
    invoke-static {v3, v2, v0, p1, v1}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 635
    .line 636
    .line 637
    goto :goto_7

    .line 638
    :cond_d
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    iget-object v2, v2, Lflix/com/vision/App;->r:LP4/e;

    .line 643
    .line 644
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivity;->l0:Lflix/com/vision/models/Movie;

    .line 645
    .line 646
    invoke-virtual {v2, v4}, LP4/e;->deleteFavoriteMovie(Lflix/com/vision/models/Movie;)V

    .line 647
    .line 648
    .line 649
    iput-boolean v1, v3, Lflix/com/vision/activities/MovieDetailActivity;->K:Z

    .line 650
    .line 651
    :try_start_5
    const-string v2, "Removed from your List"

    .line 652
    .line 653
    invoke-static {v3, v2, v0, p1, v1}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 654
    .line 655
    .line 656
    :catch_3
    :goto_7
    iget-boolean p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->K:Z

    .line 657
    .line 658
    if-nez p1, :cond_e

    .line 659
    .line 660
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->A0:Landroid/widget/ImageView;

    .line 661
    .line 662
    sget v0, Lflix/com/vision/R$drawable;->ic_bookmark:I

    .line 663
    .line 664
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 665
    .line 666
    .line 667
    goto :goto_8

    .line 668
    :cond_e
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->A0:Landroid/widget/ImageView;

    .line 669
    .line 670
    sget v0, Lflix/com/vision/R$drawable;->ic_delete_bookmark:I

    .line 671
    .line 672
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 673
    .line 674
    .line 675
    :goto_8
    return-void

    .line 676
    :pswitch_4
    sget p1, Lflix/com/vision/activities/MovieDetailActivity;->S0:I

    .line 677
    .line 678
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    new-instance p1, Landroid/content/Intent;

    .line 682
    .line 683
    const-class v0, Lflix/com/vision/activities/SettingsActivity;

    .line 684
    .line 685
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .line 687
    .line 688
    const/16 v0, 0x44c

    .line 689
    .line 690
    invoke-virtual {v3, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 691
    .line 692
    .line 693
    return-void

    .line 694
    :pswitch_5
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivity;->m0:Lio/github/giangpham96/expandable_textview/ExpandableTextView;

    .line 695
    .line 696
    if-eqz p1, :cond_f

    .line 697
    .line 698
    invoke-virtual {p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->toggle()V

    .line 699
    .line 700
    .line 701
    :cond_f
    return-void

    .line 702
    nop

    .line 703
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
