.class public final Lr4/r;
.super Lr4/g;
.source "SourceFile"


# instance fields
.field public f:[Lq4/b;

.field public final g:I

.field public final h:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lr4/r;->g:I

    .line 7
    .line 8
    new-array v0, v0, [F

    .line 9
    .line 10
    iput-object v0, p0, Lr4/r;->h:[F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/r;->g:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lr4/r;->h:[F

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
    iget-object v1, p0, Lr4/r;->f:[Lq4/b;

    .line 23
    .line 24
    aget-object v1, v1, v0

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lq4/b;->draw(Landroid/graphics/Canvas;)V

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
    .locals 8

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
    const/high16 v1, 0x41200000    # 10.0f

    .line 11
    .line 12
    div-float v1, v0, v1

    .line 13
    .line 14
    iget v2, p0, Lr4/r;->g:I

    .line 15
    .line 16
    new-array v3, v2, [Lq4/b;

    .line 17
    .line 18
    iput-object v3, p0, Lr4/r;->f:[Lq4/b;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    div-int/lit8 v4, v2, 0x2

    .line 22
    .line 23
    const/high16 v5, 0x40c00000    # 6.0f

    .line 24
    .line 25
    if-ge v3, v4, :cond_0

    .line 26
    .line 27
    iget-object v4, p0, Lr4/r;->f:[Lq4/b;

    .line 28
    .line 29
    new-instance v6, Lq4/b;

    .line 30
    .line 31
    invoke-direct {v6}, Lq4/b;-><init>()V

    .line 32
    .line 33
    .line 34
    aput-object v6, v4, v3

    .line 35
    .line 36
    iget-object v4, p0, Lr4/r;->f:[Lq4/b;

    .line 37
    .line 38
    aget-object v4, v4, v3

    .line 39
    .line 40
    iget-object v6, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 41
    .line 42
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 43
    .line 44
    invoke-virtual {v4, v6, v1}, Lq4/b;->setCenter(FF)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lr4/r;->f:[Lq4/b;

    .line 48
    .line 49
    aget-object v4, v4, v3

    .line 50
    .line 51
    iget v6, p0, Lr4/g;->a:I

    .line 52
    .line 53
    invoke-virtual {v4, v6}, Lq4/c;->setColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lr4/r;->f:[Lq4/b;

    .line 57
    .line 58
    aget-object v4, v4, v3

    .line 59
    .line 60
    int-to-float v6, v3

    .line 61
    mul-float/2addr v6, v1

    .line 62
    div-float/2addr v6, v5

    .line 63
    sub-float v5, v1, v6

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Lq4/b;->setRadius(F)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    :goto_1
    if-ge v4, v2, :cond_1

    .line 72
    .line 73
    iget-object v3, p0, Lr4/r;->f:[Lq4/b;

    .line 74
    .line 75
    new-instance v6, Lq4/b;

    .line 76
    .line 77
    invoke-direct {v6}, Lq4/b;-><init>()V

    .line 78
    .line 79
    .line 80
    aput-object v6, v3, v4

    .line 81
    .line 82
    iget-object v3, p0, Lr4/r;->f:[Lq4/b;

    .line 83
    .line 84
    aget-object v3, v3, v4

    .line 85
    .line 86
    iget-object v6, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 87
    .line 88
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 89
    .line 90
    sub-float v7, v0, v1

    .line 91
    .line 92
    invoke-virtual {v3, v6, v7}, Lq4/b;->setCenter(FF)V

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lr4/r;->f:[Lq4/b;

    .line 96
    .line 97
    aget-object v3, v3, v4

    .line 98
    .line 99
    iget v6, p0, Lr4/g;->a:I

    .line 100
    .line 101
    invoke-virtual {v3, v6}, Lq4/c;->setColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lr4/r;->f:[Lq4/b;

    .line 105
    .line 106
    aget-object v3, v3, v4

    .line 107
    .line 108
    add-int/lit8 v6, v4, -0x5

    .line 109
    .line 110
    int-to-float v6, v6

    .line 111
    mul-float/2addr v6, v1

    .line 112
    div-float/2addr v6, v5

    .line 113
    sub-float v6, v1, v6

    .line 114
    .line 115
    invoke-virtual {v3, v6}, Lq4/b;->setRadius(F)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    return-void
.end method

.method public setUpAnimation()V
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lr4/r;->g:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [F

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, -0x1

    .line 18
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v3, 0x6a4

    .line 22
    .line 23
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    .line 26
    if-lt v1, v0, :cond_0

    .line 27
    .line 28
    add-int/lit8 v3, v1, -0x5

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v3, v1

    .line 32
    :goto_1
    mul-int/lit8 v3, v3, 0x64

    .line 33
    .line 34
    int-to-long v3, v3

    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lr4/q;

    .line 39
    .line 40
    invoke-direct {v3, p0, v1}, Lr4/q;-><init>(Lr4/r;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void

    .line 53
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
