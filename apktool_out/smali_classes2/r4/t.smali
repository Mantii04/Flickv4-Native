.class public final Lr4/t;
.super Lr4/g;
.source "SourceFile"


# instance fields
.field public f:[Lq4/a;

.field public final g:I

.field public h:[F


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
    iput v0, p0, Lr4/t;->g:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/t;->g:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lr4/t;->h:[F

    .line 10
    .line 11
    aget v1, v1, v0

    .line 12
    .line 13
    iget-object v2, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 14
    .line 15
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 16
    .line 17
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 18
    .line 19
    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lr4/t;->f:[Lq4/a;

    .line 23
    .line 24
    aget-object v1, v1, v0

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lq4/a;->draw(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public initializeObjects()V
    .locals 10

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
    iget v1, p0, Lr4/t;->g:I

    .line 14
    .line 15
    new-array v2, v1, [Lq4/a;

    .line 16
    .line 17
    iput-object v2, p0, Lr4/t;->f:[Lq4/a;

    .line 18
    .line 19
    new-array v2, v1, [F

    .line 20
    .line 21
    iput-object v2, p0, Lr4/t;->h:[F

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_0

    .line 25
    .line 26
    const/high16 v3, 0x40800000    # 4.0f

    .line 27
    .line 28
    div-float v4, v0, v3

    .line 29
    .line 30
    int-to-float v5, v2

    .line 31
    mul-float/2addr v5, v0

    .line 32
    div-float/2addr v5, v3

    .line 33
    add-float/2addr v5, v4

    .line 34
    iget-object v3, p0, Lr4/t;->f:[Lq4/a;

    .line 35
    .line 36
    new-instance v4, Lq4/a;

    .line 37
    .line 38
    invoke-direct {v4}, Lq4/a;-><init>()V

    .line 39
    .line 40
    .line 41
    aput-object v4, v3, v2

    .line 42
    .line 43
    iget-object v3, p0, Lr4/t;->f:[Lq4/a;

    .line 44
    .line 45
    aget-object v3, v3, v2

    .line 46
    .line 47
    iget v4, p0, Lr4/g;->a:I

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Lq4/c;->setColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lr4/t;->f:[Lq4/a;

    .line 53
    .line 54
    aget-object v3, v3, v2

    .line 55
    .line 56
    new-instance v4, Landroid/graphics/RectF;

    .line 57
    .line 58
    iget-object v6, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 59
    .line 60
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 61
    .line 62
    sub-float v8, v7, v5

    .line 63
    .line 64
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 65
    .line 66
    sub-float v9, v6, v5

    .line 67
    .line 68
    add-float/2addr v7, v5

    .line 69
    add-float/2addr v6, v5

    .line 70
    invoke-direct {v4, v8, v9, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4}, Lq4/a;->setOval(Landroid/graphics/RectF;)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lr4/t;->f:[Lq4/a;

    .line 77
    .line 78
    aget-object v3, v3, v2

    .line 79
    .line 80
    mul-int/lit8 v4, v2, 0x2d

    .line 81
    .line 82
    int-to-float v5, v4

    .line 83
    invoke-virtual {v3, v5}, Lq4/a;->setStartAngle(F)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lr4/t;->f:[Lq4/a;

    .line 87
    .line 88
    aget-object v3, v3, v2

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x5a

    .line 91
    .line 92
    int-to-float v4, v4

    .line 93
    invoke-virtual {v3, v4}, Lq4/a;->setSweepAngle(F)V

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lr4/t;->f:[Lq4/a;

    .line 97
    .line 98
    aget-object v3, v3, v2

    .line 99
    .line 100
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Lq4/c;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lr4/t;->f:[Lq4/a;

    .line 106
    .line 107
    aget-object v3, v3, v2

    .line 108
    .line 109
    const/high16 v4, 0x41200000    # 10.0f

    .line 110
    .line 111
    div-float v4, v0, v4

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Lq4/c;->setWidth(F)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public setUpAnimation()V
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    iget v2, p0, Lr4/t;->g:I

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    sub-int/2addr v2, v3

    .line 7
    :goto_0
    if-ltz v2, :cond_1

    .line 8
    .line 9
    iget-object v4, p0, Lr4/t;->f:[Lq4/a;

    .line 10
    .line 11
    aget-object v4, v4, v2

    .line 12
    .line 13
    invoke-virtual {v4}, Lq4/a;->getStartAngle()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v5, p0, Lr4/t;->f:[Lq4/a;

    .line 18
    .line 19
    aget-object v5, v5, v2

    .line 20
    .line 21
    invoke-virtual {v5}, Lq4/a;->getStartAngle()F

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    rem-int/lit8 v6, v2, 0x2

    .line 26
    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    move v6, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v6, v3

    .line 32
    :goto_1
    mul-int/lit16 v6, v6, 0x168

    .line 33
    .line 34
    int-to-float v6, v6

    .line 35
    add-float/2addr v5, v6

    .line 36
    new-array v6, v1, [F

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    aput v4, v6, v7

    .line 40
    .line 41
    aput v5, v6, v3

    .line 42
    .line 43
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v5, v2, 0x1

    .line 51
    .line 52
    mul-int/lit16 v5, v5, 0x1f4

    .line 53
    .line 54
    int-to-long v5, v5

    .line 55
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    new-instance v5, Lr4/s;

    .line 59
    .line 60
    invoke-direct {v5, p0, v2}, Lr4/s;-><init>(Lr4/t;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 67
    .line 68
    .line 69
    add-int/2addr v2, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method
