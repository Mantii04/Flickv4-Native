.class public Lflix/com/vision/activities/leanback/FilterActivityLeanBack;
.super Landroidx/fragment/app/H;
.source "SourceFile"

# interfaces
.implements LU4/j;


# static fields
.field public static final synthetic T:I


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:Z

.field public C:Landroid/widget/ProgressBar;

.field public D:I

.field public E:I

.field public F:Landroidx/leanback/widget/VerticalGridView;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/widget/TextView;

.field public K:Landroid/widget/TextView;

.field public L:LC4/P;

.field public M:Ljava/lang/String;

.field public N:I

.field public O:Ljava/lang/String;

.field public P:I

.field public Q:Lio/reactivex/disposables/Disposable;

.field public R:Z

.field public S:I

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

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Landroid/widget/RelativeLayout;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/H;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->b:I

    .line 6
    .line 7
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e:I

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->r:Ljava/util/ArrayList;

    .line 15
    .line 16
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->s:I

    .line 17
    .line 18
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->t:I

    .line 19
    .line 20
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->u:I

    .line 21
    .line 22
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->v:I

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    iput-object v1, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->w:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->x:Ljava/lang/String;

    .line 30
    .line 31
    iput-boolean v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->z:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->B:Z

    .line 34
    .line 35
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->D:I

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->E:I

    .line 39
    .line 40
    iput-object v1, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->N:I

    .line 44
    .line 45
    const-string v0, "popularity.desc"

    .line 46
    .line 47
    iput-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->O:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->B:Z

    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->C:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->Q:Lio/reactivex/disposables/Disposable;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->b:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v4, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e:I

    .line 24
    .line 25
    iget v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->v:I

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->w:Ljava/lang/String;

    .line 30
    .line 31
    :goto_0
    move-object v5, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v6, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->O:Ljava/lang/String;

    .line 36
    .line 37
    iget v7, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->E:I

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    move-object v1, p0

    .line 41
    move v3, p1

    .line 42
    invoke-static/range {v1 .. v8}, LD4/a;->getItemsByGenres(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, LA4/d;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-direct {v0, p0, v2}, LA4/d;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 66
    .line 67
    .line 68
    new-instance v2, LA4/d;

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-direct {v2, p0, v3}, LA4/d;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, v1, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->Q:Lio/reactivex/disposables/Disposable;

    .line 79
    .line 80
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->b:I

    .line 3
    .line 4
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->s:I

    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->G:Landroid/widget/TextView;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "Genres:"

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v3, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e:I

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->f:[Ljava/lang/String;

    .line 20
    .line 21
    aget-object v0, v3, v0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v3, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->j:[Ljava/lang/String;

    .line 25
    .line 26
    aget-object v0, v3, v0

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public favoriteDeleted(I)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->J:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->K:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->G:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->H:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->I:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->r:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v2, 0xc8

    .line 49
    .line 50
    if-ge v0, v2, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/t;->smoothScrollToPosition(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/t;->scrollToPosition(I)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->J:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    iget-boolean v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->R:Z

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iput-boolean v1, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->R:Z

    .line 79
    .line 80
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v2, "Press again to go back..."

    .line 89
    .line 90
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->R:Z

    .line 99
    .line 100
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->J:Landroid/widget/TextView;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 108
    .line 109
    .line 110
    new-instance v0, Landroid/os/Handler;

    .line 111
    .line 112
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v1, LA3/d;

    .line 116
    .line 117
    const/4 v2, 0x2

    .line 118
    invoke-direct {v1, p0, v2}, LA3/d;-><init>(Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    const-wide/16 v2, 0x7d0

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 26

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/H;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lflix/com/vision/R$layout;->activity_filter_leanback:I

    .line 7
    .line 8
    invoke-virtual {v3, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "All"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, LT4/f;->getMovieCategories()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lflix/com/vision/models/Genre;

    .line 48
    .line 49
    iget-object v5, v5, Lflix/com/vision/models/Genre;->name:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, LT4/f;->getSeriesCategories()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lflix/com/vision/models/Genre;

    .line 74
    .line 75
    iget-object v5, v5, Lflix/com/vision/models/Genre;->name:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v7, 0x0

    .line 82
    new-array v4, v7, [Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, [Ljava/lang/String;

    .line 89
    .line 90
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->f:[Ljava/lang/String;

    .line 91
    .line 92
    new-array v0, v7, [Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, [Ljava/lang/String;

    .line 99
    .line 100
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->j:[Ljava/lang/String;

    .line 101
    .line 102
    const-string v0, "Popularity"

    .line 103
    .line 104
    const-string v1, "Release Date"

    .line 105
    .line 106
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->m:[Ljava/lang/String;

    .line 111
    .line 112
    const-string v0, "Movies"

    .line 113
    .line 114
    const-string v1, "Series"

    .line 115
    .line 116
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->p:[Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget v1, Lflix/com/vision/R$array;->years:I

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->n:[Ljava/lang/String;

    .line 133
    .line 134
    const-string v24, "BET+"

    .line 135
    .line 136
    const-string v25, "BritBox"

    .line 137
    .line 138
    const-string v8, "All"

    .line 139
    .line 140
    const-string v9, "Netflix"

    .line 141
    .line 142
    const-string v10, "Disney+"

    .line 143
    .line 144
    const-string v11, "Prime Video"

    .line 145
    .line 146
    const-string v12, "Apple TV+"

    .line 147
    .line 148
    const-string v13, "Paramount+"

    .line 149
    .line 150
    const-string v14, "HBO Max"

    .line 151
    .line 152
    const-string v15, "Hulu"

    .line 153
    .line 154
    const-string v16, "Starz"

    .line 155
    .line 156
    const-string v17, "Bollywood"

    .line 157
    .line 158
    const-string v18, "Discovery+"

    .line 159
    .line 160
    const-string v19, "ABC"

    .line 161
    .line 162
    const-string v20, "CBS"

    .line 163
    .line 164
    const-string v21, "AMC"

    .line 165
    .line 166
    const-string v22, "Peacock"

    .line 167
    .line 168
    const-string v23, "Marvel Studios"

    .line 169
    .line 170
    filled-new-array/range {v8 .. v25}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->q:[Ljava/lang/String;

    .line 175
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->A:Ljava/util/ArrayList;

    .line 182
    .line 183
    new-instance v1, Lflix/com/vision/models/tmdb/Network;

    .line 184
    .line 185
    const/4 v8, -0x1

    .line 186
    const/4 v4, 0x0

    .line 187
    invoke-direct {v1, v8, v2, v4, v8}, Lflix/com/vision/models/tmdb/Network;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->A:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-static {}, LT4/f;->getNetworks()Ljava/util/ArrayList;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    .line 201
    .line 202
    sget v0, Lflix/com/vision/R$id;->activity_player:I

    .line 203
    .line 204
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 209
    .line 210
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->y:Landroid/widget/RelativeLayout;

    .line 211
    .line 212
    sget v0, Lflix/com/vision/R$id;->provider_network_text:I

    .line 213
    .line 214
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Landroid/widget/TextView;

    .line 219
    .line 220
    sget v0, Lflix/com/vision/R$id;->network_button:I

    .line 221
    .line 222
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Landroid/widget/TextView;

    .line 227
    .line 228
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->K:Landroid/widget/TextView;

    .line 229
    .line 230
    sget v0, Lflix/com/vision/R$id;->recyclerview_cast:I

    .line 231
    .line 232
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    .line 237
    .line 238
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 239
    .line 240
    sget v0, Lflix/com/vision/R$id;->sort_by_button:I

    .line 241
    .line 242
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Landroid/widget/TextView;

    .line 247
    .line 248
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->I:Landroid/widget/TextView;

    .line 249
    .line 250
    sget v0, Lflix/com/vision/R$id;->year_button:I

    .line 251
    .line 252
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Landroid/widget/TextView;

    .line 257
    .line 258
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->H:Landroid/widget/TextView;

    .line 259
    .line 260
    sget v0, Lflix/com/vision/R$id;->genres_button:I

    .line 261
    .line 262
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Landroid/widget/TextView;

    .line 267
    .line 268
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->G:Landroid/widget/TextView;

    .line 269
    .line 270
    sget v0, Lflix/com/vision/R$id;->type_button:I

    .line 271
    .line 272
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Landroid/widget/TextView;

    .line 277
    .line 278
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->J:Landroid/widget/TextView;

    .line 279
    .line 280
    sget v0, Lflix/com/vision/R$id;->progress_bar:I

    .line 281
    .line 282
    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Landroid/widget/ProgressBar;

    .line 287
    .line 288
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->C:Landroid/widget/ProgressBar;

    .line 289
    .line 290
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 291
    .line 292
    invoke-virtual {v0, v7}, Landroidx/leanback/widget/t;->setFocusSearchDisabled(Z)V

    .line 293
    .line 294
    .line 295
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->H:Landroid/widget/TextView;

    .line 296
    .line 297
    new-instance v1, LA4/f;

    .line 298
    .line 299
    const/4 v2, 0x0

    .line 300
    invoke-direct {v1, v3, v2}, LA4/f;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->G:Landroid/widget/TextView;

    .line 307
    .line 308
    new-instance v1, LA4/f;

    .line 309
    .line 310
    const/4 v2, 0x1

    .line 311
    invoke-direct {v1, v3, v2}, LA4/f;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->J:Landroid/widget/TextView;

    .line 318
    .line 319
    new-instance v1, LA4/f;

    .line 320
    .line 321
    const/4 v2, 0x2

    .line 322
    invoke-direct {v1, v3, v2}, LA4/f;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    .line 327
    .line 328
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->K:Landroid/widget/TextView;

    .line 329
    .line 330
    new-instance v1, LA4/f;

    .line 331
    .line 332
    const/4 v2, 0x3

    .line 333
    invoke-direct {v1, v3, v2}, LA4/f;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    .line 338
    .line 339
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->I:Landroid/widget/TextView;

    .line 340
    .line 341
    new-instance v1, LA4/f;

    .line 342
    .line 343
    const/4 v2, 0x4

    .line 344
    invoke-direct {v1, v3, v2}, LA4/f;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    .line 349
    .line 350
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->G:Landroid/widget/TextView;

    .line 351
    .line 352
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-static {v0}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 376
    .line 377
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 378
    .line 379
    int-to-float v0, v0

    .line 380
    div-float/2addr v0, v1

    .line 381
    sget-boolean v1, Lflix/com/vision/App;->I:Z

    .line 382
    .line 383
    if-eqz v1, :cond_2

    .line 384
    .line 385
    const/16 v1, 0x8c

    .line 386
    .line 387
    goto :goto_2

    .line 388
    :cond_2
    const/16 v1, 0x78

    .line 389
    .line 390
    :goto_2
    int-to-float v1, v1

    .line 391
    div-float v1, v0, v1

    .line 392
    .line 393
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    iput v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->N:I

    .line 398
    .line 399
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    iget-object v1, v1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 404
    .line 405
    const-string v2, "prefs_show_big_cobers"

    .line 406
    .line 407
    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_3

    .line 412
    .line 413
    const/high16 v1, 0x43340000    # 180.0f

    .line 414
    .line 415
    div-float/2addr v0, v1

    .line 416
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    iput v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->N:I

    .line 421
    .line 422
    :cond_3
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 423
    .line 424
    iget v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->N:I

    .line 425
    .line 426
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 427
    .line 428
    .line 429
    sget-boolean v0, Lflix/com/vision/App;->I:Z

    .line 430
    .line 431
    if-eqz v0, :cond_4

    .line 432
    .line 433
    const/16 v0, 0xc

    .line 434
    .line 435
    goto :goto_3

    .line 436
    :cond_4
    const/16 v0, 0x8

    .line 437
    .line 438
    :goto_3
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 439
    .line 440
    new-instance v2, LT4/k;

    .line 441
    .line 442
    invoke-direct {v2, v0}, LT4/k;-><init>(I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lm1/d0;)V

    .line 446
    .line 447
    .line 448
    new-instance v0, LC4/P;

    .line 449
    .line 450
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    iget-object v2, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->r:Ljava/util/ArrayList;

    .line 455
    .line 456
    const/4 v4, 0x0

    .line 457
    const/4 v6, 0x0

    .line 458
    move-object/from16 v5, p0

    .line 459
    .line 460
    invoke-direct/range {v0 .. v6}, LC4/P;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 461
    .line 462
    .line 463
    iput-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->L:LC4/P;

    .line 464
    .line 465
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 466
    .line 467
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->F:Landroidx/leanback/widget/VerticalGridView;

    .line 471
    .line 472
    new-instance v1, LA4/h;

    .line 473
    .line 474
    invoke-direct {v1, v3}, LA4/h;-><init>(Lflix/com/vision/activities/leanback/FilterActivityLeanBack;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lm1/m0;)V

    .line 478
    .line 479
    .line 480
    new-instance v0, LA4/g;

    .line 481
    .line 482
    const/4 v1, 0x0

    .line 483
    invoke-direct {v0, v3, v1}, LA4/g;-><init>(Ljava/lang/Object;I)V

    .line 484
    .line 485
    .line 486
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->G:Landroid/widget/TextView;

    .line 487
    .line 488
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 489
    .line 490
    .line 491
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->I:Landroid/widget/TextView;

    .line 492
    .line 493
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 494
    .line 495
    .line 496
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->H:Landroid/widget/TextView;

    .line 497
    .line 498
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 499
    .line 500
    .line 501
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->K:Landroid/widget/TextView;

    .line 502
    .line 503
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 504
    .line 505
    .line 506
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->J:Landroid/widget/TextView;

    .line 507
    .line 508
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    const-string v1, "network"

    .line 516
    .line 517
    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    iput v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->E:I

    .line 522
    .line 523
    if-ne v0, v8, :cond_5

    .line 524
    .line 525
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 526
    .line 527
    if-nez v0, :cond_a

    .line 528
    .line 529
    :cond_5
    move v0, v7

    .line 530
    :goto_4
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->A:Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-ge v0, v1, :cond_7

    .line 537
    .line 538
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->A:Ljava/util/ArrayList;

    .line 539
    .line 540
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    check-cast v1, Lflix/com/vision/models/tmdb/Network;

    .line 545
    .line 546
    iget v1, v1, Lflix/com/vision/models/tmdb/Network;->id:I

    .line 547
    .line 548
    iget v2, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->E:I

    .line 549
    .line 550
    if-ne v1, v2, :cond_6

    .line 551
    .line 552
    iput v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->D:I

    .line 553
    .line 554
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->K:Landroid/widget/TextView;

    .line 555
    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string v4, "Network: "

    .line 559
    .line 560
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    iget-object v4, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->A:Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v4

    .line 569
    check-cast v4, Lflix/com/vision/models/tmdb/Network;

    .line 570
    .line 571
    iget-object v4, v4, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 572
    .line 573
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    .line 582
    .line 583
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->A:Ljava/util/ArrayList;

    .line 584
    .line 585
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    check-cast v1, Lflix/com/vision/models/tmdb/Network;

    .line 590
    .line 591
    iget-object v1, v1, Lflix/com/vision/models/tmdb/Network;->name:Ljava/lang/String;

    .line 592
    .line 593
    iput-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 594
    .line 595
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 596
    .line 597
    goto :goto_4

    .line 598
    :cond_7
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 603
    .line 604
    const-string v1, "filter_type_index"

    .line 605
    .line 606
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    iput v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->t:I

    .line 611
    .line 612
    iput v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e:I

    .line 613
    .line 614
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 615
    .line 616
    if-eqz v0, :cond_9

    .line 617
    .line 618
    const-string v1, "AMC"

    .line 619
    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-nez v0, :cond_8

    .line 625
    .line 626
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 627
    .line 628
    const-string v1, "ABC"

    .line 629
    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-nez v0, :cond_8

    .line 635
    .line 636
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 637
    .line 638
    const-string v1, "CBS"

    .line 639
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    if-nez v0, :cond_8

    .line 645
    .line 646
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 647
    .line 648
    const-string v1, "Discovery+"

    .line 649
    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    if-nez v0, :cond_8

    .line 655
    .line 656
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 657
    .line 658
    const-string v1, "HBO Max"

    .line 659
    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    if-nez v0, :cond_8

    .line 665
    .line 666
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 667
    .line 668
    const-string v1, "BET+"

    .line 669
    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    if-nez v0, :cond_8

    .line 675
    .line 676
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->M:Ljava/lang/String;

    .line 677
    .line 678
    const-string v1, "BritBox"

    .line 679
    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    if-eqz v0, :cond_9

    .line 685
    .line 686
    :cond_8
    const/4 v0, 0x1

    .line 687
    iput v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->t:I

    .line 688
    .line 689
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->J:Landroid/widget/TextView;

    .line 690
    .line 691
    iget-object v2, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->p:[Ljava/lang/String;

    .line 692
    .line 693
    aget-object v2, v2, v0

    .line 694
    .line 695
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    .line 697
    .line 698
    iput v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->e:I

    .line 699
    .line 700
    :cond_9
    :try_start_0
    iget-object v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->J:Landroid/widget/TextView;

    .line 701
    .line 702
    iget-object v1, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->p:[Ljava/lang/String;

    .line 703
    .line 704
    iget v2, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->t:I

    .line 705
    .line 706
    aget-object v1, v1, v2

    .line 707
    .line 708
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    .line 710
    .line 711
    :catch_0
    :cond_a
    invoke-virtual {v3}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->setBackgroundColor()V

    .line 712
    .line 713
    .line 714
    iget v0, v3, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->P:I

    .line 715
    .line 716
    invoke-virtual {v3, v0}, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->d(I)V

    .line 717
    .line 718
    .line 719
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

.method public setBackgroundColor()V
    .locals 7

    .line 1
    const v0, 0x263984

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->S:I

    .line 5
    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->S:I

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
    new-array v5, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object v1, v5, v2

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-object v3, v5, v1

    .line 29
    .line 30
    invoke-static {v0, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-wide/16 v5, 0x7d0

    .line 35
    .line 36
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    new-instance v1, LA3/a;

    .line 40
    .line 41
    invoke-direct {v1, p0, v4}, LA3/a;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    .line 49
    .line 50
    iput v2, p0, Lflix/com/vision/activities/leanback/FilterActivityLeanBack;->S:I

    .line 51
    .line 52
    return-void
.end method
