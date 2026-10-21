.class public Lflix/com/vision/activities/CastMoviesActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/j;


# static fields
.field public static final synthetic G:I


# instance fields
.field public A:LC4/P;

.field public B:Ljava/lang/String;

.field public C:Z

.field public D:Landroid/widget/TextView;

.field public E:I

.field public F:I

.field public b:Lh5/j;

.field public e:Landroid/graphics/Typeface;

.field public final f:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public n:Ljava/lang/String;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:J

.field public s:Lde/hdodenhof/circleimageview/CircleImageView;

.field public t:Landroidx/appcompat/widget/Toolbar;

.field public u:Landroidx/recyclerview/widget/RecyclerView;

.field public v:Landroid/widget/RelativeLayout;

.field public w:Landroid/widget/RelativeLayout;

.field public x:Landroid/widget/RelativeLayout;

.field public y:Lio/reactivex/disposables/Disposable;

.field public z:Landroid/widget/LinearLayout;


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
    iput-object v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->f:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->j:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->m:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->B:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->E:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->y:Lio/reactivex/disposables/Disposable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->r:J

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "movie_credits"

    .line 12
    .line 13
    invoke-static {p0, v3, v0, v1, v2}, LD4/a;->getDetailCast(Landroid/content/Context;Ljava/lang/String;JZ)Lio/reactivex/Observable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ly4/t;

    .line 34
    .line 35
    invoke-direct {v1, p0, v2}, Ly4/t;-><init>(Lflix/com/vision/activities/CastMoviesActivity;I)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lx4/d;

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-direct {v2, v3}, Lx4/d;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->y:Lio/reactivex/disposables/Disposable;

    .line 49
    .line 50
    return-void
.end method

