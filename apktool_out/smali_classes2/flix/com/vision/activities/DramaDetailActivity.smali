.class public Lflix/com/vision/activities/DramaDetailActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;
    }
.end annotation


# static fields
.field public static final synthetic A:I


# instance fields
.field public b:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:LC4/D;

.field public t:Lflix/com/vision/models/Drama;

.field public final u:Ljava/util/ArrayList;

.field public v:Ljava/lang/String;

.field public w:Landroid/widget/ImageButton;

.field public x:Landroid/widget/RelativeLayout;

.field public y:I

.field public z:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/activities/DramaDetailActivity;->u:Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string v0, "https://kissasiantv.to"

    .line 12
    .line 13
    iput-object v0, p0, Lflix/com/vision/activities/DramaDetailActivity;->v:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lflix/com/vision/activities/DramaDetailActivity;->y:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public extractDominantColor()V
    .locals 5

    .line 1
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const v3, 0x263984

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x2

    .line 19
    new-array v4, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v2, v4, v1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    aput-object v3, v4, v1

    .line 25
    .line 26
    invoke-static {v0, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v1, 0x7d0

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    new-instance v1, LA3/a;

    .line 36
    .line 37
    const/16 v2, 0xb

    .line 38
    .line 39
    invoke-direct {v1, p0, v2}, LA3/a;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Ly4/w;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    sget v1, Lflix/com/vision/R$layout;->activity_drama_detail:I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Le/v;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    :goto_0
    sget v1, Lflix/com/vision/R$id;->activity_anime_detail:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->x:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "pref_drama_host"

    .line 37
    .line 38
    const-string v3, "https://kissasiantv.to"

    .line 39
    .line 40
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->v:Ljava/lang/String;

    .line 45
    .line 46
    sget v1, Lflix/com/vision/R$id;->play_single_media_button:I

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/ImageButton;

    .line 53
    .line 54
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->w:Landroid/widget/ImageButton;

    .line 55
    .line 56
    sget v1, Lflix/com/vision/R$id;->anime_year_label:I

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->f:Landroid/widget/TextView;

    .line 65
    .line 66
    sget v1, Lflix/com/vision/R$id;->button_favorite_image:I

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/widget/ImageView;

    .line 73
    .line 74
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->b:Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    if-nez p1, :cond_0

    .line 84
    .line 85
    sget-object v1, Lflix/com/vision/App;->A:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 88
    .line 89
    .line 90
    :cond_0
    sget v1, Lflix/com/vision/R$id;->loader_view:I

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 97
    .line 98
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 99
    .line 100
    sget v1, Lflix/com/vision/R$id;->last_watched_label:I

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Landroid/widget/TextView;

    .line 107
    .line 108
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->e:Landroid/widget/TextView;

    .line 109
    .line 110
    sget v1, Lflix/com/vision/R$id;->add_favorites:I

    .line 111
    .line 112
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 117
    .line 118
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 119
    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    new-instance v2, LA4/g;

    .line 123
    .line 124
    const/16 v3, 0x9

    .line 125
    .line 126
    invoke-direct {v2, p0, v3}, LA4/g;-><init>(Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    .line 131
    .line 132
    :cond_1
    sget v1, Lflix/com/vision/R$id;->listview_:I

    .line 133
    .line 134
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    .line 140
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    sget v1, Lflix/com/vision/R$id;->poster:I

    .line 143
    .line 144
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Landroid/widget/ImageView;

    .line 149
    .line 150
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->p:Landroid/widget/ImageView;

    .line 151
    .line 152
    sget v1, Lflix/com/vision/R$id;->plot:I

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Landroid/widget/TextView;

    .line 159
    .line 160
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->q:Landroid/widget/TextView;

    .line 161
    .line 162
    sget v1, Lflix/com/vision/R$id;->title:I

    .line 163
    .line 164
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Landroid/widget/TextView;

    .line 169
    .line 170
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->r:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-string v2, "drama"

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Lflix/com/vision/models/Drama;

    .line 183
    .line 184
    iput-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 185
    .line 186
    iget-object v2, p0, Lflix/com/vision/activities/DramaDetailActivity;->r:Landroid/widget/TextView;

    .line 187
    .line 188
    iget-object v1, v1, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 198
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    iget-object v3, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 205
    .line 206
    iget-object v3, v3, Lflix/com/vision/models/Drama;->url:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v3, "episode"

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    const/4 v3, 0x0

    .line 221
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    const/16 v2, 0x8

    .line 226
    .line 227
    if-eqz v1, :cond_2

    .line 228
    .line 229
    iget-object v3, p0, Lflix/com/vision/activities/DramaDetailActivity;->e:Landroid/widget/TextView;

    .line 230
    .line 231
    const-string v4, "\u00b7 last episode: E"

    .line 232
    .line 233
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_2
    iget-object v3, p0, Lflix/com/vision/activities/DramaDetailActivity;->e:Landroid/widget/TextView;

    .line 242
    .line 243
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    :goto_1
    iget-object v3, p0, Lflix/com/vision/activities/DramaDetailActivity;->w:Landroid/widget/ImageButton;

    .line 247
    .line 248
    new-instance v4, Ly4/u;

    .line 249
    .line 250
    invoke-direct {v4, p0, v0}, Ly4/u;-><init>(Lflix/com/vision/activities/DramaDetailActivity;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    iget-object v3, p0, Lflix/com/vision/activities/DramaDetailActivity;->f:Landroid/widget/TextView;

    .line 257
    .line 258
    iget-object v4, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 259
    .line 260
    iget-object v4, v4, Lflix/com/vision/models/Drama;->year:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    iget-object v3, p0, Lflix/com/vision/activities/DramaDetailActivity;->w:Landroid/widget/ImageButton;

    .line 266
    .line 267
    new-instance v4, LC4/m;

    .line 268
    .line 269
    const/4 v5, 0x5

    .line 270
    invoke-direct {v4, v5}, LC4/m;-><init>(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 274
    .line 275
    .line 276
    iget-object v3, p0, Lflix/com/vision/activities/DramaDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 277
    .line 278
    new-instance v4, Ly4/u;

    .line 279
    .line 280
    const/4 v5, 0x1

    .line 281
    invoke-direct {v4, p0, v5}, Ly4/u;-><init>(Lflix/com/vision/activities/DramaDetailActivity;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    sget v3, Lflix/com/vision/R$id;->toolbar:I

    .line 288
    .line 289
    invoke-virtual {p0, v3}, Le/v;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 294
    .line 295
    invoke-virtual {p0, v3}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    if-eqz v3, :cond_3

    .line 303
    .line 304
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    const-string v4, ""

    .line 309
    .line 310
    invoke-virtual {v3, v4}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    :cond_3
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 322
    .line 323
    const/4 v4, 0x2

    .line 324
    if-ne v3, v4, :cond_4

    .line 325
    .line 326
    :try_start_1
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-virtual {v3}, Le/b;->hide()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    .line 332
    .line 333
    goto :goto_2

    .line 334
    :catch_1
    move-exception v3

    .line 335
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 336
    .line 337
    .line 338
    :cond_4
    :goto_2
    :try_start_2
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    iget-object v4, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 343
    .line 344
    iget-object v4, v4, Lflix/com/vision/models/Drama;->image_url:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v3, v4}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v3}, Lm4/J;->fit()Lm4/J;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    sget v4, Lflix/com/vision/R$drawable;->ic_anime:I

    .line 355
    .line 356
    invoke-virtual {v3, v4}, Lm4/J;->placeholder(I)Lm4/J;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v3}, Lm4/J;->centerCrop()Lm4/J;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    iget-object v4, p0, Lflix/com/vision/activities/DramaDetailActivity;->p:Landroid/widget/ImageView;

    .line 365
    .line 366
    invoke-virtual {v3, v4}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 367
    .line 368
    .line 369
    goto :goto_3

    .line 370
    :catch_2
    move-exception v3

    .line 371
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    .line 373
    .line 374
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-static {v3}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 395
    .line 396
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 397
    .line 398
    int-to-float v3, v3

    .line 399
    div-float/2addr v3, v4

    .line 400
    sget-boolean v4, Lflix/com/vision/App;->I:Z

    .line 401
    .line 402
    if-eqz v4, :cond_5

    .line 403
    .line 404
    const/16 v4, 0xc

    .line 405
    .line 406
    goto :goto_4

    .line 407
    :cond_5
    move v4, v2

    .line 408
    :goto_4
    const/16 v5, 0x69

    .line 409
    .line 410
    int-to-float v5, v5

    .line 411
    div-float/2addr v3, v5

    .line 412
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    sget v5, Lflix/com/vision/R$id;->listview_:I

    .line 417
    .line 418
    invoke-virtual {p0, v5}, Le/v;->findViewById(I)Landroid/view/View;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 423
    .line 424
    iput-object v5, p0, Lflix/com/vision/activities/DramaDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 425
    .line 426
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 427
    .line 428
    .line 429
    iget-object v5, p0, Lflix/com/vision/activities/DramaDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 430
    .line 431
    new-instance v6, LT4/k;

    .line 432
    .line 433
    invoke-direct {v6, v4}, LT4/k;-><init>(I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 437
    .line 438
    .line 439
    new-instance v4, LC4/D;

    .line 440
    .line 441
    iget-object v5, p0, Lflix/com/vision/activities/DramaDetailActivity;->u:Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-direct {v4, p0, v5, v1}, LC4/D;-><init>(Lflix/com/vision/activities/DramaDetailActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    iput-object v4, p0, Lflix/com/vision/activities/DramaDetailActivity;->s:LC4/D;

    .line 447
    .line 448
    iget-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 449
    .line 450
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 451
    .line 452
    .line 453
    iget-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 454
    .line 455
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 456
    .line 457
    invoke-direct {v4, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 461
    .line 462
    .line 463
    if-nez p1, :cond_6

    .line 464
    .line 465
    iget-object p1, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 466
    .line 467
    iget-object p1, p1, Lflix/com/vision/models/Drama;->url:Ljava/lang/String;

    .line 468
    .line 469
    const-string v1, "www9.gogoanime.io"

    .line 470
    .line 471
    const-string v2, "gogoanime.pe"

    .line 472
    .line 473
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    new-instance v1, Lflix/com/vision/activities/b;

    .line 478
    .line 479
    invoke-direct {v1, p0, p1}, Lflix/com/vision/activities/b;-><init>(Lflix/com/vision/activities/DramaDetailActivity;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 483
    .line 484
    new-array v0, v0, [Ljava/lang/Void;

    .line 485
    .line 486
    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 487
    .line 488
    .line 489
    goto :goto_5

    .line 490
    :cond_6
    const-string v1, "episodes"

    .line 491
    .line 492
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 497
    .line 498
    .line 499
    iget-object p1, p0, Lflix/com/vision/activities/DramaDetailActivity;->s:LC4/D;

    .line 500
    .line 501
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 502
    .line 503
    .line 504
    iget-object p1, p0, Lflix/com/vision/activities/DramaDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 505
    .line 506
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .line 508
    .line 509
    iput v0, p0, Lflix/com/vision/activities/DramaDetailActivity;->y:I

    .line 510
    .line 511
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    sget-object v0, Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;->b:Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;

    .line 516
    .line 517
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    :goto_5
    new-instance p1, Landroid/os/Handler;

    .line 521
    .line 522
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 523
    .line 524
    .line 525
    new-instance v0, Ly4/v;

    .line 526
    .line 527
    invoke-direct {v0, p0}, Ly4/v;-><init>(Lflix/com/vision/activities/DramaDetailActivity;)V

    .line 528
    .line 529
    .line 530
    const-wide/16 v1, 0x1f4

    .line 531
    .line 532
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    .line 534
    .line 535
    new-instance p1, Landroid/os/Handler;

    .line 536
    .line 537
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 538
    .line 539
    .line 540
    new-instance v0, Lf1/a;

    .line 541
    .line 542
    const/16 v1, 0xa

    .line 543
    .line 544
    invoke-direct {v0, p0, v1}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 545
    .line 546
    .line 547
    const-wide/16 v1, 0x320

    .line 548
    .line 549
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 550
    .line 551
    .line 552
    iget-object p1, p0, Lflix/com/vision/activities/DramaDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 553
    .line 554
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 555
    .line 556
    .line 557
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/v;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lflix/com/vision/R$menu;->anime_detail_menu_2:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lflix/com/vision/activities/DramaDetailActivity;->z:Landroid/view/Menu;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public onMessageEvent(Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;->b:Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lflix/com/vision/activities/DramaDetailActivity;->s:LC4/D;

    .line 8
    .line 9
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lflix/com/vision/activities/DramaDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;->e:Lflix/com/vision/activities/DramaDetailActivity$RESULT_EVENT;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lflix/com/vision/activities/DramaDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget v0, Lflix/com/vision/R$string;->failed_to_load:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object p1, p0, Lflix/com/vision/activities/DramaDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    sget v1, Lflix/com/vision/R$id;->action_fav:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 24
    .line 25
    iget-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 26
    .line 27
    invoke-virtual {v1}, Lflix/com/vision/models/Drama;->toMovie()Lflix/com/vision/models/Movie;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, LP4/e;->isMovieFavorited_ANIME(Lflix/com/vision/models/Movie;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, -0x1

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    sget v0, Lflix/com/vision/R$drawable;->love:I

    .line 39
    .line 40
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 48
    .line 49
    iget-object v0, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 50
    .line 51
    invoke-virtual {v0}, Lflix/com/vision/models/Drama;->toMovie()Lflix/com/vision/models/Movie;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, LP4/e;->deleteFavoriteMovie_ANIME(Lflix/com/vision/models/Movie;)V

    .line 56
    .line 57
    .line 58
    sget p1, Lflix/com/vision/R$id;->main_view:I

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget v0, Lflix/com/vision/R$string;->removed_fav_label:I

    .line 65
    .line 66
    invoke-static {p1, v0, v1}, LI3/w;->make(Landroid/view/View;II)LI3/w;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, LI3/w;->show()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    sget v0, Lflix/com/vision/R$drawable;->ic_action_favorite:I

    .line 75
    .line 76
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 84
    .line 85
    iget-object v0, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 86
    .line 87
    invoke-virtual {v0}, Lflix/com/vision/models/Drama;->toMovie()Lflix/com/vision/models/Movie;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, LP4/e;->addMovieFavorites_Anime(Lflix/com/vision/models/Movie;)Z

    .line 92
    .line 93
    .line 94
    sget p1, Lflix/com/vision/R$id;->main_view:I

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget v0, Lflix/com/vision/R$string;->added_fav_label:I

    .line 101
    .line 102
    invoke-static {p1, v0, v1}, LI3/w;->make(Landroid/view/View;II)LI3/w;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, LI3/w;->show()V

    .line 107
    .line 108
    .line 109
    :goto_0
    return v2

    .line 110
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    return p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lflix/com/vision/activities/DramaDetailActivity;->s:LC4/D;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/DramaDetailActivity;->u:Ljava/util/ArrayList;

    .line 5
    .line 6
    const-string v1, "episodes"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public openEpisode(I)V
    .locals 5

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v1, p0, Lflix/com/vision/activities/DramaDetailActivity;->u:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 22
    .line 23
    const-class v2, Lflix/com/vision/activities/LinksActivity;

    .line 24
    .line 25
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "server_index"

    .line 29
    .line 30
    iget v3, p0, Lflix/com/vision/activities/DramaDetailActivity;->y:I

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lflix/com/vision/models/Episode;

    .line 40
    .line 41
    iget-object v2, v2, Lflix/com/vision/models/Episode;->url:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "url"

    .line 44
    .line 45
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 49
    .line 50
    iget-object v2, v2, Lflix/com/vision/models/Drama;->image_url:Ljava/lang/String;

    .line 51
    .line 52
    const-string v3, "img_url"

    .line 53
    .line 54
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 58
    .line 59
    invoke-virtual {v2}, Lflix/com/vision/models/Drama;->toMovie()Lflix/com/vision/models/Movie;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "movie"

    .line 64
    .line 65
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, p1, 0x1

    .line 69
    .line 70
    const-string v3, "episode_number"

    .line 71
    .line 72
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v4, "Episode "

    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v4, "title_episode"

    .line 94
    .line 95
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v4, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 104
    .line 105
    iget-object v4, v4, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, " - episode "

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Lflix/com/vision/models/Episode;

    .line 120
    .line 121
    iget-object v4, v4, Lflix/com/vision/models/Episode;->label:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    const-string v4, "title"

    .line 131
    .line 132
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lflix/com/vision/models/Episode;

    .line 140
    .line 141
    iget-object p1, p1, Lflix/com/vision/models/Episode;->label:Ljava/lang/String;

    .line 142
    .line 143
    const-string v1, "episode"

    .line 144
    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 149
    .line 150
    iget-object p1, p1, Lflix/com/vision/models/Drama;->title:Ljava/lang/String;

    .line 151
    .line 152
    const-string v3, "title_simple"

    .line 153
    .line 154
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    .line 159
    .line 160
    const-string p1, ""

    .line 161
    .line 162
    invoke-static {v2, p1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 171
    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    iget-object v3, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 182
    .line 183
    iget-object v3, v3, Lflix/com/vision/models/Drama;->url:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 207
    .line 208
    iget-object v0, p0, Lflix/com/vision/activities/DramaDetailActivity;->t:Lflix/com/vision/models/Drama;

    .line 209
    .line 210
    invoke-virtual {p1, v0}, LP4/e;->addDramaToContinue(Lflix/com/vision/models/Drama;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method
