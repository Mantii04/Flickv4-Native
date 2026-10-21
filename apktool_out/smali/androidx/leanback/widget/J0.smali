.class public final Landroidx/leanback/widget/J0;
.super Landroidx/leanback/widget/A0;
.source "SourceFile"


# instance fields
.field public b:F

.field public final c:F

.field public final d:Landroidx/leanback/widget/RowHeaderView;

.field public final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/A0;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroidx/leanback/R$id;->row_header:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/leanback/widget/RowHeaderView;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/leanback/widget/J0;->d:Landroidx/leanback/widget/RowHeaderView;

    .line 13
    .line 14
    sget v1, Landroidx/leanback/R$id;->row_header_description:I

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/leanback/widget/J0;->e:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/A0;->a:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget v0, Landroidx/leanback/R$fraction;->lb_browse_header_unselect_alpha:I

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Landroidx/leanback/widget/J0;->c:F

    .line 43
    .line 44
    return-void
.end method
