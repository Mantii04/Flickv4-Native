.class public final Landroidx/leanback/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p1, v2, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq p1, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eq p1, v2, :cond_0

    .line 18
    .line 19
    move v2, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget v2, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_xsmall:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget v2, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_large:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    sget v2, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_medium:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    sget v2, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_small:I

    .line 31
    .line 32
    :goto_0
    if-lez v2, :cond_4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_4
    move v0, v1

    .line 36
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 37
    .line 38
    iput p1, p0, Landroidx/leanback/widget/z;->a:I

    .line 39
    .line 40
    iput-boolean p2, p0, Landroidx/leanback/widget/z;->b:Z

    .line 41
    .line 42
    return-void

    .line 43
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string p2, "Unhandled zoom index"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroidx/leanback/widget/A;
    .locals 5

    .line 1
    sget v0, Landroidx/leanback/R$id;->lb_focus_animator:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/leanback/widget/A;

    .line 8
    .line 9
    if-nez v0, :cond_5

    .line 10
    .line 11
    new-instance v0, Landroidx/leanback/widget/A;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p0, Landroidx/leanback/widget/z;->a:I

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v3, 0x1

    .line 25
    if-eq v2, v3, :cond_4

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    if-eq v2, v4, :cond_3

    .line 29
    .line 30
    const/4 v4, 0x3

    .line 31
    if-eq v2, v4, :cond_2

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    if-eq v2, v4, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget v2, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_xsmall:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    sget v2, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_large:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    sget v2, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_medium:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    sget v2, Landroidx/leanback/R$fraction;->lb_focus_zoom_factor_small:I

    .line 48
    .line 49
    :goto_0
    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :goto_1
    iget-boolean v2, p0, Landroidx/leanback/widget/z;->b:Z

    .line 54
    .line 55
    invoke-direct {v0, p1, v1, v2}, Landroidx/leanback/widget/A;-><init>(Landroid/view/View;FZ)V

    .line 56
    .line 57
    .line 58
    sget v1, Landroidx/leanback/R$id;->lb_focus_animator:I

    .line 59
    .line 60
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    return-object v0
.end method

.method public onInitializeView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/z;->a(Landroid/view/View;)Landroidx/leanback/widget/A;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroidx/leanback/widget/A;->a(ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onItemFocused(Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/z;->a(Landroid/view/View;)Landroidx/leanback/widget/A;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroidx/leanback/widget/A;->a(ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
