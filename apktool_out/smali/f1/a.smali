.class public final synthetic Lf1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf1/a;->b:I

    iput-object p1, p0, Lf1/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    const-wide/16 v0, 0x1f4

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const/16 v3, 0x8

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    iget-object v6, p0, Lf1/a;->e:Ljava/lang/Object;

    .line 9
    .line 10
    iget v7, p0, Lf1/a;->b:I

    .line 11
    .line 12
    packed-switch v7, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v6, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;

    .line 16
    .line 17
    iget-object v0, v6, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast v6, Lflix/com/vision/activities/adult/AdultHistoryActivity;

    .line 24
    .line 25
    iget-object v0, v6, Lflix/com/vision/activities/adult/AdultHistoryActivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    check-cast v6, Landroid/app/Activity;

    .line 32
    .line 33
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_a

    .line 38
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v1, 0x1c

    .line 42
    .line 43
    if-lt v0, v1, :cond_0

    .line 44
    .line 45
    sget-object v0, Lz/k;->a:Ljava/lang/Class;

    .line 46
    .line 47
    invoke-virtual {v6}, Landroid/app/Activity;->recreate()V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :cond_0
    sget-object v1, Lz/k;->a:Ljava/lang/Class;

    .line 53
    .line 54
    const/16 v1, 0x1b

    .line 55
    .line 56
    const/16 v7, 0x1a

    .line 57
    .line 58
    if-eq v0, v7, :cond_2

    .line 59
    .line 60
    if-ne v0, v1, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v8, v4

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    move v8, v2

    .line 66
    :goto_1
    sget-object v9, Lz/k;->f:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    if-eqz v8, :cond_3

    .line 69
    .line 70
    if-nez v9, :cond_3

    .line 71
    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_3
    sget-object v8, Lz/k;->e:Ljava/lang/reflect/Method;

    .line 75
    .line 76
    if-nez v8, :cond_4

    .line 77
    .line 78
    sget-object v8, Lz/k;->d:Ljava/lang/reflect/Method;

    .line 79
    .line 80
    if-nez v8, :cond_4

    .line 81
    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_4
    :try_start_0
    sget-object v8, Lz/k;->c:Ljava/lang/reflect/Field;

    .line 85
    .line 86
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    if-nez v8, :cond_5

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_5
    sget-object v10, Lz/k;->b:Ljava/lang/reflect/Field;

    .line 94
    .line 95
    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    if-nez v10, :cond_6

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_6
    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    new-instance v12, Lz/j;

    .line 107
    .line 108
    invoke-direct {v12, v6}, Lz/j;-><init>(Landroid/app/Activity;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11, v12}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    .line 113
    .line 114
    sget-object v13, Lz/k;->g:Landroid/os/Handler;

    .line 115
    .line 116
    :try_start_1
    new-instance v14, Lz/g;

    .line 117
    .line 118
    invoke-direct {v14, v12, v8}, Lz/g;-><init>(Lz/j;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    .line 123
    .line 124
    if-eq v0, v7, :cond_8

    .line 125
    .line 126
    if-ne v0, v1, :cond_7

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    move v0, v4

    .line 130
    goto :goto_3

    .line 131
    :cond_8
    :goto_2
    move v0, v2

    .line 132
    :goto_3
    if-eqz v0, :cond_9

    .line 133
    .line 134
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/16 v1, 0x9

    .line 139
    .line 140
    new-array v1, v1, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object v8, v1, v4

    .line 143
    .line 144
    aput-object v5, v1, v2

    .line 145
    .line 146
    const/4 v2, 0x2

    .line 147
    aput-object v5, v1, v2

    .line 148
    .line 149
    const/4 v2, 0x3

    .line 150
    aput-object v0, v1, v2

    .line 151
    .line 152
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 153
    .line 154
    const/4 v2, 0x4

    .line 155
    aput-object v0, v1, v2

    .line 156
    .line 157
    const/4 v2, 0x5

    .line 158
    aput-object v5, v1, v2

    .line 159
    .line 160
    const/4 v2, 0x6

    .line 161
    aput-object v5, v1, v2

    .line 162
    .line 163
    const/4 v2, 0x7

    .line 164
    aput-object v0, v1, v2

    .line 165
    .line 166
    aput-object v0, v1, v3

    .line 167
    .line 168
    invoke-virtual {v9, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    goto :goto_5

    .line 174
    :cond_9
    invoke-virtual {v6}, Landroid/app/Activity;->recreate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .line 176
    .line 177
    :goto_4
    :try_start_3
    new-instance v0, Lz/h;

    .line 178
    .line 179
    invoke-direct {v0, v11, v12}, Lz/h;-><init>(Landroid/app/Application;Lz/j;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_7

    .line 186
    :goto_5
    new-instance v1, Lz/h;

    .line 187
    .line 188
    invoke-direct {v1, v11, v12}, Lz/h;-><init>(Landroid/app/Application;Lz/j;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    .line 193
    .line 194
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    :catchall_1
    :goto_6
    invoke-virtual {v6}, Landroid/app/Activity;->recreate()V

    .line 196
    .line 197
    .line 198
    :cond_a
    :goto_7
    return-void

    .line 199
    :pswitch_2
    check-cast v6, Lflix/com/vision/activities/YouTubePlayerActivity;

    .line 200
    .line 201
    iput-boolean v4, v6, Lflix/com/vision/activities/YouTubePlayerActivity;->q:Z

    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_3
    check-cast v6, Lflix/com/vision/activities/UserTorrentsActivity;

    .line 205
    .line 206
    iget-object v0, v6, Lflix/com/vision/activities/UserTorrentsActivity;->x:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-lez v1, :cond_b

    .line 213
    .line 214
    invoke-virtual {v6}, Lflix/com/vision/activities/UserTorrentsActivity;->h()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v0}, Lflix/com/vision/activities/UserTorrentsActivity;->e(Ljava/util/ArrayList;)V

    .line 218
    .line 219
    .line 220
    :cond_b
    return-void

    .line 221
    :pswitch_4
    check-cast v6, Lflix/com/vision/activities/SearchActivityTV;

    .line 222
    .line 223
    iget-object v0, v6, Lflix/com/vision/activities/SearchActivityTV;->w:Landroid/widget/RelativeLayout;

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 226
    .line 227
    .line 228
    iget-object v0, v6, Lflix/com/vision/activities/SearchActivityTV;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :pswitch_5
    sget v0, Lflix/com/vision/activities/DramaDetailActivity;->A:I

    .line 235
    .line 236
    check-cast v6, Lflix/com/vision/activities/DramaDetailActivity;

    .line 237
    .line 238
    invoke-virtual {v6}, Lflix/com/vision/activities/DramaDetailActivity;->extractDominantColor()V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_6
    sget v0, Lflix/com/vision/activities/AnimeDetailActivity;->D:I

    .line 243
    .line 244
    check-cast v6, Lflix/com/vision/activities/AnimeDetailActivity;

    .line 245
    .line 246
    invoke-virtual {v6}, Lflix/com/vision/activities/AnimeDetailActivity;->extractDominantColor()V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_7
    check-cast v6, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 251
    .line 252
    invoke-virtual {v6}, Lcom/google/android/material/carousel/CarouselLayoutManager;->D()V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :pswitch_8
    check-cast v6, Ln1/u;

    .line 257
    .line 258
    invoke-virtual {v6}, Ln1/u;->onAutoCloseCallback$room_runtime_release()V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_9
    check-cast v6, Lflix/com/vision/tv/TVChannelSearchActivity;

    .line 263
    .line 264
    iget-object v0, v6, Lflix/com/vision/tv/TVChannelSearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 265
    .line 266
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :pswitch_a
    check-cast v6, Lflix/com/vision/tv/TVCategorySearchActivity;

    .line 271
    .line 272
    iget-object v0, v6, Lflix/com/vision/tv/TVCategorySearchActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 273
    .line 274
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :pswitch_b
    check-cast v6, Lflix/com/vision/tv/TVCategoriesActivity;

    .line 279
    .line 280
    iget-object v2, v6, Lflix/com/vision/tv/TVCategoriesActivity;->D:Landroid/view/animation/AlphaAnimation;

    .line 281
    .line 282
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    .line 283
    .line 284
    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 288
    .line 289
    .line 290
    iget-object v2, v6, Lflix/com/vision/tv/TVCategoriesActivity;->D:Landroid/view/animation/AlphaAnimation;

    .line 291
    .line 292
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v6, Lflix/com/vision/tv/TVCategoriesActivity;->C:Landroid/widget/RelativeLayout;

    .line 296
    .line 297
    iget-object v1, v6, Lflix/com/vision/tv/TVCategoriesActivity;->D:Landroid/view/animation/AlphaAnimation;

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, v6, Lflix/com/vision/tv/TVCategoriesActivity;->C:Landroid/widget/RelativeLayout;

    .line 303
    .line 304
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :pswitch_c
    check-cast v6, Lflix/com/vision/tv/ChannelsListActivityLegacy;

    .line 309
    .line 310
    iget-object v2, v6, Lflix/com/vision/tv/ChannelsListActivityLegacy;->q:Landroid/view/animation/AlphaAnimation;

    .line 311
    .line 312
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    .line 313
    .line 314
    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 318
    .line 319
    .line 320
    iget-object v2, v6, Lflix/com/vision/tv/ChannelsListActivityLegacy;->q:Landroid/view/animation/AlphaAnimation;

    .line 321
    .line 322
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 323
    .line 324
    .line 325
    iget-object v0, v6, Lflix/com/vision/tv/ChannelsListActivityLegacy;->x:Landroid/widget/RelativeLayout;

    .line 326
    .line 327
    iget-object v1, v6, Lflix/com/vision/tv/ChannelsListActivityLegacy;->q:Landroid/view/animation/AlphaAnimation;

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 330
    .line 331
    .line 332
    iget-object v0, v6, Lflix/com/vision/tv/ChannelsListActivityLegacy;->x:Landroid/widget/RelativeLayout;

    .line 333
    .line 334
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :pswitch_d
    check-cast v6, Lf1/Q;

    .line 339
    .line 340
    invoke-virtual {v6}, Lf1/Q;->b()V

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :pswitch_e
    const/4 v0, -0x1

    .line 345
    check-cast v6, Lf1/o;

    .line 346
    .line 347
    iput v0, v6, Lf1/o;->n:I

    .line 348
    .line 349
    return-void

    .line 350
    :pswitch_f
    check-cast v6, Lf1/k;

    .line 351
    .line 352
    invoke-virtual {v6}, Lf1/k;->k()V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    nop

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
