.class public Lflix/com/vision/activities/TraktActivity;
.super Le/v;
.source "SourceFile"

# interfaces
.implements LU4/j;


# static fields
.field public static final synthetic u:I


# instance fields
.field public final b:Lio/reactivex/disposables/CompositeDisposable;

.field public e:LC4/P;

.field public f:LC4/P;

.field public j:LC4/P;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/ArrayList;

.field public final p:Ljava/util/ArrayList;

.field public q:Landroid/view/View;

.field public r:Landroid/widget/LinearLayout;

.field public s:Landroid/widget/LinearLayout;

.field public t:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lflix/com/vision/activities/TraktActivity;->b:Lio/reactivex/disposables/CompositeDisposable;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lflix/com/vision/activities/TraktActivity;->m:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lflix/com/vision/activities/TraktActivity;->n:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lflix/com/vision/activities/TraktActivity;->p:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void
.end method

.method public static e(Lflix/com/vision/activities/TraktActivity;Lflix/com/vision/models/Movie;)Lio/reactivex/Observable;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "S"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    long-to-int p0, v0

    .line 50
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getType()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x1

    .line 55
    if-ne v0, v1, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v1, 0x0

    .line 59
    :goto_0
    invoke-static {p0, v1}, LD4/a;->getTmdbPoster(IZ)Lio/reactivex/Single;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    new-instance v0, Ly4/l1;

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-direct {v0, p1, v1}, Ly4/l1;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Observable;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getType()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    const-string v1, "movie"

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    const-string v1, "tv"

    .line 96
    .line 97
    :goto_2
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    long-to-int v2, v2

    .line 102
    int-to-long v2, v2

    .line 103
    invoke-static {p0, v1, v2, v3}, LD4/a;->getDetails(Landroid/content/Context;Ljava/lang/String;J)Lio/reactivex/Observable;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    new-instance v1, Ly4/k1;

    .line 116
    .line 117
    invoke-direct {v1, p1, v0}, Ly4/k1;-><init>(Lflix/com/vision/models/Movie;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Observable;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method

.method public static f(Lcom/uwetrottmann/trakt5/entities/Movie;)Lflix/com/vision/models/Movie;
    .locals 3

    .line 1
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/BaseEntity;->title:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/Movie;->ids:Lcom/uwetrottmann/trakt5/entities/MovieIds;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v1, Lcom/uwetrottmann/trakt5/entities/BaseIds;->tmdb:Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-long v1, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v1, v2}, Lflix/com/vision/models/Movie;->setMovieId(J)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/uwetrottmann/trakt5/entities/Movie;->year:Ljava/lang/Integer;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string p0, ""

    .line 47
    .line 48
    :goto_1
    iput-object p0, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 49
    .line 50
    return-object v0
.end method

