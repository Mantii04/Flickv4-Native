.class public Lflix/com/vision/activities/SeriesDetailActivityLeanBack;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/k;


# static fields
.field public static final synthetic G:I


# instance fields
.field public A:Landroid/graphics/Typeface;

.field public B:I

.field public C:I

.field public D:Ljava/lang/String;

.field public E:Lflix/com/vision/customviews/CustomImageView;

.field public F:Z

.field public b:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:LC4/Z;

.field public p:LC4/G;

.field public q:Ljava/util/ArrayList;

.field public r:Landroidx/leanback/widget/VerticalGridView;

.field public s:Landroidx/leanback/widget/VerticalGridView;

.field public t:Landroid/widget/ImageView;

.field public final u:Ljava/util/ArrayList;

.field public v:Lio/reactivex/disposables/Disposable;

.field public w:Lflix/com/vision/models/Movie;

.field public x:Landroid/widget/RelativeLayout;

.field public y:Lh5/j;

.field public z:Landroid/graphics/Typeface;


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
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->u:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->F:Z

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const-string v1, "pref_hide_episodes"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->v:Lio/reactivex/disposables/Disposable;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 26
    .line 27
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v1, v2, v3}, LD4/a;->getListEpisode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v2, Ly4/Q0;

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-direct {v2, p0, v0, v3}, Ly4/Q0;-><init>(Lflix/com/vision/activities/base/a;ZI)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Ly4/H0;

    .line 68
    .line 69
    const/4 v3, 0x3

    .line 70
    invoke-direct {v0, v3}, Ly4/H0;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->v:Lio/reactivex/disposables/Disposable;

    .line 78
    .line 79
    return-void
.end method

