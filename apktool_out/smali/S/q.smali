.class public final LS/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/o;


# instance fields
.field public final synthetic a:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS/q;->a:Landroidx/core/widget/NestedScrollView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getScaledScrollFactor()F
    .locals 1

    .line 1
    iget-object v0, p0, LS/q;->a:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    neg-float v0, v0

    .line 8
    return v0
.end method

.method public startDifferentialMotionFling(F)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0}, LS/q;->stopDifferentialMotionFling()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LS/q;->a:Landroidx/core/widget/NestedScrollView;

    .line 12
    .line 13
    float-to-int p1, p1

    .line 14
    invoke-virtual {v0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public stopDifferentialMotionFling()V
    .locals 1

    .line 1
    iget-object v0, p0, LS/q;->a:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->j:Landroid/widget/OverScroller;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
