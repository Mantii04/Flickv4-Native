.class public Lflix/com/vision/activities/DramaSearchResultActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/i;
.implements LU4/e;


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

.field public w:Landroid/widget/LinearLayout;

.field public x:Ljava/lang/String;

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
    iput-object v0, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->p:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->q:Ljava/util/ArrayList;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->x:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "https://kissasiantv.to"

    .line 23
    .line 24
    iput-object v0, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->y:Ljava/lang/String;

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
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->u:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->x:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->x:Ljava/lang/String;

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
    iget-object v0, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->u:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v1, "Search Drama Show or Movie by title"

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
    const/16 v2, 0xd

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
    new-instance v1, Ly4/H;

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
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lflix/com/vision/R$layout;->activity_search_tv_drama:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    sget-object v2, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "pref_drama_host"

    .line 20
    .line 21
    const-string v3, "https://kissasiantv.to"

    .line 22
    .line 23
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->y:Ljava/lang/String;

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->s:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v2, LC4/z;

    .line 37
    .line 38
    invoke-direct {v2, p1, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 39
    .line 40
    .line 41
    sget p1, Lflix/com/vision/R$id;->recyclerview:I

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    sget p1, Lflix/com/vision/R$id;->discover_text_view:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->v:Landroid/widget/TextView;

    .line 60
    .line 61
    sget p1, Lflix/com/vision/R$id;->search_button:I

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 68
    .line 69
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->n:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    sget p1, Lflix/com/vision/R$id;->query_text_view:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->u:Landroid/widget/TextView;

    .line 80
    .line 81
    sget p1, Lflix/com/vision/R$id;->main_relative_view:I

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/widget/LinearLayout;

    .line 88
    .line 89
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->w:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/ProgressBar;

    .line 98
    .line 99
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->r:Landroid/widget/ProgressBar;

    .line 100
    .line 101
    sget p1, Lflix/com/vision/R$id;->recycler_view_letters_numeric:I

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
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    sget p1, Lflix/com/vision/R$id;->recycler_view_letters:I

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

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
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->r:Landroid/widget/ProgressBar;

    .line 130
    .line 131
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/widget/ProgressBar;

    .line 138
    .line 139
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->r:Landroid/widget/ProgressBar;

    .line 140
    .line 141
    sget p1, Lflix/com/vision/R$id;->main_relative_view:I

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Landroid/widget/LinearLayout;

    .line 148
    .line 149
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->w:Landroid/widget/LinearLayout;

    .line 150
    .line 151
    sget p1, Lflix/com/vision/R$id;->clear_button:I

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
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->m:Landroid/widget/RelativeLayout;

    .line 160
    .line 161
    sget p1, Lflix/com/vision/R$id;->button_blank_space:I

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
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->f:Landroid/widget/RelativeLayout;

    .line 170
    .line 171
    sget p1, Lflix/com/vision/R$id;->button_back_space:I

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 178
    .line 179
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->j:Landroid/widget/RelativeLayout;

    .line 180
    .line 181
    sget p1, Lflix/com/vision/R$id;->query_text_view:I

    .line 182
    .line 183
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Landroid/widget/TextView;

    .line 188
    .line 189
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->u:Landroid/widget/TextView;

    .line 190
    .line 191
    sget p1, Lflix/com/vision/R$id;->recycler_view_letters:I

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
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    sget p1, Lflix/com/vision/R$id;->recycler_view_letters_numeric:I

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 208
    .line 209
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    .line 211
    invoke-virtual {p0}, Lflix/com/vision/activities/DramaSearchResultActivity;->extractDominantColor()V

    .line 212
    .line 213
    .line 214
    new-instance p1, LC4/I;

    .line 215
    .line 216
    iget-object v2, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->p:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {p1, p0, p0, v2}, LC4/I;-><init>(Landroid/content/Context;LU4/i;Ljava/util/ArrayList;)V

    .line 219
    .line 220
    .line 221
    iget-object v3, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 222
    .line 223
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    .line 228
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 229
    .line 230
    const/4 v4, 0x7

    .line 231
    invoke-direct {v3, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 235
    .line 236
    .line 237
    new-instance p1, LC4/I;

    .line 238
    .line 239
    iget-object v3, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->q:Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-direct {p1, p0, p0, v3}, LC4/I;-><init>(Landroid/content/Context;LU4/i;Ljava/util/ArrayList;)V

    .line 242
    .line 243
    .line 244
    iget-object v5, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 245
    .line 246
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 250
    .line 251
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 252
    .line 253
    invoke-direct {v5, p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 257
    .line 258
    .line 259
    new-instance p1, LC4/z;

    .line 260
    .line 261
    iget-object v4, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->s:Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {p1, v4, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 264
    .line 265
    .line 266
    iget-object v4, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    .line 268
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    .line 273
    new-instance v4, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 274
    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    new-instance v6, Landroid/util/DisplayMetrics;

    .line 284
    .line 285
    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 300
    .line 301
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 302
    .line 303
    int-to-float v6, v6

    .line 304
    div-float/2addr v6, v5

    .line 305
    const/16 v5, 0x8c

    .line 306
    .line 307
    int-to-float v5, v5

    .line 308
    div-float/2addr v6, v5

    .line 309
    const v5, 0x3f333333    # 0.7f

    .line 310
    .line 311
    .line 312
    mul-float/2addr v6, v5

    .line 313
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    invoke-direct {v4, p0, v5}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 321
    .line 322
    .line 323
    const-string p1, "a"

    .line 324
    .line 325
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    const-string p1, "b"

    .line 329
    .line 330
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    const-string p1, "c"

    .line 334
    .line 335
    const-string v4, "d"

    .line 336
    .line 337
    const-string v5, "e"

    .line 338
    .line 339
    const-string v6, "f"

    .line 340
    .line 341
    invoke-static {v2, p1, v4, v5, v6}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string p1, "g"

    .line 345
    .line 346
    const-string v4, "h"

    .line 347
    .line 348
    const-string v5, "i"

    .line 349
    .line 350
    const-string v6, "j"

    .line 351
    .line 352
    invoke-static {v2, p1, v4, v5, v6}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    const-string p1, "k"

    .line 356
    .line 357
    const-string v4, "l"

    .line 358
    .line 359
    const-string v5, "m"

    .line 360
    .line 361
    const-string v6, "n"

    .line 362
    .line 363
    invoke-static {v2, p1, v4, v5, v6}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string p1, "o"

    .line 367
    .line 368
    const-string v4, "p"

    .line 369
    .line 370
    const-string v5, "q"

    .line 371
    .line 372
    const-string v6, "r"

    .line 373
    .line 374
    invoke-static {v2, p1, v4, v5, v6}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    const-string p1, "s"

    .line 378
    .line 379
    const-string v4, "t"

    .line 380
    .line 381
    const-string v5, "u"

    .line 382
    .line 383
    const-string v6, "v"

    .line 384
    .line 385
    invoke-static {v2, p1, v4, v5, v6}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string p1, "w"

    .line 389
    .line 390
    const-string v4, "x"

    .line 391
    .line 392
    const-string v5, "y"

    .line 393
    .line 394
    const-string v6, "z"

    .line 395
    .line 396
    invoke-static {v2, p1, v4, v5, v6}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    const-string p1, "1"

    .line 400
    .line 401
    const-string v2, "2"

    .line 402
    .line 403
    const-string v4, "3"

    .line 404
    .line 405
    const-string v5, "4"

    .line 406
    .line 407
    invoke-static {v3, p1, v2, v4, v5}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string p1, "5"

    .line 411
    .line 412
    const-string v2, "6"

    .line 413
    .line 414
    const-string v4, "7"

    .line 415
    .line 416
    const-string v5, "8"

    .line 417
    .line 418
    invoke-static {v3, p1, v2, v4, v5}, Lb/c;->u(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const-string p1, "9"

    .line 422
    .line 423
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    const-string p1, "0"

    .line 427
    .line 428
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->n:Landroid/widget/RelativeLayout;

    .line 432
    .line 433
    new-instance v2, Ly4/G;

    .line 434
    .line 435
    invoke-direct {v2, p0, v1}, Ly4/G;-><init>(Lflix/com/vision/activities/DramaSearchResultActivity;I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    .line 440
    .line 441
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->f:Landroid/widget/RelativeLayout;

    .line 442
    .line 443
    new-instance v2, Ly4/G;

    .line 444
    .line 445
    invoke-direct {v2, p0, v0}, Ly4/G;-><init>(Lflix/com/vision/activities/DramaSearchResultActivity;I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    .line 450
    .line 451
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->j:Landroid/widget/RelativeLayout;

    .line 452
    .line 453
    new-instance v2, Ly4/G;

    .line 454
    .line 455
    const/4 v3, 0x2

    .line 456
    invoke-direct {v2, p0, v3}, Ly4/G;-><init>(Lflix/com/vision/activities/DramaSearchResultActivity;I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    .line 461
    .line 462
    iget-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->m:Landroid/widget/RelativeLayout;

    .line 463
    .line 464
    new-instance v2, Ly4/G;

    .line 465
    .line 466
    const/4 v3, 0x3

    .line 467
    invoke-direct {v2, p0, v3}, Ly4/G;-><init>(Lflix/com/vision/activities/DramaSearchResultActivity;I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    .line 472
    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    iget-object v2, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->y:Ljava/lang/String;

    .line 479
    .line 480
    const-string v3, "/drama-list/new-hot.html"

    .line 481
    .line 482
    invoke-static {p1, v2, v3}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    new-instance v2, Ly4/I;

    .line 487
    .line 488
    invoke-direct {v2, p0, v0, p1}, Ly4/I;-><init>(Lflix/com/vision/activities/DramaSearchResultActivity;ZLjava/lang/String;)V

    .line 489
    .line 490
    .line 491
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 492
    .line 493
    new-array v0, v1, [Ljava/lang/Void;

    .line 494
    .line 495
    invoke-virtual {v2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 496
    .line 497
    .line 498
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
    iget-object v1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->x:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lflix/com/vision/activities/DramaSearchResultActivity;->x:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Lflix/com/vision/activities/DramaSearchResultActivity;->e()V

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

.method public openDrama(Lflix/com/vision/models/Drama;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/activities/DramaDetailActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "drama"

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

.method public removeDramaFromFavorites(Lflix/com/vision/models/Drama;)V
    .locals 0

    return-void
.end method
