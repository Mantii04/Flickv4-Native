.class public final Lr4/k;
.super Lr4/g;
.source "SourceFile"


# instance fields
.field public final f:[Lq4/d;

.field public final g:I

.field public h:F

.field public i:F

.field public final j:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tuyenmonkey/mkloader/exception/InvalidNumberOfPulseException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lr4/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    if-gt p1, v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lr4/k;->g:I

    .line 11
    .line 12
    new-array v0, p1, [Lq4/d;

    .line 13
    .line 14
    iput-object v0, p0, Lr4/k;->f:[Lq4/d;

    .line 15
    .line 16
    new-array p1, p1, [F

    .line 17
    .line 18
    iput-object p1, p0, Lr4/k;->j:[F

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Lcom/tuyenmonkey/mkloader/exception/InvalidNumberOfPulseException;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/tuyenmonkey/mkloader/exception/InvalidNumberOfPulseException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/k;->g:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    int-to-float v1, v0

    .line 10
    iget v2, p0, Lr4/k;->h:F

    .line 11
    .line 12
    iget v3, p0, Lr4/k;->i:F

    .line 13
    .line 14
    add-float/2addr v2, v3

    .line 15
    mul-float/2addr v2, v1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lr4/k;->j:[F

    .line 21
    .line 22
    aget v1, v1, v0

    .line 23
    .line 24
    iget-object v2, p0, Lr4/k;->f:[Lq4/d;

    .line 25
    .line 26
    aget-object v3, v2, v0

    .line 27
    .line 28
    invoke-virtual {v3}, Lq4/d;->getPoint1()Landroid/graphics/PointF;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 33
    .line 34
    iget-object v4, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 35
    .line 36
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 37
    .line 38
    const/high16 v5, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-virtual {p1, v5, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 41
    .line 42
    .line 43
    aget-object v1, v2, v0

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lq4/d;->draw(Landroid/graphics/Canvas;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public initializeObjects()V
    .locals 9

    .line 1
    iget v0, p0, Lr4/g;->b:I

    .line 2
    .line 3
    iget v1, p0, Lr4/k;->g:I

    .line 4
    .line 5
    mul-int/lit8 v2, v1, 0x2

    .line 6
    .line 7
    div-int v2, v0, v2

    .line 8
    .line 9
    int-to-float v2, v2

    .line 10
    iput v2, p0, Lr4/k;->h:F

    .line 11
    .line 12
    const/high16 v3, 0x40800000    # 4.0f

    .line 13
    .line 14
    div-float v4, v2, v3

    .line 15
    .line 16
    iput v4, p0, Lr4/k;->i:F

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    int-to-float v5, v1

    .line 20
    mul-float/2addr v5, v2

    .line 21
    add-int/lit8 v6, v1, -0x1

    .line 22
    .line 23
    int-to-float v6, v6

    .line 24
    mul-float/2addr v4, v6

    .line 25
    add-float/2addr v4, v5

    .line 26
    sub-float/2addr v0, v4

    .line 27
    const/high16 v4, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr v0, v4

    .line 30
    div-float/2addr v2, v4

    .line 31
    add-float/2addr v2, v0

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-ge v0, v1, :cond_0

    .line 34
    .line 35
    new-instance v4, Lq4/d;

    .line 36
    .line 37
    invoke-direct {v4}, Lq4/d;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v5, p0, Lr4/k;->f:[Lq4/d;

    .line 41
    .line 42
    aput-object v4, v5, v0

    .line 43
    .line 44
    aget-object v4, v5, v0

    .line 45
    .line 46
    iget v6, p0, Lr4/g;->a:I

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Lq4/c;->setColor(I)V

    .line 49
    .line 50
    .line 51
    aget-object v4, v5, v0

    .line 52
    .line 53
    iget v6, p0, Lr4/k;->h:F

    .line 54
    .line 55
    invoke-virtual {v4, v6}, Lq4/c;->setWidth(F)V

    .line 56
    .line 57
    .line 58
    aget-object v4, v5, v0

    .line 59
    .line 60
    new-instance v6, Landroid/graphics/PointF;

    .line 61
    .line 62
    iget-object v7, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 63
    .line 64
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 65
    .line 66
    iget v8, p0, Lr4/g;->c:I

    .line 67
    .line 68
    int-to-float v8, v8

    .line 69
    div-float/2addr v8, v3

    .line 70
    sub-float/2addr v7, v8

    .line 71
    invoke-direct {v6, v2, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v6}, Lq4/d;->setPoint1(Landroid/graphics/PointF;)V

    .line 75
    .line 76
    .line 77
    aget-object v4, v5, v0

    .line 78
    .line 79
    new-instance v5, Landroid/graphics/PointF;

    .line 80
    .line 81
    iget-object v6, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 82
    .line 83
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 84
    .line 85
    iget v7, p0, Lr4/g;->c:I

    .line 86
    .line 87
    int-to-float v7, v7

    .line 88
    div-float/2addr v7, v3

    .line 89
    add-float/2addr v7, v6

    .line 90
    invoke-direct {v5, v2, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v5}, Lq4/d;->setPoint2(Landroid/graphics/PointF;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public setUpAnimation()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/k;->g:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [F

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-wide/16 v2, 0x3e8

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    .line 21
    mul-int/lit8 v2, v0, 0x78

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 25
    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lr4/j;

    .line 32
    .line 33
    invoke-direct {v2, p0, v0}, Lr4/j;-><init>(Lr4/k;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
