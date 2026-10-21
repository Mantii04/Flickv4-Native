.class public Lflix/com/vision/activities/DramaHistoryActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/e;


# static fields
.field public static final synthetic m:I


# instance fields
.field public b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

.field public e:Ljava/util/ArrayList;

.field public f:LC4/z;

.field public j:Landroid/widget/RelativeLayout;


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
    .locals 2

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
    iput-object p1, p0, Lflix/com/vision/activities/DramaHistoryActivity;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

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
    iput-object p1, p0, Lflix/com/vision/activities/DramaHistoryActivity;->j:Landroid/widget/RelativeLayout;

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
    invoke-virtual {p1}, LP4/e;->getDramaHistory()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lflix/com/vision/activities/DramaHistoryActivity;->e:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v0, LC4/z;

    .line 42
    .line 43
    invoke-direct {v0, p1, p0, p0}, LC4/z;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;LU4/e;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lflix/com/vision/activities/DramaHistoryActivity;->f:LC4/z;

    .line 47
    .line 48
    iget-object p1, p0, Lflix/com/vision/activities/DramaHistoryActivity;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setAdapter(Lm1/V;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lb/c;->d(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .line 75
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .line 77
    int-to-float p1, p1

    .line 78
    div-float/2addr p1, v0

    .line 79
    const/high16 v0, 0x430c0000    # 140.0f

    .line 80
    .line 81
    div-float/2addr p1, v0

    .line 82
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 87
    .line 88
    invoke-direct {v0, p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lflix/com/vision/activities/DramaHistoryActivity;->b:Lcom/malinskiy/superrecyclerview/SuperRecyclerView;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/malinskiy/superrecyclerview/SuperRecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lflix/com/vision/activities/DramaHistoryActivity;->j:Landroid/widget/RelativeLayout;

    .line 97
    .line 98
    new-instance v0, LB4/a;

    .line 99
    .line 100
    const/16 v1, 0xc

    .line 101
    .line 102
    invoke-direct {v0, p0, v1}, LB4/a;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
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
    .locals 0

    return-void
.end method
