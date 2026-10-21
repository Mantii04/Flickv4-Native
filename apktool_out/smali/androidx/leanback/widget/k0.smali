.class public final Landroidx/leanback/widget/k0;
.super Landroidx/leanback/widget/B0;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/B0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/leanback/widget/k0;->b:Z

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/k0;->setItemPosition(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public isSmoothScroll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/k0;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public run(Landroidx/leanback/widget/A0;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/leanback/widget/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroidx/leanback/widget/l0;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/leanback/widget/l0;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroidx/leanback/widget/k0;->isSmoothScroll()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Landroidx/leanback/widget/k0;->a:I

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroidx/leanback/widget/t;->setSelectedPositionSmooth(ILandroidx/leanback/widget/A1;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/k0;->a:I

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroidx/leanback/widget/t;->setSelectedPosition(ILandroidx/leanback/widget/A1;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/k0;->a:I

    .line 2
    .line 3
    return-void
.end method
