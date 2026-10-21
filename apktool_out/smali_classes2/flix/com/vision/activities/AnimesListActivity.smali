.class public Lflix/com/vision/activities/AnimesListActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/d;


# static fields
.field public static final synthetic E:I


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:LC4/k;

.field public C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public D:Z

.field public b:Lflix/com/vision/materialsearchview/MaterialSearchView;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Landroid/widget/RelativeLayout;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/ImageView;

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/ImageView;

.field public w:I

.field public final x:I

.field public y:Landroid/widget/RelativeLayout;

.field public final z:Ljava/lang/String;


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
    iput v0, p0, Lflix/com/vision/activities/AnimesListActivity;->w:I

    .line 6
    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    iput v1, p0, Lflix/com/vision/activities/AnimesListActivity;->x:I

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    iput-object v1, p0, Lflix/com/vision/activities/AnimesListActivity;->z:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean v0, p0, Lflix/com/vision/activities/AnimesListActivity;->D:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public ExtractDominentColor()V
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
    const/16 v2, 0x9

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
    new-instance v1, Ly4/r;

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

.method public applyFilter()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final e(I)V
    .locals 8

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
    const-string v1, "server_anime"

    .line 8
    .line 9
    const-string v2, "1"

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-string v2, "genre_anime"

    .line 22
    .line 23
    const-string v3, ""

    .line 24
    .line 25
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    const-string v4, "year_anime"

    .line 36
    .line 37
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v4, v4, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 46
    .line 47
    const-string v5, "type_anime"

    .line 48
    .line 49
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v5, v5, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 58
    .line 59
    const-string v6, "lang_anime"

    .line 60
    .line 61
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v6, "All"

    .line 66
    .line 67
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_0

    .line 72
    .line 73
    move-object v1, v3

    .line 74
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    move-object v2, v3

    .line 84
    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    move-object v5, v3

    .line 91
    :cond_2
    const-string v4, "2"

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    move-object v3, v5

    .line 101
    :goto_0
    iget-object v0, p0, Lflix/com/vision/activities/AnimesListActivity;->A:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iget-object v4, v4, Lflix/com/vision/App;->r:LP4/e;

    .line 108
    .line 109
    invoke-virtual {v4, v1, v2, v3, p1}, LP4/e;->getGoAnime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public onBackPressed()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/activities/AnimesListActivity;->D:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lflix/com/vision/activities/AnimesListActivity;->D:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

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
    const-string v2, "Press again to Exit"

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
    iget-object v0, p0, Lflix/com/vision/activities/AnimesListActivity;->A:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

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
    iget-object v0, p0, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

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
    iput-boolean v0, p0, Lflix/com/vision/activities/AnimesListActivity;->D:Z

    .line 56
    .line 57
    new-instance v0, Landroid/os/Handler;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v1, Ly4/o;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-direct {v1, p0, v2}, Ly4/o;-><init>(Lflix/com/vision/activities/AnimesListActivity;I)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v2, 0x640

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lflix/com/vision/App;->I:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget p1, Lflix/com/vision/R$layout;->activity_animes_list:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget p1, Lflix/com/vision/R$layout;->activity_animes_list_light:I

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    sget p1, Lflix/com/vision/R$id;->activity_player:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->y:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    sget p1, Lflix/com/vision/R$id;->search_view:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 33
    .line 34
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setShouldKeepHistory(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setTintAlpha(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 49
    .line 50
    new-instance v1, Ly4/q;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Ly4/q;-><init>(Lflix/com/vision/activities/AnimesListActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnQueryTextListener(Lflix/com/vision/materialsearchview/MaterialSearchView$OnQueryTextListener;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 59
    .line 60
    new-instance v1, Ly4/l;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-direct {v1, p0, v2}, Ly4/l;-><init>(Lflix/com/vision/activities/base/a;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lflix/com/vision/materialsearchview/MaterialSearchView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    sget p1, Lflix/com/vision/R$id;->toolbar:I

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget v1, Lflix/com/vision/R$string;->anime_label:I

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    .line 101
    .line 102
    :cond_2
    sget p1, Lflix/com/vision/R$id;->filter_anime_button_imageview:I

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/widget/ImageView;

    .line 109
    .line 110
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->v:Landroid/widget/ImageView;

    .line 111
    .line 112
    sget p1, Lflix/com/vision/R$id;->search_anime_button_imageview:I

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/widget/ImageView;

    .line 119
    .line 120
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->u:Landroid/widget/ImageView;

    .line 121
    .line 122
    sget p1, Lflix/com/vision/R$id;->progress_anime_button_image:I

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroid/widget/ImageView;

    .line 129
    .line 130
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->t:Landroid/widget/ImageView;

    .line 131
    .line 132
    sget p1, Lflix/com/vision/R$id;->anime_fav_textview_button_imageview:I

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/ImageView;

    .line 139
    .line 140
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->s:Landroid/widget/ImageView;

    .line 141
    .line 142
    sget p1, Lflix/com/vision/R$id;->anime_fav_textview:I

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Landroid/widget/TextView;

    .line 149
    .line 150
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->r:Landroid/widget/TextView;

    .line 151
    .line 152
    sget p1, Lflix/com/vision/R$id;->progress_anime_textview:I

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroid/widget/TextView;

    .line 159
    .line 160
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->q:Landroid/widget/TextView;

    .line 161
    .line 162
    sget p1, Lflix/com/vision/R$id;->filter_anime__textview:I

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Landroid/widget/TextView;

    .line 169
    .line 170
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->n:Landroid/widget/TextView;

    .line 171
    .line 172
    sget p1, Lflix/com/vision/R$id;->search_anime__textview:I

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->p:Landroid/widget/TextView;

    .line 181
    .line 182
    sget p1, Lflix/com/vision/R$id;->filter_anime_button:I

    .line 183
    .line 184
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 189
    .line 190
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->m:Landroid/widget/RelativeLayout;

    .line 191
    .line 192
    sget p1, Lflix/com/vision/R$id;->search_anime_button:I

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 199
    .line 200
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->j:Landroid/widget/RelativeLayout;

    .line 201
    .line 202
    sget p1, Lflix/com/vision/R$id;->anime_history_button:I

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 209
    .line 210
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->f:Landroid/widget/RelativeLayout;

    .line 211
    .line 212
    sget p1, Lflix/com/vision/R$id;->anime_favorites:I

    .line 213
    .line 214
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 219
    .line 220
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->e:Landroid/widget/RelativeLayout;

    .line 221
    .line 222
    sget p1, Lflix/com/vision/R$id;->recyclerview:I

    .line 223
    .line 224
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 229
    .line 230
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 231
    .line 232
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->m:Landroid/widget/RelativeLayout;

    .line 233
    .line 234
    if-eqz p1, :cond_3

    .line 235
    .line 236
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->j:Landroid/widget/RelativeLayout;

    .line 237
    .line 238
    new-instance v0, Ly4/p;

    .line 239
    .line 240
    const/4 v1, 0x0

    .line 241
    invoke-direct {v0, p0, v1}, Ly4/p;-><init>(Lflix/com/vision/activities/AnimesListActivity;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->e:Landroid/widget/RelativeLayout;

    .line 248
    .line 249
    new-instance v0, Ly4/p;

    .line 250
    .line 251
    const/4 v1, 0x1

    .line 252
    invoke-direct {v0, p0, v1}, Ly4/p;-><init>(Lflix/com/vision/activities/AnimesListActivity;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->f:Landroid/widget/RelativeLayout;

    .line 259
    .line 260
    new-instance v0, Ly4/p;

    .line 261
    .line 262
    const/4 v1, 0x2

    .line 263
    invoke-direct {v0, p0, v1}, Ly4/p;-><init>(Lflix/com/vision/activities/AnimesListActivity;I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->m:Landroid/widget/RelativeLayout;

    .line 270
    .line 271
    new-instance v0, Ly4/p;

    .line 272
    .line 273
    const/4 v1, 0x3

    .line 274
    invoke-direct {v0, p0, v1}, Ly4/p;-><init>(Lflix/com/vision/activities/AnimesListActivity;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    :cond_3
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->m:Landroid/widget/RelativeLayout;

    .line 281
    .line 282
    if-eqz p1, :cond_4

    .line 283
    .line 284
    new-instance v0, Ly4/m;

    .line 285
    .line 286
    const/4 v1, 0x3

    .line 287
    invoke-direct {v0, p0, v1}, Ly4/m;-><init>(Lflix/com/vision/activities/AnimesListActivity;I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 291
    .line 292
    .line 293
    :cond_4
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->e:Landroid/widget/RelativeLayout;

    .line 294
    .line 295
    if-eqz p1, :cond_5

    .line 296
    .line 297
    new-instance v0, Ly4/m;

    .line 298
    .line 299
    const/4 v1, 0x0

    .line 300
    invoke-direct {v0, p0, v1}, Ly4/m;-><init>(Lflix/com/vision/activities/AnimesListActivity;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 304
    .line 305
    .line 306
    :cond_5
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->f:Landroid/widget/RelativeLayout;

    .line 307
    .line 308
    if-eqz p1, :cond_6

    .line 309
    .line 310
    new-instance v0, Ly4/m;

    .line 311
    .line 312
    const/4 v1, 0x1

    .line 313
    invoke-direct {v0, p0, v1}, Ly4/m;-><init>(Lflix/com/vision/activities/AnimesListActivity;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 317
    .line 318
    .line 319
    :cond_6
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->j:Landroid/widget/RelativeLayout;

    .line 320
    .line 321
    if-eqz p1, :cond_7

    .line 322
    .line 323
    new-instance v0, Ly4/m;

    .line 324
    .line 325
    const/4 v1, 0x2

    .line 326
    invoke-direct {v0, p0, v1}, Ly4/m;-><init>(Lflix/com/vision/activities/AnimesListActivity;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 330
    .line 331
    .line 332
    :cond_7
    iget-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 333
    .line 334
    new-instance v0, Ly4/n;

    .line 335
    .line 336
    invoke-direct {v0, p0}, Ly4/n;-><init>(Lflix/com/vision/activities/AnimesListActivity;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setRefreshListener(Lv1/n;)V

    .line 340
    .line 341
    .line 342
    new-instance p1, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    iput-object p1, p0, Lflix/com/vision/activities/AnimesListActivity;->A:Ljava/util/ArrayList;

    .line 348
    .line 349
    new-instance v0, LC4/k;

    .line 350
    .line 351
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    iget-object v2, p0, Lflix/com/vision/activities/AnimesListActivity;->A:Ljava/util/ArrayList;

    .line 356
    .line 357
    iget v4, p0, Lflix/com/vision/activities/AnimesListActivity;->x:I

    .line 358
    .line 359
    move-object v5, p0

    .line 360
    move-object v3, p0

    .line 361
    invoke-direct/range {v0 .. v5}, LC4/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/d;)V

    .line 362
    .line 363
    .line 364
    iput-object v0, v3, Lflix/com/vision/activities/AnimesListActivity;->B:LC4/k;

    .line 365
    .line 366
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 387
    .line 388
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 389
    .line 390
    int-to-float p1, p1

    .line 391
    div-float/2addr p1, v0

    .line 392
    const/16 v0, 0x8c

    .line 393
    .line 394
    int-to-float v0, v0

    .line 395
    div-float/2addr p1, v0

    .line 396
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    new-instance v0, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 401
    .line 402
    invoke-direct {v0, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 403
    .line 404
    .line 405
    iget-object p1, v3, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 406
    .line 407
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 408
    .line 409
    .line 410
    iget-object p1, v3, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 411
    .line 412
    new-instance v0, LT4/k;

    .line 413
    .line 414
    const/16 v1, 0xc

    .line 415
    .line 416
    invoke-direct {v0, v1}, LT4/k;-><init>(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 420
    .line 421
    .line 422
    iget-object p1, v3, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 423
    .line 424
    iget-object v0, v3, Lflix/com/vision/activities/AnimesListActivity;->B:LC4/k;

    .line 425
    .line 426
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 427
    .line 428
    .line 429
    iget-object p1, v3, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 430
    .line 431
    new-instance v0, Ly4/n;

    .line 432
    .line 433
    invoke-direct {v0, p0}, Ly4/n;-><init>(Lflix/com/vision/activities/AnimesListActivity;)V

    .line 434
    .line 435
    .line 436
    const/16 v1, 0xa

    .line 437
    .line 438
    invoke-virtual {p1, v0, v1}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setupMoreListener(Ld4/a;I)V

    .line 439
    .line 440
    .line 441
    iget-object p1, v3, Lflix/com/vision/activities/AnimesListActivity;->C:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 442
    .line 443
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 444
    .line 445
    .line 446
    iget p1, v3, Lflix/com/vision/activities/AnimesListActivity;->w:I

    .line 447
    .line 448
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/AnimesListActivity;->e(I)V

    .line 449
    .line 450
    .line 451
    new-instance p1, Landroid/os/Handler;

    .line 452
    .line 453
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 454
    .line 455
    .line 456
    new-instance v0, Ly4/o;

    .line 457
    .line 458
    const/4 v1, 0x0

    .line 459
    invoke-direct {v0, p0, v1}, Ly4/o;-><init>(Lflix/com/vision/activities/AnimesListActivity;I)V

    .line 460
    .line 461
    .line 462
    const-wide/16 v1, 0x320

    .line 463
    .line 464
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    .line 466
    .line 467
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
    sget v1, Lflix/com/vision/R$menu;->anime_menu:I

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
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lflix/com/vision/R$id;->action_search:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/activities/AnimesListActivity;->b:Lflix/com/vision/materialsearchview/MaterialSearchView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lflix/com/vision/materialsearchview/MaterialSearchView;->openSearch()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget v1, Lflix/com/vision/R$id;->action_filter:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v1, p0}, LS4/o;->newInstance(ZLandroid/app/Activity;)LS4/o;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :try_start_0
    const-string v2, ""

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const v1, 0x102002c

    .line 40
    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    sget v1, Lflix/com/vision/R$id;->action_favorites_anime:I

    .line 49
    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    new-instance v0, Landroid/content/Intent;

    .line 53
    .line 54
    const-class v1, Lflix/com/vision/activities/AnimesFavoritesAcvivity;

    .line 55
    .line 56
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    sget v1, Lflix/com/vision/R$id;->action_history_anime:I

    .line 64
    .line 65
    if-ne v0, v1, :cond_4

    .line 66
    .line 67
    new-instance v0, Landroid/content/Intent;

    .line 68
    .line 69
    const-class v1, Lflix/com/vision/activities/AnimeHistoryActivity;

    .line 70
    .line 71
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1
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
    .locals 6

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
    iget-object v1, p1, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "(dub)"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v4, ""

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "(sub)"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, ")"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const-string v5, "("

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    add-int/lit8 v2, v2, -0x6

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p1, Lflix/com/vision/models/Anime;->year:Ljava/lang/String;

    .line 100
    .line 101
    :cond_2
    iget-object v1, p1, Lflix/com/vision/models/Anime;->year:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/4 v2, 0x4

    .line 110
    if-ne v1, v2, :cond_3

    .line 111
    .line 112
    iget-object v1, p1, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    .line 113
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v5, p1, Lflix/com/vision/models/Anime;->year:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iput-object v1, p1, Lflix/com/vision/models/Anime;->title:Ljava/lang/String;

    .line 136
    .line 137
    :cond_3
    const-string v1, "anime"

    .line 138
    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    const/high16 p1, 0x10000000

    .line 143
    .line 144
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method
