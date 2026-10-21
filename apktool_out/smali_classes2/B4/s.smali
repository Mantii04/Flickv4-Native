.class public final synthetic LB4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V
    .locals 0

    .line 1
    iput p2, p0, LB4/s;->b:I

    iput-object p1, p0, LB4/s;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, LB4/s;->e:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 7
    .line 8
    iget v5, p0, LB4/s;->b:I

    .line 9
    .line 10
    packed-switch v5, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 19
    .line 20
    sget v1, Lflix/com/vision/R$drawable;->bvp_action_pause:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 32
    .line 33
    sget v1, Lflix/com/vision/R$drawable;->bvp_action_pause:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->K:Landroid/widget/ImageView;

    .line 45
    .line 46
    sget v1, Lflix/com/vision/R$drawable;->bvp_action_pause:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_2
    iget v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m0:I

    .line 53
    .line 54
    const/16 v1, 0x1388

    .line 55
    .line 56
    if-le v0, v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v4, v3}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "Resume Playback"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v2, "Do you want to resume or start over ?"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, LB4/q;

    .line 77
    .line 78
    const/16 v3, 0x12

    .line 79
    .line 80
    invoke-direct {v2, v4, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 81
    .line 82
    .line 83
    const-string v3, "Resume"

    .line 84
    .line 85
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    new-instance v2, LB4/q;

    .line 89
    .line 90
    const/16 v3, 0x13

    .line 91
    .line 92
    invoke-direct {v2, v4, v3}, LB4/q;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;I)V

    .line 93
    .line 94
    .line 95
    const-string v3, "Start Over"

    .line 96
    .line 97
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    :try_start_0
    const-string v2, ""

    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_3
    iget-object v1, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 112
    .line 113
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_1

    .line 118
    .line 119
    iget-object v1, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 120
    .line 121
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPrepared()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    iget-object v1, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->L:Landroid/widget/LinearLayout;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-wide/16 v2, 0x190

    .line 139
    .line 140
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-instance v5, LB4/G;

    .line 145
    .line 146
    invoke-direct {v5, v4}, LB4/G;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 150
    .line 151
    .line 152
    iget-object v1, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->n:Landroid/widget/TextClock;

    .line 153
    .line 154
    if-eqz v1, :cond_2

    .line 155
    .line 156
    iget-boolean v5, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->m:Z

    .line 157
    .line 158
    if-eqz v5, :cond_2

    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v1, LB4/H;

    .line 173
    .line 174
    invoke-direct {v1, v4}, LB4/H;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 178
    .line 179
    .line 180
    :cond_2
    :goto_1
    return-void

    .line 181
    :pswitch_4
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 182
    .line 183
    invoke-virtual {v4}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p()V

    .line 184
    .line 185
    .line 186
    const-string v0, "Error downloading subtitle"

    .line 187
    .line 188
    invoke-static {v4, v0, v3}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_5
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x0:Lcom/google/android/gms/cast/framework/CastSession;

    .line 193
    .line 194
    if-nez v0, :cond_3

    .line 195
    .line 196
    invoke-virtual {v4}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->i()V

    .line 197
    .line 198
    .line 199
    :cond_3
    return-void

    .line 200
    :pswitch_6
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->x0:Lcom/google/android/gms/cast/framework/CastSession;

    .line 201
    .line 202
    if-eqz v0, :cond_4

    .line 203
    .line 204
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v4, v0}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_4
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y:Ljava/lang/String;

    .line 211
    .line 212
    if-eqz v0, :cond_5

    .line 213
    .line 214
    invoke-virtual {v4}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I()V

    .line 215
    .line 216
    .line 217
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->y:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v4, v0, v3}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->playLink(Ljava/lang/String;Z)V

    .line 220
    .line 221
    .line 222
    :cond_5
    :goto_2
    return-void

    .line 223
    :pswitch_7
    iget-boolean v1, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->j:Z

    .line 224
    .line 225
    if-eqz v1, :cond_6

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_6
    iget-boolean v1, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I0:Z

    .line 229
    .line 230
    if-eqz v1, :cond_7

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_7
    iput-boolean v3, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I0:Z

    .line 234
    .line 235
    iput-boolean v2, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->e:Z

    .line 236
    .line 237
    sget v1, Lflix/com/vision/R$id;->rated_layout:I

    .line 238
    .line 239
    invoke-virtual {v4, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Landroid/widget/LinearLayout;

    .line 244
    .line 245
    sget v3, Lflix/com/vision/R$id;->rated_red_line:I

    .line 246
    .line 247
    invoke-virtual {v4, v3}, Le/v;->findViewById(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    sget v5, Lflix/com/vision/R$id;->rated_text_view:I

    .line 252
    .line 253
    invoke-virtual {v4, v5}, Le/v;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    check-cast v4, Landroid/widget/TextView;

    .line 258
    .line 259
    if-eqz v1, :cond_9

    .line 260
    .line 261
    if-eqz v3, :cond_9

    .line 262
    .line 263
    if-nez v4, :cond_8

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    const/high16 v5, 0x3f800000    # 1.0f

    .line 270
    .line 271
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotY(F)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 281
    .line 282
    .line 283
    const/high16 v0, -0x3db80000    # -50.0f

    .line 284
    .line 285
    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const-wide/16 v5, 0x320

    .line 297
    .line 298
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .line 303
    .line 304
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    new-instance v5, LA3/d;

    .line 312
    .line 313
    const/4 v6, 0x3

    .line 314
    invoke-direct {v5, v4, v6}, LA3/d;-><init>(Ljava/lang/Object;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 322
    .line 323
    .line 324
    new-instance v0, Landroid/os/Handler;

    .line 325
    .line 326
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 327
    .line 328
    .line 329
    new-instance v5, LB4/y;

    .line 330
    .line 331
    invoke-direct {v5, v4, v3, v1, v2}, LB4/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 332
    .line 333
    .line 334
    const-wide/16 v1, 0x2710

    .line 335
    .line 336
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    .line 338
    .line 339
    :cond_9
    :goto_3
    return-void

    .line 340
    :pswitch_8
    iget-boolean v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 341
    .line 342
    if-eqz v0, :cond_a

    .line 343
    .line 344
    iget-boolean v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 345
    .line 346
    if-nez v0, :cond_a

    .line 347
    .line 348
    invoke-virtual {v4}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p()V

    .line 349
    .line 350
    .line 351
    iput-boolean v2, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 352
    .line 353
    const-string v0, "No links found for the next episode"

    .line 354
    .line 355
    invoke-static {v4, v0, v3}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 356
    .line 357
    .line 358
    :cond_a
    return-void

    .line 359
    :pswitch_9
    iget-boolean v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 360
    .line 361
    if-eqz v0, :cond_b

    .line 362
    .line 363
    iget-boolean v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 364
    .line 365
    if-nez v0, :cond_b

    .line 366
    .line 367
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-nez v0, :cond_b

    .line 374
    .line 375
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->r:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Lflix/com/vision/models/VideoSource;

    .line 382
    .line 383
    iput-boolean v3, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->v0:Z

    .line 384
    .line 385
    invoke-virtual {v4}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p()V

    .line 386
    .line 387
    .line 388
    iget-object v0, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v4, v0, v2}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->playLink(Ljava/lang/String;Z)V

    .line 391
    .line 392
    .line 393
    const-string v0, "AutoPlay"

    .line 394
    .line 395
    const-string v1, "Fallback: Picking best available link."

    .line 396
    .line 397
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    :cond_b
    return-void

    .line 401
    :pswitch_a
    sget-boolean v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->Q0:Z

    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    const-string v0, "Episode "

    .line 407
    .line 408
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 413
    .line 414
    const-string v5, "pref_sub_auto_dl"

    .line 415
    .line 416
    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_c

    .line 421
    .line 422
    iput-boolean v2, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A0:Z

    .line 423
    .line 424
    invoke-virtual {v4, v2}, Lflix/com/vision/activities/player/SimpleVideoPlayer;->k(Z)V

    .line 425
    .line 426
    .line 427
    :cond_c
    :try_start_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 432
    .line 433
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    iget-object v5, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 443
    .line 444
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 445
    .line 446
    .line 447
    move-result-wide v5

    .line 448
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const-string v5, "season"

    .line 452
    .line 453
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget v5, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 457
    .line 458
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v5, "episode"

    .line 462
    .line 463
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    iget v5, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 467
    .line 468
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    iget v5, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 476
    .line 477
    sub-int/2addr v5, v3

    .line 478
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 483
    .line 484
    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    .line 490
    iget-object v2, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->I:Lflix/com/vision/models/Movie;

    .line 491
    .line 492
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 493
    .line 494
    .line 495
    move-result-wide v2

    .line 496
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v2, "s"

    .line 500
    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    iget v2, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 505
    .line 506
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v2, "e"

    .line 510
    .line 511
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    iget v2, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 515
    .line 516
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v2, "title"

    .line 520
    .line 521
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 533
    .line 534
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 544
    .line 545
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 557
    .line 558
    .line 559
    :catch_1
    return-void

    .line 560
    :pswitch_b
    iget-object v0, v4, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 561
    .line 562
    if-eqz v0, :cond_d

    .line 563
    .line 564
    invoke-virtual {v0, v2}, Lflix/com/vision/bvp/BetterVideoPlayer;->setResizeMode(I)V

    .line 565
    .line 566
    .line 567
    :cond_d
    return-void

    .line 568
    nop

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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
