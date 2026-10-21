.class public final Landroidx/mediarouter/app/d0;
.super Lm1/B0;
.source "SourceFile"


# instance fields
.field public final synthetic A:Landroidx/mediarouter/app/j0;

.field public final u:Landroid/view/View;

.field public final v:Landroid/widget/ImageView;

.field public final w:Landroid/widget/ProgressBar;

.field public final x:Landroid/widget/TextView;

.field public final y:F

.field public z:Lf1/U;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/j0;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/d0;->A:Landroidx/mediarouter/app/j0;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lm1/B0;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/mediarouter/app/d0;->u:Landroid/view/View;

    .line 7
    .line 8
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_group_icon:I

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/mediarouter/app/d0;->v:Landroid/widget/ImageView;

    .line 17
    .line 18
    sget v0, Landroidx/mediarouter/R$id;->mr_cast_group_progress_bar:I

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/ProgressBar;

    .line 25
    .line 26
    iput-object v0, p0, Landroidx/mediarouter/app/d0;->w:Landroid/widget/ProgressBar;

    .line 27
    .line 28
    sget v1, Landroidx/mediarouter/R$id;->mr_cast_group_name:I

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object p2, p0, Landroidx/mediarouter/app/d0;->x:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/mediarouter/app/j0;->m:Landroidx/mediarouter/app/m0;

    .line 39
    .line 40
    iget-object p2, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p2}, Landroidx/mediarouter/app/o0;->c(Landroid/content/Context;)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iput p2, p0, Landroidx/mediarouter/app/d0;->y:F

    .line 47
    .line 48
    iget-object p1, p1, Landroidx/mediarouter/app/m0;->w:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {p1, v0}, Landroidx/mediarouter/app/o0;->i(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
