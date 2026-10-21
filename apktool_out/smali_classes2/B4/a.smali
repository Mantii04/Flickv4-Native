.class public final synthetic LB4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LB4/a;->b:I

    iput-object p1, p0, LB4/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, LB4/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    iget v4, p0, LB4/a;->b:I

    .line 9
    .line 10
    packed-switch v4, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget p1, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;->v:I

    .line 14
    .line 15
    check-cast v3, Lflix/com/vision/activities/adult/AdultVideosFavoritesActivity;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v0, Lflix/com/vision/activities/adult/AdultVideosSearchActivity;

    .line 23
    .line 24
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    sget p1, Lflix/com/vision/activities/YouTubePlayerActivity;->r:I

    .line 32
    .line 33
    check-cast v3, Lflix/com/vision/activities/YouTubePlayerActivity;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    sget p1, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 40
    .line 41
    check-cast v3, Le/s;

    .line 42
    .line 43
    invoke-virtual {v3}, Le/c0;->dismiss()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_2
    check-cast v3, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;

    .line 48
    .line 49
    iget-object p1, v3, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ge p1, v2, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, v3, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 59
    .line 60
    iget v0, v3, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 61
    .line 62
    invoke-static {v3, v3, p1, v0}, LQ4/e;->newInstance(Landroid/app/Activity;LU4/k;Ljava/util/ArrayList;I)LQ4/e;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void

    .line 79
    :pswitch_3
    check-cast v3, Lflix/com/vision/activities/SeriesDetailActivity;

    .line 80
    .line 81
    iget-object p1, v3, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-ge p1, v2, :cond_1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    iget-object p1, v3, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 91
    .line 92
    iget v0, v3, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 93
    .line 94
    invoke-static {v3, v3, p1, v0}, LQ4/e;->newInstance(Landroid/app/Activity;LU4/k;Ljava/util/ArrayList;I)LQ4/e;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :try_start_1
    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_1
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    :goto_1
    return-void

    .line 111
    :pswitch_4
    sget p1, Lflix/com/vision/activities/DramaHistoryActivity;->m:I

    .line 112
    .line 113
    check-cast v3, Lflix/com/vision/activities/DramaHistoryActivity;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 123
    .line 124
    invoke-virtual {p1}, LP4/e;->clearHistoryDrama()Z

    .line 125
    .line 126
    .line 127
    iget-object p1, v3, Lflix/com/vision/activities/DramaHistoryActivity;->e:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 130
    .line 131
    .line 132
    iget-object p1, v3, Lflix/com/vision/activities/DramaHistoryActivity;->f:LC4/z;

    .line 133
    .line 134
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 135
    .line 136
    .line 137
    const-string p1, "Drama history cleared"

    .line 138
    .line 139
    invoke-static {v3, p1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_5
    sget p1, Lflix/com/vision/activities/DonationActvity;->b:I

    .line 144
    .line 145
    check-cast v3, Lflix/com/vision/activities/DonationActvity;

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance p1, Landroid/content/Intent;

    .line 151
    .line 152
    const-string v0, "android.intent.action.SENDTO"

    .line 153
    .line 154
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v0, "mailto:"

    .line 158
    .line 159
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    const-string v0, "android.intent.extra.EMAIL"

    .line 167
    .line 168
    const-string v1, "donation@flixvision.tv"

    .line 169
    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    const-string v0, "android.intent.extra.SUBJECT"

    .line 174
    .line 175
    const-string v1, "FLIXVISION Donation"

    .line 176
    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-eqz v0, :cond_2

    .line 189
    .line 190
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    .line 192
    .line 193
    :cond_2
    return-void

    .line 194
    :pswitch_6
    sget p1, Lflix/com/vision/activities/AnimeHistoryActivity;->n:I

    .line 195
    .line 196
    check-cast v3, Lflix/com/vision/activities/AnimeHistoryActivity;

    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 206
    .line 207
    invoke-virtual {p1}, LP4/e;->clearHistoryAnime()Z

    .line 208
    .line 209
    .line 210
    iget-object p1, v3, Lflix/com/vision/activities/AnimeHistoryActivity;->f:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 213
    .line 214
    .line 215
    iget-object p1, v3, Lflix/com/vision/activities/AnimeHistoryActivity;->j:LC4/k;

    .line 216
    .line 217
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 218
    .line 219
    .line 220
    const-string p1, "Anime history cleared"

    .line 221
    .line 222
    invoke-static {v3, p1, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_7
    sget p1, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->A:I

    .line 227
    .line 228
    const-string p1, "this$0"

    .line 229
    .line 230
    check-cast v3, Lio/github/giangpham96/expandable_textview/ExpandableTextView;

    .line 231
    .line 232
    invoke-static {v3, p1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Lio/github/giangpham96/expandable_textview/ExpandableTextView;->toggle()V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_8
    sget p1, Lflix/com/vision/tv/PlayerActivityLiveExternal;->J:I

    .line 240
    .line 241
    check-cast v3, Lflix/com/vision/tv/PlayerActivityLiveExternal;

    .line 242
    .line 243
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :pswitch_9
    check-cast v3, Lcom/google/android/material/datepicker/y;

    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/google/android/material/datepicker/y;->j()V

    .line 250
    .line 251
    .line 252
    throw p1

    .line 253
    :pswitch_a
    check-cast v3, Landroidx/mediarouter/app/i;

    .line 254
    .line 255
    invoke-virtual {v3}, Landroidx/mediarouter/app/i;->dismiss()V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :pswitch_b
    check-cast v3, LK3/y;

    .line 260
    .line 261
    iget-object v0, v3, LK3/y;->f:Landroid/widget/EditText;

    .line 262
    .line 263
    if-nez v0, :cond_3

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    iget-object v1, v3, LK3/y;->f:Landroid/widget/EditText;

    .line 271
    .line 272
    if-eqz v1, :cond_4

    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 279
    .line 280
    if-eqz v1, :cond_4

    .line 281
    .line 282
    iget-object v1, v3, LK3/y;->f:Landroid/widget/EditText;

    .line 283
    .line 284
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 285
    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_4
    iget-object p1, v3, LK3/y;->f:Landroid/widget/EditText;

    .line 289
    .line 290
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 295
    .line 296
    .line 297
    :goto_2
    if-ltz v0, :cond_5

    .line 298
    .line 299
    iget-object p1, v3, LK3/y;->f:Landroid/widget/EditText;

    .line 300
    .line 301
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 302
    .line 303
    .line 304
    :cond_5
    invoke-virtual {v3}, LK3/r;->l()V

    .line 305
    .line 306
    .line 307
    :goto_3
    return-void

    .line 308
    :pswitch_c
    check-cast v3, LK3/l;

    .line 309
    .line 310
    invoke-virtual {v3}, LK3/l;->p()V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :pswitch_d
    check-cast v3, LK3/d;

    .line 315
    .line 316
    iget-object p1, v3, LK3/d;->i:Landroid/widget/EditText;

    .line 317
    .line 318
    if-nez p1, :cond_6

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_6
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    if-eqz p1, :cond_7

    .line 326
    .line 327
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 328
    .line 329
    .line 330
    :cond_7
    invoke-virtual {v3}, LK3/r;->l()V

    .line 331
    .line 332
    .line 333
    :goto_4
    return-void

    .line 334
    :pswitch_e
    check-cast v3, LC4/d0;

    .line 335
    .line 336
    iget-object p1, v3, LC4/d0;->v:Landroid/widget/ImageButton;

    .line 337
    .line 338
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :pswitch_f
    sget p1, Lflix/com/vision/activities/player/YouTubeWebviewActivity;->t:I

    .line 343
    .line 344
    check-cast v3, Lflix/com/vision/activities/player/YouTubeWebviewActivity;

    .line 345
    .line 346
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 347
    .line 348
    .line 349
    return-void

    .line 350
    :pswitch_10
    check-cast v3, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;

    .line 351
    .line 352
    invoke-static {v3}, Lflix/com/vision/activities/player/AdultVideoPlayerActivity;->e(Lflix/com/vision/activities/player/AdultVideoPlayerActivity;)V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    nop

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
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
