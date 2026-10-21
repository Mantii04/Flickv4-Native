.class public final Lr4/v;
.super Lr4/g;
.source "SourceFile"


# instance fields
.field public f:[Lq4/b;

.field public final g:I

.field public h:F

.field public final i:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lr4/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lr4/v;->g:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, -0x2

    .line 10
    const/4 v3, -0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lr4/v;->i:[I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/v;->g:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    .line 11
    iget v2, p0, Lr4/v;->h:F

    .line 12
    .line 13
    mul-float/2addr v2, v1

    .line 14
    iget-object v1, p0, Lr4/v;->i:[I

    .line 15
    .line 16
    aget v1, v1, v0

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    mul-float/2addr v2, v1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lr4/v;->f:[Lq4/b;

    .line 25
    .line 26
    aget-object v1, v1, v0

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lq4/b;->draw(Landroid/graphics/Canvas;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public initializeObjects()V
    .locals 5

    .line 1
    iget v0, p0, Lr4/v;->g:I

    .line 2
    .line 3
    new-array v1, v0, [Lq4/b;

    .line 4
    .line 5
    iput-object v1, p0, Lr4/v;->f:[Lq4/b;

    .line 6
    .line 7
    iget v1, p0, Lr4/g;->b:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x41200000    # 10.0f

    .line 11
    .line 12
    div-float v2, v1, v2

    .line 13
    .line 14
    const/high16 v3, 0x42c80000    # 100.0f

    .line 15
    .line 16
    div-float/2addr v1, v3

    .line 17
    sub-float/2addr v2, v1

    .line 18
    iput v2, p0, Lr4/v;->h:F

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lr4/v;->f:[Lq4/b;

    .line 24
    .line 25
    new-instance v3, Lq4/b;

    .line 26
    .line 27
    invoke-direct {v3}, Lq4/b;-><init>()V

    .line 28
    .line 29
    .line 30
    aput-object v3, v2, v1

    .line 31
    .line 32
    iget-object v2, p0, Lr4/v;->f:[Lq4/b;

    .line 33
    .line 34
    aget-object v2, v2, v1

    .line 35
    .line 36
    iget v3, p0, Lr4/g;->a:I

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lq4/c;->setColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lr4/v;->f:[Lq4/b;

    .line 42
    .line 43
    aget-object v2, v2, v1

    .line 44
    .line 45
    iget v3, p0, Lr4/v;->h:F

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lq4/b;->setRadius(F)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lr4/v;->f:[Lq4/b;

    .line 51
    .line 52
    aget-object v2, v2, v1

    .line 53
    .line 54
    iget-object v3, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 55
    .line 56
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 57
    .line 58
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 59
    .line 60
    invoke-virtual {v2, v4, v3}, Lq4/b;->setCenter(FF)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public setUpAnimation()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v2

    .line 5
    :goto_0
    iget v4, p0, Lr4/v;->g:I

    .line 6
    .line 7
    if-ge v3, v4, :cond_0

    .line 8
    .line 9
    iget-object v4, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 10
    .line 11
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 12
    .line 13
    iget v5, p0, Lr4/g;->c:I

    .line 14
    .line 15
    int-to-float v6, v5

    .line 16
    const/high16 v7, 0x40800000    # 4.0f

    .line 17
    .line 18
    div-float/2addr v6, v7

    .line 19
    mul-int/2addr v5, v1

    .line 20
    int-to-float v5, v5

    .line 21
    div-float/2addr v5, v7

    .line 22
    const/4 v7, 0x4

    .line 23
    new-array v7, v7, [F

    .line 24
    .line 25
    aput v4, v7, v2

    .line 26
    .line 27
    aput v6, v7, v0

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    aput v5, v7, v6

    .line 31
    .line 32
    aput v4, v7, v1

    .line 33
    .line 34
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-wide/16 v5, 0x3e8

    .line 39
    .line 40
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    .line 43
    mul-int/lit8 v5, v3, 0x78

    .line 44
    .line 45
    int-to-long v5, v5

    .line 46
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 47
    .line 48
    .line 49
    const/4 v5, -0x1

    .line 50
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Lr4/u;

    .line 54
    .line 55
    invoke-direct {v5, p0, v3}, Lr4/u;-><init>(Lr4/v;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 62
    .line 63
    .line 64
    add-int/2addr v3, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