.method public favoriteDeleted(I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_cast_movies:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "fonts/pproduct_sans_rregular.ttf"

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->e:Landroid/graphics/Typeface;

    .line 22
    .line 23
    new-instance p1, Lh5/j;

    .line 24
    .line 25
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->b:Lh5/j;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "gender"

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->E:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "name"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->n:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "id"

    .line 60
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iput-wide v2, p0, Lflix/com/vision/activities/CastMoviesActivity;->r:J

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "type"

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "image"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->B:Ljava/lang/String;

    .line 89
    .line 90
    sget p1, Lflix/com/vision/R$id;->cast_name_text:I

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->D:Landroid/widget/TextView;

    .line 99
    .line 100
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/widget/LinearLayout;

    .line 107
    .line 108
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->z:Landroid/widget/LinearLayout;

    .line 109
    .line 110
    sget p1, Lflix/com/vision/R$id;->series_button:I

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 117
    .line 118
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->w:Landroid/widget/RelativeLayout;

    .line 119
    .line 120
    sget p1, Lflix/com/vision/R$id;->sort_icon_view_cast:I

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Landroid/widget/ImageView;

    .line 127
    .line 128
    sget p1, Lflix/com/vision/R$id;->movies_button:I

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 135
    .line 136
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->v:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    sget p1, Lflix/com/vision/R$id;->image_cast:I

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 145
    .line 146
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->s:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 147
    .line 148
    sget p1, Lflix/com/vision/R$id;->label_series_button:I

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Landroid/widget/TextView;

    .line 155
    .line 156
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->q:Landroid/widget/TextView;

    .line 157
    .line 158
    sget p1, Lflix/com/vision/R$id;->label_movies_button:I

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Landroid/widget/TextView;

    .line 165
    .line 166
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->p:Landroid/widget/TextView;

    .line 167
    .line 168
    iget-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->b:Lh5/j;

    .line 169
    .line 170
    iget-object v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->q:Landroid/widget/TextView;

    .line 171
    .line 172
    iget-object v2, p0, Lflix/com/vision/activities/CastMoviesActivity;->e:Landroid/graphics/Typeface;

    .line 173
    .line 174
    invoke-virtual {p1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->b:Lh5/j;

    .line 178
    .line 179
    iget-object v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->p:Landroid/widget/TextView;

    .line 180
    .line 181
    iget-object v2, p0, Lflix/com/vision/activities/CastMoviesActivity;->e:Landroid/graphics/Typeface;

    .line 182
    .line 183
    invoke-virtual {p1, v0, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->w:Landroid/widget/RelativeLayout;

    .line 187
    .line 188
    new-instance v0, Ly4/s;

    .line 189
    .line 190
    invoke-direct {v0, p0, v1}, Ly4/s;-><init>(Lflix/com/vision/activities/CastMoviesActivity;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->v:Landroid/widget/RelativeLayout;

    .line 197
    .line 198
    new-instance v0, Ly4/s;

    .line 199
    .line 200
    const/4 v2, 0x1

    .line 201
    invoke-direct {v0, p0, v2}, Ly4/s;-><init>(Lflix/com/vision/activities/CastMoviesActivity;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 228
    .line 229
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 230
    .line 231
    int-to-float p1, p1

    .line 232
    div-float/2addr p1, v0

    .line 233
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 234
    .line 235
    if-eqz v0, :cond_0

    .line 236
    .line 237
    const/16 v0, 0x8c

    .line 238
    .line 239
    goto :goto_0

    .line 240
    :cond_0
    const/16 v0, 0x78

    .line 241
    .line 242
    :goto_0
    int-to-float v0, v0

    .line 243
    div-float v0, p1, v0

    .line 244
    .line 245
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    iget-object v3, v3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 254
    .line 255
    const-string v4, "prefs_show_big_cobers"

    .line 256
    .line 257
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_1

    .line 262
    .line 263
    const/high16 v0, 0x43340000    # 180.0f

    .line 264
    .line 265
    div-float/2addr p1, v0

    .line 266
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    :cond_1
    sget p1, Lflix/com/vision/R$id;->recyclerview_cast:I

    .line 271
    .line 272
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 277
    .line 278
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 279
    .line 280
    sget p1, Lflix/com/vision/R$id;->sort_button:I

    .line 281
    .line 282
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 287
    .line 288
    iput-object p1, p0, Lflix/com/vision/activities/CastMoviesActivity;->x:Landroid/widget/RelativeLayout;

    .line 289
    .line 290
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 291
    .line 292
    const/16 v1, 0x8

    .line 293
    .line 294
    if-eqz p1, :cond_2

    .line 295
    .line 296
    const/16 p1, 0xc

    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_2
    move p1, v1

    .line 300
    :goto_1
    iget-object v3, p0, Lflix/com/vision/activities/CastMoviesActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 301
    .line 302
    new-instance v4, LT4/k;

    .line 303
    .line 304
    invoke-direct {v4, p1}, LT4/k;-><init>(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 308
    .line 309
    .line 310
    new-instance v5, LC4/P;

    .line 311
    .line 312
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    iget-object v7, p0, Lflix/com/vision/activities/CastMoviesActivity;->j:Ljava/util/ArrayList;

    .line 317
    .line 318
    const/4 v9, 0x0

    .line 319
    const/4 v11, 0x0

    .line 320
    move-object v10, p0

    .line 321
    move-object v8, p0

    .line 322
    invoke-direct/range {v5 .. v11}, LC4/P;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 323
    .line 324
    .line 325
    iput-object v5, v8, Lflix/com/vision/activities/CastMoviesActivity;->A:LC4/P;

    .line 326
    .line 327
    new-instance p1, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 328
    .line 329
    invoke-direct {p1, p0, v0}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 330
    .line 331
    .line 332
    iget-object v0, v8, Lflix/com/vision/activities/CastMoviesActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 333
    .line 334
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 335
    .line 336
    .line 337
    iget-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 338
    .line 339
    invoke-static {p1, v1}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 340
    .line 341
    .line 342
    iget-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 343
    .line 344
    iget-object v0, v8, Lflix/com/vision/activities/CastMoviesActivity;->A:LC4/P;

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 347
    .line 348
    .line 349
    sget p1, Lflix/com/vision/R$id;->toolbar:I

    .line 350
    .line 351
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 356
    .line 357
    iput-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->t:Landroidx/appcompat/widget/Toolbar;

    .line 358
    .line 359
    invoke-virtual {p0, p1}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 360
    .line 361
    .line 362
    iget-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->n:Ljava/lang/String;

    .line 363
    .line 364
    if-eqz p1, :cond_3

    .line 365
    .line 366
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v1, "WITH "

    .line 373
    .line 374
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v8, Lflix/com/vision/activities/CastMoviesActivity;->n:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {p1, v0}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    .line 392
    .line 393
    iget-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->D:Landroid/widget/TextView;

    .line 394
    .line 395
    if-eqz p1, :cond_3

    .line 396
    .line 397
    iget-object v0, v8, Lflix/com/vision/activities/CastMoviesActivity;->n:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    :cond_3
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-virtual {p1, v2}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 407
    .line 408
    .line 409
    iget-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->x:Landroid/widget/RelativeLayout;

    .line 410
    .line 411
    new-instance v0, Ly4/s;

    .line 412
    .line 413
    const/4 v1, 0x2

    .line 414
    invoke-direct {v0, p0, v1}, Ly4/s;-><init>(Lflix/com/vision/activities/CastMoviesActivity;I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    .line 419
    .line 420
    iget-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->b:Lh5/j;

    .line 421
    .line 422
    iget-object v0, v8, Lflix/com/vision/activities/CastMoviesActivity;->t:Landroidx/appcompat/widget/Toolbar;

    .line 423
    .line 424
    iget-object v1, v8, Lflix/com/vision/activities/CastMoviesActivity;->e:Landroid/graphics/Typeface;

    .line 425
    .line 426
    invoke-virtual {p1, v0, v1}, Lh5/j;->applyFontToToolbar(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/Typeface;)V

    .line 427
    .line 428
    .line 429
    iget-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->v:Landroid/widget/RelativeLayout;

    .line 430
    .line 431
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0}, Lflix/com/vision/activities/CastMoviesActivity;->setBackgroundColor()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0}, Lflix/com/vision/activities/CastMoviesActivity;->e()V

    .line 438
    .line 439
    .line 440
    :try_start_0
    iget-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->B:Ljava/lang/String;

    .line 441
    .line 442
    if-eqz p1, :cond_4

    .line 443
    .line 444
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    iget-object v0, v8, Lflix/com/vision/activities/CastMoviesActivity;->B:Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {p1, v0}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {p1}, Lm4/J;->fit()Lm4/J;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-virtual {p1}, Lm4/J;->centerCrop()Lm4/J;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    iget-object v0, v8, Lflix/com/vision/activities/CastMoviesActivity;->s:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 463
    .line 464
    invoke-virtual {p1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V

    .line 465
    .line 466
    .line 467
    iget-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->s:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 468
    .line 469
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 474
    .line 475
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    invoke-virtual {p1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColor(I)V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :cond_4
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    iget v0, v8, Lflix/com/vision/activities/CastMoviesActivity;->E:I

    .line 488
    .line 489
    if-nez v0, :cond_5

    .line 490
    .line 491
    sget v0, Lflix/com/vision/R$drawable;->cast_:I

    .line 492
    .line 493
    goto :goto_2

    .line 494
    :cond_5
    sget v0, Lflix/com/vision/R$drawable;->cast_2:I

    .line 495
    .line 496
    :goto_2
    invoke-virtual {p1, v0}, Lm4/D;->load(I)Lm4/J;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-virtual {p1}, Lm4/J;->fit()Lm4/J;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    invoke-virtual {p1}, Lm4/J;->centerCrop()Lm4/J;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    iget-object v0, v8, Lflix/com/vision/activities/CastMoviesActivity;->s:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 509
    .line 510
    invoke-virtual {p1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V

    .line 511
    .line 512
    .line 513
    iget-object p1, v8, Lflix/com/vision/activities/CastMoviesActivity;->s:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 514
    .line 515
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    sget v1, Lflix/com/vision/R$color;->white:I

    .line 520
    .line 521
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    invoke-virtual {p1, v0}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .line 527
    .line 528
    :catch_0
    return-void
.end method

.method public onMediaSelected(Lflix/com/vision/models/Movie;)V
    .locals 3

    .line 1
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    const-class v1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-class v1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "query"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string v1, "server"

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string v1, "movie"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v1, "year"

    .line 42
    .line 43
    iget-object p1, p1, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    return-void
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

.method public setBackgroundColor()V
    .locals 5

    .line 1
    const v0, 0x263984

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lflix/com/vision/activities/CastMoviesActivity;->F:I

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lflix/com/vision/activities/CastMoviesActivity;->F:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x2

    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object v1, v4, v2

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-object v3, v4, v1

    .line 29
    .line 30
    invoke-static {v0, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-wide/16 v3, 0x7d0

    .line 35
    .line 36
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    new-instance v1, LA3/a;

    .line 40
    .line 41
    const/16 v3, 0xa

    .line 42
    .line 43
    invoke-direct {v1, p0, v3}, LA3/a;-><init>(Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 50
    .line 51
    .line 52
    iput v2, p0, Lflix/com/vision/activities/CastMoviesActivity;->F:I

    .line 53
    .line 54
    return-void
.end method
