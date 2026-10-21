.class public Lflix/com/vision/activities/AnimeSearchResultActivty;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/i;
.implements LU4/d;


# static fields
.field public static final synthetic z:I


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Landroidx/recyclerview/widget/RecyclerView;

.field public f:Landroid/widget/RelativeLayout;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Landroid/widget/RelativeLayout;

.field public n:Landroid/widget/RelativeLayout;

.field public final p:Ljava/util/ArrayList;

.field public final q:Ljava/util/ArrayList;

.field public r:Landroid/widget/ProgressBar;

.field public s:Ljava/util/ArrayList;

.field public t:Landroidx/recyclerview/widget/RecyclerView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public final w:I

.field public x:Landroid/widget/LinearLayout;

.field public y:Ljava/lang/String;


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
    iput-object v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->p:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->q:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v0, 0x64

    .line 19
    .line 20
    iput v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->w:I

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    iput-object v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->y:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1, p0}, LA/i;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    const-string p0, ""

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->u:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->y:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->y:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->u:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v1, "Search by title or people"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

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
    const/16 v2, 0x8

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
    new-instance v1, Ly4/k;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_search_tv_anime:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->s:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, LC4/k;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->s:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget v4, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->w:I

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v3, p0

    .line 28
    invoke-direct/range {v0 .. v5}, LC4/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/d;)V

    .line 29
    .line 30
    .line 31
    sget p1, Lflix/com/vision/R$id;->recyclerview:I

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    sget p1, Lflix/com/vision/R$id;->discover_text_view:I

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->v:Landroid/widget/TextView;

    .line 50
    .line 51
    sget p1, Lflix/com/vision/R$id;->search_button:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 58
    .line 59
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->n:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    sget p1, Lflix/com/vision/R$id;->query_text_view:I

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->u:Landroid/widget/TextView;

    .line 70
    .line 71
    sget p1, Lflix/com/vision/R$id;->main_relative_view:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/LinearLayout;

    .line 78
    .line 79
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->x:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/widget/ProgressBar;

    .line 88
    .line 89
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->r:Landroid/widget/ProgressBar;

    .line 90
    .line 91
    sget p1, Lflix/com/vision/R$id;->recycler_view_letters_numeric:I

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    .line 99
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    sget p1, Lflix/com/vision/R$id;->recycler_view_letters:I

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    .line 109
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Landroid/widget/ProgressBar;

    .line 118
    .line 119
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->r:Landroid/widget/ProgressBar;

    .line 120
    .line 121
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroid/widget/ProgressBar;

    .line 128
    .line 129
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->r:Landroid/widget/ProgressBar;

    .line 130
    .line 131
    sget p1, Lflix/com/vision/R$id;->main_relative_view:I

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/widget/LinearLayout;

    .line 138
    .line 139
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->x:Landroid/widget/LinearLayout;

    .line 140
    .line 141
    sget p1, Lflix/com/vision/R$id;->clear_button:I

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 148
    .line 149
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->m:Landroid/widget/RelativeLayout;

    .line 150
    .line 151
    sget p1, Lflix/com/vision/R$id;->button_blank_space:I

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 158
    .line 159
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->f:Landroid/widget/RelativeLayout;

    .line 160
    .line 161
    sget p1, Lflix/com/vision/R$id;->button_back_space:I

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 168
    .line 169
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->j:Landroid/widget/RelativeLayout;

    .line 170
    .line 171
    sget p1, Lflix/com/vision/R$id;->query_text_view:I

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Landroid/widget/TextView;

    .line 178
    .line 179
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->u:Landroid/widget/TextView;

    .line 180
    .line 181
    sget p1, Lflix/com/vision/R$id;->recycler_view_letters:I

    .line 182
    .line 183
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    .line 189
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 190
    .line 191
    sget p1, Lflix/com/vision/R$id;->recycler_view_letters_numeric:I

    .line 192
    .line 193
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    .line 199
    iput-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    invoke-virtual {p0}, Lflix/com/vision/activities/AnimeSearchResultActivty;->extractDominantColor()V

    .line 202
    .line 203
    .line 204
    new-instance p1, LC4/I;

    .line 205
    .line 206
    iget-object v0, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->p:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {p1, p0, p0, v0}, LC4/I;-><init>(Landroid/content/Context;LU4/i;Ljava/util/ArrayList;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 212
    .line 213
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 217
    .line 218
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 219
    .line 220
    const/4 v2, 0x7

    .line 221
    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 225
    .line 226
    .line 227
    new-instance p1, LC4/I;

    .line 228
    .line 229
    iget-object v1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->q:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-direct {p1, p0, p0, v1}, LC4/I;-><init>(Landroid/content/Context;LU4/i;Ljava/util/ArrayList;)V

    .line 232
    .line 233
    .line 234
    iget-object v4, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    .line 236
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 237
    .line 238
    .line 239
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 240
    .line 241
    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 242
    .line 243
    invoke-direct {v4, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 247
    .line 248
    .line 249
    new-instance v6, LC4/k;

    .line 250
    .line 251
    iget-object v8, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->s:Ljava/util/ArrayList;

    .line 252
    .line 253
    const/16 v10, 0x457

    .line 254
    .line 255
    move-object v9, p0

    .line 256
    move-object v11, p0

    .line 257
    move-object v7, v3

    .line 258
    invoke-direct/range {v6 .. v11}, LC4/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/d;)V

    .line 259
    .line 260
    .line 261
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 262
    .line 263
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    .line 268
    new-instance v2, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 269
    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    new-instance v5, Landroid/util/DisplayMetrics;

    .line 279
    .line 280
    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 295
    .line 296
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 297
    .line 298
    int-to-float v5, v5

    .line 299
    div-float/2addr v5, v4

    .line 300
    sget-object v4, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 301
    .line 302
    const/16 v4, 0x8c

    .line 303
    .line 304
    int-to-float v4, v4

    .line 305
    div-float/2addr v5, v4

    .line 306
    const v4, 0x3f333333    # 0.7f

    .line 307
    .line 308
    .line 309
    mul-float/2addr v5, v4

    .line 310
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    invoke-direct {v2, p0, v4}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 318
    .line 319
    .line 320
    const-string p1, "a"

    .line 321
    .line 322
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    const-string p1, "b"

    .line 326
    .line 327
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    const-string p1, "c"

    .line 331
    .line 332
    const-string v2, "d"

    .line 333
    .line 334
    const-string v4, "e"

    .line 335
    .line 336
    const-string v5, "f"

    .line 337
    .line 338
    invoke-static {v0, p1, v2, v4, v5}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    const-string p1, "g"

    .line 342
    .line 343
    const-string v2, "h"

    .line 344
    .line 345
    const-string v4, "i"

    .line 346
    .line 347
    const-string v5, "j"

    .line 348
    .line 349
    invoke-static {v0, p1, v2, v4, v5}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    const-string p1, "k"

    .line 353
    .line 354
    const-string v2, "l"

    .line 355
    .line 356
    const-string v4, "m"

    .line 357
    .line 358
    const-string v5, "n"

    .line 359
    .line 360
    invoke-static {v0, p1, v2, v4, v5}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const-string p1, "o"

    .line 364
    .line 365
    const-string v2, "p"

    .line 366
    .line 367
    const-string v4, "q"

    .line 368
    .line 369
    const-string v5, "r"

    .line 370
    .line 371
    invoke-static {v0, p1, v2, v4, v5}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const-string p1, "s"

    .line 375
    .line 376
    const-string v2, "t"

    .line 377
    .line 378
    const-string v4, "u"

    .line 379
    .line 380
    const-string v5, "v"

    .line 381
    .line 382
    invoke-static {v0, p1, v2, v4, v5}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    const-string p1, "w"

    .line 386
    .line 387
    const-string v2, "x"

    .line 388
    .line 389
    const-string v4, "y"

    .line 390
    .line 391
    const-string v5, "z"

    .line 392
    .line 393
    invoke-static {v0, p1, v2, v4, v5}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    const-string p1, "1"

    .line 397
    .line 398
    const-string v0, "2"

    .line 399
    .line 400
    const-string v2, "3"

    .line 401
    .line 402
    const-string v4, "4"

    .line 403
    .line 404
    invoke-static {v1, p1, v0, v2, v4}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    const-string p1, "5"

    .line 408
    .line 409
    const-string v0, "6"

    .line 410
    .line 411
    const-string v2, "7"

    .line 412
    .line 413
    const-string v4, "8"

    .line 414
    .line 415
    invoke-static {v1, p1, v0, v2, v4}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const-string p1, "9"

    .line 419
    .line 420
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    const-string p1, "0"

    .line 424
    .line 425
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->n:Landroid/widget/RelativeLayout;

    .line 429
    .line 430
    new-instance v0, Ly4/j;

    .line 431
    .line 432
    const/4 v1, 0x0

    .line 433
    invoke-direct {v0, p0, v1}, Ly4/j;-><init>(Lflix/com/vision/activities/AnimeSearchResultActivty;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    .line 438
    .line 439
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->f:Landroid/widget/RelativeLayout;

    .line 440
    .line 441
    new-instance v0, Ly4/j;

    .line 442
    .line 443
    const/4 v1, 0x1

    .line 444
    invoke-direct {v0, p0, v1}, Ly4/j;-><init>(Lflix/com/vision/activities/AnimeSearchResultActivty;I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    .line 449
    .line 450
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->j:Landroid/widget/RelativeLayout;

    .line 451
    .line 452
    new-instance v0, Ly4/j;

    .line 453
    .line 454
    const/4 v1, 0x2

    .line 455
    invoke-direct {v0, p0, v1}, Ly4/j;-><init>(Lflix/com/vision/activities/AnimeSearchResultActivty;I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    .line 460
    .line 461
    iget-object p1, v3, Lflix/com/vision/activities/AnimeSearchResultActivty;->m:Landroid/widget/RelativeLayout;

    .line 462
    .line 463
    new-instance v0, Ly4/j;

    .line 464
    .line 465
    const/4 v1, 0x3

    .line 466
    invoke-direct {v0, p0, v1}, Ly4/j;-><init>(Lflix/com/vision/activities/AnimeSearchResultActivty;I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    .line 471
    .line 472
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLetterClicked(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->y:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lflix/com/vision/activities/AnimeSearchResultActivty;->y:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Lflix/com/vision/activities/AnimeSearchResultActivty;->e()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/H;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method public openAnime(Lflix/com/vision/models/Anime;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/activities/AnimeDetailActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "anime"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/high16 p1, 0x10000000

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
