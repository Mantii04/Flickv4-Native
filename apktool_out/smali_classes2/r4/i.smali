.class public final Lr4/i;
.super Lr4/g;
.source "SourceFile"


# instance fields
.field public f:[Lq4/a;

.field public final g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lr4/i;->g:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/i;->g:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lr4/i;->f:[Lq4/a;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lq4/a;->draw(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public initializeObjects()V
    .locals 11

    .line 1
    iget v0, p0, Lr4/g;->b:I

    .line 2
    .line 3
    iget v1, p0, Lr4/g;->c:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v0, v1

    .line 13
    iget v1, p0, Lr4/i;->g:I

    .line 14
    .line 15
    new-array v2, v1, [Lq4/a;

    .line 16
    .line 17
    iput-object v2, p0, Lr4/i;->f:[Lq4/a;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    .line 22
    const/high16 v3, 0x40800000    # 4.0f

    .line 23
    .line 24
    div-float v4, v0, v3

    .line 25
    .line 26
    int-to-float v5, v2

    .line 27
    mul-float/2addr v5, v0

    .line 28
    div-float/2addr v5, v3

    .line 29
    add-float/2addr v5, v4

    .line 30
    iget-object v3, p0, Lr4/i;->f:[Lq4/a;

    .line 31
    .line 32
    new-instance v4, Lq4/a;

    .line 33
    .line 34
    invoke-direct {v4}, Lq4/a;-><init>()V

    .line 35
    .line 36
    .line 37
    aput-object v4, v3, v2

    .line 38
    .line 39
    iget-object v3, p0, Lr4/i;->f:[Lq4/a;

    .line 40
    .line 41
    aget-object v3, v3, v2

    .line 42
    .line 43
    iget v4, p0, Lr4/g;->a:I

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Lq4/c;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lr4/i;->f:[Lq4/a;

    .line 49
    .line 50
    aget-object v3, v3, v2

    .line 51
    .line 52
    const/16 v4, 0x7e

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lq4/c;->setAlpha(I)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lr4/i;->f:[Lq4/a;

    .line 58
    .line 59
    aget-object v3, v3, v2

    .line 60
    .line 61
    new-instance v4, Landroid/graphics/RectF;

    .line 62
    .line 63
    iget-object v6, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 64
    .line 65
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 66
    .line 67
    sub-float v8, v7, v5

    .line 68
    .line 69
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 70
    .line 71
    sub-float v9, v6, v5

    .line 72
    .line 73
    const/high16 v10, 0x40400000    # 3.0f

    .line 74
    .line 75
    div-float v10, v0, v10

    .line 76
    .line 77
    add-float/2addr v9, v10

    .line 78
    add-float/2addr v7, v5

    .line 79
    add-float/2addr v6, v5

    .line 80
    add-float/2addr v6, v10

    .line 81
    invoke-direct {v4, v8, v9, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Lq4/a;->setOval(Landroid/graphics/RectF;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lr4/i;->f:[Lq4/a;

    .line 88
    .line 89
    aget-object v3, v3, v2

    .line 90
    .line 91
    const/high16 v4, 0x43610000    # 225.0f

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Lq4/a;->setStartAngle(F)V

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lr4/i;->f:[Lq4/a;

    .line 97
    .line 98
    aget-object v3, v3, v2

    .line 99
    .line 100
    const/high16 v4, 0x42b40000    # 90.0f

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Lq4/a;->setSweepAngle(F)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lr4/i;->f:[Lq4/a;

    .line 106
    .line 107
    aget-object v3, v3, v2

    .line 108
    .line 109
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Lq4/c;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lr4/i;->f:[Lq4/a;

    .line 115
    .line 116
    aget-object v3, v3, v2

    .line 117
    .line 118
    const/high16 v4, 0x41200000    # 10.0f

    .line 119
    .line 120
    div-float v4, v0, v4

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Lq4/c;->setWidth(F)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public setUpAnimation()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/i;->g:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/16 v1, 0xff

    .line 7
    .line 8
    const/16 v2, 0x7e

    .line 9
    .line 10
    filled-new-array {v2, v1, v2}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v2, 0x3e8

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    .line 27
    mul-int/lit8 v2, v0, 0x78

    .line 28
    .line 29
    int-to-long v2, v2

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lr4/h;

    .line 34
    .line 35
    invoke-direct {v2, p0, v0}, Lr4/h;-><init>(Lr4/i;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method
