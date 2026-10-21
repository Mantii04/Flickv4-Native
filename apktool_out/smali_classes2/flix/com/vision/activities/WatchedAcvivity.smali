.class public Lflix/com/vision/activities/WatchedAcvivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/j;


# static fields
.field public static final synthetic n:I


# instance fields
.field public b:Landroid/widget/TextView;

.field public final e:I

.field public f:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public j:Ljava/util/ArrayList;

.field public m:LC4/m0;


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
    iput v0, p0, Lflix/com/vision/activities/WatchedAcvivity;->e:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public favoriteDeleted(I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_watched:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->clear_button:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/activities/WatchedAcvivity;->b:Landroid/widget/TextView;

    .line 18
    .line 19
    sget p1, Lflix/com/vision/R$id;->recyclerview_favorites:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 26
    .line 27
    iput-object p1, p0, Lflix/com/vision/activities/WatchedAcvivity;->f:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 28
    .line 29
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 34
    .line 35
    invoke-virtual {p1}, LP4/e;->getWatchedMoviesFromDb()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lflix/com/vision/activities/WatchedAcvivity;->j:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v0, LC4/m0;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lflix/com/vision/activities/WatchedAcvivity;->j:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget v4, p0, Lflix/com/vision/activities/WatchedAcvivity;->e:I

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    move-object v5, p0

    .line 53
    move-object v3, p0

    .line 54
    invoke-direct/range {v0 .. v6}, LC4/m0;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lflix/com/vision/activities/WatchedAcvivity;ILU4/j;Lflix/com/vision/activities/MainActivity;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, v3, Lflix/com/vision/activities/WatchedAcvivity;->m:LC4/m0;

    .line 58
    .line 59
    iget-object p1, v3, Lflix/com/vision/activities/WatchedAcvivity;->f:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 85
    .line 86
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    .line 88
    int-to-float p1, p1

    .line 89
    div-float/2addr p1, v0

    .line 90
    const/high16 v0, 0x430c0000    # 140.0f

    .line 91
    .line 92
    div-float/2addr p1, v0

    .line 93
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 98
    .line 99
    invoke-direct {v0, p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, v3, Lflix/com/vision/activities/WatchedAcvivity;->f:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, v3, Lflix/com/vision/activities/WatchedAcvivity;->b:Landroid/widget/TextView;

    .line 108
    .line 109
    new-instance v0, Ly4/A1;

    .line 110
    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-direct {v0, p0, v1}, Ly4/A1;-><init>(Lflix/com/vision/activities/WatchedAcvivity;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
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

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showLongPressDialog(Lflix/com/vision/models/Movie;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "What would you like to Do?"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, LA4/m;

    .line 23
    .line 24
    const/16 v3, 0x15

    .line 25
    .line 26
    invoke-direct {v2, v3, p0, p1}, LA4/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "ADD TO FAVORITES"

    .line 30
    .line 31
    invoke-virtual {v1, v3, v2}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, LC4/l;

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    invoke-direct {v2, p0, p1, p2, v3}, LC4/l;-><init>(Lflix/com/vision/activities/base/a;Ljava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    const-string p1, "REMOVE"

    .line 41
    .line 42
    invoke-virtual {v1, p1, v2}, LQ4/d;->setButton3(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    const-string p1, ""

    .line 46
    .line 47
    invoke-virtual {v1, v0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    return-void
.end method
