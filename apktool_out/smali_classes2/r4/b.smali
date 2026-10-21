.class public final Lr4/b;
.super Lr4/g;
.source "SourceFile"


# instance fields
.field public f:[Lq4/b;

.field public final g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    iput v0, p0, Lr4/b;->g:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/b;->g:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    mul-int/lit8 v1, v0, 0x2d

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    iget-object v2, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 13
    .line 14
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 15
    .line 16
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 17
    .line 18
    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lr4/b;->f:[Lq4/b;

    .line 22
    .line 23
    aget-object v1, v1, v0

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lq4/b;->draw(Landroid/graphics/Canvas;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public initializeObjects()V
    .locals 5

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
    iget v1, p0, Lr4/b;->g:I

    .line 14
    .line 15
    new-array v2, v1, [Lq4/b;

    .line 16
    .line 17
    iput-object v2, p0, Lr4/b;->f:[Lq4/b;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lr4/b;->f:[Lq4/b;

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
    iget-object v3, p0, Lr4/b;->f:[Lq4/b;

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
    iget-object v3, p0, Lr4/b;->f:[Lq4/b;

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
    iget-object v3, p0, Lr4/b;->f:[Lq4/b;

    .line 52
    .line 53
    aget-object v3, v3, v2

    .line 54
    .line 55
    const/16 v4, 0x7e

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Lq4/c;->setAlpha(I)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lr4/b;->f:[Lq4/b;

    .line 61
    .line 62
    aget-object v3, v3, v2

    .line 63
    .line 64
    invoke-virtual {v3, v0}, Lq4/b;->setRadius(F)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public setUpAnimation()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lr4/b;->g:I

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
    new-instance v2, Lr4/a;

    .line 34
    .line 35
    invoke-direct {v2, p0, v0}, Lr4/a;-><init>(Lr4/b;I)V

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
