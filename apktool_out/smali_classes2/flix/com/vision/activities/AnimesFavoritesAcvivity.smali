.class public Lflix/com/vision/activities/AnimesFavoritesAcvivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/d;


# instance fields
.field public final b:I

.field public e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public f:Ljava/util/ArrayList;


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
    iput v0, p0, Lflix/com/vision/activities/AnimesFavoritesAcvivity;->b:I

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
    sget p1, Lflix/com/vision/R$layout;->activity_anime_favoritess:I

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
    iput-object p1, p0, Lflix/com/vision/activities/AnimesFavoritesAcvivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 18
    .line 19
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 24
    .line 25
    invoke-virtual {p1}, LP4/e;->getFavoritesMoviesFromDb_Anime()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lflix/com/vision/activities/AnimesFavoritesAcvivity;->f:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v0, LC4/k;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lflix/com/vision/activities/AnimesFavoritesAcvivity;->f:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget v4, p0, Lflix/com/vision/activities/AnimesFavoritesAcvivity;->b:I

    .line 40
    .line 41
    move-object v5, p0

    .line 42
    move-object v3, p0

    .line 43
    invoke-direct/range {v0 .. v5}, LC4/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;ILU4/d;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v3, Lflix/com/vision/activities/AnimesFavoritesAcvivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 72
    .line 73
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 74
    .line 75
    int-to-float p1, p1

    .line 76
    div-float/2addr p1, v0

    .line 77
    const/high16 v0, 0x430c0000    # 140.0f

    .line 78
    .line 79
    div-float/2addr p1, v0

    .line 80
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 85
    .line 86
    invoke-direct {v0, p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, v3, Lflix/com/vision/activities/AnimesFavoritesAcvivity;->e:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 92
    .line 93
    .line 94
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
