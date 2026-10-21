.class public Lflix/com/vision/activities/AnimeDetailActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;
    }
.end annotation


# static fields
.field public static final synthetic D:I


# instance fields
.field public A:Lh5/j;

.field public B:I

.field public C:Landroid/view/Menu;

.field public b:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public n:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:LC4/o;

.field public t:Lflix/com/vision/models/Anime;

.field public final u:Ljava/util/ArrayList;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Landroid/widget/ImageButton;

.field public y:Landroid/graphics/Typeface;

.field public z:Landroid/widget/RelativeLayout;


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
    iput-object v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->u:Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string v0, "gogoanime.pe"

    .line 12
    .line 13
    iput-object v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->v:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "www.gogoanimes.so/"

    .line 16
    .line 17
    iput-object v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->w:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->B:I

    .line 21
    .line 22
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
    const/4 v2, 0x7

    .line 38
    invoke-direct {v1, p0, v2}, LA3/a;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ly4/c;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 53
    .line 54
    .line 55
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
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    sget v2, Lflix/com/vision/R$layout;->activity_anime_detail:I

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Le/v;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    :goto_0
    sget v2, Lflix/com/vision/R$id;->activity_anime_detail:I

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->z:Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget-object v3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, "fonts/pproduct_sans_rregular.ttf"

    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->y:Landroid/graphics/Typeface;

    .line 43
    .line 44
    new-instance v2, Lh5/j;

    .line 45
    .line 46
    invoke-direct {v2}, Lh5/j;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->A:Lh5/j;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v3, "https://"

    .line 54
    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 63
    .line 64
    iget-object v4, p0, Lflix/com/vision/activities/AnimeDetailActivity;->w:Ljava/lang/String;

    .line 65
    .line 66
    const-string v5, "anime_domain"

    .line 67
    .line 68
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->v:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 86
    .line 87
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->w:Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->w:Ljava/lang/String;

    .line 94
    .line 95
    sget v2, Lflix/com/vision/R$id;->play_single_media_button:I

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Landroid/widget/ImageButton;

    .line 102
    .line 103
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->x:Landroid/widget/ImageButton;

    .line 104
    .line 105
    sget v2, Lflix/com/vision/R$id;->anime_year_label:I

    .line 106
    .line 107
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->f:Landroid/widget/TextView;

    .line 114
    .line 115
    sget v2, Lflix/com/vision/R$id;->button_favorite_image:I

    .line 116
    .line 117
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Landroid/widget/ImageView;

    .line 122
    .line 123
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->b:Landroid/widget/ImageView;

    .line 124
    .line 125
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    if-nez p1, :cond_0

    .line 133
    .line 134
    sget-object v2, Lflix/com/vision/App;->A:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 137
    .line 138
    .line 139
    :cond_0
    sget v2, Lflix/com/vision/R$id;->loader_view:I

    .line 140
    .line 141
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 146
    .line 147
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 148
    .line 149
    sget v2, Lflix/com/vision/R$id;->last_watched_label:I

    .line 150
    .line 151
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Landroid/widget/TextView;

    .line 156
    .line 157
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->e:Landroid/widget/TextView;

    .line 158
    .line 159
    sget v2, Lflix/com/vision/R$id;->add_favorites:I

    .line 160
    .line 161
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 166
    .line 167
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 168
    .line 169
    if-eqz v2, :cond_1

    .line 170
    .line 171
    new-instance v3, LA4/g;

    .line 172
    .line 173
    invoke-direct {v3, p0, v1}, LA4/g;-><init>(Ljava/lang/Object;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    .line 178
    .line 179
    :cond_1
    sget v2, Lflix/com/vision/R$id;->listview_:I

    .line 180
    .line 181
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    .line 187
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    .line 189
    sget v2, Lflix/com/vision/R$id;->poster:I

    .line 190
    .line 191
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Landroid/widget/ImageView;

    .line 196
    .line 197
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->p:Landroid/widget/ImageView;

    .line 198
    .line 199
    sget v2, Lflix/com/vision/R$id;->plot:I

    .line 200
    .line 201
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    check-cast v2, Landroid/widget/TextView;

    .line 206
    .line 207
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->q:Landroid/widget/TextView;

    .line 208
    .line 209
    sget v2, Lflix/com/vision/R$id;->title:I

    .line 210
    .line 211
    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Landroid/widget/TextView;

    .line 216
    .line 217
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->r:Landroid/widget/TextView;

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    const-string v3, "anime"

    .line 224
    .line 225
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Lflix/com/vision/models/Anime;

    .line 230
    .line 231
    iput-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 232
    .line 233
    iget-object v3, v2, Lflix/com/vision/models/Anime;->url:Ljava/lang/String;

    .line 234
    .line 235
    const-string v4, "gogoanime.pe"

    .line 236
    .line 237
    const-string v5, "www5.gogoanimes.fi"

    .line 238
    .line 239
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    iput-object v3, v2, Lflix/com/vision/models/Anime;->url:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->q:Landroid/widget/TextView;

    .line 246
    .line 247
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 248
    .line 249
    iget-object v3, v3, Lflix/com/vision/models/Anime;->plot:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    iget-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 255
    .line 256
    iget-object v2, v2, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    .line 257
    .line 258
    if-eqz v2, :cond_2

    .line 259
    .line 260
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->r:Landroid/widget/TextView;

    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 274
    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    iget-object v5, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 281
    .line 282
    iget-object v5, v5, Lflix/com/vision/models/Anime;->url:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v5, "episode"

    .line 288
    .line 289
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    const/4 v5, 0x0

    .line 297
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    if-eqz v2, :cond_3

    .line 302
    .line 303
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->e:Landroid/widget/TextView;

    .line 304
    .line 305
    const-string v5, "\u00b7 last episode: E"

    .line 306
    .line 307
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_3
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->e:Landroid/widget/TextView;

    .line 316
    .line 317
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .line 319
    .line 320
    :goto_1
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->x:Landroid/widget/ImageButton;

    .line 321
    .line 322
    new-instance v5, Ly4/a;

    .line 323
    .line 324
    invoke-direct {v5, p0, v0}, Ly4/a;-><init>(Lflix/com/vision/activities/AnimeDetailActivity;I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    .line 329
    .line 330
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->f:Landroid/widget/TextView;

    .line 331
    .line 332
    iget-object v5, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 333
    .line 334
    iget-object v5, v5, Lflix/com/vision/models/Anime;->year:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->x:Landroid/widget/ImageButton;

    .line 340
    .line 341
    new-instance v5, LC4/m;

    .line 342
    .line 343
    const/4 v6, 0x4

    .line 344
    invoke-direct {v5, v6}, LC4/m;-><init>(I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 348
    .line 349
    .line 350
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->j:Landroid/widget/RelativeLayout;

    .line 351
    .line 352
    new-instance v5, Ly4/a;

    .line 353
    .line 354
    const/4 v6, 0x1

    .line 355
    invoke-direct {v5, p0, v6}, Ly4/a;-><init>(Lflix/com/vision/activities/AnimeDetailActivity;I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    .line 360
    .line 361
    sget v3, Lflix/com/vision/R$id;->toolbar:I

    .line 362
    .line 363
    invoke-virtual {p0, v3}, Le/v;->findViewById(I)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    .line 368
    .line 369
    invoke-virtual {p0, v3}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    if-eqz v3, :cond_4

    .line 377
    .line 378
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    const-string v5, ""

    .line 383
    .line 384
    invoke-virtual {v3, v5}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 385
    .line 386
    .line 387
    :cond_4
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 396
    .line 397
    const/4 v5, 0x2

    .line 398
    if-ne v3, v5, :cond_5

    .line 399
    .line 400
    :try_start_1
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-virtual {v3}, Le/b;->hide()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    .line 406
    .line 407
    goto :goto_2

    .line 408
    :catch_1
    move-exception v3

    .line 409
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 410
    .line 411
    .line 412
    :cond_5
    :goto_2
    :try_start_2
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    iget-object v5, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 417
    .line 418
    iget-object v5, v5, Lflix/com/vision/models/Anime;->image_url:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v3, v5}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-virtual {v3}, Lm4/J;->fit()Lm4/J;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    sget v5, Lflix/com/vision/R$drawable;->ic_anime:I

    .line 429
    .line 430
    invoke-virtual {v3, v5}, Lm4/J;->placeholder(I)Lm4/J;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {v3}, Lm4/J;->centerCrop()Lm4/J;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    iget-object v5, p0, Lflix/com/vision/activities/AnimeDetailActivity;->p:Landroid/widget/ImageView;

    .line 439
    .line 440
    invoke-virtual {v3, v5}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 441
    .line 442
    .line 443
    goto :goto_3

    .line 444
    :catch_2
    move-exception v3

    .line 445
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 446
    .line 447
    .line 448
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-static {v3}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 469
    .line 470
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 471
    .line 472
    int-to-float v3, v3

    .line 473
    div-float/2addr v3, v5

    .line 474
    sget-boolean v5, Lflix/com/vision/App;->I:Z

    .line 475
    .line 476
    if-eqz v5, :cond_6

    .line 477
    .line 478
    const/16 v5, 0xc

    .line 479
    .line 480
    goto :goto_4

    .line 481
    :cond_6
    move v5, v1

    .line 482
    :goto_4
    const/16 v6, 0x69

    .line 483
    .line 484
    int-to-float v6, v6

    .line 485
    div-float/2addr v3, v6

    .line 486
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    sget v6, Lflix/com/vision/R$id;->listview_:I

    .line 491
    .line 492
    invoke-virtual {p0, v6}, Le/v;->findViewById(I)Landroid/view/View;

    .line 493
    .line 494
    .line 495
    move-result-object v6

    .line 496
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 497
    .line 498
    iput-object v6, p0, Lflix/com/vision/activities/AnimeDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 499
    .line 500
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 501
    .line 502
    .line 503
    iget-object v6, p0, Lflix/com/vision/activities/AnimeDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 504
    .line 505
    new-instance v7, LT4/k;

    .line 506
    .line 507
    invoke-direct {v7, v5}, LT4/k;-><init>(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 511
    .line 512
    .line 513
    new-instance v5, LC4/o;

    .line 514
    .line 515
    iget-object v6, p0, Lflix/com/vision/activities/AnimeDetailActivity;->u:Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-direct {v5, p0, v6, v2}, LC4/o;-><init>(Lflix/com/vision/activities/AnimeDetailActivity;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    iput-object v5, p0, Lflix/com/vision/activities/AnimeDetailActivity;->s:LC4/o;

    .line 521
    .line 522
    iget-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 523
    .line 524
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 525
    .line 526
    .line 527
    iget-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 528
    .line 529
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 530
    .line 531
    invoke-direct {v5, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 535
    .line 536
    .line 537
    if-nez p1, :cond_7

    .line 538
    .line 539
    iget-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 540
    .line 541
    iget-object p1, p1, Lflix/com/vision/models/Anime;->url:Ljava/lang/String;

    .line 542
    .line 543
    const-string v1, "www9.gogoanime.io"

    .line 544
    .line 545
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 554
    .line 555
    sget-object v3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 556
    .line 557
    const-string v3, "anime_host_ajax_pref"

    .line 558
    .line 559
    const-string v4, "https://ajax.gogocdn.net"

    .line 560
    .line 561
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->w:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    const-string v1, "gogoanime.io"

    .line 572
    .line 573
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->w:Ljava/lang/String;

    .line 574
    .line 575
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    new-instance v1, Lflix/com/vision/activities/a;

    .line 580
    .line 581
    invoke-direct {v1, p0, p1, v2}, Lflix/com/vision/activities/a;-><init>(Lflix/com/vision/activities/AnimeDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 585
    .line 586
    new-array v0, v0, [Ljava/lang/Void;

    .line 587
    .line 588
    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 589
    .line 590
    .line 591
    goto :goto_5

    .line 592
    :cond_7
    const-string v2, "episodes"

    .line 593
    .line 594
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 599
    .line 600
    .line 601
    iget-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->s:LC4/o;

    .line 602
    .line 603
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 604
    .line 605
    .line 606
    iget-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 607
    .line 608
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 609
    .line 610
    .line 611
    iput v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->B:I

    .line 612
    .line 613
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    sget-object v0, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;->b:Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 618
    .line 619
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    :goto_5
    new-instance p1, Landroid/os/Handler;

    .line 623
    .line 624
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 625
    .line 626
    .line 627
    new-instance v0, Ly4/b;

    .line 628
    .line 629
    invoke-direct {v0, p0}, Ly4/b;-><init>(Lflix/com/vision/activities/AnimeDetailActivity;)V

    .line 630
    .line 631
    .line 632
    const-wide/16 v1, 0x1f4

    .line 633
    .line 634
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    .line 636
    .line 637
    iget-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->A:Lh5/j;

    .line 638
    .line 639
    iget-object v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->q:Landroid/widget/TextView;

    .line 640
    .line 641
    iget-object v1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->y:Landroid/graphics/Typeface;

    .line 642
    .line 643
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 644
    .line 645
    .line 646
    iget-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->A:Lh5/j;

    .line 647
    .line 648
    iget-object v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->e:Landroid/widget/TextView;

    .line 649
    .line 650
    iget-object v1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->y:Landroid/graphics/Typeface;

    .line 651
    .line 652
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 653
    .line 654
    .line 655
    new-instance p1, Landroid/os/Handler;

    .line 656
    .line 657
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 658
    .line 659
    .line 660
    new-instance v0, Lf1/a;

    .line 661
    .line 662
    const/16 v1, 0x9

    .line 663
    .line 664
    invoke-direct {v0, p0, v1}, Lf1/a;-><init>(Ljava/lang/Object;I)V

    .line 665
    .line 666
    .line 667
    const-wide/16 v1, 0x320

    .line 668
    .line 669
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 670
    .line 671
    .line 672
    iget-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 673
    .line 674
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 675
    .line 676
    .line 677
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
    iput-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->C:Landroid/view/Menu;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public onMessageEvent(Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;->b:Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->s:LC4/o;

    .line 8
    .line 9
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;->e:Lflix/com/vision/activities/AnimeDetailActivity$RESULT_EVENT;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

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
    iget-object p1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->m:Lcom/github/ybq/android/spinkit/SpinKitView;

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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

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
    iget-object v1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 26
    .line 27
    invoke-virtual {v1}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

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
    iget-object v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 50
    .line 51
    invoke-virtual {v0}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

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
    iget-object v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 86
    .line 87
    invoke-virtual {v0}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

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
    iget-object v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->s:LC4/o;

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
    iget-object v0, p0, Lflix/com/vision/activities/AnimeDetailActivity;->u:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lflix/com/vision/activities/AnimeDetailActivity;->u:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 26
    .line 27
    iget-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 28
    .line 29
    invoke-virtual {v2}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, LP4/e;->addMovieHistory_ANIME(Lflix/com/vision/models/Movie;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 42
    .line 43
    const-class v2, Lflix/com/vision/activities/LinksActivity;

    .line 44
    .line 45
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    const-string v2, "server_index"

    .line 49
    .line 50
    iget v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->B:I

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lflix/com/vision/models/Episode;

    .line 60
    .line 61
    iget-object v2, v2, Lflix/com/vision/models/Episode;->url:Ljava/lang/String;

    .line 62
    .line 63
    const-string v3, "url"

    .line 64
    .line 65
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 69
    .line 70
    iget-object v2, v2, Lflix/com/vision/models/Anime;->image_url:Ljava/lang/String;

    .line 71
    .line 72
    const-string v3, "img_url"

    .line 73
    .line 74
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 78
    .line 79
    invoke-virtual {v2}, Lflix/com/vision/models/Anime;->toMovie()Lflix/com/vision/models/Movie;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v3, "movie"

    .line 84
    .line 85
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v2, p1, 0x1

    .line 89
    .line 90
    const-string v3, "episode_number"

    .line 91
    .line 92
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v3, "Episode "

    .line 98
    .line 99
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/4 v3, 0x1

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string v3, "title_episode"

    .line 114
    .line 115
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 124
    .line 125
    iget-object v3, v3, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v3, " - episode "

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lflix/com/vision/models/Episode;

    .line 140
    .line 141
    iget-object v3, v3, Lflix/com/vision/models/Episode;->label:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const-string v3, "title"

    .line 151
    .line 152
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Lflix/com/vision/models/Episode;

    .line 160
    .line 161
    iget-object v2, v2, Lflix/com/vision/models/Episode;->label:Ljava/lang/String;

    .line 162
    .line 163
    const-string v3, "episode"

    .line 164
    .line 165
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 169
    .line 170
    iget-object v2, v2, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    .line 171
    .line 172
    const-string v4, "title_simple"

    .line 173
    .line 174
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Lflix/com/vision/models/Episode;

    .line 185
    .line 186
    iget-object p1, p1, Lflix/com/vision/models/Episode;->label:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 193
    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    iget-object v2, p0, Lflix/com/vision/activities/AnimeDetailActivity;->t:Lflix/com/vision/models/Anime;

    .line 204
    .line 205
    iget-object v2, v2, Lflix/com/vision/models/Anime;->url:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    .line 223
    .line 224
    return-void
.end method
