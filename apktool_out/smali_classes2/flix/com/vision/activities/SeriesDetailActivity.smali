.class public Lflix/com/vision/activities/SeriesDetailActivity;
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

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public s:Landroidx/recyclerview/widget/RecyclerView;

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
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->u:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->F:Z

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
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->v:Lio/reactivex/disposables/Disposable;

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
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

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
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

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
    const/4 v3, 0x0

    .line 64
    invoke-direct {v2, p0, v0, v3}, Ly4/Q0;-><init>(Lflix/com/vision/activities/base/a;ZI)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Ly4/H0;

    .line 68
    .line 69
    const/4 v3, 0x2

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
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->v:Lio/reactivex/disposables/Disposable;

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
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->u:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->t:Landroid/widget/ImageView;

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
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    sget v1, Lflix/com/vision/R$layout;->activity_series_details:I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Le/v;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "fonts/pproduct_sans_rregular.ttf"

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->z:Landroid/graphics/Typeface;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "fonts/product_sans_bold.ttf"

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->A:Landroid/graphics/Typeface;

    .line 35
    .line 36
    new-instance v1, Lh5/j;

    .line 37
    .line 38
    invoke-direct {v1}, Lh5/j;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->y:Lh5/j;

    .line 42
    .line 43
    sget v1, Lflix/com/vision/R$id;->title_logo:I

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lflix/com/vision/customviews/CustomImageView;

    .line 50
    .line 51
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->E:Lflix/com/vision/customviews/CustomImageView;

    .line 52
    .line 53
    sget v1, Lflix/com/vision/R$id;->last_episode_text_view:I

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->m:Landroid/widget/TextView;

    .line 62
    .line 63
    sget v1, Lflix/com/vision/R$id;->movie_title:I

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->b:Landroid/widget/TextView;

    .line 72
    .line 73
    sget v1, Lflix/com/vision/R$id;->info_text_view:I

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->e:Landroid/widget/TextView;

    .line 82
    .line 83
    sget v1, Lflix/com/vision/R$id;->recyclerview_episodes:I

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    sget v1, Lflix/com/vision/R$id;->recyclerview_seasons:I

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    sget v1, Lflix/com/vision/R$id;->season_info_text_view:I

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/widget/TextView;

    .line 110
    .line 111
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->j:Landroid/widget/TextView;

    .line 112
    .line 113
    sget v1, Lflix/com/vision/R$id;->season_label_view:I

    .line 114
    .line 115
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Landroid/widget/TextView;

    .line 120
    .line 121
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->f:Landroid/widget/TextView;

    .line 122
    .line 123
    sget v1, Lflix/com/vision/R$id;->season_button:I

    .line 124
    .line 125
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 130
    .line 131
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->x:Landroid/widget/RelativeLayout;

    .line 132
    .line 133
    sget v1, Lflix/com/vision/R$id;->poster:I

    .line 134
    .line 135
    invoke-virtual {p0, v1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Landroid/widget/ImageView;

    .line 140
    .line 141
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->t:Landroid/widget/ImageView;

    .line 142
    .line 143
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->x:Landroid/widget/RelativeLayout;

    .line 144
    .line 145
    if-eqz v1, :cond_0

    .line 146
    .line 147
    new-instance v2, LB4/a;

    .line 148
    .line 149
    const/16 v3, 0xd

    .line 150
    .line 151
    invoke-direct {v2, p0, v3}, LB4/a;-><init>(Ljava/lang/Object;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    :cond_0
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    .line 159
    new-instance v2, LC4/m;

    .line 160
    .line 161
    const/4 v3, 0x6

    .line 162
    invoke-direct {v2, v3}, LC4/m;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v2, "movie"

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Lflix/com/vision/models/Movie;

    .line 179
    .line 180
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const-string v2, "seasons"

    .line 187
    .line 188
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 203
    .line 204
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 208
    .line 209
    .line 210
    sget-object v1, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 221
    .line 222
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 227
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    iget-object v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 234
    .line 235
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 236
    .line 237
    .line 238
    move-result-wide v3

    .line 239
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v3, "watched_season_index"

    .line 243
    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    const/4 v4, 0x0

    .line 252
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    add-int/lit8 v2, v1, 0x1

    .line 257
    .line 258
    iput v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 259
    .line 260
    :try_start_0
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    check-cast v1, Lflix/com/vision/models/Season;

    .line 267
    .line 268
    iget-object v1, v1, Lflix/com/vision/models/Season;->year:Ljava/lang/String;

    .line 269
    .line 270
    iput-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->D:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .line 272
    :catch_0
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->f:Landroid/widget/TextView;

    .line 273
    .line 274
    if-eqz v1, :cond_1

    .line 275
    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v5, "Season "

    .line 279
    .line 280
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 284
    .line 285
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    :cond_1
    :try_start_1
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->j:Landroid/widget/TextView;

    .line 296
    .line 297
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 298
    .line 299
    iget v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 300
    .line 301
    sub-int/2addr v5, v0

    .line 302
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    check-cast v2, Lflix/com/vision/models/Season;

    .line 307
    .line 308
    iget-object v2, v2, Lflix/com/vision/models/Season;->plot:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 314
    .line 315
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 316
    .line 317
    sub-int/2addr v2, v0

    .line 318
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Lflix/com/vision/models/Season;

    .line 323
    .line 324
    iget-object v1, v1, Lflix/com/vision/models/Season;->poster:Ljava/lang/String;

    .line 325
    .line 326
    if-eqz v1, :cond_2

    .line 327
    .line 328
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 329
    .line 330
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 331
    .line 332
    sub-int/2addr v2, v0

    .line 333
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    check-cast v1, Lflix/com/vision/models/Season;

    .line 338
    .line 339
    iget-object v1, v1, Lflix/com/vision/models/Season;->poster:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-nez v1, :cond_2

    .line 346
    .line 347
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 348
    .line 349
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 350
    .line 351
    sub-int/2addr v2, v0

    .line 352
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    check-cast v1, Lflix/com/vision/models/Season;

    .line 357
    .line 358
    iget-object v1, v1, Lflix/com/vision/models/Season;->poster:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {p0, v1}, Lflix/com/vision/activities/SeriesDetailActivity;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 361
    .line 362
    .line 363
    goto :goto_0

    .line 364
    :catch_1
    move-exception v1

    .line 365
    :try_start_2
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    iget-object v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 370
    .line 371
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v2, v5}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v2}, Lm4/J;->fit()Lm4/J;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v2}, Lm4/J;->centerCrop()Lm4/J;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    iget-object v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->t:Landroid/widget/ImageView;

    .line 388
    .line 389
    invoke-virtual {v2, v5}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 390
    .line 391
    .line 392
    goto :goto_0

    .line 393
    :catch_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 394
    .line 395
    .line 396
    :cond_2
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 401
    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    iget-object v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 408
    .line 409
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 410
    .line 411
    .line 412
    move-result-wide v5

    .line 413
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v5, "season"

    .line 417
    .line 418
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    iget v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 422
    .line 423
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v5, "episode"

    .line 427
    .line 428
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    iget v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 432
    .line 433
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    add-int/2addr v1, v0

    .line 445
    iput v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->C:I

    .line 446
    .line 447
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->b:Landroid/widget/TextView;

    .line 448
    .line 449
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 450
    .line 451
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    if-nez p1, :cond_3

    .line 459
    .line 460
    invoke-virtual {p0}, Lflix/com/vision/activities/SeriesDetailActivity;->e()V

    .line 461
    .line 462
    .line 463
    :cond_3
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->e:Landroid/widget/TextView;

    .line 464
    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    iget-object v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 471
    .line 472
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v5, " \u00b7 "

    .line 480
    .line 481
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    iget-object v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 485
    .line 486
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v5, " Seasons"

    .line 494
    .line 495
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    .line 504
    .line 505
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 510
    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    iget-object v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 517
    .line 518
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 519
    .line 520
    .line 521
    move-result-wide v5

    .line 522
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    const/4 v3, -0x1

    .line 533
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    if-ltz v1, :cond_4

    .line 538
    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    const-string v2, " \u00b7 last episode: S"

    .line 542
    .line 543
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 547
    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v2, "E"

    .line 552
    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->C:I

    .line 557
    .line 558
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->m:Landroid/widget/TextView;

    .line 566
    .line 567
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    .line 569
    .line 570
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->m:Landroid/widget/TextView;

    .line 571
    .line 572
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 573
    .line 574
    .line 575
    :cond_4
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->u:Ljava/util/ArrayList;

    .line 576
    .line 577
    if-eqz p1, :cond_5

    .line 578
    .line 579
    :try_start_3
    const-string v2, "episodes"

    .line 580
    .line 581
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 589
    .line 590
    .line 591
    :catch_3
    :cond_5
    new-instance p1, LC4/Z;

    .line 592
    .line 593
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 594
    .line 595
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 596
    .line 597
    invoke-direct {p1, p0, p0, v2, v3}, LC4/Z;-><init>(Landroid/app/Activity;LU4/k;Ljava/util/ArrayList;I)V

    .line 598
    .line 599
    .line 600
    iput-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->n:LC4/Z;

    .line 601
    .line 602
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 603
    .line 604
    if-eqz v2, :cond_6

    .line 605
    .line 606
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 607
    .line 608
    .line 609
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 610
    .line 611
    const/16 v2, 0x12

    .line 612
    .line 613
    invoke-static {p1, v2}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 614
    .line 615
    .line 616
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 617
    .line 618
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 619
    .line 620
    invoke-direct {v2, p0, v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 624
    .line 625
    .line 626
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->n:LC4/Z;

    .line 627
    .line 628
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 629
    .line 630
    .line 631
    :cond_6
    new-instance p1, LC4/G;

    .line 632
    .line 633
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->C:I

    .line 634
    .line 635
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 636
    .line 637
    invoke-direct {p1, p0, v1, v2, v3}, LC4/G;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;II)V

    .line 638
    .line 639
    .line 640
    iput-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->p:LC4/G;

    .line 641
    .line 642
    iget v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 643
    .line 644
    invoke-virtual {p1, v1}, LC4/G;->setSeason(I)V

    .line 645
    .line 646
    .line 647
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 648
    .line 649
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->p:LC4/G;

    .line 650
    .line 651
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 652
    .line 653
    .line 654
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 655
    .line 656
    const/16 v1, 0x16

    .line 657
    .line 658
    invoke-static {p1, v1}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 659
    .line 660
    .line 661
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 662
    .line 663
    new-instance v1, Lflix/com/vision/helpers/CenterLayoutManager;

    .line 664
    .line 665
    invoke-direct {v1, p0, v0, v4}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 669
    .line 670
    .line 671
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->p:LC4/G;

    .line 672
    .line 673
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 674
    .line 675
    .line 676
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->y:Lh5/j;

    .line 677
    .line 678
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->b:Landroid/widget/TextView;

    .line 679
    .line 680
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->A:Landroid/graphics/Typeface;

    .line 681
    .line 682
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 683
    .line 684
    .line 685
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->y:Lh5/j;

    .line 686
    .line 687
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->e:Landroid/widget/TextView;

    .line 688
    .line 689
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->z:Landroid/graphics/Typeface;

    .line 690
    .line 691
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 692
    .line 693
    .line 694
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->y:Lh5/j;

    .line 695
    .line 696
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->f:Landroid/widget/TextView;

    .line 697
    .line 698
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->z:Landroid/graphics/Typeface;

    .line 699
    .line 700
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 701
    .line 702
    .line 703
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->y:Lh5/j;

    .line 704
    .line 705
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->j:Landroid/widget/TextView;

    .line 706
    .line 707
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->z:Landroid/graphics/Typeface;

    .line 708
    .line 709
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 710
    .line 711
    .line 712
    iget-object p1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->E:Lflix/com/vision/customviews/CustomImageView;

    .line 713
    .line 714
    if-eqz p1, :cond_7

    .line 715
    .line 716
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 721
    .line 722
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 723
    .line 724
    const-string v0, "pref_load_logos"

    .line 725
    .line 726
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 727
    .line 728
    .line 729
    move-result p1

    .line 730
    if-eqz p1, :cond_7

    .line 731
    .line 732
    new-instance p1, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    iget-object v0, v0, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 742
    .line 743
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    sget v0, Lflix/com/vision/R$string;->api_path_tv:I

    .line 747
    .line 748
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 756
    .line 757
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 758
    .line 759
    .line 760
    move-result-wide v0

    .line 761
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    const-string v0, ".png"

    .line 765
    .line 766
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object p1

    .line 773
    :try_start_4
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-virtual {v0, p1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 778
    .line 779
    .line 780
    move-result-object p1

    .line 781
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->E:Lflix/com/vision/customviews/CustomImageView;

    .line 782
    .line 783
    new-instance v1, Ly4/R0;

    .line 784
    .line 785
    invoke-direct {v1, p0}, Ly4/R0;-><init>(Lflix/com/vision/activities/SeriesDetailActivity;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {p1, v0, v1}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 789
    .line 790
    .line 791
    goto :goto_1

    .line 792
    :catch_4
    move-exception p1

    .line 793
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 794
    .line 795
    .line 796
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
    .locals 5

    .line 1
    const-string v0, " \u00b7 last episode: S"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 15
    .line 16
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, "watched_season_index"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, -0x1

    .line 33
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ltz v1, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 51
    .line 52
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, "season"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "episode"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->C:I

    .line 84
    .line 85
    add-int/lit8 v3, v3, -0x1

    .line 86
    .line 87
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, "E"

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->u:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lflix/com/vision/models/Episode;

    .line 113
    .line 114
    iget v0, v0, Lflix/com/vision/models/Episode;->number:I

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->m:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->m:Landroid/widget/TextView;

    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    :catch_0
    :cond_0
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->u:Ljava/util/ArrayList;

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lflix/com/vision/App;->y:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->u:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->p:LC4/G;

    .line 41
    .line 42
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const-string v3, "watched_season_index"

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    if-ne v0, v4, :cond_1

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 59
    .line 60
    invoke-virtual {v5}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    iget-object v5, v5, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 79
    .line 80
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->e:Landroid/widget/TextView;

    .line 92
    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v6, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 99
    .line 100
    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getYear()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v6, " \u00b7 "

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v6, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 113
    .line 114
    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getSeason_count()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v6, " Seasons"

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 138
    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v6, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 145
    .line 146
    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 147
    .line 148
    .line 149
    move-result-wide v6

    .line 150
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    const/4 v5, -0x1

    .line 161
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-ltz v0, :cond_2

    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v3, " \u00b7 last episode: S"

    .line 170
    .line 171
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 175
    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v3, "E"

    .line 180
    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Lflix/com/vision/models/Episode;

    .line 189
    .line 190
    iget v3, v3, Lflix/com/vision/models/Episode;->number:I

    .line 191
    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iget-object v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->m:Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->m:Landroid/widget/TextView;

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    :cond_2
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 214
    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    iget-object v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 225
    .line 226
    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 227
    .line 228
    .line 229
    move-result-wide v5

    .line 230
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v3, "watched_season_episode_count"

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    iget-object v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

    .line 243
    .line 244
    iget v5, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 245
    .line 246
    sub-int/2addr v5, v4

    .line 247
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    check-cast v3, Lflix/com/vision/models/Season;

    .line 252
    .line 253
    iget v3, v3, Lflix/com/vision/models/Season;->episode_count:I

    .line 254
    .line 255
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .line 261
    .line 262
    :catch_0
    add-int/lit8 v0, p1, 0x1

    .line 263
    .line 264
    iput v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->C:I

    .line 265
    .line 266
    new-instance v2, Landroid/content/Intent;

    .line 267
    .line 268
    const-class v3, Lflix/com/vision/activities/LinksActivity;

    .line 269
    .line 270
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .line 272
    .line 273
    const-string v3, "movie"

    .line 274
    .line 275
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 276
    .line 277
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    const-string v3, "season_year"

    .line 281
    .line 282
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivity;->D:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    const-string v3, "episode_number"

    .line 288
    .line 289
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    iget v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 293
    .line 294
    const-string v3, "season"

    .line 295
    .line 296
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    const-string v4, "episode_count"

    .line 304
    .line 305
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Lflix/com/vision/models/Episode;

    .line 313
    .line 314
    iget v0, v0, Lflix/com/vision/models/Episode;->number:I

    .line 315
    .line 316
    const-string v4, "episode_id"

    .line 317
    .line 318
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 322
    .line 323
    .line 324
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 329
    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    iget-object v4, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 340
    .line 341
    invoke-virtual {v4}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 342
    .line 343
    .line 344
    move-result-wide v4

    .line 345
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v3, "episode"

    .line 357
    .line 358
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    iget v3, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 362
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 375
    .line 376
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    iget-object v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

    .line 383
    .line 384
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 385
    .line 386
    .line 387
    move-result-wide v2

    .line 388
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v2, "s"

    .line 392
    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 397
    .line 398
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v2, "e"

    .line 402
    .line 403
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 407
    .line 408
    const-string v3, "title"

    .line 409
    .line 410
    invoke-static {v0, v2, v3}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 419
    .line 420
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    check-cast p1, Lflix/com/vision/models/Episode;

    .line 429
    .line 430
    iget-object p1, p1, Lflix/com/vision/models/Episode;->title:Ljava/lang/String;

    .line 431
    .line 432
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 437
    .line 438
    .line 439
    return-void
.end method

.method public openSeason(I)V
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iput v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

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
    iput-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->D:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0}, Lflix/com/vision/activities/SeriesDetailActivity;->e()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->p:LC4/G;

    .line 21
    .line 22
    iget v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, LC4/G;->setSeason(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->f:Landroid/widget/TextView;

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
    iget v2, p0, Lflix/com/vision/activities/SeriesDetailActivity;->B:I

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
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->j:Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lflix/com/vision/activities/SeriesDetailActivity;->q:Ljava/util/ArrayList;

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
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/SeriesDetailActivity;->f(Ljava/lang/String;)V

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
    iget-object v1, p0, Lflix/com/vision/activities/SeriesDetailActivity;->w:Lflix/com/vision/models/Movie;

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
