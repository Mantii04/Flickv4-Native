.class public Lflix/com/vision/activities/SearchResultsActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/j;


# static fields
.field public static final synthetic H:I


# instance fields
.field public A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public B:Landroidx/recyclerview/widget/RecyclerView;

.field public C:Landroidx/appcompat/widget/Toolbar;

.field public D:Ljava/lang/String;

.field public E:Landroid/widget/LinearLayout;

.field public F:LC4/P;

.field public G:LC4/r;

.field public b:Lh5/j;

.field public e:Landroid/graphics/Typeface;

.field public f:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/RelativeLayout;

.field public q:Landroid/widget/RelativeLayout;

.field public r:Landroid/widget/RelativeLayout;

.field public s:I

.field public final t:Ljava/util/ArrayList;

.field public final u:Ljava/util/ArrayList;

.field public final v:Ljava/util/ArrayList;

.field public final w:Ljava/util/ArrayList;

.field public x:Lio/reactivex/disposables/Disposable;

.field public y:Lio/reactivex/disposables/Disposable;

.field public z:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->s:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->t:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->u:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->v:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->w:Ljava/util/ArrayList;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->x:Lio/reactivex/disposables/Disposable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    const-string v1, "parental_control"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "movie"

    .line 31
    .line 32
    invoke-static {p0, v0, p1, v1, v2}, LD4/a;->searchData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Lio/reactivex/Observable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Ly4/N0;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-direct {v1, p0, p1, v2}, Ly4/N0;-><init>(Lflix/com/vision/activities/SearchResultsActivity;II)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ly4/H0;

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-direct {p1, v2}, Ly4/H0;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->x:Lio/reactivex/disposables/Disposable;

    .line 69
    .line 70
    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->z:Lio/reactivex/disposables/Disposable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p0, v0, p1}, LD4/a;->searchPeople(Landroid/content/Context;Ljava/lang/String;I)Lio/reactivex/Observable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Ly4/O0;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v0, p0, v1}, Ly4/O0;-><init>(Lflix/com/vision/activities/SearchResultsActivity;I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ly4/O0;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-direct {v1, p0, v2}, Ly4/O0;-><init>(Lflix/com/vision/activities/SearchResultsActivity;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->z:Lio/reactivex/disposables/Disposable;

    .line 55
    .line 56
    return-void
.end method

.method public favoriteDeleted(I)V
    .locals 0

    return-void
.end method

.method public final g(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/SearchResultsActivity;->y:Lio/reactivex/disposables/Disposable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    const-string v1, "parental_control"

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 30
    .line 31
    xor-int/2addr v0, v2

    .line 32
    const-string v2, "tv"

    .line 33
    .line 34
    invoke-static {p0, v1, p1, v2, v0}, LD4/a;->searchData(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Lio/reactivex/Observable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Ly4/N0;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {v1, p0, p1, v2}, Ly4/N0;-><init>(Lflix/com/vision/activities/SearchResultsActivity;II)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Ly4/H0;

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-direct {p1, v2}, Ly4/H0;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->y:Lio/reactivex/disposables/Disposable;

    .line 71
    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    sget p1, Lflix/com/vision/R$layout;->activity_search_tabbed:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v1, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "fonts/pproduct_sans_rregular.ttf"

    .line 17
    .line 18
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->e:Landroid/graphics/Typeface;

    .line 23
    .line 24
    new-instance p1, Lh5/j;

    .line 25
    .line 26
    invoke-direct {p1}, Lh5/j;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->b:Lh5/j;

    .line 30
    .line 31
    sget p1, Lflix/com/vision/R$id;->label_people_button:I

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->n:Landroid/widget/TextView;

    .line 40
    .line 41
    sget p1, Lflix/com/vision/R$id;->label_series_button:I

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
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->f:Landroid/widget/TextView;

    .line 50
    .line 51
    sget p1, Lflix/com/vision/R$id;->label_movies_button:I

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
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->j:Landroid/widget/TextView;

    .line 60
    .line 61
    sget p1, Lflix/com/vision/R$id;->unreleased_movie_text:I

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
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->m:Landroid/widget/TextView;

    .line 70
    .line 71
    sget p1, Lflix/com/vision/R$id;->progress_web:I

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
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->E:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    iget-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->b:Lh5/j;

    .line 82
    .line 83
    iget-object v1, p0, Lflix/com/vision/activities/SearchResultsActivity;->f:Landroid/widget/TextView;

    .line 84
    .line 85
    iget-object v2, p0, Lflix/com/vision/activities/SearchResultsActivity;->e:Landroid/graphics/Typeface;

    .line 86
    .line 87
    invoke-virtual {p1, v1, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->b:Lh5/j;

    .line 91
    .line 92
    iget-object v1, p0, Lflix/com/vision/activities/SearchResultsActivity;->j:Landroid/widget/TextView;

    .line 93
    .line 94
    iget-object v2, p0, Lflix/com/vision/activities/SearchResultsActivity;->e:Landroid/graphics/Typeface;

    .line 95
    .line 96
    invoke-virtual {p1, v1, v2}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 97
    .line 98
    .line 99
    sget p1, Lflix/com/vision/R$id;->movies_button:I

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->p:Landroid/widget/RelativeLayout;

    .line 108
    .line 109
    sget p1, Lflix/com/vision/R$id;->series_button:I

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 116
    .line 117
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->q:Landroid/widget/RelativeLayout;

    .line 118
    .line 119
    sget p1, Lflix/com/vision/R$id;->people_button:I

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 126
    .line 127
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->r:Landroid/widget/RelativeLayout;

    .line 128
    .line 129
    sget p1, Lflix/com/vision/R$id;->recyclerview:I

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 136
    .line 137
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 138
    .line 139
    sget p1, Lflix/com/vision/R$id;->recyclerview_cast:I

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    .line 147
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 148
    .line 149
    sget p1, Lflix/com/vision/R$id;->progress_bar:I

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Landroid/widget/ProgressBar;

    .line 156
    .line 157
    const/16 v1, 0x8

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    sget p1, Lflix/com/vision/R$id;->toolbar:I

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 169
    .line 170
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->C:Landroidx/appcompat/widget/Toolbar;

    .line 171
    .line 172
    iget-object v1, p0, Lflix/com/vision/activities/SearchResultsActivity;->b:Lh5/j;

    .line 173
    .line 174
    iget-object v2, p0, Lflix/com/vision/activities/SearchResultsActivity;->e:Landroid/graphics/Typeface;

    .line 175
    .line 176
    invoke-virtual {v1, p1, v2}, Lh5/j;->applyFontToToolbar(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/Typeface;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string v1, "query"

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const-string v1, "type"

    .line 196
    .line 197
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iput p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->s:I

    .line 203
    .line 204
    iget-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 205
    .line 206
    if-nez p1, :cond_0

    .line 207
    .line 208
    const-string p1, ""

    .line 209
    .line 210
    iput-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 211
    .line 212
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string v1, "tv_shows_only"

    .line 217
    .line 218
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    iput p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->s:I

    .line 223
    .line 224
    iget-object p1, p0, Lflix/com/vision/activities/SearchResultsActivity;->C:Landroidx/appcompat/widget/Toolbar;

    .line 225
    .line 226
    invoke-virtual {p0, p1}, Le/v;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v3, "Results for \""

    .line 236
    .line 237
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v3, p0, Lflix/com/vision/activities/SearchResultsActivity;->D:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v3, "\""

    .line 246
    .line 247
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p1, v1}, Le/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Le/v;->getSupportActionBar()Le/b;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1, v0}, Le/b;->setDisplayHomeAsUpEnabled(Z)V

    .line 266
    .line 267
    .line 268
    new-instance v3, LC4/P;

    .line 269
    .line 270
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    iget-object v5, p0, Lflix/com/vision/activities/SearchResultsActivity;->u:Ljava/util/ArrayList;

    .line 275
    .line 276
    const/4 v7, 0x0

    .line 277
    const/4 v9, 0x0

    .line 278
    move-object v8, p0

    .line 279
    move-object v6, p0

    .line 280
    invoke-direct/range {v3 .. v9}, LC4/P;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 281
    .line 282
    .line 283
    iput-object v3, v6, Lflix/com/vision/activities/SearchResultsActivity;->F:LC4/P;

    .line 284
    .line 285
    new-instance p1, LC4/r;

    .line 286
    .line 287
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget-object v3, v6, Lflix/com/vision/activities/SearchResultsActivity;->v:Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-direct {p1, v1, v3, p0, v2}, LC4/r;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;I)V

    .line 294
    .line 295
    .line 296
    iput-object p1, v6, Lflix/com/vision/activities/SearchResultsActivity;->G:LC4/r;

    .line 297
    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 319
    .line 320
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 321
    .line 322
    int-to-float p1, p1

    .line 323
    div-float/2addr p1, v1

    .line 324
    sget-object v1, Lflix/com/vision/App;->z:Ljava/util/ArrayList;

    .line 325
    .line 326
    const/16 v1, 0x8c

    .line 327
    .line 328
    int-to-float v1, v1

    .line 329
    div-float/2addr p1, v1

    .line 330
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    iget-object v1, v6, Lflix/com/vision/activities/SearchResultsActivity;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 335
    .line 336
    new-instance v3, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 337
    .line 338
    invoke-direct {v3, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v3}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 342
    .line 343
    .line 344
    iget-object v1, v6, Lflix/com/vision/activities/SearchResultsActivity;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 345
    .line 346
    new-instance v3, LT4/k;

    .line 347
    .line 348
    const/16 v4, 0xc

    .line 349
    .line 350
    invoke-direct {v3, v4}, LT4/k;-><init>(I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v3}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v6, Lflix/com/vision/activities/SearchResultsActivity;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 357
    .line 358
    iget-object v3, v6, Lflix/com/vision/activities/SearchResultsActivity;->F:LC4/P;

    .line 359
    .line 360
    invoke-virtual {v1, v3}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v6, Lflix/com/vision/activities/SearchResultsActivity;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 364
    .line 365
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 366
    .line 367
    .line 368
    iget-object v1, v6, Lflix/com/vision/activities/SearchResultsActivity;->A:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 369
    .line 370
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 371
    .line 372
    .line 373
    iget-object v1, v6, Lflix/com/vision/activities/SearchResultsActivity;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 374
    .line 375
    new-instance v3, Lflix/com/vision/helpers/CenterGridLayoutManager;

    .line 376
    .line 377
    invoke-direct {v3, p0, p1}, Lflix/com/vision/helpers/CenterGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 381
    .line 382
    .line 383
    iget-object p1, v6, Lflix/com/vision/activities/SearchResultsActivity;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 384
    .line 385
    invoke-static {p1, v4}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 386
    .line 387
    .line 388
    iget-object p1, v6, Lflix/com/vision/activities/SearchResultsActivity;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 389
    .line 390
    iget-object v1, v6, Lflix/com/vision/activities/SearchResultsActivity;->G:LC4/r;

    .line 391
    .line 392
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 393
    .line 394
    .line 395
    iget-object p1, v6, Lflix/com/vision/activities/SearchResultsActivity;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 396
    .line 397
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 398
    .line 399
    .line 400
    iget-object p1, v6, Lflix/com/vision/activities/SearchResultsActivity;->p:Landroid/widget/RelativeLayout;

    .line 401
    .line 402
    new-instance v1, Ly4/P0;

    .line 403
    .line 404
    invoke-direct {v1, p0, v2}, Ly4/P0;-><init>(Lflix/com/vision/activities/SearchResultsActivity;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    .line 409
    .line 410
    iget-object p1, v6, Lflix/com/vision/activities/SearchResultsActivity;->q:Landroid/widget/RelativeLayout;

    .line 411
    .line 412
    new-instance v1, Ly4/P0;

    .line 413
    .line 414
    invoke-direct {v1, p0, v0}, Ly4/P0;-><init>(Lflix/com/vision/activities/SearchResultsActivity;I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    .line 419
    .line 420
    iget-object p1, v6, Lflix/com/vision/activities/SearchResultsActivity;->r:Landroid/widget/RelativeLayout;

    .line 421
    .line 422
    new-instance v1, Ly4/P0;

    .line 423
    .line 424
    const/4 v3, 0x2

    .line 425
    invoke-direct {v1, p0, v3}, Ly4/P0;-><init>(Lflix/com/vision/activities/SearchResultsActivity;I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/SearchResultsActivity;->e(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/SearchResultsActivity;->g(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0, v0}, Lflix/com/vision/activities/SearchResultsActivity;->f(I)V

    .line 438
    .line 439
    .line 440
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 445
    .line 446
    const-string v1, "pref_hide_unreleased"

    .line 447
    .line 448
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    if-eqz p1, :cond_1

    .line 453
    .line 454
    iget-object p1, v6, Lflix/com/vision/activities/SearchResultsActivity;->m:Landroid/widget/TextView;

    .line 455
    .line 456
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 457
    .line 458
    .line 459
    :cond_1
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
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
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