.method public episodeHighlited(I)V
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->u:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lm4/J;->fit()Lm4/J;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lm4/J;->centerCrop()Lm4/J;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->t:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
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
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget v0, Lflix/com/vision/R$layout;->activity_series_details_leanback:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "fonts/pproduct_sans_rregular.ttf"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->z:Landroid/graphics/Typeface;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "fonts/product_sans_bold.ttf"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->A:Landroid/graphics/Typeface;

    .line 34
    .line 35
    new-instance v0, Lh5/j;

    .line 36
    .line 37
    invoke-direct {v0}, Lh5/j;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->y:Lh5/j;

    .line 41
    .line 42
    sget v0, Lflix/com/vision/R$id;->title_logo:I

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lflix/com/vision/customviews/CustomImageView;

    .line 49
    .line 50
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->E:Lflix/com/vision/customviews/CustomImageView;

    .line 51
    .line 52
    sget v0, Lflix/com/vision/R$id;->last_episode_text_view:I

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->m:Landroid/widget/TextView;

    .line 61
    .line 62
    sget v0, Lflix/com/vision/R$id;->movie_title:I

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->b:Landroid/widget/TextView;

    .line 71
    .line 72
    sget v0, Lflix/com/vision/R$id;->info_text_view:I

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->e:Landroid/widget/TextView;

    .line 81
    .line 82
    sget v0, Lflix/com/vision/R$id;->recyclerview_episodes:I

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    .line 89
    .line 90
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->s:Landroidx/leanback/widget/VerticalGridView;

    .line 91
    .line 92
    sget v0, Lflix/com/vision/R$id;->recyclerview_seasons:I

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    .line 99
    .line 100
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->r:Landroidx/leanback/widget/VerticalGridView;

    .line 101
    .line 102
    sget v0, Lflix/com/vision/R$id;->season_info_text_view:I

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->j:Landroid/widget/TextView;

    .line 111
    .line 112
    sget v0, Lflix/com/vision/R$id;->season_label_view:I

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->f:Landroid/widget/TextView;

    .line 121
    .line 122
    sget v0, Lflix/com/vision/R$id;->season_button:I

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 129
    .line 130
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->x:Landroid/widget/RelativeLayout;

    .line 131
    .line 132
    sget v0, Lflix/com/vision/R$id;->poster:I

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/widget/ImageView;

    .line 139
    .line 140
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->t:Landroid/widget/ImageView;

    .line 141
    .line 142
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->x:Landroid/widget/RelativeLayout;

    .line 143
    .line 144
    if-eqz v0, :cond_0

    .line 145
    .line 146
    new-instance v1, LB4/a;

    .line 147
    .line 148
    const/16 v2, 0xe

    .line 149
    .line 150
    invoke-direct {v1, p0, v2}, LB4/a;-><init>(Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->s:Landroidx/leanback/widget/VerticalGridView;

    .line 157
    .line 158
    new-instance v1, LC4/m;

    .line 159
    .line 160
    const/4 v2, 0x7

    .line 161
    invoke-direct {v1, v2}, LC4/m;-><init>(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v1, "movie"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lflix/com/vision/models/Movie;

    .line 178
    .line 179
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v1, "seasons"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 202
    .line 203
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 207
    .line 208
    .line 209
    sget-object v0, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 220
    .line 221
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 226
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 233
    .line 234
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 235
    .line 236
    .line 237
    move-result-wide v2

    .line 238
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v2, "watched_season_index"

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const/4 v3, 0x0

    .line 251
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    add-int/lit8 v1, v0, 0x1

    .line 256
    .line 257
    iput v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 258
    .line 259
    :try_start_0
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Lflix/com/vision/models/Season;

    .line 266
    .line 267
    iget-object v0, v0, Lflix/com/vision/models/Season;->year:Ljava/lang/String;

    .line 268
    .line 269
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->D:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .line 271
    :catch_0
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->f:Landroid/widget/TextView;

    .line 272
    .line 273
    if-eqz v0, :cond_1

    .line 274
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v4, "Season "

    .line 278
    .line 279
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 283
    .line 284
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    :cond_1
    :try_start_1
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->j:Landroid/widget/TextView;

    .line 295
    .line 296
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 297
    .line 298
    iget v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 299
    .line 300
    add-int/lit8 v4, v4, -0x1

    .line 301
    .line 302
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    check-cast v1, Lflix/com/vision/models/Season;

    .line 307
    .line 308
    iget-object v1, v1, Lflix/com/vision/models/Season;->plot:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 314
    .line 315
    iget v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 316
    .line 317
    add-int/lit8 v1, v1, -0x1

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Lflix/com/vision/models/Season;

    .line 324
    .line 325
    iget-object v0, v0, Lflix/com/vision/models/Season;->poster:Ljava/lang/String;

    .line 326
    .line 327
    if-eqz v0, :cond_2

    .line 328
    .line 329
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 330
    .line 331
    iget v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 332
    .line 333
    add-int/lit8 v1, v1, -0x1

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    check-cast v0, Lflix/com/vision/models/Season;

    .line 340
    .line 341
    iget-object v0, v0, Lflix/com/vision/models/Season;->poster:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-nez v0, :cond_2

    .line 348
    .line 349
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 350
    .line 351
    iget v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 352
    .line 353
    add-int/lit8 v1, v1, -0x1

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Lflix/com/vision/models/Season;

    .line 360
    .line 361
    iget-object v0, v0, Lflix/com/vision/models/Season;->poster:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    .line 365
    .line 366
    goto :goto_0

    .line 367
    :catch_1
    move-exception v0

    .line 368
    :try_start_2
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 373
    .line 374
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-virtual {v1, v4}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lm4/J;->fit()Lm4/J;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v1}, Lm4/J;->centerCrop()Lm4/J;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->t:Landroid/widget/ImageView;

    .line 391
    .line 392
    invoke-virtual {v1, v4}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 393
    .line 394
    .line 395
    goto :goto_0

    .line 396
    :catch_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 397
    .line 398
    .line 399
    :cond_2
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 404
    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 411
    .line 412
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 413
    .line 414
    .line 415
    move-result-wide v4

    .line 416
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v4, "season"

    .line 420
    .line 421
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    iget v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 425
    .line 426
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v4, "episode"

    .line 430
    .line 431
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    iget v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 435
    .line 436
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    add-int/lit8 v0, v0, 0x1

    .line 448
    .line 449
    iput v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->C:I

    .line 450
    .line 451
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->b:Landroid/widget/TextView;

    .line 452
    .line 453
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 454
    .line 455
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    .line 461
    .line 462
    if-nez p1, :cond_3

    .line 463
    .line 464
    invoke-virtual {p0}, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->e()V

    .line 465
    .line 466
    .line 467
    :cond_3
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->e:Landroid/widget/TextView;

    .line 468
    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    .line 474
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 475
    .line 476
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v4, " \u00b7 "

    .line 484
    .line 485
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 489
    .line 490
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v4, " Seasons"

    .line 498
    .line 499
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    .line 508
    .line 509
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 514
    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 521
    .line 522
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 523
    .line 524
    .line 525
    move-result-wide v4

    .line 526
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    const/4 v2, -0x1

    .line 537
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-ltz v0, :cond_4

    .line 542
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    const-string v1, " \u00b7 last episode: S"

    .line 546
    .line 547
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    iget v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 551
    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v1, "E"

    .line 556
    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    iget v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->C:I

    .line 561
    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->m:Landroid/widget/TextView;

    .line 570
    .line 571
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    .line 573
    .line 574
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->m:Landroid/widget/TextView;

    .line 575
    .line 576
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 577
    .line 578
    .line 579
    :cond_4
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->u:Ljava/util/ArrayList;

    .line 580
    .line 581
    if-eqz p1, :cond_5

    .line 582
    .line 583
    :try_start_3
    const-string v1, "episodes"

    .line 584
    .line 585
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 593
    .line 594
    .line 595
    :catch_3
    :cond_5
    new-instance p1, LC4/Z;

    .line 596
    .line 597
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 598
    .line 599
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 600
    .line 601
    invoke-direct {p1, p0, p0, v1, v2}, LC4/Z;-><init>(Landroid/app/Activity;LU4/k;Ljava/util/ArrayList;I)V

    .line 602
    .line 603
    .line 604
    iput-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->n:LC4/Z;

    .line 605
    .line 606
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->r:Landroidx/leanback/widget/VerticalGridView;

    .line 607
    .line 608
    if-eqz v1, :cond_6

    .line 609
    .line 610
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 611
    .line 612
    .line 613
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->n:LC4/Z;

    .line 614
    .line 615
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 616
    .line 617
    .line 618
    :cond_6
    new-instance p1, LC4/G;

    .line 619
    .line 620
    iget v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->C:I

    .line 621
    .line 622
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 623
    .line 624
    invoke-direct {p1, p0, v0, v1, v2}, LC4/G;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;II)V

    .line 625
    .line 626
    .line 627
    iput-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->p:LC4/G;

    .line 628
    .line 629
    iget v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 630
    .line 631
    invoke-virtual {p1, v0}, LC4/G;->setSeason(I)V

    .line 632
    .line 633
    .line 634
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->s:Landroidx/leanback/widget/VerticalGridView;

    .line 635
    .line 636
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->p:LC4/G;

    .line 637
    .line 638
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 639
    .line 640
    .line 641
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->s:Landroidx/leanback/widget/VerticalGridView;

    .line 642
    .line 643
    const/16 v0, 0x1e

    .line 644
    .line 645
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/t;->setItemSpacing(I)V

    .line 646
    .line 647
    .line 648
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->p:LC4/G;

    .line 649
    .line 650
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 651
    .line 652
    .line 653
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->y:Lh5/j;

    .line 654
    .line 655
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->b:Landroid/widget/TextView;

    .line 656
    .line 657
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->A:Landroid/graphics/Typeface;

    .line 658
    .line 659
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 660
    .line 661
    .line 662
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->y:Lh5/j;

    .line 663
    .line 664
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->e:Landroid/widget/TextView;

    .line 665
    .line 666
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->z:Landroid/graphics/Typeface;

    .line 667
    .line 668
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 669
    .line 670
    .line 671
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->y:Lh5/j;

    .line 672
    .line 673
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->f:Landroid/widget/TextView;

    .line 674
    .line 675
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->z:Landroid/graphics/Typeface;

    .line 676
    .line 677
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 678
    .line 679
    .line 680
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->y:Lh5/j;

    .line 681
    .line 682
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->j:Landroid/widget/TextView;

    .line 683
    .line 684
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->z:Landroid/graphics/Typeface;

    .line 685
    .line 686
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 687
    .line 688
    .line 689
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->E:Lflix/com/vision/customviews/CustomImageView;

    .line 690
    .line 691
    if-eqz p1, :cond_7

    .line 692
    .line 693
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 694
    .line 695
    iget-boolean p1, p1, Lflix/com/vision/models/Movie;->is_title_logo_available:Z

    .line 696
    .line 697
    if-eqz p1, :cond_7

    .line 698
    .line 699
    :try_start_4
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 700
    .line 701
    .line 702
    move-result-object p1

    .line 703
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 704
    .line 705
    iget-object v0, v0, Lflix/com/vision/models/Movie;->logoUrl:Ljava/lang/String;

    .line 706
    .line 707
    invoke-virtual {p1, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 708
    .line 709
    .line 710
    move-result-object p1

    .line 711
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->E:Lflix/com/vision/customviews/CustomImageView;

    .line 712
    .line 713
    new-instance v1, Ly4/S0;

    .line 714
    .line 715
    invoke-direct {v1, p0}, Ly4/S0;-><init>(Lflix/com/vision/activities/SeriesDetailActivityLeanBack;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {p1, v0, v1}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 719
    .line 720
    .line 721
    goto :goto_1

    .line 722
    :catch_4
    move-exception p1

    .line 723
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 724
    .line 725
    .line 726
    :cond_7
    :goto_1
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
    sget v1, Lflix/com/vision/R$menu;->menu_series:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x102002c

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return v1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->u:Ljava/util/ArrayList;

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
    .locals 8

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
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->u:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->p:LC4/G;

    .line 22
    .line 23
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const-string v3, "watched_season_index"

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    if-ne v0, v4, :cond_0

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v5, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 40
    .line 41
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v5, v5, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 60
    .line 61
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->e:Landroid/widget/TextView;

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v6, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 80
    .line 81
    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v6, " \u00b7 "

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v6, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 94
    .line 95
    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v6, " Seasons"

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 119
    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v6, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 126
    .line 127
    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 128
    .line 129
    .line 130
    move-result-wide v6

    .line 131
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const/4 v5, -0x1

    .line 142
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-ltz v0, :cond_1

    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v3, " \u00b7 last episode: S"

    .line 151
    .line 152
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v3, "E"

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Lflix/com/vision/models/Episode;

    .line 170
    .line 171
    iget v3, v3, Lflix/com/vision/models/Episode;->number:I

    .line 172
    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iget-object v3, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->m:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->m:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    :cond_1
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 195
    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    iget-object v3, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 206
    .line 207
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 208
    .line 209
    .line 210
    move-result-wide v5

    .line 211
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v3, "watched_season_episode_count"

    .line 215
    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    iget-object v3, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 224
    .line 225
    iget v5, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 226
    .line 227
    sub-int/2addr v5, v4

    .line 228
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Lflix/com/vision/models/Season;

    .line 233
    .line 234
    iget v3, v3, Lflix/com/vision/models/Season;->episode_count:I

    .line 235
    .line 236
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 242
    .line 243
    :catch_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    add-int/lit8 v0, p1, 0x1

    .line 251
    .line 252
    iput v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->C:I

    .line 253
    .line 254
    new-instance v2, Landroid/content/Intent;

    .line 255
    .line 256
    const-class v3, Lflix/com/vision/activities/LinksActivity;

    .line 257
    .line 258
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .line 260
    .line 261
    const-string v3, "movie"

    .line 262
    .line 263
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 264
    .line 265
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 266
    .line 267
    .line 268
    const-string v3, "season_year"

    .line 269
    .line 270
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->D:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    .line 274
    .line 275
    const-string v3, "episode_number"

    .line 276
    .line 277
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    iget v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 281
    .line 282
    const-string v3, "season"

    .line 283
    .line 284
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    const-string v4, "episode_count"

    .line 292
    .line 293
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Lflix/com/vision/models/Episode;

    .line 301
    .line 302
    iget v0, v0, Lflix/com/vision/models/Episode;->number:I

    .line 303
    .line 304
    const-string v4, "episode_id"

    .line 305
    .line 306
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 310
    .line 311
    .line 312
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 317
    .line 318
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 328
    .line 329
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 330
    .line 331
    .line 332
    move-result-wide v4

    .line 333
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 340
    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v3, "episode"

    .line 345
    .line 346
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 350
    .line 351
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 363
    .line 364
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 371
    .line 372
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 373
    .line 374
    .line 375
    move-result-wide v2

    .line 376
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v2, "s"

    .line 380
    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 385
    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string v2, "e"

    .line 390
    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 395
    .line 396
    const-string v3, "title"

    .line 397
    .line 398
    invoke-static {v0, v2, v3}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 407
    .line 408
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    check-cast p1, Lflix/com/vision/models/Episode;

    .line 417
    .line 418
    iget-object p1, p1, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    .line 419
    .line 420
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 425
    .line 426
    .line 427
    return-void
.end method

.method public openSeason(I)V
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iput v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lflix/com/vision/models/Season;

    .line 12
    .line 13
    iget-object v0, v0, Lflix/com/vision/models/Season;->year:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->D:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0}, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->e()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->p:LC4/G;

    .line 21
    .line 22
    iget v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, LC4/G;->setSeason(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->f:Landroid/widget/TextView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Season "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->B:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->j:Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lflix/com/vision/models/Season;

    .line 61
    .line 62
    iget-object v0, v0, Lflix/com/vision/models/Season;->poster:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lflix/com/vision/models/Season;

    .line 73
    .line 74
    iget-object v0, v0, Lflix/com/vision/models/Season;->poster:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->q:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lflix/com/vision/models/Season;

    .line 89
    .line 90
    iget-object v0, v0, Lflix/com/vision/models/Season;->poster:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->f(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivityLeanBack;->w:Lflix/com/vision/models/Movie;

    .line 101
    .line 102
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, "watched_season_index"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 123
    .line 124
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    .line 134
    .line 135
    return-void
.end method
