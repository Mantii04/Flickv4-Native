.class public Lflix/com/vision/activities/FilterActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/j;
.implements Ld4/a;


# static fields
.field public static final synthetic O:I


# instance fields
.field public A:I

.field public B:I

.field public C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:LC4/P;

.field public J:Ljava/lang/String;

.field public K:I

.field public L:Lio/reactivex/disposables/Disposable;

.field public M:Z

.field public N:I

.field public b:I

.field public e:I

.field public f:[Ljava/lang/String;

.field public j:[Ljava/lang/String;

.field public m:[Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public p:[Ljava/lang/String;

.field public q:[Ljava/lang/String;

.field public final r:Ljava/util/ArrayList;

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/lang/String;

.field public w:Landroid/widget/RelativeLayout;

.field public x:Z

.field public y:Ljava/util/ArrayList;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lflix/com/vision/activities/FilterActivity;->b:I

    .line 6
    .line 7
    iput v0, p0, Lflix/com/vision/activities/FilterActivity;->e:I

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lflix/com/vision/activities/FilterActivity;->r:Ljava/util/ArrayList;

    .line 15
    .line 16
    iput v0, p0, Lflix/com/vision/activities/FilterActivity;->s:I

    .line 17
    .line 18
    iput v0, p0, Lflix/com/vision/activities/FilterActivity;->t:I

    .line 19
    .line 20
    iput v0, p0, Lflix/com/vision/activities/FilterActivity;->u:I

    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    iput-object v1, p0, Lflix/com/vision/activities/FilterActivity;->v:Ljava/lang/String;

    .line 25
    .line 26
    iput-boolean v0, p0, Lflix/com/vision/activities/FilterActivity;->x:Z

    .line 27
    .line 28
    iput v0, p0, Lflix/com/vision/activities/FilterActivity;->A:I

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lflix/com/vision/activities/FilterActivity;->B:I

    .line 32
    .line 33
    const-string v0, "popularity.desc"

    .line 34
    .line 35
    iput-object v0, p0, Lflix/com/vision/activities/FilterActivity;->J:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/FilterActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setupMoreListener(Ld4/a;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lflix/com/vision/activities/FilterActivity;->L:Lio/reactivex/disposables/Disposable;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lflix/com/vision/activities/FilterActivity;->b:I

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget v4, p0, Lflix/com/vision/activities/FilterActivity;->e:I

    .line 22
    .line 23
    iget v0, p0, Lflix/com/vision/activities/FilterActivity;->u:I

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/activities/FilterActivity;->v:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    move-object v5, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v6, p0, Lflix/com/vision/activities/FilterActivity;->J:Ljava/lang/String;

    .line 34
    .line 35
    iget v7, p0, Lflix/com/vision/activities/FilterActivity;->B:I

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v1, p0

    .line 39
    move v3, p1

    .line 40
    invoke-static/range {v1 .. v8}, LD4/a;->getItemsByGenres(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v0, LE4/c;

    .line 61
    .line 62
    const/16 v2, 0xb

    .line 63
    .line 64
    invoke-direct {v0, p0, v2}, LE4/c;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lx4/d;

    .line 68
    .line 69
    const/4 v3, 0x5

    .line 70
    invoke-direct {v2, v3}, Lx4/d;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, v1, Lflix/com/vision/activities/FilterActivity;->L:Lio/reactivex/disposables/Disposable;

    .line 78
    .line 79
    return-void
.end method

.method public favoriteDeleted(I)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/FilterActivity;->M:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lflix/com/vision/activities/FilterActivity;->M:Z

    .line 7
    .line 8
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "Press again to go back..."

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lflix/com/vision/activities/FilterActivity;->r:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v2, 0xc8

    .line 32
    .line 33
    if-ge v0, v2, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lflix/com/vision/activities/FilterActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/FilterActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lflix/com/vision/activities/FilterActivity;->M:Z

    .line 56
    .line 57
    iget-object v0, p0, Lflix/com/vision/activities/FilterActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lflix/com/vision/activities/FilterActivity;->G:Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 65
    .line 66
    .line 67
    new-instance v0, Landroid/os/Handler;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v1, Ly4/O;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-direct {v1, p0, v2}, Ly4/O;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v2, 0x7d0

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    const/4 v8, 0x1

    .line 5
    invoke-super/range {p0 .. p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    sget v0, Lflix/com/vision/R$layout;->activity_filter_main:I

    .line 9
    .line 10
    invoke-virtual {v3, v0}, Le/v;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "All"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-static {}, LT4/f;->getMovieCategories()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lflix/com/vision/models/Genre;

    .line 50
    .line 51
    iget-object v5, v5, Lflix/com/vision/models/Genre;->name:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, LT4/f;->getSeriesCategories()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Lflix/com/vision/models/Genre;

    .line 76
    .line 77
    iget-object v5, v5, Lflix/com/vision/models/Genre;->name:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    new-array v4, v7, [Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, [Ljava/lang/String;

    .line 90
    .line 91
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->f:[Ljava/lang/String;

    .line 92
    .line 93
    new-array v0, v7, [Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, [Ljava/lang/String;

    .line 100
    .line 101
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->j:[Ljava/lang/String;

    .line 102
    .line 103
    const-string v0, "Popularity"

    .line 104
    .line 105
    const-string v1, "Release Date"

    .line 106
    .line 107
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->m:[Ljava/lang/String;

    .line 112
    .line 113
    const-string v0, "Movies"

    .line 114
    .line 115
    const-string v1, "Series"

    .line 116
    .line 117
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->p:[Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v3}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sget v1, Lflix/com/vision/R$array;->years:I

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->n:[Ljava/lang/String;

    .line 134
    .line 135
    const-string v25, "BET+"

    .line 136
    .line 137
    const-string v26, "BritBox"

    .line 138
    .line 139
    const-string v9, "All"

    .line 140
    .line 141
    const-string v10, "Netflix"

    .line 142
    .line 143
    const-string v11, "Disney+"

    .line 144
    .line 145
    const-string v12, "Prime Video"

    .line 146
    .line 147
    const-string v13, "Apple TV+"

    .line 148
    .line 149
    const-string v14, "Paramount+"

    .line 150
    .line 151
    const-string v15, "HBO Max"

    .line 152
    .line 153
    const-string v16, "Hulu"

    .line 154
    .line 155
    const-string v17, "Starz"

    .line 156
    .line 157
    const-string v18, "Bollywood"

    .line 158
    .line 159
    const-string v19, "Discovery+"

    .line 160
    .line 161
    const-string v20, "ABC"

    .line 162
    .line 163
    const-string v21, "CBS"

    .line 164
    .line 165
    const-string v22, "AMC"

    .line 166
    .line 167
    const-string v23, "Peacock"

    .line 168
    .line 169
    const-string v24, "Marvel Studios"

    .line 170
    .line 171
    filled-new-array/range {v9 .. v26}, [Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->q:[Ljava/lang/String;

    .line 176
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->y:Ljava/util/ArrayList;

    .line 183
    .line 184
    new-instance v1, Lflix/com/vision/models/tmdb/Network;

    .line 185
    .line 186
    const/4 v9, -0x1

    .line 187
    const/4 v4, 0x0

    .line 188
    invoke-direct {v1, v9, v2, v4, v9}, Lflix/com/vision/models/tmdb/Network;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->y:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-static {}, LT4/f;->getNetworks()Ljava/util/ArrayList;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 201
    .line 202
    .line 203
    sget v0, Lflix/com/vision/R$id;->activity_player:I

    .line 204
    .line 205
    invoke-virtual {v3, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 210
    .line 211
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->w:Landroid/widget/RelativeLayout;

    .line 212
    .line 213
    sget v0, Lflix/com/vision/R$id;->provider_network_text:I

    .line 214
    .line 215
    invoke-virtual {v3, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Landroid/widget/TextView;

    .line 220
    .line 221
    sget v0, Lflix/com/vision/R$id;->network_button:I

    .line 222
    .line 223
    invoke-virtual {v3, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Landroid/widget/TextView;

    .line 228
    .line 229
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->H:Landroid/widget/TextView;

    .line 230
    .line 231
    sget v0, Lflix/com/vision/R$id;->recyclerview_cast:I

    .line 232
    .line 233
    invoke-virtual {v3, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 238
    .line 239
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 240
    .line 241
    sget v0, Lflix/com/vision/R$id;->sort_by_button:I

    .line 242
    .line 243
    invoke-virtual {v3, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Landroid/widget/TextView;

    .line 248
    .line 249
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->F:Landroid/widget/TextView;

    .line 250
    .line 251
    sget v0, Lflix/com/vision/R$id;->year_button:I

    .line 252
    .line 253
    invoke-virtual {v3, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Landroid/widget/TextView;

    .line 258
    .line 259
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->E:Landroid/widget/TextView;

    .line 260
    .line 261
    sget v0, Lflix/com/vision/R$id;->genres_button:I

    .line 262
    .line 263
    invoke-virtual {v3, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Landroid/widget/TextView;

    .line 268
    .line 269
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->D:Landroid/widget/TextView;

    .line 270
    .line 271
    sget v0, Lflix/com/vision/R$id;->type_button:I

    .line 272
    .line 273
    invoke-virtual {v3, v0}, Le/v;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Landroid/widget/TextView;

    .line 278
    .line 279
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->G:Landroid/widget/TextView;

    .line 280
    .line 281
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->E:Landroid/widget/TextView;

    .line 282
    .line 283
    new-instance v1, Ly4/M;

    .line 284
    .line 285
    invoke-direct {v1, v3, v7}, Ly4/M;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->D:Landroid/widget/TextView;

    .line 292
    .line 293
    new-instance v1, Ly4/M;

    .line 294
    .line 295
    invoke-direct {v1, v3, v8}, Ly4/M;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->G:Landroid/widget/TextView;

    .line 302
    .line 303
    new-instance v1, Ly4/M;

    .line 304
    .line 305
    const/4 v2, 0x2

    .line 306
    invoke-direct {v1, v3, v2}, Ly4/M;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->H:Landroid/widget/TextView;

    .line 313
    .line 314
    new-instance v1, Ly4/M;

    .line 315
    .line 316
    const/4 v2, 0x3

    .line 317
    invoke-direct {v1, v3, v2}, Ly4/M;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->F:Landroid/widget/TextView;

    .line 324
    .line 325
    new-instance v1, Ly4/M;

    .line 326
    .line 327
    const/4 v2, 0x4

    .line 328
    invoke-direct {v1, v3, v2}, Ly4/M;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    .line 333
    .line 334
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->D:Landroid/widget/TextView;

    .line 335
    .line 336
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {v0}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v3}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 360
    .line 361
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 362
    .line 363
    int-to-float v0, v0

    .line 364
    div-float/2addr v0, v1

    .line 365
    const/16 v1, 0x8c

    .line 366
    .line 367
    int-to-float v1, v1

    .line 368
    div-float/2addr v0, v1

    .line 369
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 370
    .line 371
    .line 372
    move-result v10

    .line 373
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 374
    .line 375
    const/16 v11, 0x8

    .line 376
    .line 377
    if-eqz v0, :cond_2

    .line 378
    .line 379
    const/16 v0, 0xc

    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_2
    move v0, v11

    .line 383
    :goto_2
    iget-object v1, v3, Lflix/com/vision/activities/FilterActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 384
    .line 385
    new-instance v2, LT4/k;

    .line 386
    .line 387
    invoke-direct {v2, v0}, LT4/k;-><init>(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v2}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 391
    .line 392
    .line 393
    new-instance v0, LC4/P;

    .line 394
    .line 395
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    iget-object v2, v3, Lflix/com/vision/activities/FilterActivity;->r:Ljava/util/ArrayList;

    .line 400
    .line 401
    const/4 v4, 0x0

    .line 402
    const/4 v6, 0x0

    .line 403
    move-object/from16 v5, p0

    .line 404
    .line 405
    invoke-direct/range {v0 .. v6}, LC4/P;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 406
    .line 407
    .line 408
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->I:LC4/P;

    .line 409
    .line 410
    new-instance v0, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 411
    .line 412
    invoke-direct {v0, v3, v10}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 413
    .line 414
    .line 415
    iget-object v1, v3, Lflix/com/vision/activities/FilterActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 416
    .line 417
    invoke-virtual {v1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 418
    .line 419
    .line 420
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 421
    .line 422
    new-instance v1, LT4/k;

    .line 423
    .line 424
    invoke-direct {v1, v11}, LT4/k;-><init>(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 431
    .line 432
    iget-object v1, v3, Lflix/com/vision/activities/FilterActivity;->I:LC4/P;

    .line 433
    .line 434
    invoke-virtual {v0, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 442
    .line 443
    const-string v1, "fonts/pproduct_sans_rregular.ttf"

    .line 444
    .line 445
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 446
    .line 447
    .line 448
    new-instance v0, Lh5/j;

    .line 449
    .line 450
    invoke-direct {v0}, Lh5/j;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    const-string v1, "network"

    .line 458
    .line 459
    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    iput v0, v3, Lflix/com/vision/activities/FilterActivity;->B:I

    .line 464
    .line 465
    if-ne v0, v9, :cond_3

    .line 466
    .line 467
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 468
    .line 469
    if-nez v0, :cond_7

    .line 470
    .line 471
    :cond_3
    :goto_3
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->y:Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-ge v7, v0, :cond_5

    .line 478
    .line 479
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->y:Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    check-cast v0, Lflix/com/vision/models/tmdb/Network;

    .line 486
    .line 487
    iget v0, v0, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 488
    .line 489
    iget v1, v3, Lflix/com/vision/activities/FilterActivity;->B:I

    .line 490
    .line 491
    if-ne v0, v1, :cond_4

    .line 492
    .line 493
    iput v7, v3, Lflix/com/vision/activities/FilterActivity;->A:I

    .line 494
    .line 495
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->H:Landroid/widget/TextView;

    .line 496
    .line 497
    iget-object v1, v3, Lflix/com/vision/activities/FilterActivity;->y:Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    check-cast v1, Lflix/com/vision/models/tmdb/Network;

    .line 504
    .line 505
    iget-object v1, v1, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    .line 509
    .line 510
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->y:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    check-cast v0, Lflix/com/vision/models/tmdb/Network;

    .line 517
    .line 518
    iget-object v0, v0, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 519
    .line 520
    iput-object v0, v3, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 521
    .line 522
    :cond_4
    add-int/2addr v7, v8

    .line 523
    goto :goto_3

    .line 524
    :cond_5
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 525
    .line 526
    if-eqz v0, :cond_7

    .line 527
    .line 528
    const-string v1, "AMC"

    .line 529
    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    if-nez v0, :cond_6

    .line 535
    .line 536
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 537
    .line 538
    const-string v1, "ABC"

    .line 539
    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    if-nez v0, :cond_6

    .line 545
    .line 546
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 547
    .line 548
    const-string v1, "CBS"

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-nez v0, :cond_6

    .line 555
    .line 556
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 557
    .line 558
    const-string v1, "Discovery+"

    .line 559
    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    if-nez v0, :cond_6

    .line 565
    .line 566
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 567
    .line 568
    const-string v1, "HBO Max"

    .line 569
    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-nez v0, :cond_6

    .line 575
    .line 576
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 577
    .line 578
    const-string v1, "BET+"

    .line 579
    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    if-nez v0, :cond_6

    .line 585
    .line 586
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->z:Ljava/lang/String;

    .line 587
    .line 588
    const-string v1, "BritBox"

    .line 589
    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-eqz v0, :cond_7

    .line 595
    .line 596
    :cond_6
    iput v8, v3, Lflix/com/vision/activities/FilterActivity;->s:I

    .line 597
    .line 598
    iget-object v0, v3, Lflix/com/vision/activities/FilterActivity;->G:Landroid/widget/TextView;

    .line 599
    .line 600
    iget-object v1, v3, Lflix/com/vision/activities/FilterActivity;->p:[Ljava/lang/String;

    .line 601
    .line 602
    aget-object v1, v1, v8

    .line 603
    .line 604
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    .line 606
    .line 607
    iput v8, v3, Lflix/com/vision/activities/FilterActivity;->e:I

    .line 608
    .line 609
    :cond_7
    invoke-virtual {v3}, Lflix/com/vision/activities/FilterActivity;->setBackgroundColor()V

    .line 610
    .line 611
    .line 612
    iget v0, v3, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 613
    .line 614
    invoke-virtual {v3, v0}, Lflix/com/vision/activities/FilterActivity;->e(I)V

    .line 615
    .line 616
    .line 617
    return-void
.end method

.method public onMediaSelected(Lflix/com/vision/models/Movie;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "movie"

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

.method public onMoreAsked(III)V
    .locals 2

    .line 1
    iget p1, p0, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Lflix/com/vision/activities/FilterActivity;->K:I

    .line 6
    .line 7
    new-instance p1, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance p2, Ly4/O;

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-direct {p2, p0, p3}, Ly4/O;-><init>(Lflix/com/vision/activities/FilterActivity;I)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v0, 0xc8

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setBackgroundColor()V
    .locals 5

    .line 1
    const v0, 0x263984

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lflix/com/vision/activities/FilterActivity;->N:I

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lflix/com/vision/activities/FilterActivity;->N:I

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
    const/16 v3, 0xe

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
    iput v2, p0, Lflix/com/vision/activities/FilterActivity;->N:I

    .line 53
    .line 54
    return-void
.end method