.method public static g(Lcom/uwetrottmann/trakt5/entities/Show;)Lflix/com/vision/models/Movie;
    .locals 3

    .line 1
    new-instance v0, Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    invoke-direct {v0}, Lflix/com/vision/models/Movie;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setType(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/BaseEntity;->title:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lflix/com/vision/models/Movie;->setTitle(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/uwetrottmann/trakt5/entities/Show;->ids:Lcom/uwetrottmann/trakt5/entities/ShowIds;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v1, Lcom/uwetrottmann/trakt5/entities/BaseIds;->tmdb:Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-long v1, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v1, v2}, Lflix/com/vision/models/Movie;->setMovieId(J)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/uwetrottmann/trakt5/entities/Show;->year:Ljava/lang/Integer;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string p0, ""

    .line 47
    .line 48
    :goto_1
    iput-object p0, v0, Lflix/com/vision/models/Movie;->year:Ljava/lang/String;

    .line 49
    .line 50
    return-object v0
.end method


# virtual methods
.method public favoriteDeleted(I)V
    .locals 0

    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView;LC4/P;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, LT4/k;

    .line 11
    .line 12
    const/16 v1, 0xc

    .line 13
    .line 14
    invoke-direct {v0, v1}, LT4/k;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final i(Ljava/util/List;Ljava/util/ArrayList;LC4/P;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/TraktActivity;->q:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lm1/V;->notifyDataSetChanged()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_trakt_modern:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->toolbar:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "My Trakt"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget p1, Lflix/com/vision/R$id;->loader:I

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lflix/com/vision/activities/TraktActivity;->q:Landroid/view/View;

    .line 50
    .line 51
    sget p1, Lflix/com/vision/R$id;->section_continue:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    iput-object p1, p0, Lflix/com/vision/activities/TraktActivity;->r:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    sget p1, Lflix/com/vision/R$id;->section_start:I

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/LinearLayout;

    .line 68
    .line 69
    iput-object p1, p0, Lflix/com/vision/activities/TraktActivity;->s:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    sget p1, Lflix/com/vision/R$id;->section_history:I

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
    iput-object p1, p0, Lflix/com/vision/activities/TraktActivity;->t:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    sget p1, Lflix/com/vision/R$id;->rv_continue:I

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    new-instance v0, LC4/P;

    .line 90
    .line 91
    iget-object v2, p0, Lflix/com/vision/activities/TraktActivity;->m:Ljava/util/ArrayList;

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v6, 0x0

    .line 95
    move-object v3, p0

    .line 96
    move-object v5, p0

    .line 97
    move-object v1, p0

    .line 98
    invoke-direct/range {v0 .. v6}, LC4/P;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 99
    .line 100
    .line 101
    move-object v8, v1

    .line 102
    iput-object v0, v8, Lflix/com/vision/activities/TraktActivity;->e:LC4/P;

    .line 103
    .line 104
    invoke-virtual {p0, p1, v0}, Lflix/com/vision/activities/TraktActivity;->h(Landroidx/recyclerview/widget/RecyclerView;LC4/P;)V

    .line 105
    .line 106
    .line 107
    sget p1, Lflix/com/vision/R$id;->rv_start:I

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    .line 115
    new-instance v7, LC4/P;

    .line 116
    .line 117
    iget-object v9, v8, Lflix/com/vision/activities/TraktActivity;->n:Ljava/util/ArrayList;

    .line 118
    .line 119
    const/4 v11, 0x0

    .line 120
    const/4 v13, 0x0

    .line 121
    move-object v10, p0

    .line 122
    move-object v12, p0

    .line 123
    invoke-direct/range {v7 .. v13}, LC4/P;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 124
    .line 125
    .line 126
    iput-object v7, v8, Lflix/com/vision/activities/TraktActivity;->f:LC4/P;

    .line 127
    .line 128
    invoke-virtual {p0, p1, v7}, Lflix/com/vision/activities/TraktActivity;->h(Landroidx/recyclerview/widget/RecyclerView;LC4/P;)V

    .line 129
    .line 130
    .line 131
    sget p1, Lflix/com/vision/R$id;->rv_history:I

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 138
    .line 139
    new-instance v7, LC4/P;

    .line 140
    .line 141
    iget-object v9, v8, Lflix/com/vision/activities/TraktActivity;->p:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct/range {v7 .. v13}, LC4/P;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 144
    .line 145
    .line 146
    iput-object v7, v8, Lflix/com/vision/activities/TraktActivity;->j:LC4/P;

    .line 147
    .line 148
    invoke-virtual {p0, p1, v7}, Lflix/com/vision/activities/TraktActivity;->h(Landroidx/recyclerview/widget/RecyclerView;LC4/P;)V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object p1, p1, Lflix/com/vision/App;->q:LD4/h;

    .line 156
    .line 157
    iget-object p1, p1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 158
    .line 159
    iget-object v0, v8, Lflix/com/vision/activities/TraktActivity;->b:Lio/reactivex/disposables/CompositeDisposable;

    .line 160
    .line 161
    if-nez p1, :cond_1

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, v8, Lflix/com/vision/activities/TraktActivity;->q:Landroid/view/View;

    .line 165
    .line 166
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    new-instance p1, Ly4/i1;

    .line 171
    .line 172
    const/4 v1, 0x3

    .line 173
    invoke-direct {p1, v1}, Ly4/i1;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    new-instance v1, LA4/s;

    .line 189
    .line 190
    const/4 v2, 0x5

    .line 191
    invoke-direct {v1, v2}, LA4/s;-><init>(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMapIterable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    new-instance v1, Ly4/l1;

    .line 199
    .line 200
    const/4 v2, 0x1

    .line 201
    invoke-direct {v1, p0, v2}, Ly4/l1;-><init>(Ljava/lang/Object;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance v1, Ly4/l1;

    .line 209
    .line 210
    const/4 v2, 0x0

    .line 211
    invoke-direct {v1, p0, v2}, Ly4/l1;-><init>(Ljava/lang/Object;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    new-instance v1, Ly4/j1;

    .line 231
    .line 232
    const/4 v2, 0x2

    .line 233
    invoke-direct {v1, p0, v2}, Ly4/j1;-><init>(Lflix/com/vision/activities/TraktActivity;I)V

    .line 234
    .line 235
    .line 236
    new-instance v2, Ly4/H0;

    .line 237
    .line 238
    const/4 v3, 0x4

    .line 239
    invoke-direct {v2, v3}, Ly4/H0;-><init>(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 247
    .line 248
    .line 249
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    iget-object p1, p1, Lflix/com/vision/App;->q:LD4/h;

    .line 254
    .line 255
    iget-object p1, p1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 256
    .line 257
    if-nez p1, :cond_2

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_2
    new-instance p1, Ly4/i1;

    .line 261
    .line 262
    const/4 v1, 0x0

    .line 263
    invoke-direct {p1, v1}, Ly4/i1;-><init>(I)V

    .line 264
    .line 265
    .line 266
    invoke-static {p1}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    new-instance v1, Ly4/i1;

    .line 271
    .line 272
    const/4 v2, 0x2

    .line 273
    invoke-direct {v1, v2}, Ly4/i1;-><init>(I)V

    .line 274
    .line 275
    .line 276
    invoke-static {v1}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-static {p1, v1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    new-instance v1, LA4/s;

    .line 293
    .line 294
    const/4 v2, 0x5

    .line 295
    invoke-direct {v1, v2}, LA4/s;-><init>(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMapIterable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    new-instance v1, LA4/s;

    .line 303
    .line 304
    const/4 v2, 0x6

    .line 305
    invoke-direct {v1, p0, v2}, LA4/s;-><init>(Lflix/com/vision/activities/TraktActivity;I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    new-instance v1, Ly4/l1;

    .line 313
    .line 314
    const/4 v2, 0x0

    .line 315
    invoke-direct {v1, p0, v2}, Ly4/l1;-><init>(Ljava/lang/Object;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    new-instance v1, Ly4/j1;

    .line 335
    .line 336
    const/4 v2, 0x1

    .line 337
    invoke-direct {v1, p0, v2}, Ly4/j1;-><init>(Lflix/com/vision/activities/TraktActivity;I)V

    .line 338
    .line 339
    .line 340
    new-instance v2, Ly4/H0;

    .line 341
    .line 342
    const/4 v3, 0x4

    .line 343
    invoke-direct {v2, v3}, Ly4/H0;-><init>(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 351
    .line 352
    .line 353
    :goto_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    iget-object p1, p1, Lflix/com/vision/App;->q:LD4/h;

    .line 358
    .line 359
    iget-object p1, p1, LD4/h;->a:Lcom/uwetrottmann/trakt5/TraktV2;

    .line 360
    .line 361
    if-nez p1, :cond_3

    .line 362
    .line 363
    return-void

    .line 364
    :cond_3
    new-instance p1, Ly4/i1;

    .line 365
    .line 366
    const/4 v1, 0x1

    .line 367
    invoke-direct {p1, v1}, Ly4/i1;-><init>(I)V

    .line 368
    .line 369
    .line 370
    invoke-static {p1}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    new-instance v1, LA4/s;

    .line 383
    .line 384
    const/4 v2, 0x5

    .line 385
    invoke-direct {v1, v2}, LA4/s;-><init>(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMapIterable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    new-instance v1, LA4/s;

    .line 393
    .line 394
    const/4 v2, 0x4

    .line 395
    invoke-direct {v1, p0, v2}, LA4/s;-><init>(Lflix/com/vision/activities/TraktActivity;I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    new-instance v1, Landroidx/media3/exoplayer/source/chunk/a;

    .line 403
    .line 404
    const/16 v2, 0x1a

    .line 405
    .line 406
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/chunk/a;-><init>(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    new-instance v1, Ly4/l1;

    .line 414
    .line 415
    const/4 v2, 0x0

    .line 416
    invoke-direct {v1, p0, v2}, Ly4/l1;-><init>(Ljava/lang/Object;I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    new-instance v1, Ly4/j1;

    .line 436
    .line 437
    invoke-direct {v1, p0, v2}, Ly4/j1;-><init>(Lflix/com/vision/activities/TraktActivity;I)V

    .line 438
    .line 439
    .line 440
    new-instance v2, Ly4/H0;

    .line 441
    .line 442
    const/4 v3, 0x4

    .line 443
    invoke-direct {v2, v3}, Ly4/H0;-><init>(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 451
    .line 452
    .line 453
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/v;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/TraktActivity;->b:Lio/reactivex/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 7
    .line 8
    .line 9
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
    sget-boolean v1, Lflix/com/vision/App;->I:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v1, Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const-string v1, "movie"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

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
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method
