.class public final Lr4/d;
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
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lr4/d;->g:I

    .line 6
    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    iput-object v0, p0, Lr4/d;->h:[F

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/d;->g:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lr4/d;->h:[F

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
    iget-object v1, p0, Lr4/d;->f:[Lq4/b;

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
    .locals 6

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
    div-float/2addr v0, v1

    .line 13
    iget v1, p0, Lr4/d;->g:I

    .line 14
    .line 15
    new-array v2, v1, [Lq4/b;

    .line 16
    .line 17
    iput-object v2, p0, Lr4/d;->f:[Lq4/b;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lr4/d;->f:[Lq4/b;

    .line 23
    .line 24
    new-instance v4, Lq4/b;

    .line 25
    .line 26
    invoke-direct {v4}, Lq4/b;-><init>()V

    .line 27
    .line 28
    .line 29
    aput-object v4, v3, v2

    .line 30
    .line 31
    iget-object v3, p0, Lr4/d;->f:[Lq4/b;

    .line 32
    .line 33
    aget-object v3, v3, v2

    .line 34
    .line 35
    iget-object v4, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 36
    .line 37
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 38
    .line 39
    invoke-virtual {v3, v4, v0}, Lq4/b;->setCenter(FF)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lr4/d;->f:[Lq4/b;

    .line 43
    .line 44
    aget-object v3, v3, v2

    .line 45
    .line 46
    iget v4, p0, Lr4/g;->a:I

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Lq4/c;->setColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lr4/d;->f:[Lq4/b;

    .line 52
    .line 53
    aget-object v3, v3, v2

    .line 54
    .line 55
    int-to-float v4, v2

    .line 56
    mul-float/2addr v4, v0

    .line 57
    const/high16 v5, 0x40c00000    # 6.0f

    .line 58
    .line 59
    div-float/2addr v4, v5

    .line 60
    sub-float v4, v0, v4

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Lq4/b;->setRadius(F)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public setUpAnimation()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/d;->g:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x2

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
    const/4 v2, -0x1

    .line 17
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x6a4

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    .line 25
    mul-int/lit8 v2, v0, 0x64

    .line 26
    .line 27
    int-to-long v2, v2

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lr4/c;

    .line 32
    .line 33
    invoke-direct {v2, p0, v0}, Lr4/c;-><init>(Lr4/d;I)V

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
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
