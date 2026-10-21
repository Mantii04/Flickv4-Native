.class public Lflix/com/vision/activities/leanback/SlideshowActivity;
.super Le/v;
.source "SourceFile"


# static fields
.field public static final synthetic v:I


# instance fields
.field public b:Landroid/widget/TextView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public j:Landroid/widget/ImageView;

.field public m:Landroid/view/View;

.field public final n:Lio/reactivex/disposables/CompositeDisposable;

.field public final p:Landroid/os/Handler;

.field public q:Ljava/util/ArrayList;

.field public r:I

.field public s:Landroid/animation/AnimatorSet;

.field public final t:Ljava/util/Random;

.field public final u:LA4/x;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/v;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->n:Lio/reactivex/disposables/CompositeDisposable;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->p:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->r:I

    .line 31
    .line 32
    new-instance v0, Ljava/util/Random;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->t:Ljava/util/Random;

    .line 38
    .line 39
    new-instance v0, LA4/x;

    .line 40
    .line 41
    invoke-direct {v0, p0}, LA4/x;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->u:LA4/x;

    .line 45
    .line 46
    return-void
.end method

.method public static e(Lflix/com/vision/activities/leanback/SlideshowActivity;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 5
    .line 6
    new-array v4, v2, [F

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    const-string v5, "scaleX"

    .line 12
    .line 13
    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 17
    .line 18
    const-string v4, "scaleY"

    .line 19
    .line 20
    new-array v5, v2, [F

    .line 21
    .line 22
    fill-array-data v5, :array_1

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->t:Ljava/util/Random;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/high16 v5, 0x3f000000    # 0.5f

    .line 35
    .line 36
    sub-float/2addr v4, v5

    .line 37
    const/high16 v6, 0x43c80000    # 400.0f

    .line 38
    .line 39
    mul-float/2addr v4, v6

    .line 40
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sub-float/2addr v3, v5

    .line 45
    mul-float/2addr v3, v6

    .line 46
    iget-object v5, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    new-array v7, v2, [F

    .line 50
    .line 51
    aput v6, v7, v1

    .line 52
    .line 53
    aput v4, v7, v0

    .line 54
    .line 55
    const-string v4, "translationX"

    .line 56
    .line 57
    invoke-static {v5, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object v5, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 62
    .line 63
    const-string v7, "translationY"

    .line 64
    .line 65
    new-array v8, v2, [F

    .line 66
    .line 67
    aput v6, v8, v1

    .line 68
    .line 69
    aput v3, v8, v0

    .line 70
    .line 71
    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 76
    .line 77
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v5, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->s:Landroid/animation/AnimatorSet;

    .line 81
    .line 82
    new-array v2, v2, [Landroid/animation/Animator;

    .line 83
    .line 84
    aput-object v4, v2, v1

    .line 85
    .line 86
    aput-object v3, v2, v0

    .line 87
    .line 88
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->s:Landroid/animation/AnimatorSet;

    .line 92
    .line 93
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 94
    .line 95
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->s:Landroid/animation/AnimatorSet;

    .line 102
    .line 103
    const-wide/16 v1, 0x3e80

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->s:Landroid/animation/AnimatorSet;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method


# virtual methods
.method public final f(Z)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->b:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v3, ""

    .line 6
    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->r:I

    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    iget-object v3, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    rem-int/2addr v2, v3

    .line 21
    iput v2, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->r:I

    .line 22
    .line 23
    iget-object v3, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lflix/com/vision/models/Movie;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v4, "https://image.tmdb.org/t/p/w1280"

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v2, Lflix/com/vision/models/Movie;->backdrop:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v4, v4, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 52
    .line 53
    sget v4, Lflix/com/vision/R$string;->api_path_movie:I

    .line 54
    .line 55
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_0

    .line 66
    .line 67
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iget-object v4, v4, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 72
    .line 73
    sget v4, Lflix/com/vision/R$string;->api_path_tv:I

    .line 74
    .line 75
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 79
    .line 80
    .line 81
    :cond_0
    iget-object v4, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    invoke-virtual {v4, v5}, Landroid/view/View;->setRotation(F)V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 88
    .line 89
    const v6, 0x3f99999a    # 1.2f

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleX(F)V

    .line 93
    .line 94
    .line 95
    iget-object v4, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 96
    .line 97
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleY(F)V

    .line 98
    .line 99
    .line 100
    iget-object v4, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 103
    .line 104
    .line 105
    iget-object v4, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v4, v3}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const/16 v4, 0x780

    .line 119
    .line 120
    const/16 v5, 0x438

    .line 121
    .line 122
    invoke-virtual {v3, v4, v5}, Lm4/J;->resize(II)Lm4/J;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lm4/J;->centerCrop()Lm4/J;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v3}, Lm4/J;->onlyScaleDown()Lm4/J;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget-object v4, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 135
    .line 136
    new-instance v5, LA4/y;

    .line 137
    .line 138
    invoke-direct {v5, p0, p1}, LA4/y;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;Z)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4, v5}, Lm4/J;->into(Landroid/widget/ImageView;Lm4/i;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    const-wide/16 v5, 0x0

    .line 149
    .line 150
    cmp-long p1, v3, v5

    .line 151
    .line 152
    if-gtz p1, :cond_1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getType()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_2

    .line 160
    .line 161
    const-string p1, "movie"

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_2
    const-string p1, "tv"

    .line 165
    .line 166
    :goto_0
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 167
    .line 168
    .line 169
    move-result-wide v3

    .line 170
    invoke-static {p1, v3, v4}, LD4/a;->getMediaImages(Ljava/lang/String;J)Lio/reactivex/Observable;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {p1, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    new-instance v3, LA4/s;

    .line 183
    .line 184
    invoke-direct {v3, v1}, LA4/s;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {p1, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    new-instance v3, LA4/u;

    .line 200
    .line 201
    invoke-direct {v3, v1, p0, v2}, LA4/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    new-instance v2, LA4/v;

    .line 205
    .line 206
    invoke-direct {v2, p0, v1}, LA4/v;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v3, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 210
    .line 211
    .line 212
    :goto_1
    iget-object p1, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->j:Landroid/widget/ImageView;

    .line 213
    .line 214
    new-array v1, v0, [F

    .line 215
    .line 216
    fill-array-data v1, :array_0

    .line 217
    .line 218
    .line 219
    const-string v2, "alpha"

    .line 220
    .line 221
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    const-wide/16 v3, 0x3e8

    .line 226
    .line 227
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 228
    .line 229
    .line 230
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 231
    .line 232
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->m:Landroid/view/View;

    .line 242
    .line 243
    new-array v0, v0, [F

    .line 244
    .line 245
    fill-array-data v0, :array_1

    .line 246
    .line 247
    .line 248
    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 253
    .line 254
    .line 255
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 256
    .line 257
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_slideshow:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->slideshow_backdrop:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->e:Landroid/widget/ImageView;

    .line 18
    .line 19
    sget p1, Lflix/com/vision/R$id;->movie_title:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object p1, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->b:Landroid/widget/TextView;

    .line 28
    .line 29
    sget p1, Lflix/com/vision/R$id;->slideshow_logo:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object p1, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->f:Landroid/widget/ImageView;

    .line 38
    .line 39
    sget p1, Lflix/com/vision/R$id;->slideshow_banner:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/widget/ImageView;

    .line 46
    .line 47
    iput-object p1, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->j:Landroid/widget/ImageView;

    .line 48
    .line 49
    sget p1, Lflix/com/vision/R$id;->gradient_overlay:I

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->m:Landroid/view/View;

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    const-string v0, "movie"

    .line 59
    .line 60
    const/4 v1, 0x2

    .line 61
    invoke-static {p0, p1, v0, v1}, LD4/a;->gettabbedList(Landroid/content/Context;ILjava/lang/String;I)Lio/reactivex/Observable;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-instance v3, LA4/v;

    .line 82
    .line 83
    const/4 v4, 0x1

    .line 84
    invoke-direct {v3, p0, v4}, LA4/v;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;I)V

    .line 85
    .line 86
    .line 87
    new-instance v4, LA4/v;

    .line 88
    .line 89
    const/4 v5, 0x2

    .line 90
    invoke-direct {v4, p0, v5}, LA4/v;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->n:Lio/reactivex/disposables/CompositeDisposable;

    .line 98
    .line 99
    invoke-virtual {v3, v2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 100
    .line 101
    .line 102
    const-string v2, "tv"

    .line 103
    .line 104
    invoke-static {p0, p1, v2, v1}, LD4/a;->gettabbedList(Landroid/content/Context;ILjava/lang/String;I)Lio/reactivex/Observable;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {p1, v4}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {p1, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v4, LA4/v;

    .line 125
    .line 126
    const/4 v5, 0x3

    .line 127
    invoke-direct {v4, p0, v5}, LA4/v;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;I)V

    .line 128
    .line 129
    .line 130
    new-instance v5, LA4/c;

    .line 131
    .line 132
    const/4 v6, 0x2

    .line 133
    invoke-direct {v5, v6}, LA4/c;-><init>(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v4, v5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v3, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 141
    .line 142
    .line 143
    invoke-static {p0, v1, v2, v1}, LD4/a;->gettabbedList(Landroid/content/Context;ILjava/lang/String;I)Lio/reactivex/Observable;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    new-instance v2, LA4/v;

    .line 164
    .line 165
    const/4 v4, 0x4

    .line 166
    invoke-direct {v2, p0, v4}, LA4/v;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;I)V

    .line 167
    .line 168
    .line 169
    new-instance v4, LA4/c;

    .line 170
    .line 171
    const/4 v5, 0x2

    .line 172
    invoke-direct {v4, v5}, LA4/c;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {v3, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 180
    .line 181
    .line 182
    invoke-static {p0, v1, v0, v1}, LD4/a;->gettabbedList(Landroid/content/Context;ILjava/lang/String;I)Lio/reactivex/Observable;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    new-instance v0, LA4/v;

    .line 203
    .line 204
    const/4 v1, 0x5

    .line 205
    invoke-direct {v0, p0, v1}, LA4/v;-><init>(Lflix/com/vision/activities/leanback/SlideshowActivity;I)V

    .line 206
    .line 207
    .line 208
    new-instance v1, LA4/c;

    .line 209
    .line 210
    const/4 v2, 0x2

    .line 211
    invoke-direct {v1, v2}, LA4/c;-><init>(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {v3, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/v;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->n:Lio/reactivex/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->p:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->s:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 p2, 0x17

    .line 2
    .line 3
    if-eq p1, p2, :cond_0

    .line 4
    .line 5
    const/16 p2, 0x42

    .line 6
    .line 7
    if-ne p1, p2, :cond_2

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->q:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget p2, p0, Lflix/com/vision/activities/leanback/SlideshowActivity;->r:I

    .line 22
    .line 23
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lflix/com/vision/models/Movie;

    .line 28
    .line 29
    sget-boolean p2, Lflix/com/vision/App;->I:Z

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    new-instance p2, Landroid/content/Intent;

    .line 34
    .line 35
    const-class v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 36
    .line 37
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 42
    .line 43
    const-class v0, Lflix/com/vision/activities/MovieDetailActivity;

    .line 44
    .line 45
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    const-string v0, "movie"

    .line 49
    .line 50
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const/high16 p1, 0x10000000

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    return p1
.end method
