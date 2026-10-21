.class public Lflix/com/vision/activities/AnimeHistoryActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/d;


# static fields
.field public static final synthetic n:I


# instance fields
.field public final b:I

.field public e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public f:Ljava/util/ArrayList;

.field public j:LC4/k;

.field public m:Landroid/widget/RelativeLayout;


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
    iput v0, p0, Lflix/com/vision/activities/AnimeHistoryActivity;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lflix/com/vision/R$layout;->activity_anime_history:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Le/v;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lflix/com/vision/R$id;->recyclerview:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 16
    .line 17
    iput-object p1, p0, Lflix/com/vision/activities/AnimeHistoryActivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 18
    .line 19
    sget p1, Lflix/com/vision/R$id;->anime_favorites:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Le/v;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    iput-object p1, p0, Lflix/com/vision/activities/AnimeHistoryActivity;->m:Landroid/widget/RelativeLayout;

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
    invoke-virtual {p1}, LP4/e;->getWatchedMoviesFromDb_Anime()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lflix/com/vision/activities/AnimeHistoryActivity;->f:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v0, LC4/k;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lflix/com/vision/activities/AnimeHistoryActivity;->f:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget v4, p0, Lflix/com/vision/activities/AnimeHistoryActivity;->b:I

    .line 50
    .line 51
    move-object v5, p0

    .line 52
    move-object v3, p0

    .line 53
    invoke-direct/range {v0 .. v5}, LC4/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/d;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, v3, Lflix/com/vision/activities/AnimeHistoryActivity;->j:LC4/k;

    .line 57
    .line 58
    iget-object p1, v3, Lflix/com/vision/activities/AnimeHistoryActivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 84
    .line 85
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 86
    .line 87
    int-to-float p1, p1

    .line 88
    div-float/2addr p1, v0

    .line 89
    const/high16 v0, 0x430c0000    # 140.0f

    .line 90
    .line 91
    div-float/2addr p1, v0

    .line 92
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 97
    .line 98
    invoke-direct {v0, p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, v3, Lflix/com/vision/activities/AnimeHistoryActivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, v3, Lflix/com/vision/activities/AnimeHistoryActivity;->m:Landroid/widget/RelativeLayout;

    .line 107
    .line 108
    new-instance v0, LB4/a;

    .line 109
    .line 110
    const/16 v1, 0xa

    .line 111
    .line 112
    invoke-direct {v0, p0, v1}, LB4/a;-><init>(Ljava/lang/Object;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
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
    sget v1, Lflix/com/vision/R$menu;->menu_wwe_history:I

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
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lflix/com/vision/R$id;->action_wwe_clear:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Le/r;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Le/r;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Le/r;->create()Le/s;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget v1, Lflix/com/vision/R$string;->confirm_clear_wwe:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Le/s;->setMessage(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    sget v1, Lflix/com/vision/R$string;->clear_history_label:I

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Le/s;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ly4/d;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 42
    .line 43
    .line 44
    sget v1, Lflix/com/vision/R$string;->yes_clear_label:I

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Ly4/e;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Ly4/e;-><init>(Lflix/com/vision/activities/AnimeHistoryActivity;)V

    .line 53
    .line 54
    .line 55
    const/4 v3, -0x1

    .line 56
    invoke-virtual {v0, v3, v1, v2}, Le/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    sget v1, Lflix/com/vision/R$string;->cancel_label:I

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Ly4/f;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    const/4 v3, -0x2

    .line 71
    invoke-virtual {v0, v3, v1, v2}, Le/s;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const v1, 0x102002c

    .line 84
    .line 85
    .line 86
    if-ne v0, v1, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
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
