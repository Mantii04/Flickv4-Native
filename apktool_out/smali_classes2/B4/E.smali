.class public final LB4/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lflix/com/vision/activities/player/SimpleVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB4/E;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, LB4/E;->b:Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 2
    .line 3
    iget-object v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 4
    .line 5
    if-eqz v1, :cond_d

    .line 6
    .line 7
    iget-boolean v2, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b0:Z

    .line 8
    .line 9
    if-nez v2, :cond_d

    .line 10
    .line 11
    invoke-virtual {v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->getCurrentPosition()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object v3, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->A:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 16
    .line 17
    invoke-virtual {v3}, Lflix/com/vision/bvp/BetterVideoPlayer;->getDuration()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    cmp-long v7, v3, v5

    .line 24
    .line 25
    if-lez v7, :cond_d

    .line 26
    .line 27
    iget-object v7, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->O0:Lflix/com/vision/models/IntroDbResponse$Segment;

    .line 28
    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    iget-wide v7, v7, Lflix/com/vision/models/IntroDbResponse$Segment;->start_ms:J

    .line 32
    .line 33
    cmp-long v9, v7, v5

    .line 34
    .line 35
    if-lez v9, :cond_0

    .line 36
    .line 37
    const-wide/16 v5, 0x2

    .line 38
    .line 39
    div-long/2addr v3, v5

    .line 40
    cmp-long v3, v1, v3

    .line 41
    .line 42
    if-lez v3, :cond_d

    .line 43
    .line 44
    cmp-long v1, v1, v7

    .line 45
    .line 46
    if-ltz v1, :cond_d

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    sub-long/2addr v3, v1

    .line 50
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    iget-object v7, v7, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    const-string v8, "pref_auto_play_minutes"

    .line 57
    .line 58
    const/4 v9, 0x3

    .line 59
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-gtz v7, :cond_1

    .line 64
    .line 65
    move-wide v7, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    int-to-long v7, v7

    .line 68
    const-wide/32 v9, 0xea60

    .line 69
    .line 70
    .line 71
    mul-long/2addr v7, v9

    .line 72
    :goto_0
    cmp-long v5, v7, v5

    .line 73
    .line 74
    if-lez v5, :cond_d

    .line 75
    .line 76
    cmp-long v3, v3, v7

    .line 77
    .line 78
    if-gtz v3, :cond_d

    .line 79
    .line 80
    cmp-long v1, v1, v7

    .line 81
    .line 82
    if-lez v1, :cond_d

    .line 83
    .line 84
    :goto_1
    const-string v1, "S"

    .line 85
    .line 86
    iget-boolean v2, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->a0:Z

    .line 87
    .line 88
    const-string v3, "AutoPlay"

    .line 89
    .line 90
    if-nez v2, :cond_2

    .line 91
    .line 92
    const-string v1, "Abort: Feature disabled in settings"

    .line 93
    .line 94
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :cond_2
    iget-boolean v2, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b0:Z

    .line 100
    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    const-string v1, "Abort: Prompt already shown"

    .line 104
    .line 105
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto/16 :goto_6

    .line 109
    .line 110
    :cond_3
    iget-boolean v2, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->R:Z

    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    const-string v1, "Abort: Already loading next link"

    .line 115
    .line 116
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_4
    iget-object v2, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->P:Ljava/util/ArrayList;

    .line 122
    .line 123
    if-eqz v2, :cond_c

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_5

    .line 130
    .line 131
    goto/16 :goto_5

    .line 132
    .line 133
    :cond_5
    iget v4, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-ge v4, v5, :cond_b

    .line 140
    .line 141
    iget v4, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 142
    .line 143
    iget v5, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->i0:I

    .line 144
    .line 145
    if-lt v4, v5, :cond_6

    .line 146
    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v5, "SUCCESS: Triggering prompt for Episode index: "

    .line 152
    .line 153
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget v5, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 157
    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    iput-boolean v3, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->b0:Z

    .line 170
    .line 171
    sget v3, Lflix/com/vision/R$id;->next_episode_title:I

    .line 172
    .line 173
    invoke-virtual {v0, v3}, Le/v;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Landroid/widget/TextView;

    .line 178
    .line 179
    sget v4, Lflix/com/vision/R$id;->next_episode_name:I

    .line 180
    .line 181
    invoke-virtual {v0, v4}, Le/v;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    check-cast v4, Landroid/widget/TextView;

    .line 186
    .line 187
    sget v5, Lflix/com/vision/R$id;->next_episode_countdown_progress:I

    .line 188
    .line 189
    invoke-virtual {v0, v5}, Le/v;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Landroid/widget/ProgressBar;

    .line 194
    .line 195
    :try_start_0
    iget v6, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 196
    .line 197
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Lflix/com/vision/models/Episode;

    .line 202
    .line 203
    if-eqz v4, :cond_7

    .line 204
    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->g0:I

    .line 211
    .line 212
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v1, "E"

    .line 216
    .line 217
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget v1, v2, Lflix/com/vision/models/Episode;->number:I

    .line 221
    .line 222
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v1, ": "

    .line 226
    .line 227
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object v1, v2, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :catch_0
    if-eqz v4, :cond_7

    .line 244
    .line 245
    const-string v1, "Next Episode"

    .line 246
    .line 247
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    :cond_7
    :goto_2
    iget-object v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_8

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_8
    iget-object v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->q:Landroid/widget/ImageView;

    .line 260
    .line 261
    if-eqz v1, :cond_9

    .line 262
    .line 263
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 264
    .line 265
    .line 266
    :cond_9
    iget-object v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 267
    .line 268
    const/4 v2, 0x0

    .line 269
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->M:Landroid/widget/LinearLayout;

    .line 273
    .line 274
    iget-object v2, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->p0:Landroid/view/animation/Animation;

    .line 275
    .line 276
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    .line 278
    .line 279
    :goto_3
    iget-object v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J0:Landroid/os/CountDownTimer;

    .line 280
    .line 281
    if-eqz v1, :cond_a

    .line 282
    .line 283
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 284
    .line 285
    .line 286
    :cond_a
    new-instance v1, LB4/A;

    .line 287
    .line 288
    invoke-direct {v1, v0, v3, v5}, LB4/A;-><init>(Lflix/com/vision/activities/player/SimpleVideoPlayer;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iput-object v1, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->J0:Landroid/os/CountDownTimer;

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_b
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v2, "Abort: Reached end of season. Ep: "

    .line 301
    .line 302
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget v2, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->h0:I

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v2, " Count: "

    .line 311
    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget v2, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->i0:I

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_c
    :goto_5
    const-string v1, "Abort: Episodes list is null or empty"

    .line 329
    .line 330
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    :cond_d
    :goto_6
    iget-object v0, v0, Lflix/com/vision/activities/player/SimpleVideoPlayer;->c0:Landroid/os/Handler;

    .line 334
    .line 335
    const-wide/16 v1, 0xbb8

    .line 336
    .line 337
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    .line 339
    .line 340
    return-void
.end method
