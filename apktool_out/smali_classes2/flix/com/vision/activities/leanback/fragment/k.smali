.class public final Lflix/com/vision/activities/leanback/fragment/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/leanback/widget/v;


# instance fields
.field public final synthetic a:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;


# direct methods
.method public constructor <init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/activities/leanback/fragment/k;->a:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/A0;Ljava/lang/Object;Landroidx/leanback/widget/M0;Landroidx/leanback/widget/H0;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lflix/com/vision/activities/leanback/fragment/k;->a:Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    iget-boolean p3, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->A0:Lflix/com/vision/activities/leanback/fragment/f;

    if-eqz p3, :cond_1

    .line 3
    iget-object p4, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->z0:Landroid/os/Handler;

    .line 4
    invoke-virtual {p4, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_1
    instance-of p3, p2, Lflix/com/vision/models/Movie;

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 6
    iput-boolean p3, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->D0:Z

    const/4 p3, 0x0

    .line 7
    iput-object p3, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->C0:Lflix/com/vision/models/tmdb/Network;

    .line 8
    iget-object p1, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->V0:Lflix/com/vision/activities/leanback/fragment/d;

    if-eqz p1, :cond_5

    .line 9
    check-cast p2, Lflix/com/vision/models/Movie;

    invoke-virtual {p1, p2}, Lflix/com/vision/activities/leanback/fragment/d;->onMovieSelected(Lflix/com/vision/models/Movie;)V

    return-void

    .line 10
    :cond_2
    instance-of p3, p2, Lflix/com/vision/models/tmdb/Network;

    if-eqz p3, :cond_5

    const/4 p3, 0x1

    .line 11
    iput-boolean p3, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->D0:Z

    .line 12
    check-cast p2, Lflix/com/vision/models/tmdb/Network;

    .line 13
    iput-object p2, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->C0:Lflix/com/vision/models/tmdb/Network;

    .line 14
    iget-object p3, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->V0:Lflix/com/vision/activities/leanback/fragment/d;

    if-eqz p3, :cond_3

    .line 15
    invoke-virtual {p3, p2}, Lflix/com/vision/activities/leanback/fragment/d;->onNetworkSelected(Lflix/com/vision/models/tmdb/Network;)V

    .line 16
    :cond_3
    iget p3, p2, Lflix/com/vision/models/tmdb/Network;->id:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p4, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->y0:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 17
    iget-object p3, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->V0:Lflix/com/vision/activities/leanback/fragment/d;

    if-eqz p3, :cond_5

    iget-boolean p1, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->D0:Z

    if-eqz p1, :cond_5

    .line 18
    iget p1, p2, Lflix/com/vision/models/tmdb/Network;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lflix/com/vision/models/Movie;

    invoke-virtual {p3, p1}, Lflix/com/vision/activities/leanback/fragment/d;->onMovieSelected(Lflix/com/vision/models/Movie;)V

    return-void

    .line 19
    :cond_4
    new-instance p3, Lflix/com/vision/activities/leanback/fragment/f;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Lflix/com/vision/activities/leanback/fragment/f;-><init>(Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;Lflix/com/vision/models/tmdb/Network;I)V

    iput-object p3, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->A0:Lflix/com/vision/activities/leanback/fragment/f;

    .line 20
    iget-object p1, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->z0:Landroid/os/Handler;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/A0;Ljava/lang/Object;Landroidx/leanback/widget/M0;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p4, Landroidx/leanback/widget/H0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lflix/com/vision/activities/leanback/fragment/k;->onItemSelected(Landroidx/leanback/widget/A0;Ljava/lang/Object;Landroidx/leanback/widget/M0;Landroidx/leanback/widget/H0;)V

    return-void
.end method
