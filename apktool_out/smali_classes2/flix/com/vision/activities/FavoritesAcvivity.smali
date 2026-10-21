.class public Lflix/com/vision/activities/FavoritesAcvivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/j;


# static fields
.field public static final synthetic u:I


# instance fields
.field public b:I

.field public e:I

.field public f:[Ljava/lang/String;

.field public j:[Ljava/lang/String;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public final p:I

.field public q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public r:Ljava/util/ArrayList;

.field public s:Ljava/util/ArrayList;

.field public t:LC4/P;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc8

    .line 5
    .line 6
    iput v0, p0, Lflix/com/vision/activities/FavoritesAcvivity;->p:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/FavoritesAcvivity;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/activities/FavoritesAcvivity;->s:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lflix/com/vision/models/Movie;

    .line 24
    .line 25
    iget v3, p0, Lflix/com/vision/activities/FavoritesAcvivity;->b:I

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Lflix/com/vision/activities/FavoritesAcvivity;->r:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    iget v3, p0, Lflix/com/vision/activities/FavoritesAcvivity;->b:I

    .line 35
    .line 36
    if-ne v3, v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lflix/com/vision/activities/FavoritesAcvivity;->r:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    iget v2, p0, Lflix/com/vision/activities/FavoritesAcvivity;->b:I

    .line 50
    .line 51
    const/4 v3, 0x2

    .line 52
    if-ne v2, v3, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    iget-object v2, p0, Lflix/com/vision/activities/FavoritesAcvivity;->r:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget v0, p0, Lflix/com/vision/activities/FavoritesAcvivity;->e:I

    .line 67
    .line 68
    if-ne v0, v2, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lflix/com/vision/activities/FavoritesAcvivity;->r:Ljava/util/ArrayList;

    .line 71
    .line 72
    new-instance v1, Ly4/L;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Le/N;->i(Ly4/L;)Ljava/util/Comparator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v0, p0, Lflix/com/vision/activities/FavoritesAcvivity;->t:LC4/P;

    .line 85
    .line 86
    invoke-virtual {v0}, Lm1/V;->notifyDataSetChanged()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public favoriteDeleted(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/FavoritesAcvivity;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/FavoritesAcvivity;->r:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lflix/com/vision/activities/FavoritesAcvivity;->t:LC4/P;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lm1/V;->notifyItemRemoved(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_favorites:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    const-string p1, "TV Shows"

    .line 10
    .line 11
    const-string v0, "Show All"

    .line 12
    .line 13
    const-string v1, "Movies"

    .line 14
    .line 15
    filled-new-array {v0, v1, p1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lflix/com/vision/activities/FavoritesAcvivity;->f:[Ljava/lang/String;

    .line 20
    .line 21
    const-string p1, "By Date"

    .line 22
    .line 23
    const-string v0, "Alphabetic"

    .line 24
    .line 25
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lflix/com/vision/activities/FavoritesAcvivity;->j:[Ljava/lang/String;

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lflix/com/vision/activities/FavoritesAcvivity;->s:Ljava/util/ArrayList;

    .line 37
    .line 38
    sget p1, Lflix/com/vision/R$id;->recyclerview_favorites:I

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 45
    .line 46
    iput-object p1, p0, Lflix/com/vision/activities/FavoritesAcvivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 47
    .line 48
    sget p1, Lflix/com/vision/R$id;->filter_button:I

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object p1, p0, Lflix/com/vision/activities/FavoritesAcvivity;->m:Landroid/widget/TextView;

    .line 57
    .line 58
    sget p1, Lflix/com/vision/R$id;->sort_button:I

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object p1, p0, Lflix/com/vision/activities/FavoritesAcvivity;->n:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 73
    .line 74
    invoke-virtual {p1}, LP4/e;->getFavoritesMoviesFromDb()Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lflix/com/vision/activities/FavoritesAcvivity;->r:Ljava/util/ArrayList;

    .line 79
    .line 80
    iget-object v0, p0, Lflix/com/vision/activities/FavoritesAcvivity;->s:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    .line 84
    .line 85
    new-instance v1, LC4/P;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget-object v3, p0, Lflix/com/vision/activities/FavoritesAcvivity;->r:Ljava/util/ArrayList;

    .line 92
    .line 93
    iget v5, p0, Lflix/com/vision/activities/FavoritesAcvivity;->p:I

    .line 94
    .line 95
    const/4 v7, 0x0

    .line 96
    move-object v6, p0

    .line 97
    move-object v4, p0

    .line 98
    invoke-direct/range {v1 .. v7}, LC4/P;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 99
    .line 100
    .line 101
    iput-object v1, v4, Lflix/com/vision/activities/FavoritesAcvivity;->t:LC4/P;

    .line 102
    .line 103
    iget-object p1, v4, Lflix/com/vision/activities/FavoritesAcvivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 129
    .line 130
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 131
    .line 132
    int-to-float p1, p1

    .line 133
    div-float/2addr p1, v0

    .line 134
    const/high16 v0, 0x430c0000    # 140.0f

    .line 135
    .line 136
    div-float/2addr p1, v0

    .line 137
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 142
    .line 143
    invoke-direct {v0, p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 144
    .line 145
    .line 146
    iget-object p1, v4, Lflix/com/vision/activities/FavoritesAcvivity;->q:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, v4, Lflix/com/vision/activities/FavoritesAcvivity;->m:Landroid/widget/TextView;

    .line 152
    .line 153
    new-instance v0, Ly4/J;

    .line 154
    .line 155
    const/4 v1, 0x0

    .line 156
    invoke-direct {v0, p0, v1}, Ly4/J;-><init>(Lflix/com/vision/activities/FavoritesAcvivity;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, v4, Lflix/com/vision/activities/FavoritesAcvivity;->n:Landroid/widget/TextView;

    .line 163
    .line 164
    new-instance v0, Ly4/J;

    .line 165
    .line 166
    const/4 v1, 0x1

    .line 167
    invoke-direct {v0, p0, v1}, Ly4/J;-><init>(Lflix/com/vision/activities/FavoritesAcvivity;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
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

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
