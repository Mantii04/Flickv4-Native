.class public final synthetic Ly4/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/y0;->b:I

    iput-object p1, p0, Ly4/y0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    const/4 p1, 0x0

    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Ly4/y0;->e:Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 7
    .line 8
    iget v4, p0, Ly4/y0;->b:I

    .line 9
    .line 10
    packed-switch v4, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 14
    .line 15
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->R0:Ljava/util/ArrayList;

    .line 20
    .line 21
    const-string v5, "seasons"

    .line 22
    .line 23
    const-string v6, "movie"

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
    const-class v0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;

    .line 34
    .line 35
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 40
    .line 41
    const-class v0, Lflix/com/vision/activities/SeriesDetailActivity;

    .line 42
    .line 43
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 47
    .line 48
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

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
    iget-boolean p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->V0:Z

    .line 73
    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

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
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->W0:Ljava/lang/String;

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
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->o0:Landroid/widget/LinearLayout;

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
    new-instance v1, Ly4/v0;

    .line 119
    .line 120
    invoke-direct {v1, v3, v0}, Ly4/v0;-><init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V

    .line 121
    .line 122
    .line 123
    const-wide/16 v7, 0x3e8

    .line 124
    .line 125
    invoke-virtual {p1, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    .line 127
    .line 128
    new-instance p1, Landroid/content/Intent;

    .line 129
    .line 130
    const-class v0, Lflix/com/vision/activities/LinksActivity;

    .line 131
    .line 132
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 136
    .line 137
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 144
    .line 145
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "mini_poster"

    .line 150
    .line 151
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 155
    .line 156
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getPlot()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "plot"

    .line 161
    .line 162
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    .line 167
    .line 168
    :goto_1
    return-void

    .line 169
    :pswitch_0
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 170
    .line 171
    iget-boolean v1, v0, Lflix/com/vision/models/Movie;->is_title_logo_available:Z

    .line 172
    .line 173
    if-eqz v1, :cond_4

    .line 174
    .line 175
    iget-object p1, v0, Lflix/com/vision/models/Movie;->logoUrl:Ljava/lang/String;

    .line 176
    .line 177
    :cond_4
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->n:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v2, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v0, v1, v2, p1}, LA4/r;->newInstance(Lflix/com/vision/models/Movie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA4/r;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v3}, Landroidx/fragment/app/H;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v1, "MovieDetailsDialog"

    .line 190
    .line 191
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/y;->show(Landroidx/fragment/app/i0;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_1
    sget p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 201
    .line 202
    if-eqz p1, :cond_5

    .line 203
    .line 204
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 209
    .line 210
    const-string v0, "pref_classic_search"

    .line 211
    .line 212
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_5

    .line 217
    .line 218
    new-instance p1, Landroid/content/Intent;

    .line 219
    .line 220
    const-class v0, Lflix/com/vision/activities/SearchActivityTV;

    .line 221
    .line 222
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_5
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->m0:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 230
    .line 231
    invoke-virtual {p1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 232
    .line 233
    .line 234
    :goto_2
    return-void

    .line 235
    :pswitch_2
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->o0:Landroid/widget/LinearLayout;

    .line 236
    .line 237
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    .line 239
    .line 240
    new-instance p1, Landroid/os/Handler;

    .line 241
    .line 242
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 243
    .line 244
    .line 245
    new-instance v0, Ly4/v0;

    .line 246
    .line 247
    const/4 v2, 0x2

    .line 248
    invoke-direct {v0, v3, v2}, Ly4/v0;-><init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V

    .line 249
    .line 250
    .line 251
    const-wide/16 v4, 0x7d0

    .line 252
    .line 253
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    .line 255
    .line 256
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->U0:Ljava/lang/String;

    .line 257
    .line 258
    if-eqz p1, :cond_8

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-nez p1, :cond_6

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_6
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 268
    .line 269
    const-class v0, Lflix/com/vision/activities/player/YouTubeWebviewActivity;

    .line 270
    .line 271
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .line 273
    .line 274
    const-string v0, "url"

    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    iget-object v2, v2, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v2, "/ext/goyt2.html?link="

    .line 291
    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget-object v2, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->U0:Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    .line 306
    .line 307
    const-string v0, "video_id"

    .line 308
    .line 309
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->U0:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    const-string v0, "poster"

    .line 315
    .line 316
    iget-object v1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 317
    .line 318
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    .line 324
    .line 325
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 326
    .line 327
    iget-boolean v1, v0, Lflix/com/vision/models/Movie;->is_title_logo_available:Z

    .line 328
    .line 329
    if-eqz v1, :cond_7

    .line 330
    .line 331
    const-string v1, "title_logo"

    .line 332
    .line 333
    iget-object v0, v0, Lflix/com/vision/models/Movie;->logoUrl:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    :cond_7
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .line 340
    .line 341
    goto :goto_4

    .line 342
    :cond_8
    :goto_3
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    const-string v0, "No Trailer Found!"

    .line 347
    .line 348
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 353
    .line 354
    .line 355
    :catch_0
    :goto_4
    return-void

    .line 356
    :pswitch_3
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->E0:Landroid/widget/TextView;

    .line 357
    .line 358
    const-string v5, "PLAY"

    .line 359
    .line 360
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    .line 362
    .line 363
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->x:Landroid/widget/LinearLayout;

    .line 364
    .line 365
    if-eqz v4, :cond_9

    .line 366
    .line 367
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    :cond_9
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->H0:Landroid/widget/ImageView;

    .line 371
    .line 372
    sget v5, Lflix/com/vision/R$drawable;->ic_play:I

    .line 373
    .line 374
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    .line 376
    .line 377
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->s0:Landroid/widget/RelativeLayout;

    .line 378
    .line 379
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 380
    .line 381
    .line 382
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 387
    .line 388
    iget-object v4, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 389
    .line 390
    invoke-virtual {v0, v4}, LP4/e;->markAsWatched(Lflix/com/vision/models/Movie;)V

    .line 391
    .line 392
    .line 393
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 394
    .line 395
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_c

    .line 400
    .line 401
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 406
    .line 407
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .line 415
    .line 416
    iget-object v5, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 417
    .line 418
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 419
    .line 420
    .line 421
    move-result-wide v5

    .line 422
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v5, "watched_season_index"

    .line 426
    .line 427
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 439
    .line 440
    .line 441
    const-string v0, ""

    .line 442
    .line 443
    :try_start_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 448
    .line 449
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 450
    .line 451
    .line 452
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 453
    move v5, v1

    .line 454
    :goto_5
    iget-object v6, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->R0:Ljava/util/ArrayList;

    .line 455
    .line 456
    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 457
    .line 458
    .line 459
    move-result v7

    .line 460
    if-ge v5, v7, :cond_c

    .line 461
    .line 462
    move v7, v1

    .line 463
    :cond_a
    :goto_6
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v8

    .line 467
    check-cast v8, Lflix/com/vision/models/Season;

    .line 468
    .line 469
    iget v8, v8, Lflix/com/vision/models/Season;->episode_count:I

    .line 470
    .line 471
    if-ge v7, v8, :cond_b

    .line 472
    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    iget-object v9, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 479
    .line 480
    invoke-virtual {v9}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 481
    .line 482
    .line 483
    move-result-wide v9

    .line 484
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    add-int/lit8 v9, v5, 0x1

    .line 491
    .line 492
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    add-int/2addr v7, v2

    .line 499
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 507
    .line 508
    .line 509
    move-result-object v9

    .line 510
    iget-object v9, v9, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 511
    .line 512
    invoke-interface {v9, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 513
    .line 514
    .line 515
    move-result v9

    .line 516
    if-eqz v9, :cond_a

    .line 517
    .line 518
    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 519
    .line 520
    .line 521
    goto :goto_6

    .line 522
    :cond_b
    add-int/2addr v5, v2

    .line 523
    goto :goto_5

    .line 524
    :catch_1
    :cond_c
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    iput-boolean v2, v0, Lflix/com/vision/App;->e:Z

    .line 529
    .line 530
    :try_start_3
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    const-string v2, "Marked as Watched"

    .line 535
    .line 536
    const/16 v3, 0x30

    .line 537
    .line 538
    invoke-static {v0, v2, p1, v3, v1}, LN4/a;->Success(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 539
    .line 540
    .line 541
    :catch_2
    return-void

    .line 542
    :pswitch_4
    sget p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 543
    .line 544
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 552
    .line 553
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 554
    .line 555
    invoke-virtual {p1, v0}, LP4/e;->isMovieFavorited(Lflix/com/vision/models/Movie;)Z

    .line 556
    .line 557
    .line 558
    move-result p1

    .line 559
    if-nez p1, :cond_d

    .line 560
    .line 561
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 566
    .line 567
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 568
    .line 569
    invoke-virtual {p1, v0}, LP4/e;->addMovieFavorites(Lflix/com/vision/models/Movie;)Z

    .line 570
    .line 571
    .line 572
    iput-boolean v2, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->S:Z

    .line 573
    .line 574
    :try_start_4
    const-string p1, "Added to your List"

    .line 575
    .line 576
    invoke-static {v3, p1, v2}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 577
    .line 578
    .line 579
    goto :goto_7

    .line 580
    :cond_d
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 585
    .line 586
    iget-object v0, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->t0:Lflix/com/vision/models/Movie;

    .line 587
    .line 588
    invoke-virtual {p1, v0}, LP4/e;->deleteFavoriteMovie(Lflix/com/vision/models/Movie;)V

    .line 589
    .line 590
    .line 591
    iput-boolean v1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->S:Z

    .line 592
    .line 593
    :try_start_5
    const-string p1, "Removed from your List"

    .line 594
    .line 595
    invoke-static {v3, p1, v2}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 596
    .line 597
    .line 598
    :catch_3
    :goto_7
    iget-boolean p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->S:Z

    .line 599
    .line 600
    if-nez p1, :cond_e

    .line 601
    .line 602
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->I0:Landroid/widget/ImageView;

    .line 603
    .line 604
    sget v0, Lflix/com/vision/R$drawable;->ic_bookmark:I

    .line 605
    .line 606
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    .line 608
    .line 609
    goto :goto_8

    .line 610
    :cond_e
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->I0:Landroid/widget/ImageView;

    .line 611
    .line 612
    sget v0, Lflix/com/vision/R$drawable;->ic_delete_bookmark:I

    .line 613
    .line 614
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 615
    .line 616
    .line 617
    :goto_8
    return-void

    .line 618
    :pswitch_5
    sget p1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->a1:I

    .line 619
    .line 620
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    new-instance p1, Landroid/content/Intent;

    .line 624
    .line 625
    const-class v0, Lflix/com/vision/activities/SettingsActivity;

    .line 626
    .line 627
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    .line 629
    .line 630
    const/16 v0, 0x44c

    .line 631
    .line 632
    invoke-virtual {v3, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 633
    .line 634
    .line 635
    return-void

    .line 636
    :pswitch_6
    iget-object p1, v3, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->u0:Lio/github/giangpham96/expandable_textview/ExpandableTextView;

    .line 637
    .line 638
    if-eqz p1, :cond_f

    .line 639
    .line 640
    invoke-virtual {p1}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->toggle()V

    .line 641
    .line 642
    .line 643
    :cond_f
    return-void

    .line 644
    nop

    .line 645
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
