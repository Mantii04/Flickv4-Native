.class public final Landroidx/leanback/widget/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/leanback/widget/b0;

.field public final synthetic e:Landroidx/leanback/widget/j0;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/j0;Landroidx/leanback/widget/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/i0;->e:Landroidx/leanback/widget/j0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/leanback/widget/i0;->b:Landroidx/leanback/widget/b0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/i0;->e:Landroidx/leanback/widget/j0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/j0;->k:Landroidx/leanback/widget/l0;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/leanback/widget/l0;->n:Landroidx/leanback/widget/HorizontalGridView;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/leanback/widget/i0;->b:Landroidx/leanback/widget/b0;

    .line 8
    .line 9
    iget-object v2, v1, Lm1/B0;->a:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lm1/B0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/leanback/widget/b0;

    .line 16
    .line 17
    iget-object v2, p1, Landroidx/leanback/widget/j0;->k:Landroidx/leanback/widget/l0;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/leanback/widget/M0;->getOnItemViewClickedListener()Landroidx/leanback/widget/u;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget-object v2, p1, Landroidx/leanback/widget/j0;->k:Landroidx/leanback/widget/l0;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/leanback/widget/M0;->getOnItemViewClickedListener()Landroidx/leanback/widget/u;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v1, v1, Landroidx/leanback/widget/b0;->v:Landroidx/leanback/widget/A0;

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/leanback/widget/b0;->w:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/leanback/widget/j0;->k:Landroidx/leanback/widget/l0;

    .line 36
    .line 37
    iget-object p1, p1, Landroidx/leanback/widget/M0;->d:Landroidx/leanback/widget/H0;

    .line 38
    .line 39
    check-cast p1, Landroidx/leanback/widget/f0;

    .line 40
    .line 41
    check-cast v2, Ld6/a;

    .line 42
    .line 43
    iget-object p1, v2, Ld6/a;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;

    .line 46
    .line 47
    iget-boolean v1, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->E0:Z

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->k()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p1, Lflix/com/vision/activities/leanback/fragment/TVListFragmentMain;->V0:Lflix/com/vision/activities/leanback/fragment/d;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    instance-of v1, v0, Lflix/com/vision/models/Movie;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    check-cast v0, Lflix/com/vision/models/Movie;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lflix/com/vision/activities/leanback/fragment/d;->onMovieClicked(Lflix/com/vision/models/Movie;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    instance-of v1, v0, Lflix/com/vision/models/tmdb/Network;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    check-cast v0, Lflix/com/vision/models/tmdb/Network;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lflix/com/vision/activities/leanback/fragment/d;->onNetworkClicked(Lflix/com/vision/models/tmdb/Network;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    return-void
.end method
