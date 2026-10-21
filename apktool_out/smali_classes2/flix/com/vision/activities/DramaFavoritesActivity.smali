.class public Lflix/com/vision/activities/DramaFavoritesActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/e;


# instance fields
.field public b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public e:Ljava/util/ArrayList;

.field public f:LC4/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

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
    iput-object p1, p0, Lflix/com/vision/activities/DramaFavoritesActivity;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

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
    invoke-virtual {p1}, LP4/e;->getDramaFavorites()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lflix/com/vision/activities/DramaFavoritesActivity;->e:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v0, LC4/z;

    .line 32
    .line 33
    invoke-direct {v0, p1, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lflix/com/vision/activities/DramaFavoritesActivity;->f:LC4/z;

    .line 37
    .line 38
    iget-object p1, p0, Lflix/com/vision/activities/DramaFavoritesActivity;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 64
    .line 65
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    .line 67
    int-to-float p1, p1

    .line 68
    div-float/2addr p1, v0

    .line 69
    const/high16 v0, 0x430c0000    # 140.0f

    .line 70
    .line 71
    div-float/2addr p1, v0

    .line 72
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lflix/com/vision/activities/DramaFavoritesActivity;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 84
    .line 85
    .line 86
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
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/DramaFavoritesActivity;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lflix/com/vision/activities/DramaFavoritesActivity;->f:LC4/z;

    .line 7
    .line 8
    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
