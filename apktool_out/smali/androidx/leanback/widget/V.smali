.class public abstract Landroidx/leanback/widget/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/leanback/widget/V;->a:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/leanback/widget/V;->b:I

    .line 9
    .line 10
    const/high16 v1, 0x42480000    # 50.0f

    .line 11
    .line 12
    iput v1, p0, Landroidx/leanback/widget/V;->c:F

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/leanback/widget/V;->d:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getItemAlignmentOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/V;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final getItemAlignmentOffsetPercent()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/V;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public final getItemAlignmentViewId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/V;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public isAlignedToTextViewBaseLine()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setItemAlignmentOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/V;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public final setItemAlignmentOffsetPercent(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x42c80000    # 100.0f

    .line 7
    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    .line 14
    cmpl-float v0, p1, v0

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :cond_1
    iput p1, p0, Landroidx/leanback/widget/V;->c:F

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final setItemAlignmentOffsetWithPadding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/V;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setItemAlignmentViewId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/V;->a:I

    .line 2
    .line 3
    return-void
.end method
