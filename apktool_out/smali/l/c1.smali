.class public abstract Ll/c1;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public b:Z

.field public e:I

.field public f:I

.field public j:I

.field public m:I

.field public n:I

.field public p:F

.field public q:Z

.field public r:[I

.field public s:[I

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:I

.field public v:I

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Ll/c1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ll/c1;->b:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Ll/c1;->e:I

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Ll/c1;->f:I

    const v3, 0x800033

    .line 6
    iput v3, p0, Ll/c1;->m:I

    .line 7
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Ll/e2;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Ll/e2;

    move-result-object v3

    .line 8
    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    .line 9
    invoke-virtual {v3}, Ll/e2;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 10
    invoke-static/range {v4 .. v10}, LM/p0;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 11
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, p1, v1}, Ll/e2;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Ll/c1;->setOrientation(I)V

    .line 13
    :cond_0
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, p1, v1}, Ll/e2;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Ll/c1;->setGravity(I)V

    .line 15
    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, p1, v0}, Ll/e2;->getBoolean(IZ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 16
    invoke-virtual {p0, p1}, Ll/c1;->setBaselineAligned(Z)V

    .line 17
    :cond_2
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v3, p1, p2}, Ll/e2;->getFloat(IF)F

    move-result p1

    iput p1, v4, Ll/c1;->p:F

    .line 18
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 19
    invoke-virtual {v3, p1, v1}, Ll/e2;->getInt(II)I

    move-result p1

    iput p1, v4, Ll/c1;->e:I

    .line 20
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, p1, v2}, Ll/e2;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v4, Ll/c1;->q:Z

    .line 21
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, p1}, Ll/e2;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll/c1;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, p1, v2}, Ll/e2;->getInt(II)I

    move-result p1

    iput p1, v4, Ll/c1;->w:I

    .line 23
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, p1, v2}, Ll/e2;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v4, Ll/c1;->x:I

    .line 24
    invoke-virtual {v3}, Ll/e2;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ll/c1;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Ll/c1;->x:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    iget v3, p0, Ll/c1;->x:I

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iget v3, p0, Ll/c1;->v:I

    .line 23
    .line 24
    add-int/2addr v3, p2

    .line 25
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Ll/c1;->t:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Ll/c1;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Ll/c1;->x:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    iget v2, p0, Ll/c1;->u:I

    .line 11
    .line 12
    add-int/2addr v2, p2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-int/2addr v3, v4

    .line 22
    iget v4, p0, Ll/c1;->x:I

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Ll/c1;->t:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ll/b1;

    .line 2
    .line 3
    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll/c1;->generateDefaultLayoutParams()Ll/b1;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Ll/b1;
    .locals 3

    .line 2
    iget v0, p0, Ll/c1;->j:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ll/b1;

    invoke-direct {v0, v1, v1}, Ll/b1;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    new-instance v0, Ll/b1;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Ll/b1;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll/c1;->generateLayoutParams(Landroid/util/AttributeSet;)Ll/b1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ll/c1;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ll/b1;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Ll/b1;
    .locals 2

    .line 3
    new-instance v0, Ll/b1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ll/b1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ll/b1;
    .locals 1

    .line 4
    new-instance v0, Ll/b1;

    invoke-direct {v0, p1}, Ll/b1;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 6

    .line 1
    iget v0, p0, Ll/c1;->e:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Ll/c1;->e:I

    .line 15
    .line 16
    if-le v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x1

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    iget v0, p0, Ll/c1;->e:I

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_2
    iget v2, p0, Ll/c1;->f:I

    .line 43
    .line 44
    iget v3, p0, Ll/c1;->j:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-ne v3, v4, :cond_5

    .line 48
    .line 49
    iget v3, p0, Ll/c1;->m:I

    .line 50
    .line 51
    and-int/lit8 v3, v3, 0x70

    .line 52
    .line 53
    const/16 v4, 0x30

    .line 54
    .line 55
    if-eq v3, v4, :cond_5

    .line 56
    .line 57
    const/16 v4, 0x10

    .line 58
    .line 59
    if-eq v3, v4, :cond_4

    .line 60
    .line 61
    const/16 v4, 0x50

    .line 62
    .line 63
    if-eq v3, v4, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    sub-int/2addr v2, v3

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    sub-int/2addr v2, v3

    .line 80
    iget v3, p0, Ll/c1;->n:I

    .line 81
    .line 82
    sub-int/2addr v2, v3

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    sub-int/2addr v3, v4

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    sub-int/2addr v3, v4

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    sub-int/2addr v3, v4

    .line 103
    iget v4, p0, Ll/c1;->n:I

    .line 104
    .line 105
    const/4 v5, 0x2

    .line 106
    invoke-static {v3, v4, v5, v2}, Lb/c;->c(IIII)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ll/b1;

    .line 115
    .line 116
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 117
    .line 118
    add-int/2addr v2, v0

    .line 119
    add-int/2addr v2, v1

    .line 120
    return v2

    .line 121
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 122
    .line 123
    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 1
    iget v0, p0, Ll/c1;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/c1;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Ll/c1;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ll/c1;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Ll/c1;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Ll/c1;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 1
    iget v0, p0, Ll/c1;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 1
    iget v0, p0, Ll/c1;->p:F

    .line 2
    .line 3
    return v0
.end method

.method public hasDividerBeforeChildAt(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget p1, p0, Ll/c1;->w:I

    .line 6
    .line 7
    and-int/2addr p1, v1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    return v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne p1, v2, :cond_3

    .line 17
    .line 18
    iget p1, p0, Ll/c1;->w:I

    .line 19
    .line 20
    and-int/lit8 p1, p1, 0x4

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    return v0

    .line 26
    :cond_3
    iget v2, p0, Ll/c1;->w:I

    .line 27
    .line 28
    and-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    if-eqz v2, :cond_5

    .line 31
    .line 32
    sub-int/2addr p1, v1

    .line 33
    :goto_0
    if-ltz p1, :cond_5

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/16 v3, 0x8

    .line 44
    .line 45
    if-eq v2, v3, :cond_4

    .line 46
    .line 47
    return v1

    .line 48
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ll/c1;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Ll/c1;->j:I

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v0, v3, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Ll/c1;->getVirtualChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    if-ge v2, v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eq v5, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ll/c1;->hasDividerBeforeChildAt(I)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ll/b1;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 50
    .line 51
    sub-int/2addr v4, v5

    .line 52
    iget v5, p0, Ll/c1;->v:I

    .line 53
    .line 54
    sub-int/2addr v4, v5

    .line 55
    invoke-virtual {p0, p1, v4}, Ll/c1;->a(Landroid/graphics/Canvas;I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p0, v0}, Ll/c1;->hasDividerBeforeChildAt(I)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_b

    .line 66
    .line 67
    sub-int/2addr v0, v3

    .line 68
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    sub-int/2addr v0, v1

    .line 83
    iget v1, p0, Ll/c1;->v:I

    .line 84
    .line 85
    sub-int/2addr v0, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ll/b1;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 98
    .line 99
    add-int/2addr v0, v1

    .line 100
    :goto_1
    invoke-virtual {p0, p1, v0}, Ll/c1;->a(Landroid/graphics/Canvas;I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    invoke-virtual {p0}, Ll/c1;->getVirtualChildCount()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {p0}, Ll/z2;->isLayoutRtl(Landroid/view/View;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    :goto_2
    if-ge v2, v0, :cond_7

    .line 113
    .line 114
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    if-eqz v5, :cond_6

    .line 119
    .line 120
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-eq v6, v1, :cond_6

    .line 125
    .line 126
    invoke-virtual {p0, v2}, Ll/c1;->hasDividerBeforeChildAt(I)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_6

    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Ll/b1;

    .line 137
    .line 138
    if-eqz v4, :cond_5

    .line 139
    .line 140
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 145
    .line 146
    add-int/2addr v5, v6

    .line 147
    goto :goto_3

    .line 148
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 153
    .line 154
    sub-int/2addr v5, v6

    .line 155
    iget v6, p0, Ll/c1;->u:I

    .line 156
    .line 157
    sub-int/2addr v5, v6

    .line 158
    :goto_3
    invoke-virtual {p0, p1, v5}, Ll/c1;->b(Landroid/graphics/Canvas;I)V

    .line 159
    .line 160
    .line 161
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    invoke-virtual {p0, v0}, Ll/c1;->hasDividerBeforeChildAt(I)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_b

    .line 169
    .line 170
    sub-int/2addr v0, v3

    .line 171
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-nez v0, :cond_9

    .line 176
    .line 177
    if-eqz v4, :cond_8

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    goto :goto_5

    .line 184
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    sub-int/2addr v0, v1

    .line 193
    iget v1, p0, Ll/c1;->u:I

    .line 194
    .line 195
    :goto_4
    sub-int/2addr v0, v1

    .line 196
    goto :goto_5

    .line 197
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Ll/b1;

    .line 202
    .line 203
    if-eqz v4, :cond_a

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 210
    .line 211
    sub-int/2addr v0, v1

    .line 212
    iget v1, p0, Ll/c1;->u:I

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 220
    .line 221
    add-int/2addr v0, v1

    .line 222
    :goto_5
    invoke-virtual {p0, p1, v0}, Ll/c1;->b(Landroid/graphics/Canvas;I)V

    .line 223
    .line 224
    .line 225
    :cond_b
    :goto_6
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ll/c1;->j:I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/16 v5, 0x50

    .line 9
    .line 10
    const/4 v6, 0x2

    .line 11
    const/16 v7, 0x10

    .line 12
    .line 13
    const v8, 0x800007

    .line 14
    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    if-ne v1, v9, :cond_8

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int v10, p4, p2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    .line 27
    .line 28
    move-result v11

    .line 29
    sub-int v11, v10, v11

    .line 30
    .line 31
    sub-int/2addr v10, v1

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    sub-int/2addr v10, v12

    .line 37
    invoke-virtual {v0}, Ll/c1;->getVirtualChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    iget v13, v0, Ll/c1;->m:I

    .line 42
    .line 43
    and-int/lit8 v14, v13, 0x70

    .line 44
    .line 45
    and-int/2addr v8, v13

    .line 46
    if-eq v14, v7, :cond_1

    .line 47
    .line 48
    if-eq v14, v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    add-int v5, v5, p5

    .line 60
    .line 61
    sub-int v5, v5, p3

    .line 62
    .line 63
    iget v7, v0, Ll/c1;->n:I

    .line 64
    .line 65
    sub-int/2addr v5, v7

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    sub-int v7, p5, p3

    .line 72
    .line 73
    iget v13, v0, Ll/c1;->n:I

    .line 74
    .line 75
    invoke-static {v7, v13, v6, v5}, Lb/c;->c(IIII)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    :goto_0
    const/4 v4, 0x0

    .line 80
    :goto_1
    if-ge v4, v12, :cond_16

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-nez v7, :cond_2

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    if-eq v13, v3, :cond_7

    .line 94
    .line 95
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object v15

    .line 107
    check-cast v15, Ll/b1;

    .line 108
    .line 109
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 110
    .line 111
    if-gez v3, :cond_3

    .line 112
    .line 113
    move v3, v8

    .line 114
    :cond_3
    invoke-static {v0}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-static {v3, v6}, LM/s;->getAbsoluteGravity(II)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    and-int/lit8 v3, v3, 0x7

    .line 123
    .line 124
    if-eq v3, v9, :cond_5

    .line 125
    .line 126
    if-eq v3, v2, :cond_4

    .line 127
    .line 128
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 129
    .line 130
    add-int/2addr v3, v1

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    sub-int v3, v11, v13

    .line 133
    .line 134
    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 135
    .line 136
    sub-int/2addr v3, v6

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const/4 v3, 0x2

    .line 139
    invoke-static {v10, v13, v3, v1}, Lb/c;->c(IIII)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 144
    .line 145
    add-int/2addr v6, v3

    .line 146
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 147
    .line 148
    sub-int v3, v6, v3

    .line 149
    .line 150
    :goto_2
    invoke-virtual {v0, v4}, Ll/c1;->hasDividerBeforeChildAt(I)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_6

    .line 155
    .line 156
    iget v6, v0, Ll/c1;->v:I

    .line 157
    .line 158
    add-int/2addr v5, v6

    .line 159
    :cond_6
    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 160
    .line 161
    add-int/2addr v5, v6

    .line 162
    add-int/2addr v13, v3

    .line 163
    add-int v6, v5, v14

    .line 164
    .line 165
    invoke-virtual {v7, v3, v5, v13, v6}, Landroid/view/View;->layout(IIII)V

    .line 166
    .line 167
    .line 168
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 169
    .line 170
    add-int/2addr v14, v3

    .line 171
    add-int/2addr v14, v5

    .line 172
    move v5, v14

    .line 173
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 174
    .line 175
    const/16 v3, 0x8

    .line 176
    .line 177
    const/4 v6, 0x2

    .line 178
    goto :goto_1

    .line 179
    :cond_8
    invoke-static {v0}, Ll/z2;->isLayoutRtl(Landroid/view/View;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    sub-int v6, p5, p3

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    sub-int v10, v6, v10

    .line 194
    .line 195
    sub-int/2addr v6, v3

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    sub-int/2addr v6, v11

    .line 201
    invoke-virtual {v0}, Ll/c1;->getVirtualChildCount()I

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    iget v12, v0, Ll/c1;->m:I

    .line 206
    .line 207
    and-int/2addr v8, v12

    .line 208
    and-int/lit8 v12, v12, 0x70

    .line 209
    .line 210
    iget-boolean v13, v0, Ll/c1;->b:Z

    .line 211
    .line 212
    iget-object v14, v0, Ll/c1;->r:[I

    .line 213
    .line 214
    iget-object v15, v0, Ll/c1;->s:[I

    .line 215
    .line 216
    invoke-static {v0}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    invoke-static {v8, v4}, LM/s;->getAbsoluteGravity(II)I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eq v4, v9, :cond_a

    .line 225
    .line 226
    if-eq v4, v2, :cond_9

    .line 227
    .line 228
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    :goto_4
    move/from16 v18, v9

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    add-int v2, v2, p4

    .line 240
    .line 241
    sub-int v2, v2, p2

    .line 242
    .line 243
    iget v4, v0, Ll/c1;->n:I

    .line 244
    .line 245
    sub-int/2addr v2, v4

    .line 246
    goto :goto_4

    .line 247
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    sub-int v4, p4, p2

    .line 252
    .line 253
    iget v8, v0, Ll/c1;->n:I

    .line 254
    .line 255
    move/from16 v18, v9

    .line 256
    .line 257
    const/4 v9, 0x2

    .line 258
    invoke-static {v4, v8, v9, v2}, Lb/c;->c(IIII)I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    :goto_5
    if-eqz v1, :cond_b

    .line 263
    .line 264
    add-int/lit8 v1, v11, -0x1

    .line 265
    .line 266
    const/4 v8, -0x1

    .line 267
    goto :goto_6

    .line 268
    :cond_b
    move/from16 v8, v18

    .line 269
    .line 270
    const/4 v1, 0x0

    .line 271
    :goto_6
    const/4 v9, 0x0

    .line 272
    :goto_7
    if-ge v9, v11, :cond_16

    .line 273
    .line 274
    mul-int v17, v8, v9

    .line 275
    .line 276
    add-int v5, v17, v1

    .line 277
    .line 278
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    if-nez v7, :cond_c

    .line 283
    .line 284
    move/from16 p3, v1

    .line 285
    .line 286
    :goto_8
    move/from16 v19, v8

    .line 287
    .line 288
    move/from16 v20, v9

    .line 289
    .line 290
    const/4 v9, -0x1

    .line 291
    goto/16 :goto_c

    .line 292
    .line 293
    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    move/from16 p3, v1

    .line 298
    .line 299
    const/16 v1, 0x8

    .line 300
    .line 301
    if-eq v4, v1, :cond_15

    .line 302
    .line 303
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 312
    .line 313
    .line 314
    move-result-object v19

    .line 315
    move/from16 p4, v2

    .line 316
    .line 317
    move-object/from16 v2, v19

    .line 318
    .line 319
    check-cast v2, Ll/b1;

    .line 320
    .line 321
    move/from16 p5, v4

    .line 322
    .line 323
    if-eqz v13, :cond_d

    .line 324
    .line 325
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 326
    .line 327
    move/from16 v19, v8

    .line 328
    .line 329
    const/4 v8, -0x1

    .line 330
    if-eq v4, v8, :cond_e

    .line 331
    .line 332
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    goto :goto_9

    .line 337
    :cond_d
    move/from16 v19, v8

    .line 338
    .line 339
    :cond_e
    const/4 v8, -0x1

    .line 340
    :goto_9
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 341
    .line 342
    if-gez v4, :cond_f

    .line 343
    .line 344
    move v4, v12

    .line 345
    :cond_f
    and-int/lit8 v4, v4, 0x70

    .line 346
    .line 347
    move/from16 v20, v9

    .line 348
    .line 349
    const/16 v9, 0x10

    .line 350
    .line 351
    if-eq v4, v9, :cond_12

    .line 352
    .line 353
    const/16 v9, 0x30

    .line 354
    .line 355
    if-eq v4, v9, :cond_11

    .line 356
    .line 357
    const/16 v9, 0x50

    .line 358
    .line 359
    if-eq v4, v9, :cond_10

    .line 360
    .line 361
    move v4, v3

    .line 362
    const/4 v9, -0x1

    .line 363
    goto :goto_a

    .line 364
    :cond_10
    sub-int v4, v10, v1

    .line 365
    .line 366
    iget v9, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 367
    .line 368
    sub-int/2addr v4, v9

    .line 369
    const/4 v9, -0x1

    .line 370
    if-eq v8, v9, :cond_13

    .line 371
    .line 372
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 373
    .line 374
    .line 375
    move-result v21

    .line 376
    sub-int v21, v21, v8

    .line 377
    .line 378
    const/16 v16, 0x2

    .line 379
    .line 380
    aget v8, v15, v16

    .line 381
    .line 382
    sub-int v8, v8, v21

    .line 383
    .line 384
    sub-int/2addr v4, v8

    .line 385
    goto :goto_a

    .line 386
    :cond_11
    const/4 v9, -0x1

    .line 387
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 388
    .line 389
    add-int/2addr v4, v3

    .line 390
    if-eq v8, v9, :cond_13

    .line 391
    .line 392
    aget v21, v14, v18

    .line 393
    .line 394
    sub-int v21, v21, v8

    .line 395
    .line 396
    add-int v4, v21, v4

    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_12
    const/4 v4, 0x2

    .line 400
    const/4 v9, -0x1

    .line 401
    invoke-static {v6, v1, v4, v3}, Lb/c;->c(IIII)I

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 406
    .line 407
    add-int/2addr v8, v4

    .line 408
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 409
    .line 410
    sub-int v4, v8, v4

    .line 411
    .line 412
    :cond_13
    :goto_a
    invoke-virtual {v0, v5}, Ll/c1;->hasDividerBeforeChildAt(I)Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-eqz v5, :cond_14

    .line 417
    .line 418
    iget v5, v0, Ll/c1;->u:I

    .line 419
    .line 420
    add-int v5, p4, v5

    .line 421
    .line 422
    goto :goto_b

    .line 423
    :cond_14
    move/from16 v5, p4

    .line 424
    .line 425
    :goto_b
    iget v8, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 426
    .line 427
    add-int/2addr v5, v8

    .line 428
    add-int v8, v5, p5

    .line 429
    .line 430
    add-int/2addr v1, v4

    .line 431
    invoke-virtual {v7, v5, v4, v8, v1}, Landroid/view/View;->layout(IIII)V

    .line 432
    .line 433
    .line 434
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 435
    .line 436
    add-int v4, p5, v1

    .line 437
    .line 438
    add-int/2addr v4, v5

    .line 439
    move v2, v4

    .line 440
    goto :goto_c

    .line 441
    :cond_15
    move/from16 p4, v2

    .line 442
    .line 443
    goto/16 :goto_8

    .line 444
    .line 445
    :goto_c
    add-int/lit8 v1, v20, 0x1

    .line 446
    .line 447
    move v9, v1

    .line 448
    move/from16 v8, v19

    .line 449
    .line 450
    const/16 v5, 0x50

    .line 451
    .line 452
    const/16 v7, 0x10

    .line 453
    .line 454
    move/from16 v1, p3

    .line 455
    .line 456
    goto/16 :goto_7

    .line 457
    .line 458
    :cond_16
    return-void
.end method

.method public onMeasure(II)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ll/c1;->j:I

    .line 4
    .line 5
    const/4 v7, -0x2

    .line 6
    const/high16 v8, 0x40000000    # 2.0f

    .line 7
    .line 8
    const/16 v9, 0x8

    .line 9
    .line 10
    const/4 v13, 0x0

    .line 11
    const/4 v14, 0x1

    .line 12
    if-ne v1, v14, :cond_29

    .line 13
    .line 14
    iput v13, v0, Ll/c1;->n:I

    .line 15
    .line 16
    invoke-virtual {v0}, Ll/c1;->getVirtualChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v15

    .line 20
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget v3, v0, Ll/c1;->e:I

    .line 29
    .line 30
    iget-boolean v4, v0, Ll/c1;->q:Z

    .line 31
    .line 32
    move v5, v13

    .line 33
    move v6, v5

    .line 34
    move v12, v6

    .line 35
    move/from16 v19, v12

    .line 36
    .line 37
    move/from16 v22, v19

    .line 38
    .line 39
    move/from16 v23, v22

    .line 40
    .line 41
    move/from16 v20, v14

    .line 42
    .line 43
    move/from16 v24, v20

    .line 44
    .line 45
    const/16 v16, 0x0

    .line 46
    .line 47
    const v17, 0xffffff

    .line 48
    .line 49
    .line 50
    const/16 v18, 0x0

    .line 51
    .line 52
    move/from16 v14, v23

    .line 53
    .line 54
    :goto_0
    if-ge v5, v15, :cond_11

    .line 55
    .line 56
    move/from16 v25, v1

    .line 57
    .line 58
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    .line 64
    iget v1, v0, Ll/c1;->n:I

    .line 65
    .line 66
    iput v1, v0, Ll/c1;->n:I

    .line 67
    .line 68
    :goto_1
    move/from16 v29, v2

    .line 69
    .line 70
    move v7, v3

    .line 71
    move/from16 v28, v4

    .line 72
    .line 73
    move v11, v5

    .line 74
    move/from16 v10, v25

    .line 75
    .line 76
    move/from16 v2, p1

    .line 77
    .line 78
    move/from16 v4, p2

    .line 79
    .line 80
    goto/16 :goto_c

    .line 81
    .line 82
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-ne v10, v9, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v0, v5}, Ll/c1;->hasDividerBeforeChildAt(I)Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_2

    .line 94
    .line 95
    iget v10, v0, Ll/c1;->n:I

    .line 96
    .line 97
    iget v9, v0, Ll/c1;->v:I

    .line 98
    .line 99
    add-int/2addr v10, v9

    .line 100
    iput v10, v0, Ll/c1;->n:I

    .line 101
    .line 102
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Ll/b1;

    .line 107
    .line 108
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 109
    .line 110
    add-float v16, v16, v10

    .line 111
    .line 112
    if-ne v2, v8, :cond_3

    .line 113
    .line 114
    iget v8, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 115
    .line 116
    if-nez v8, :cond_3

    .line 117
    .line 118
    cmpl-float v8, v10, v18

    .line 119
    .line 120
    if-lez v8, :cond_3

    .line 121
    .line 122
    iget v8, v0, Ll/c1;->n:I

    .line 123
    .line 124
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 125
    .line 126
    add-int/2addr v10, v8

    .line 127
    iget v11, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 128
    .line 129
    add-int/2addr v10, v11

    .line 130
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    iput v8, v0, Ll/c1;->n:I

    .line 135
    .line 136
    move-object/from16 v30, v1

    .line 137
    .line 138
    move/from16 v29, v2

    .line 139
    .line 140
    move v7, v3

    .line 141
    move/from16 v28, v4

    .line 142
    .line 143
    move v11, v5

    .line 144
    move/from16 v19, v20

    .line 145
    .line 146
    move/from16 v10, v25

    .line 147
    .line 148
    move/from16 v2, p1

    .line 149
    .line 150
    move/from16 v4, p2

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_3
    iget v8, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 154
    .line 155
    if-nez v8, :cond_4

    .line 156
    .line 157
    cmpl-float v8, v10, v18

    .line 158
    .line 159
    if-lez v8, :cond_4

    .line 160
    .line 161
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 162
    .line 163
    const/4 v8, 0x0

    .line 164
    goto :goto_2

    .line 165
    :cond_4
    const/high16 v8, -0x80000000

    .line 166
    .line 167
    :goto_2
    cmpl-float v10, v16, v18

    .line 168
    .line 169
    if-nez v10, :cond_5

    .line 170
    .line 171
    iget v10, v0, Ll/c1;->n:I

    .line 172
    .line 173
    move v11, v10

    .line 174
    move v10, v5

    .line 175
    move v5, v11

    .line 176
    :goto_3
    move v11, v3

    .line 177
    goto :goto_4

    .line 178
    :cond_5
    move v10, v5

    .line 179
    const/4 v5, 0x0

    .line 180
    goto :goto_3

    .line 181
    :goto_4
    const/4 v3, 0x0

    .line 182
    move/from16 v29, v2

    .line 183
    .line 184
    move/from16 v28, v4

    .line 185
    .line 186
    move v7, v11

    .line 187
    move/from16 v2, p1

    .line 188
    .line 189
    move/from16 v4, p2

    .line 190
    .line 191
    move v11, v10

    .line 192
    move/from16 v10, v25

    .line 193
    .line 194
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 195
    .line 196
    .line 197
    const/high16 v3, -0x80000000

    .line 198
    .line 199
    if-eq v8, v3, :cond_6

    .line 200
    .line 201
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 202
    .line 203
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    iget v5, v0, Ll/c1;->n:I

    .line 208
    .line 209
    add-int v8, v5, v3

    .line 210
    .line 211
    move-object/from16 v30, v1

    .line 212
    .line 213
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 214
    .line 215
    add-int/2addr v8, v1

    .line 216
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 217
    .line 218
    add-int/2addr v8, v1

    .line 219
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    iput v1, v0, Ll/c1;->n:I

    .line 224
    .line 225
    if-eqz v28, :cond_7

    .line 226
    .line 227
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    :cond_7
    :goto_5
    if-ltz v7, :cond_8

    .line 232
    .line 233
    add-int/lit8 v5, v11, 0x1

    .line 234
    .line 235
    if-ne v7, v5, :cond_8

    .line 236
    .line 237
    iget v1, v0, Ll/c1;->n:I

    .line 238
    .line 239
    iput v1, v0, Ll/c1;->f:I

    .line 240
    .line 241
    :cond_8
    if-ge v11, v7, :cond_9

    .line 242
    .line 243
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 244
    .line 245
    cmpl-float v1, v1, v18

    .line 246
    .line 247
    if-gtz v1, :cond_a

    .line 248
    .line 249
    :cond_9
    const/high16 v1, 0x40000000    # 2.0f

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    .line 253
    .line 254
    const-string v2, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .line 255
    .line 256
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v1

    .line 260
    :goto_6
    if-eq v10, v1, :cond_b

    .line 261
    .line 262
    iget v1, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 263
    .line 264
    const/4 v3, -0x1

    .line 265
    if-ne v1, v3, :cond_b

    .line 266
    .line 267
    move/from16 v1, v20

    .line 268
    .line 269
    move/from16 v23, v1

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_b
    const/4 v1, 0x0

    .line 273
    :goto_7
    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 274
    .line 275
    iget v5, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 276
    .line 277
    add-int/2addr v3, v5

    .line 278
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    add-int/2addr v5, v3

    .line 283
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredState()I

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    move/from16 v30, v1

    .line 292
    .line 293
    move/from16 v1, v22

    .line 294
    .line 295
    invoke-static {v1, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v24, :cond_c

    .line 300
    .line 301
    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 302
    .line 303
    move/from16 v22, v1

    .line 304
    .line 305
    const/4 v1, -0x1

    .line 306
    if-ne v13, v1, :cond_d

    .line 307
    .line 308
    move/from16 v1, v20

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_c
    move/from16 v22, v1

    .line 312
    .line 313
    :cond_d
    const/4 v1, 0x0

    .line 314
    :goto_8
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 315
    .line 316
    cmpl-float v9, v9, v18

    .line 317
    .line 318
    if-lez v9, :cond_f

    .line 319
    .line 320
    if-eqz v30, :cond_e

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_e
    move v3, v5

    .line 324
    :goto_9
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    .line 325
    .line 326
    .line 327
    move-result v12

    .line 328
    goto :goto_b

    .line 329
    :cond_f
    if-eqz v30, :cond_10

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_10
    move v3, v5

    .line 333
    :goto_a
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    :goto_b
    move/from16 v24, v1

    .line 338
    .line 339
    move v13, v8

    .line 340
    :goto_c
    add-int/lit8 v5, v11, 0x1

    .line 341
    .line 342
    move v3, v7

    .line 343
    move v1, v10

    .line 344
    move/from16 v4, v28

    .line 345
    .line 346
    move/from16 v2, v29

    .line 347
    .line 348
    const/4 v7, -0x2

    .line 349
    const/high16 v8, 0x40000000    # 2.0f

    .line 350
    .line 351
    const/16 v9, 0x8

    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_11
    move v10, v1

    .line 356
    move/from16 v29, v2

    .line 357
    .line 358
    move/from16 v28, v4

    .line 359
    .line 360
    move/from16 v1, v22

    .line 361
    .line 362
    move/from16 v2, p1

    .line 363
    .line 364
    move/from16 v4, p2

    .line 365
    .line 366
    iget v3, v0, Ll/c1;->n:I

    .line 367
    .line 368
    if-lez v3, :cond_12

    .line 369
    .line 370
    invoke-virtual {v0, v15}, Ll/c1;->hasDividerBeforeChildAt(I)Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    if-eqz v3, :cond_12

    .line 375
    .line 376
    iget v3, v0, Ll/c1;->n:I

    .line 377
    .line 378
    iget v5, v0, Ll/c1;->v:I

    .line 379
    .line 380
    add-int/2addr v3, v5

    .line 381
    iput v3, v0, Ll/c1;->n:I

    .line 382
    .line 383
    :cond_12
    move/from16 v5, v29

    .line 384
    .line 385
    if-eqz v28, :cond_16

    .line 386
    .line 387
    const/high16 v3, -0x80000000

    .line 388
    .line 389
    if-eq v5, v3, :cond_13

    .line 390
    .line 391
    if-nez v5, :cond_16

    .line 392
    .line 393
    :cond_13
    const/4 v3, 0x0

    .line 394
    iput v3, v0, Ll/c1;->n:I

    .line 395
    .line 396
    const/4 v3, 0x0

    .line 397
    :goto_d
    if-ge v3, v15, :cond_16

    .line 398
    .line 399
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    if-nez v7, :cond_14

    .line 404
    .line 405
    iget v7, v0, Ll/c1;->n:I

    .line 406
    .line 407
    iput v7, v0, Ll/c1;->n:I

    .line 408
    .line 409
    goto :goto_e

    .line 410
    :cond_14
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    const/16 v9, 0x8

    .line 415
    .line 416
    if-ne v8, v9, :cond_15

    .line 417
    .line 418
    goto :goto_e

    .line 419
    :cond_15
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    check-cast v7, Ll/b1;

    .line 424
    .line 425
    iget v8, v0, Ll/c1;->n:I

    .line 426
    .line 427
    add-int v9, v8, v14

    .line 428
    .line 429
    iget v11, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 430
    .line 431
    add-int/2addr v9, v11

    .line 432
    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 433
    .line 434
    add-int/2addr v9, v7

    .line 435
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 436
    .line 437
    .line 438
    move-result v7

    .line 439
    iput v7, v0, Ll/c1;->n:I

    .line 440
    .line 441
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 442
    .line 443
    goto :goto_d

    .line 444
    :cond_16
    iget v3, v0, Ll/c1;->n:I

    .line 445
    .line 446
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 447
    .line 448
    .line 449
    move-result v7

    .line 450
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 451
    .line 452
    .line 453
    move-result v8

    .line 454
    add-int/2addr v8, v7

    .line 455
    add-int/2addr v8, v3

    .line 456
    iput v8, v0, Ll/c1;->n:I

    .line 457
    .line 458
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    const/4 v7, 0x0

    .line 467
    invoke-static {v3, v4, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    and-int v7, v3, v17

    .line 472
    .line 473
    iget v8, v0, Ll/c1;->n:I

    .line 474
    .line 475
    sub-int/2addr v7, v8

    .line 476
    if-nez v19, :cond_1a

    .line 477
    .line 478
    if-eqz v7, :cond_17

    .line 479
    .line 480
    cmpl-float v8, v16, v18

    .line 481
    .line 482
    if-lez v8, :cond_17

    .line 483
    .line 484
    goto :goto_11

    .line 485
    :cond_17
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    if-eqz v28, :cond_26

    .line 490
    .line 491
    const/high16 v7, 0x40000000    # 2.0f

    .line 492
    .line 493
    if-eq v5, v7, :cond_26

    .line 494
    .line 495
    const/4 v5, 0x0

    .line 496
    :goto_f
    if-ge v5, v15, :cond_26

    .line 497
    .line 498
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    if-eqz v7, :cond_19

    .line 503
    .line 504
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 505
    .line 506
    .line 507
    move-result v8

    .line 508
    const/16 v9, 0x8

    .line 509
    .line 510
    if-ne v8, v9, :cond_18

    .line 511
    .line 512
    goto :goto_10

    .line 513
    :cond_18
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    check-cast v8, Ll/b1;

    .line 518
    .line 519
    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 520
    .line 521
    cmpl-float v8, v8, v18

    .line 522
    .line 523
    if-lez v8, :cond_19

    .line 524
    .line 525
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 526
    .line 527
    .line 528
    move-result v8

    .line 529
    const/high16 v9, 0x40000000    # 2.0f

    .line 530
    .line 531
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 532
    .line 533
    .line 534
    move-result v8

    .line 535
    invoke-static {v14, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 536
    .line 537
    .line 538
    move-result v11

    .line 539
    invoke-virtual {v7, v8, v11}, Landroid/view/View;->measure(II)V

    .line 540
    .line 541
    .line 542
    :cond_19
    :goto_10
    add-int/lit8 v5, v5, 0x1

    .line 543
    .line 544
    goto :goto_f

    .line 545
    :cond_1a
    :goto_11
    iget v8, v0, Ll/c1;->p:F

    .line 546
    .line 547
    cmpl-float v9, v8, v18

    .line 548
    .line 549
    if-lez v9, :cond_1b

    .line 550
    .line 551
    move/from16 v16, v8

    .line 552
    .line 553
    :cond_1b
    const/4 v8, 0x0

    .line 554
    iput v8, v0, Ll/c1;->n:I

    .line 555
    .line 556
    move v8, v1

    .line 557
    const/4 v1, 0x0

    .line 558
    :goto_12
    if-ge v1, v15, :cond_25

    .line 559
    .line 560
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 561
    .line 562
    .line 563
    move-result-object v9

    .line 564
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 565
    .line 566
    .line 567
    move-result v11

    .line 568
    const/16 v12, 0x8

    .line 569
    .line 570
    if-ne v11, v12, :cond_1c

    .line 571
    .line 572
    move/from16 v17, v1

    .line 573
    .line 574
    goto/16 :goto_19

    .line 575
    .line 576
    :cond_1c
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 577
    .line 578
    .line 579
    move-result-object v11

    .line 580
    check-cast v11, Ll/b1;

    .line 581
    .line 582
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 583
    .line 584
    cmpl-float v14, v12, v18

    .line 585
    .line 586
    if-lez v14, :cond_21

    .line 587
    .line 588
    int-to-float v14, v7

    .line 589
    mul-float/2addr v14, v12

    .line 590
    div-float v14, v14, v16

    .line 591
    .line 592
    float-to-int v14, v14

    .line 593
    sub-float v16, v16, v12

    .line 594
    .line 595
    sub-int/2addr v7, v14

    .line 596
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 597
    .line 598
    .line 599
    move-result v12

    .line 600
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 601
    .line 602
    .line 603
    move-result v17

    .line 604
    add-int v17, v17, v12

    .line 605
    .line 606
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 607
    .line 608
    add-int v17, v17, v12

    .line 609
    .line 610
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 611
    .line 612
    add-int v12, v17, v12

    .line 613
    .line 614
    move/from16 v17, v1

    .line 615
    .line 616
    iget v1, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 617
    .line 618
    invoke-static {v2, v12, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 623
    .line 624
    if-nez v12, :cond_1f

    .line 625
    .line 626
    const/high16 v12, 0x40000000    # 2.0f

    .line 627
    .line 628
    if-eq v5, v12, :cond_1d

    .line 629
    .line 630
    goto :goto_14

    .line 631
    :cond_1d
    if-lez v14, :cond_1e

    .line 632
    .line 633
    goto :goto_13

    .line 634
    :cond_1e
    const/4 v14, 0x0

    .line 635
    :goto_13
    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 636
    .line 637
    .line 638
    move-result v14

    .line 639
    invoke-virtual {v9, v1, v14}, Landroid/view/View;->measure(II)V

    .line 640
    .line 641
    .line 642
    goto :goto_15

    .line 643
    :cond_1f
    const/high16 v12, 0x40000000    # 2.0f

    .line 644
    .line 645
    :goto_14
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 646
    .line 647
    .line 648
    move-result v19

    .line 649
    add-int v14, v19, v14

    .line 650
    .line 651
    if-gez v14, :cond_20

    .line 652
    .line 653
    const/4 v14, 0x0

    .line 654
    :cond_20
    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 655
    .line 656
    .line 657
    move-result v14

    .line 658
    invoke-virtual {v9, v1, v14}, Landroid/view/View;->measure(II)V

    .line 659
    .line 660
    .line 661
    :goto_15
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    and-int/lit16 v1, v1, -0x100

    .line 666
    .line 667
    invoke-static {v8, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 668
    .line 669
    .line 670
    move-result v8

    .line 671
    goto :goto_16

    .line 672
    :cond_21
    move/from16 v17, v1

    .line 673
    .line 674
    :goto_16
    iget v1, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 675
    .line 676
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 677
    .line 678
    add-int/2addr v1, v12

    .line 679
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 680
    .line 681
    .line 682
    move-result v12

    .line 683
    add-int/2addr v12, v1

    .line 684
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 685
    .line 686
    .line 687
    move-result v13

    .line 688
    const/high16 v14, 0x40000000    # 2.0f

    .line 689
    .line 690
    if-eq v10, v14, :cond_22

    .line 691
    .line 692
    iget v14, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 693
    .line 694
    move/from16 v19, v1

    .line 695
    .line 696
    const/4 v1, -0x1

    .line 697
    if-ne v14, v1, :cond_23

    .line 698
    .line 699
    move/from16 v12, v19

    .line 700
    .line 701
    goto :goto_17

    .line 702
    :cond_22
    const/4 v1, -0x1

    .line 703
    :cond_23
    :goto_17
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 704
    .line 705
    .line 706
    move-result v6

    .line 707
    if-eqz v24, :cond_24

    .line 708
    .line 709
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 710
    .line 711
    if-ne v12, v1, :cond_24

    .line 712
    .line 713
    move/from16 v1, v20

    .line 714
    .line 715
    goto :goto_18

    .line 716
    :cond_24
    const/4 v1, 0x0

    .line 717
    :goto_18
    iget v12, v0, Ll/c1;->n:I

    .line 718
    .line 719
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 720
    .line 721
    .line 722
    move-result v9

    .line 723
    add-int/2addr v9, v12

    .line 724
    iget v14, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 725
    .line 726
    add-int/2addr v9, v14

    .line 727
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 728
    .line 729
    add-int/2addr v9, v11

    .line 730
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    .line 731
    .line 732
    .line 733
    move-result v9

    .line 734
    iput v9, v0, Ll/c1;->n:I

    .line 735
    .line 736
    move/from16 v24, v1

    .line 737
    .line 738
    :goto_19
    add-int/lit8 v1, v17, 0x1

    .line 739
    .line 740
    goto/16 :goto_12

    .line 741
    .line 742
    :cond_25
    iget v1, v0, Ll/c1;->n:I

    .line 743
    .line 744
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 745
    .line 746
    .line 747
    move-result v5

    .line 748
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 749
    .line 750
    .line 751
    move-result v7

    .line 752
    add-int/2addr v7, v5

    .line 753
    add-int/2addr v7, v1

    .line 754
    iput v7, v0, Ll/c1;->n:I

    .line 755
    .line 756
    move v1, v8

    .line 757
    :cond_26
    if-nez v24, :cond_27

    .line 758
    .line 759
    const/high16 v14, 0x40000000    # 2.0f

    .line 760
    .line 761
    if-eq v10, v14, :cond_27

    .line 762
    .line 763
    goto :goto_1a

    .line 764
    :cond_27
    move v6, v13

    .line 765
    :goto_1a
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 766
    .line 767
    .line 768
    move-result v5

    .line 769
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 770
    .line 771
    .line 772
    move-result v7

    .line 773
    add-int/2addr v7, v5

    .line 774
    add-int/2addr v7, v6

    .line 775
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 776
    .line 777
    .line 778
    move-result v5

    .line 779
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 780
    .line 781
    .line 782
    move-result v5

    .line 783
    invoke-static {v5, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 784
    .line 785
    .line 786
    move-result v1

    .line 787
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 788
    .line 789
    .line 790
    if-eqz v23, :cond_63

    .line 791
    .line 792
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 793
    .line 794
    .line 795
    move-result v1

    .line 796
    const/high16 v14, 0x40000000    # 2.0f

    .line 797
    .line 798
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 799
    .line 800
    .line 801
    move-result v2

    .line 802
    const/4 v13, 0x0

    .line 803
    :goto_1b
    if-ge v13, v15, :cond_63

    .line 804
    .line 805
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 810
    .line 811
    .line 812
    move-result v3

    .line 813
    const/16 v9, 0x8

    .line 814
    .line 815
    if-eq v3, v9, :cond_28

    .line 816
    .line 817
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 818
    .line 819
    .line 820
    move-result-object v3

    .line 821
    move-object v6, v3

    .line 822
    check-cast v6, Ll/b1;

    .line 823
    .line 824
    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 825
    .line 826
    const/4 v5, -0x1

    .line 827
    if-ne v3, v5, :cond_28

    .line 828
    .line 829
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 830
    .line 831
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 832
    .line 833
    .line 834
    move-result v3

    .line 835
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 836
    .line 837
    const/4 v3, 0x0

    .line 838
    const/4 v5, 0x0

    .line 839
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 840
    .line 841
    .line 842
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 843
    .line 844
    :cond_28
    add-int/lit8 v13, v13, 0x1

    .line 845
    .line 846
    move/from16 v4, p2

    .line 847
    .line 848
    goto :goto_1b

    .line 849
    :cond_29
    move/from16 v2, p1

    .line 850
    .line 851
    move v3, v13

    .line 852
    move/from16 v20, v14

    .line 853
    .line 854
    const v17, 0xffffff

    .line 855
    .line 856
    .line 857
    const/16 v18, 0x0

    .line 858
    .line 859
    iput v3, v0, Ll/c1;->n:I

    .line 860
    .line 861
    invoke-virtual {v0}, Ll/c1;->getVirtualChildCount()I

    .line 862
    .line 863
    .line 864
    move-result v6

    .line 865
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 866
    .line 867
    .line 868
    move-result v7

    .line 869
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 870
    .line 871
    .line 872
    move-result v8

    .line 873
    iget-object v1, v0, Ll/c1;->r:[I

    .line 874
    .line 875
    const/4 v9, 0x4

    .line 876
    if-eqz v1, :cond_2a

    .line 877
    .line 878
    iget-object v1, v0, Ll/c1;->s:[I

    .line 879
    .line 880
    if-nez v1, :cond_2b

    .line 881
    .line 882
    :cond_2a
    new-array v1, v9, [I

    .line 883
    .line 884
    iput-object v1, v0, Ll/c1;->r:[I

    .line 885
    .line 886
    new-array v1, v9, [I

    .line 887
    .line 888
    iput-object v1, v0, Ll/c1;->s:[I

    .line 889
    .line 890
    :cond_2b
    iget-object v10, v0, Ll/c1;->r:[I

    .line 891
    .line 892
    iget-object v11, v0, Ll/c1;->s:[I

    .line 893
    .line 894
    const/4 v12, 0x3

    .line 895
    const/16 v26, -0x1

    .line 896
    .line 897
    aput v26, v10, v12

    .line 898
    .line 899
    const/4 v13, 0x2

    .line 900
    aput v26, v10, v13

    .line 901
    .line 902
    aput v26, v10, v20

    .line 903
    .line 904
    const/16 v21, 0x0

    .line 905
    .line 906
    aput v26, v10, v21

    .line 907
    .line 908
    aput v26, v11, v12

    .line 909
    .line 910
    aput v26, v11, v13

    .line 911
    .line 912
    aput v26, v11, v20

    .line 913
    .line 914
    aput v26, v11, v21

    .line 915
    .line 916
    iget-boolean v14, v0, Ll/c1;->b:Z

    .line 917
    .line 918
    iget-boolean v15, v0, Ll/c1;->q:Z

    .line 919
    .line 920
    const/high16 v1, 0x40000000    # 2.0f

    .line 921
    .line 922
    if-ne v7, v1, :cond_2c

    .line 923
    .line 924
    move/from16 v16, v20

    .line 925
    .line 926
    goto :goto_1c

    .line 927
    :cond_2c
    const/16 v16, 0x0

    .line 928
    .line 929
    :goto_1c
    move/from16 v23, v9

    .line 930
    .line 931
    move/from16 v24, v12

    .line 932
    .line 933
    move/from16 v28, v18

    .line 934
    .line 935
    move/from16 v29, v20

    .line 936
    .line 937
    const/4 v1, 0x0

    .line 938
    const/4 v3, 0x0

    .line 939
    const/4 v4, 0x0

    .line 940
    const/4 v5, 0x0

    .line 941
    const/4 v9, 0x0

    .line 942
    const/4 v12, 0x0

    .line 943
    const/16 v19, 0x0

    .line 944
    .line 945
    const/16 v22, 0x0

    .line 946
    .line 947
    :goto_1d
    if-ge v1, v6, :cond_40

    .line 948
    .line 949
    move/from16 v30, v13

    .line 950
    .line 951
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 952
    .line 953
    .line 954
    move-result-object v13

    .line 955
    if-nez v13, :cond_2d

    .line 956
    .line 957
    iget v13, v0, Ll/c1;->n:I

    .line 958
    .line 959
    iput v13, v0, Ll/c1;->n:I

    .line 960
    .line 961
    move/from16 v33, v1

    .line 962
    .line 963
    move v1, v4

    .line 964
    move-object/from16 v31, v10

    .line 965
    .line 966
    move-object/from16 v32, v11

    .line 967
    .line 968
    move/from16 v34, v14

    .line 969
    .line 970
    move/from16 v35, v15

    .line 971
    .line 972
    move/from16 v4, p2

    .line 973
    .line 974
    goto/16 :goto_2b

    .line 975
    .line 976
    :cond_2d
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 977
    .line 978
    .line 979
    move-result v2

    .line 980
    move/from16 v31, v3

    .line 981
    .line 982
    const/16 v3, 0x8

    .line 983
    .line 984
    if-ne v2, v3, :cond_2e

    .line 985
    .line 986
    move/from16 v2, p1

    .line 987
    .line 988
    move/from16 v33, v1

    .line 989
    .line 990
    move v1, v4

    .line 991
    move-object/from16 v32, v11

    .line 992
    .line 993
    move/from16 v34, v14

    .line 994
    .line 995
    move/from16 v35, v15

    .line 996
    .line 997
    move/from16 v3, v31

    .line 998
    .line 999
    move/from16 v4, p2

    .line 1000
    .line 1001
    move-object/from16 v31, v10

    .line 1002
    .line 1003
    goto/16 :goto_2b

    .line 1004
    .line 1005
    :cond_2e
    invoke-virtual {v0, v1}, Ll/c1;->hasDividerBeforeChildAt(I)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v2

    .line 1009
    if-eqz v2, :cond_2f

    .line 1010
    .line 1011
    iget v2, v0, Ll/c1;->n:I

    .line 1012
    .line 1013
    iget v3, v0, Ll/c1;->u:I

    .line 1014
    .line 1015
    add-int/2addr v2, v3

    .line 1016
    iput v2, v0, Ll/c1;->n:I

    .line 1017
    .line 1018
    :cond_2f
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v2

    .line 1022
    check-cast v2, Ll/b1;

    .line 1023
    .line 1024
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1025
    .line 1026
    add-float v28, v28, v3

    .line 1027
    .line 1028
    move/from16 v32, v1

    .line 1029
    .line 1030
    const/high16 v1, 0x40000000    # 2.0f

    .line 1031
    .line 1032
    if-ne v7, v1, :cond_32

    .line 1033
    .line 1034
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1035
    .line 1036
    if-nez v1, :cond_32

    .line 1037
    .line 1038
    cmpl-float v1, v3, v18

    .line 1039
    .line 1040
    if-lez v1, :cond_32

    .line 1041
    .line 1042
    if-eqz v16, :cond_30

    .line 1043
    .line 1044
    iget v1, v0, Ll/c1;->n:I

    .line 1045
    .line 1046
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1047
    .line 1048
    move/from16 v33, v1

    .line 1049
    .line 1050
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1051
    .line 1052
    add-int/2addr v3, v1

    .line 1053
    add-int v3, v3, v33

    .line 1054
    .line 1055
    iput v3, v0, Ll/c1;->n:I

    .line 1056
    .line 1057
    goto :goto_1e

    .line 1058
    :cond_30
    iget v1, v0, Ll/c1;->n:I

    .line 1059
    .line 1060
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1061
    .line 1062
    add-int/2addr v3, v1

    .line 1063
    move/from16 v33, v3

    .line 1064
    .line 1065
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1066
    .line 1067
    add-int v3, v33, v3

    .line 1068
    .line 1069
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 1070
    .line 1071
    .line 1072
    move-result v1

    .line 1073
    iput v1, v0, Ll/c1;->n:I

    .line 1074
    .line 1075
    :goto_1e
    if-eqz v14, :cond_31

    .line 1076
    .line 1077
    const/4 v3, 0x0

    .line 1078
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1079
    .line 1080
    .line 1081
    move-result v1

    .line 1082
    invoke-virtual {v13, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1083
    .line 1084
    .line 1085
    move-object/from16 v36, v13

    .line 1086
    .line 1087
    move/from16 v34, v14

    .line 1088
    .line 1089
    move/from16 v35, v15

    .line 1090
    .line 1091
    move/from16 v13, v31

    .line 1092
    .line 1093
    move/from16 v33, v32

    .line 1094
    .line 1095
    move-object v14, v2

    .line 1096
    move-object/from16 v31, v10

    .line 1097
    .line 1098
    move-object/from16 v32, v11

    .line 1099
    .line 1100
    move/from16 v2, p1

    .line 1101
    .line 1102
    move v10, v4

    .line 1103
    move v11, v5

    .line 1104
    move/from16 v4, p2

    .line 1105
    .line 1106
    goto/16 :goto_23

    .line 1107
    .line 1108
    :cond_31
    move-object/from16 v36, v13

    .line 1109
    .line 1110
    move/from16 v34, v14

    .line 1111
    .line 1112
    move/from16 v35, v15

    .line 1113
    .line 1114
    move/from16 v22, v20

    .line 1115
    .line 1116
    move/from16 v13, v31

    .line 1117
    .line 1118
    move/from16 v33, v32

    .line 1119
    .line 1120
    const/high16 v1, 0x40000000    # 2.0f

    .line 1121
    .line 1122
    move-object v14, v2

    .line 1123
    move-object/from16 v31, v10

    .line 1124
    .line 1125
    move-object/from16 v32, v11

    .line 1126
    .line 1127
    move/from16 v2, p1

    .line 1128
    .line 1129
    move v10, v4

    .line 1130
    move v11, v5

    .line 1131
    move/from16 v4, p2

    .line 1132
    .line 1133
    goto/16 :goto_24

    .line 1134
    .line 1135
    :cond_32
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1136
    .line 1137
    if-nez v1, :cond_33

    .line 1138
    .line 1139
    cmpl-float v1, v3, v18

    .line 1140
    .line 1141
    if-lez v1, :cond_33

    .line 1142
    .line 1143
    const/4 v1, -0x2

    .line 1144
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1145
    .line 1146
    const/4 v1, 0x0

    .line 1147
    goto :goto_1f

    .line 1148
    :cond_33
    const/high16 v1, -0x80000000

    .line 1149
    .line 1150
    :goto_1f
    cmpl-float v3, v28, v18

    .line 1151
    .line 1152
    if-nez v3, :cond_34

    .line 1153
    .line 1154
    iget v3, v0, Ll/c1;->n:I

    .line 1155
    .line 1156
    :goto_20
    move/from16 v33, v5

    .line 1157
    .line 1158
    goto :goto_21

    .line 1159
    :cond_34
    const/4 v3, 0x0

    .line 1160
    goto :goto_20

    .line 1161
    :goto_21
    const/4 v5, 0x0

    .line 1162
    move/from16 v34, v32

    .line 1163
    .line 1164
    move-object/from16 v32, v11

    .line 1165
    .line 1166
    move/from16 v11, v33

    .line 1167
    .line 1168
    move/from16 v33, v34

    .line 1169
    .line 1170
    move/from16 v34, v14

    .line 1171
    .line 1172
    move/from16 v35, v15

    .line 1173
    .line 1174
    move v15, v1

    .line 1175
    move-object v14, v2

    .line 1176
    move-object v1, v13

    .line 1177
    move/from16 v13, v31

    .line 1178
    .line 1179
    move/from16 v2, p1

    .line 1180
    .line 1181
    move-object/from16 v31, v10

    .line 1182
    .line 1183
    move v10, v4

    .line 1184
    move/from16 v4, p2

    .line 1185
    .line 1186
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1187
    .line 1188
    .line 1189
    const/high16 v3, -0x80000000

    .line 1190
    .line 1191
    if-eq v15, v3, :cond_35

    .line 1192
    .line 1193
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1194
    .line 1195
    :cond_35
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 1196
    .line 1197
    .line 1198
    move-result v3

    .line 1199
    if-eqz v16, :cond_36

    .line 1200
    .line 1201
    iget v5, v0, Ll/c1;->n:I

    .line 1202
    .line 1203
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1204
    .line 1205
    add-int/2addr v15, v3

    .line 1206
    move-object/from16 v36, v1

    .line 1207
    .line 1208
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1209
    .line 1210
    add-int/2addr v15, v1

    .line 1211
    add-int/2addr v15, v5

    .line 1212
    iput v15, v0, Ll/c1;->n:I

    .line 1213
    .line 1214
    goto :goto_22

    .line 1215
    :cond_36
    move-object/from16 v36, v1

    .line 1216
    .line 1217
    iget v1, v0, Ll/c1;->n:I

    .line 1218
    .line 1219
    add-int v5, v1, v3

    .line 1220
    .line 1221
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1222
    .line 1223
    add-int/2addr v5, v15

    .line 1224
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1225
    .line 1226
    add-int/2addr v5, v15

    .line 1227
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 1228
    .line 1229
    .line 1230
    move-result v1

    .line 1231
    iput v1, v0, Ll/c1;->n:I

    .line 1232
    .line 1233
    :goto_22
    if-eqz v35, :cond_37

    .line 1234
    .line 1235
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    .line 1236
    .line 1237
    .line 1238
    move-result v9

    .line 1239
    :cond_37
    :goto_23
    const/high16 v1, 0x40000000    # 2.0f

    .line 1240
    .line 1241
    :goto_24
    if-eq v8, v1, :cond_38

    .line 1242
    .line 1243
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1244
    .line 1245
    const/4 v3, -0x1

    .line 1246
    if-ne v1, v3, :cond_38

    .line 1247
    .line 1248
    move/from16 v1, v20

    .line 1249
    .line 1250
    move/from16 v19, v1

    .line 1251
    .line 1252
    goto :goto_25

    .line 1253
    :cond_38
    const/4 v1, 0x0

    .line 1254
    :goto_25
    iget v3, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1255
    .line 1256
    iget v5, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1257
    .line 1258
    add-int/2addr v3, v5

    .line 1259
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredHeight()I

    .line 1260
    .line 1261
    .line 1262
    move-result v5

    .line 1263
    add-int/2addr v5, v3

    .line 1264
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredState()I

    .line 1265
    .line 1266
    .line 1267
    move-result v15

    .line 1268
    invoke-static {v12, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 1269
    .line 1270
    .line 1271
    move-result v12

    .line 1272
    if-eqz v34, :cond_3a

    .line 1273
    .line 1274
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getBaseline()I

    .line 1275
    .line 1276
    .line 1277
    move-result v15

    .line 1278
    move/from16 v36, v1

    .line 1279
    .line 1280
    const/4 v1, -0x1

    .line 1281
    if-eq v15, v1, :cond_3b

    .line 1282
    .line 1283
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1284
    .line 1285
    if-gez v1, :cond_39

    .line 1286
    .line 1287
    iget v1, v0, Ll/c1;->m:I

    .line 1288
    .line 1289
    :cond_39
    and-int/lit8 v1, v1, 0x70

    .line 1290
    .line 1291
    shr-int/lit8 v1, v1, 0x4

    .line 1292
    .line 1293
    const/16 v25, -0x2

    .line 1294
    .line 1295
    and-int/lit8 v1, v1, -0x2

    .line 1296
    .line 1297
    shr-int/lit8 v1, v1, 0x1

    .line 1298
    .line 1299
    move/from16 v37, v1

    .line 1300
    .line 1301
    aget v1, v31, v37

    .line 1302
    .line 1303
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    .line 1304
    .line 1305
    .line 1306
    move-result v1

    .line 1307
    aput v1, v31, v37

    .line 1308
    .line 1309
    aget v1, v32, v37

    .line 1310
    .line 1311
    sub-int v15, v5, v15

    .line 1312
    .line 1313
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    .line 1314
    .line 1315
    .line 1316
    move-result v1

    .line 1317
    aput v1, v32, v37

    .line 1318
    .line 1319
    goto :goto_26

    .line 1320
    :cond_3a
    move/from16 v36, v1

    .line 1321
    .line 1322
    :cond_3b
    :goto_26
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 1323
    .line 1324
    .line 1325
    move-result v1

    .line 1326
    if-eqz v29, :cond_3c

    .line 1327
    .line 1328
    iget v13, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1329
    .line 1330
    const/4 v15, -0x1

    .line 1331
    if-ne v13, v15, :cond_3c

    .line 1332
    .line 1333
    move/from16 v13, v20

    .line 1334
    .line 1335
    goto :goto_27

    .line 1336
    :cond_3c
    const/4 v13, 0x0

    .line 1337
    :goto_27
    iget v14, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1338
    .line 1339
    cmpl-float v14, v14, v18

    .line 1340
    .line 1341
    if-lez v14, :cond_3e

    .line 1342
    .line 1343
    if-eqz v36, :cond_3d

    .line 1344
    .line 1345
    goto :goto_28

    .line 1346
    :cond_3d
    move v3, v5

    .line 1347
    :goto_28
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    .line 1348
    .line 1349
    .line 1350
    move-result v5

    .line 1351
    move v3, v10

    .line 1352
    goto :goto_2a

    .line 1353
    :cond_3e
    if-eqz v36, :cond_3f

    .line 1354
    .line 1355
    goto :goto_29

    .line 1356
    :cond_3f
    move v3, v5

    .line 1357
    :goto_29
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 1358
    .line 1359
    .line 1360
    move-result v3

    .line 1361
    move v5, v11

    .line 1362
    :goto_2a
    move/from16 v29, v3

    .line 1363
    .line 1364
    move v3, v1

    .line 1365
    move/from16 v1, v29

    .line 1366
    .line 1367
    move/from16 v29, v13

    .line 1368
    .line 1369
    :goto_2b
    add-int/lit8 v10, v33, 0x1

    .line 1370
    .line 1371
    move v4, v1

    .line 1372
    move v1, v10

    .line 1373
    move/from16 v13, v30

    .line 1374
    .line 1375
    move-object/from16 v10, v31

    .line 1376
    .line 1377
    move-object/from16 v11, v32

    .line 1378
    .line 1379
    move/from16 v14, v34

    .line 1380
    .line 1381
    move/from16 v15, v35

    .line 1382
    .line 1383
    goto/16 :goto_1d

    .line 1384
    .line 1385
    :cond_40
    move-object/from16 v31, v10

    .line 1386
    .line 1387
    move-object/from16 v32, v11

    .line 1388
    .line 1389
    move/from16 v30, v13

    .line 1390
    .line 1391
    move/from16 v34, v14

    .line 1392
    .line 1393
    move/from16 v35, v15

    .line 1394
    .line 1395
    move v13, v3

    .line 1396
    move v10, v4

    .line 1397
    move v11, v5

    .line 1398
    move/from16 v4, p2

    .line 1399
    .line 1400
    iget v1, v0, Ll/c1;->n:I

    .line 1401
    .line 1402
    if-lez v1, :cond_41

    .line 1403
    .line 1404
    invoke-virtual {v0, v6}, Ll/c1;->hasDividerBeforeChildAt(I)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v1

    .line 1408
    if-eqz v1, :cond_41

    .line 1409
    .line 1410
    iget v1, v0, Ll/c1;->n:I

    .line 1411
    .line 1412
    iget v3, v0, Ll/c1;->u:I

    .line 1413
    .line 1414
    add-int/2addr v1, v3

    .line 1415
    iput v1, v0, Ll/c1;->n:I

    .line 1416
    .line 1417
    :cond_41
    aget v1, v31, v20

    .line 1418
    .line 1419
    const/4 v3, -0x1

    .line 1420
    if-ne v1, v3, :cond_43

    .line 1421
    .line 1422
    const/16 v21, 0x0

    .line 1423
    .line 1424
    aget v5, v31, v21

    .line 1425
    .line 1426
    if-ne v5, v3, :cond_43

    .line 1427
    .line 1428
    aget v5, v31, v30

    .line 1429
    .line 1430
    if-ne v5, v3, :cond_43

    .line 1431
    .line 1432
    aget v5, v31, v24

    .line 1433
    .line 1434
    if-eq v5, v3, :cond_42

    .line 1435
    .line 1436
    goto :goto_2c

    .line 1437
    :cond_42
    move v3, v13

    .line 1438
    goto :goto_2d

    .line 1439
    :cond_43
    :goto_2c
    aget v3, v31, v24

    .line 1440
    .line 1441
    const/16 v21, 0x0

    .line 1442
    .line 1443
    aget v5, v31, v21

    .line 1444
    .line 1445
    aget v14, v31, v30

    .line 1446
    .line 1447
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    .line 1448
    .line 1449
    .line 1450
    move-result v1

    .line 1451
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 1452
    .line 1453
    .line 1454
    move-result v1

    .line 1455
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1456
    .line 1457
    .line 1458
    move-result v1

    .line 1459
    aget v3, v32, v24

    .line 1460
    .line 1461
    aget v5, v32, v21

    .line 1462
    .line 1463
    aget v14, v32, v20

    .line 1464
    .line 1465
    aget v15, v32, v30

    .line 1466
    .line 1467
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 1468
    .line 1469
    .line 1470
    move-result v14

    .line 1471
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    .line 1472
    .line 1473
    .line 1474
    move-result v5

    .line 1475
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 1476
    .line 1477
    .line 1478
    move-result v3

    .line 1479
    add-int/2addr v3, v1

    .line 1480
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    .line 1481
    .line 1482
    .line 1483
    move-result v3

    .line 1484
    :goto_2d
    if-eqz v35, :cond_48

    .line 1485
    .line 1486
    const/high16 v1, -0x80000000

    .line 1487
    .line 1488
    if-eq v7, v1, :cond_44

    .line 1489
    .line 1490
    if-nez v7, :cond_48

    .line 1491
    .line 1492
    :cond_44
    const/4 v1, 0x0

    .line 1493
    iput v1, v0, Ll/c1;->n:I

    .line 1494
    .line 1495
    const/4 v1, 0x0

    .line 1496
    :goto_2e
    if-ge v1, v6, :cond_48

    .line 1497
    .line 1498
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v5

    .line 1502
    if-nez v5, :cond_45

    .line 1503
    .line 1504
    iget v5, v0, Ll/c1;->n:I

    .line 1505
    .line 1506
    iput v5, v0, Ll/c1;->n:I

    .line 1507
    .line 1508
    goto :goto_2f

    .line 1509
    :cond_45
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 1510
    .line 1511
    .line 1512
    move-result v13

    .line 1513
    const/16 v14, 0x8

    .line 1514
    .line 1515
    if-ne v13, v14, :cond_46

    .line 1516
    .line 1517
    goto :goto_2f

    .line 1518
    :cond_46
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v5

    .line 1522
    check-cast v5, Ll/b1;

    .line 1523
    .line 1524
    if-eqz v16, :cond_47

    .line 1525
    .line 1526
    iget v13, v0, Ll/c1;->n:I

    .line 1527
    .line 1528
    iget v14, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1529
    .line 1530
    add-int/2addr v14, v9

    .line 1531
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1532
    .line 1533
    add-int/2addr v14, v5

    .line 1534
    add-int/2addr v14, v13

    .line 1535
    iput v14, v0, Ll/c1;->n:I

    .line 1536
    .line 1537
    goto :goto_2f

    .line 1538
    :cond_47
    iget v13, v0, Ll/c1;->n:I

    .line 1539
    .line 1540
    add-int v14, v13, v9

    .line 1541
    .line 1542
    iget v15, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1543
    .line 1544
    add-int/2addr v14, v15

    .line 1545
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1546
    .line 1547
    add-int/2addr v14, v5

    .line 1548
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    .line 1549
    .line 1550
    .line 1551
    move-result v5

    .line 1552
    iput v5, v0, Ll/c1;->n:I

    .line 1553
    .line 1554
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    .line 1555
    .line 1556
    goto :goto_2e

    .line 1557
    :cond_48
    iget v1, v0, Ll/c1;->n:I

    .line 1558
    .line 1559
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 1560
    .line 1561
    .line 1562
    move-result v5

    .line 1563
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 1564
    .line 1565
    .line 1566
    move-result v13

    .line 1567
    add-int/2addr v13, v5

    .line 1568
    add-int/2addr v13, v1

    .line 1569
    iput v13, v0, Ll/c1;->n:I

    .line 1570
    .line 1571
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 1572
    .line 1573
    .line 1574
    move-result v1

    .line 1575
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 1576
    .line 1577
    .line 1578
    move-result v1

    .line 1579
    const/4 v5, 0x0

    .line 1580
    invoke-static {v1, v2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1581
    .line 1582
    .line 1583
    move-result v1

    .line 1584
    and-int v5, v1, v17

    .line 1585
    .line 1586
    iget v13, v0, Ll/c1;->n:I

    .line 1587
    .line 1588
    sub-int/2addr v5, v13

    .line 1589
    if-nez v22, :cond_4d

    .line 1590
    .line 1591
    if-eqz v5, :cond_49

    .line 1592
    .line 1593
    cmpl-float v14, v28, v18

    .line 1594
    .line 1595
    if-lez v14, :cond_49

    .line 1596
    .line 1597
    goto :goto_32

    .line 1598
    :cond_49
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    .line 1599
    .line 1600
    .line 1601
    move-result v5

    .line 1602
    if-eqz v35, :cond_4c

    .line 1603
    .line 1604
    const/high16 v14, 0x40000000    # 2.0f

    .line 1605
    .line 1606
    if-eq v7, v14, :cond_4c

    .line 1607
    .line 1608
    const/4 v7, 0x0

    .line 1609
    :goto_30
    if-ge v7, v6, :cond_4c

    .line 1610
    .line 1611
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v10

    .line 1615
    if-eqz v10, :cond_4b

    .line 1616
    .line 1617
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 1618
    .line 1619
    .line 1620
    move-result v11

    .line 1621
    const/16 v14, 0x8

    .line 1622
    .line 1623
    if-ne v11, v14, :cond_4a

    .line 1624
    .line 1625
    goto :goto_31

    .line 1626
    :cond_4a
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v11

    .line 1630
    check-cast v11, Ll/b1;

    .line 1631
    .line 1632
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1633
    .line 1634
    cmpl-float v11, v11, v18

    .line 1635
    .line 1636
    if-lez v11, :cond_4b

    .line 1637
    .line 1638
    const/high16 v14, 0x40000000    # 2.0f

    .line 1639
    .line 1640
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1641
    .line 1642
    .line 1643
    move-result v11

    .line 1644
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 1645
    .line 1646
    .line 1647
    move-result v15

    .line 1648
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1649
    .line 1650
    .line 1651
    move-result v15

    .line 1652
    invoke-virtual {v10, v11, v15}, Landroid/view/View;->measure(II)V

    .line 1653
    .line 1654
    .line 1655
    :cond_4b
    :goto_31
    add-int/lit8 v7, v7, 0x1

    .line 1656
    .line 1657
    goto :goto_30

    .line 1658
    :cond_4c
    move/from16 v22, v1

    .line 1659
    .line 1660
    const/high16 v17, -0x1000000

    .line 1661
    .line 1662
    const/16 v21, 0x0

    .line 1663
    .line 1664
    goto/16 :goto_41

    .line 1665
    .line 1666
    :cond_4d
    :goto_32
    iget v3, v0, Ll/c1;->p:F

    .line 1667
    .line 1668
    cmpl-float v9, v3, v18

    .line 1669
    .line 1670
    if-lez v9, :cond_4e

    .line 1671
    .line 1672
    move/from16 v28, v3

    .line 1673
    .line 1674
    :cond_4e
    const/16 v26, -0x1

    .line 1675
    .line 1676
    aput v26, v31, v24

    .line 1677
    .line 1678
    aput v26, v31, v30

    .line 1679
    .line 1680
    aput v26, v31, v20

    .line 1681
    .line 1682
    const/4 v3, 0x0

    .line 1683
    aput v26, v31, v3

    .line 1684
    .line 1685
    aput v26, v32, v24

    .line 1686
    .line 1687
    aput v26, v32, v30

    .line 1688
    .line 1689
    aput v26, v32, v20

    .line 1690
    .line 1691
    aput v26, v32, v3

    .line 1692
    .line 1693
    iput v3, v0, Ll/c1;->n:I

    .line 1694
    .line 1695
    const/4 v3, -0x1

    .line 1696
    const/4 v9, 0x0

    .line 1697
    :goto_33
    if-ge v9, v6, :cond_5d

    .line 1698
    .line 1699
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v11

    .line 1703
    if-eqz v11, :cond_4f

    .line 1704
    .line 1705
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 1706
    .line 1707
    .line 1708
    move-result v14

    .line 1709
    const/16 v15, 0x8

    .line 1710
    .line 1711
    if-ne v14, v15, :cond_50

    .line 1712
    .line 1713
    :cond_4f
    move/from16 v22, v1

    .line 1714
    .line 1715
    const/high16 v17, -0x1000000

    .line 1716
    .line 1717
    const/16 v25, -0x2

    .line 1718
    .line 1719
    goto/16 :goto_3e

    .line 1720
    .line 1721
    :cond_50
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v14

    .line 1725
    check-cast v14, Ll/b1;

    .line 1726
    .line 1727
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1728
    .line 1729
    cmpl-float v17, v15, v18

    .line 1730
    .line 1731
    if-lez v17, :cond_55

    .line 1732
    .line 1733
    const/high16 v17, -0x1000000

    .line 1734
    .line 1735
    int-to-float v13, v5

    .line 1736
    mul-float/2addr v13, v15

    .line 1737
    div-float v13, v13, v28

    .line 1738
    .line 1739
    float-to-int v13, v13

    .line 1740
    sub-float v28, v28, v15

    .line 1741
    .line 1742
    sub-int/2addr v5, v13

    .line 1743
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 1744
    .line 1745
    .line 1746
    move-result v15

    .line 1747
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 1748
    .line 1749
    .line 1750
    move-result v22

    .line 1751
    add-int v22, v22, v15

    .line 1752
    .line 1753
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1754
    .line 1755
    add-int v22, v22, v15

    .line 1756
    .line 1757
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1758
    .line 1759
    add-int v15, v22, v15

    .line 1760
    .line 1761
    move/from16 v22, v1

    .line 1762
    .line 1763
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1764
    .line 1765
    invoke-static {v4, v15, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 1766
    .line 1767
    .line 1768
    move-result v1

    .line 1769
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1770
    .line 1771
    if-nez v15, :cond_53

    .line 1772
    .line 1773
    const/high16 v15, 0x40000000    # 2.0f

    .line 1774
    .line 1775
    if-eq v7, v15, :cond_51

    .line 1776
    .line 1777
    goto :goto_35

    .line 1778
    :cond_51
    if-lez v13, :cond_52

    .line 1779
    .line 1780
    goto :goto_34

    .line 1781
    :cond_52
    const/4 v13, 0x0

    .line 1782
    :goto_34
    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1783
    .line 1784
    .line 1785
    move-result v13

    .line 1786
    invoke-virtual {v11, v13, v1}, Landroid/view/View;->measure(II)V

    .line 1787
    .line 1788
    .line 1789
    goto :goto_36

    .line 1790
    :cond_53
    const/high16 v15, 0x40000000    # 2.0f

    .line 1791
    .line 1792
    :goto_35
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 1793
    .line 1794
    .line 1795
    move-result v27

    .line 1796
    add-int v13, v27, v13

    .line 1797
    .line 1798
    if-gez v13, :cond_54

    .line 1799
    .line 1800
    const/4 v13, 0x0

    .line 1801
    :cond_54
    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1802
    .line 1803
    .line 1804
    move-result v13

    .line 1805
    invoke-virtual {v11, v13, v1}, Landroid/view/View;->measure(II)V

    .line 1806
    .line 1807
    .line 1808
    :goto_36
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    .line 1809
    .line 1810
    .line 1811
    move-result v1

    .line 1812
    and-int v1, v1, v17

    .line 1813
    .line 1814
    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 1815
    .line 1816
    .line 1817
    move-result v12

    .line 1818
    goto :goto_37

    .line 1819
    :cond_55
    move/from16 v22, v1

    .line 1820
    .line 1821
    const/high16 v17, -0x1000000

    .line 1822
    .line 1823
    :goto_37
    if-eqz v16, :cond_56

    .line 1824
    .line 1825
    iget v1, v0, Ll/c1;->n:I

    .line 1826
    .line 1827
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 1828
    .line 1829
    .line 1830
    move-result v13

    .line 1831
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1832
    .line 1833
    add-int/2addr v13, v15

    .line 1834
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1835
    .line 1836
    add-int/2addr v13, v15

    .line 1837
    add-int/2addr v13, v1

    .line 1838
    iput v13, v0, Ll/c1;->n:I

    .line 1839
    .line 1840
    :goto_38
    const/high16 v1, 0x40000000    # 2.0f

    .line 1841
    .line 1842
    goto :goto_39

    .line 1843
    :cond_56
    iget v1, v0, Ll/c1;->n:I

    .line 1844
    .line 1845
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 1846
    .line 1847
    .line 1848
    move-result v13

    .line 1849
    add-int/2addr v13, v1

    .line 1850
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1851
    .line 1852
    add-int/2addr v13, v15

    .line 1853
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1854
    .line 1855
    add-int/2addr v13, v15

    .line 1856
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    .line 1857
    .line 1858
    .line 1859
    move-result v1

    .line 1860
    iput v1, v0, Ll/c1;->n:I

    .line 1861
    .line 1862
    goto :goto_38

    .line 1863
    :goto_39
    if-eq v8, v1, :cond_57

    .line 1864
    .line 1865
    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1866
    .line 1867
    const/4 v15, -0x1

    .line 1868
    if-ne v1, v15, :cond_57

    .line 1869
    .line 1870
    move/from16 v1, v20

    .line 1871
    .line 1872
    goto :goto_3a

    .line 1873
    :cond_57
    const/4 v1, 0x0

    .line 1874
    :goto_3a
    iget v13, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1875
    .line 1876
    iget v15, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1877
    .line 1878
    add-int/2addr v13, v15

    .line 1879
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 1880
    .line 1881
    .line 1882
    move-result v15

    .line 1883
    add-int/2addr v15, v13

    .line 1884
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    .line 1885
    .line 1886
    .line 1887
    move-result v3

    .line 1888
    if-eqz v1, :cond_58

    .line 1889
    .line 1890
    goto :goto_3b

    .line 1891
    :cond_58
    move v13, v15

    .line 1892
    :goto_3b
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    .line 1893
    .line 1894
    .line 1895
    move-result v1

    .line 1896
    if-eqz v29, :cond_59

    .line 1897
    .line 1898
    iget v10, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1899
    .line 1900
    const/4 v13, -0x1

    .line 1901
    if-ne v10, v13, :cond_5a

    .line 1902
    .line 1903
    move/from16 v10, v20

    .line 1904
    .line 1905
    goto :goto_3c

    .line 1906
    :cond_59
    const/4 v13, -0x1

    .line 1907
    :cond_5a
    const/4 v10, 0x0

    .line 1908
    :goto_3c
    if-eqz v34, :cond_5c

    .line 1909
    .line 1910
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 1911
    .line 1912
    .line 1913
    move-result v11

    .line 1914
    if-eq v11, v13, :cond_5c

    .line 1915
    .line 1916
    iget v13, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1917
    .line 1918
    if-gez v13, :cond_5b

    .line 1919
    .line 1920
    iget v13, v0, Ll/c1;->m:I

    .line 1921
    .line 1922
    :cond_5b
    and-int/lit8 v13, v13, 0x70

    .line 1923
    .line 1924
    shr-int/lit8 v13, v13, 0x4

    .line 1925
    .line 1926
    const/16 v25, -0x2

    .line 1927
    .line 1928
    and-int/lit8 v13, v13, -0x2

    .line 1929
    .line 1930
    shr-int/lit8 v13, v13, 0x1

    .line 1931
    .line 1932
    aget v14, v31, v13

    .line 1933
    .line 1934
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    .line 1935
    .line 1936
    .line 1937
    move-result v14

    .line 1938
    aput v14, v31, v13

    .line 1939
    .line 1940
    aget v14, v32, v13

    .line 1941
    .line 1942
    sub-int/2addr v15, v11

    .line 1943
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 1944
    .line 1945
    .line 1946
    move-result v11

    .line 1947
    aput v11, v32, v13

    .line 1948
    .line 1949
    goto :goto_3d

    .line 1950
    :cond_5c
    const/16 v25, -0x2

    .line 1951
    .line 1952
    :goto_3d
    move/from16 v29, v10

    .line 1953
    .line 1954
    move v10, v1

    .line 1955
    :goto_3e
    add-int/lit8 v9, v9, 0x1

    .line 1956
    .line 1957
    move/from16 v1, v22

    .line 1958
    .line 1959
    goto/16 :goto_33

    .line 1960
    .line 1961
    :cond_5d
    move/from16 v22, v1

    .line 1962
    .line 1963
    const/high16 v17, -0x1000000

    .line 1964
    .line 1965
    iget v1, v0, Ll/c1;->n:I

    .line 1966
    .line 1967
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 1968
    .line 1969
    .line 1970
    move-result v5

    .line 1971
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 1972
    .line 1973
    .line 1974
    move-result v7

    .line 1975
    add-int/2addr v7, v5

    .line 1976
    add-int/2addr v7, v1

    .line 1977
    iput v7, v0, Ll/c1;->n:I

    .line 1978
    .line 1979
    aget v1, v31, v20

    .line 1980
    .line 1981
    const/4 v15, -0x1

    .line 1982
    if-ne v1, v15, :cond_5f

    .line 1983
    .line 1984
    const/16 v21, 0x0

    .line 1985
    .line 1986
    aget v5, v31, v21

    .line 1987
    .line 1988
    if-ne v5, v15, :cond_5f

    .line 1989
    .line 1990
    aget v5, v31, v30

    .line 1991
    .line 1992
    if-ne v5, v15, :cond_5f

    .line 1993
    .line 1994
    aget v5, v31, v24

    .line 1995
    .line 1996
    if-eq v5, v15, :cond_5e

    .line 1997
    .line 1998
    goto :goto_3f

    .line 1999
    :cond_5e
    const/16 v21, 0x0

    .line 2000
    .line 2001
    goto :goto_40

    .line 2002
    :cond_5f
    :goto_3f
    aget v5, v31, v24

    .line 2003
    .line 2004
    const/16 v21, 0x0

    .line 2005
    .line 2006
    aget v7, v31, v21

    .line 2007
    .line 2008
    aget v9, v31, v30

    .line 2009
    .line 2010
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 2011
    .line 2012
    .line 2013
    move-result v1

    .line 2014
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 2015
    .line 2016
    .line 2017
    move-result v1

    .line 2018
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 2019
    .line 2020
    .line 2021
    move-result v1

    .line 2022
    aget v5, v32, v24

    .line 2023
    .line 2024
    aget v7, v32, v21

    .line 2025
    .line 2026
    aget v9, v32, v20

    .line 2027
    .line 2028
    aget v11, v32, v30

    .line 2029
    .line 2030
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 2031
    .line 2032
    .line 2033
    move-result v9

    .line 2034
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 2035
    .line 2036
    .line 2037
    move-result v7

    .line 2038
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 2039
    .line 2040
    .line 2041
    move-result v5

    .line 2042
    add-int/2addr v5, v1

    .line 2043
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 2044
    .line 2045
    .line 2046
    move-result v1

    .line 2047
    move v3, v1

    .line 2048
    :goto_40
    move v5, v10

    .line 2049
    :goto_41
    if-nez v29, :cond_60

    .line 2050
    .line 2051
    const/high16 v14, 0x40000000    # 2.0f

    .line 2052
    .line 2053
    if-eq v8, v14, :cond_60

    .line 2054
    .line 2055
    move v3, v5

    .line 2056
    :cond_60
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 2057
    .line 2058
    .line 2059
    move-result v1

    .line 2060
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 2061
    .line 2062
    .line 2063
    move-result v5

    .line 2064
    add-int/2addr v5, v1

    .line 2065
    add-int/2addr v5, v3

    .line 2066
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 2067
    .line 2068
    .line 2069
    move-result v1

    .line 2070
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 2071
    .line 2072
    .line 2073
    move-result v1

    .line 2074
    and-int v3, v12, v17

    .line 2075
    .line 2076
    or-int v3, v22, v3

    .line 2077
    .line 2078
    shl-int/lit8 v5, v12, 0x10

    .line 2079
    .line 2080
    invoke-static {v1, v4, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 2081
    .line 2082
    .line 2083
    move-result v1

    .line 2084
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2085
    .line 2086
    .line 2087
    if-eqz v19, :cond_63

    .line 2088
    .line 2089
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 2090
    .line 2091
    .line 2092
    move-result v1

    .line 2093
    const/high16 v14, 0x40000000    # 2.0f

    .line 2094
    .line 2095
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 2096
    .line 2097
    .line 2098
    move-result v4

    .line 2099
    move/from16 v13, v21

    .line 2100
    .line 2101
    :goto_42
    if-ge v13, v6, :cond_63

    .line 2102
    .line 2103
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v1

    .line 2107
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 2108
    .line 2109
    .line 2110
    move-result v3

    .line 2111
    const/16 v9, 0x8

    .line 2112
    .line 2113
    if-eq v3, v9, :cond_61

    .line 2114
    .line 2115
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2116
    .line 2117
    .line 2118
    move-result-object v3

    .line 2119
    move-object v7, v3

    .line 2120
    check-cast v7, Ll/b1;

    .line 2121
    .line 2122
    iget v3, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2123
    .line 2124
    const/4 v15, -0x1

    .line 2125
    if-ne v3, v15, :cond_62

    .line 2126
    .line 2127
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2128
    .line 2129
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2130
    .line 2131
    .line 2132
    move-result v3

    .line 2133
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2134
    .line 2135
    const/4 v3, 0x0

    .line 2136
    const/4 v5, 0x0

    .line 2137
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2138
    .line 2139
    .line 2140
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2141
    .line 2142
    goto :goto_43

    .line 2143
    :cond_61
    const/4 v15, -0x1

    .line 2144
    :cond_62
    :goto_43
    add-int/lit8 v13, v13, 0x1

    .line 2145
    .line 2146
    move-object/from16 v0, p0

    .line 2147
    .line 2148
    move/from16 v2, p1

    .line 2149
    .line 2150
    goto :goto_42

    .line 2151
    :cond_63
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ll/c1;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Ll/c1;->e:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "base aligned child index out of range (0, "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/c1;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Ll/c1;->t:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, p0, Ll/c1;->u:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Ll/c1;->v:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput v0, p0, Ll/c1;->u:I

    .line 25
    .line 26
    iput v0, p0, Ll/c1;->v:I

    .line 27
    .line 28
    :goto_0
    if-nez p1, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll/c1;->x:I

    .line 2
    .line 3
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Ll/c1;->m:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    const v0, 0x800007

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, p1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const v0, 0x800003

    .line 12
    .line 13
    .line 14
    or-int/2addr p1, v0

    .line 15
    :cond_0
    and-int/lit8 v0, p1, 0x70

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    or-int/lit8 p1, p1, 0x30

    .line 20
    .line 21
    :cond_1
    iput p1, p0, Ll/c1;->m:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    .line 1
    const v0, 0x800007

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    iget v1, p0, Ll/c1;->m:I

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    const v0, -0x800008

    .line 11
    .line 12
    .line 13
    and-int/2addr v0, v1

    .line 14
    or-int/2addr p1, v0

    .line 15
    iput p1, p0, Ll/c1;->m:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ll/c1;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Ll/c1;->j:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Ll/c1;->j:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 1
    iget v0, p0, Ll/c1;->w:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput p1, p0, Ll/c1;->w:I

    .line 9
    .line 10
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    .line 1
    and-int/lit8 p1, p1, 0x70

    .line 2
    .line 3
    iget v0, p0, Ll/c1;->m:I

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x70

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x71

    .line 10
    .line 11
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Ll/c1;->m:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iput p1, p0, Ll/c1;->p:F

    .line 7
    .line 8
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
