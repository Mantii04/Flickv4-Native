.class public final Lr4/m;
.super Lr4/g;
.source "SourceFile"


# instance fields
.field public f:Lq4/d;

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr4/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lr4/m;->g:F

    .line 5
    .line 6
    iget-object v1, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 7
    .line 8
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 9
    .line 10
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 11
    .line 12
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lr4/m;->f:Lq4/d;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lq4/d;->draw(Landroid/graphics/Canvas;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public initializeObjects()V
    .locals 4

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
    new-instance v1, Lq4/d;

    .line 11
    .line 12
    invoke-direct {v1}, Lq4/d;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lr4/m;->f:Lq4/d;

    .line 16
    .line 17
    iget-object v2, p0, Lr4/g;->d:Landroid/graphics/PointF;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lq4/d;->setPoint1(Landroid/graphics/PointF;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lr4/m;->f:Lq4/d;

    .line 23
    .line 24
    new-instance v2, Landroid/graphics/PointF;

    .line 25
    .line 26
    const/high16 v3, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v0, v3

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lq4/d;->setPoint2(Landroid/graphics/PointF;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lr4/m;->f:Lq4/d;

    .line 37
    .line 38
    iget v1, p0, Lr4/g;->a:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lq4/c;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lr4/m;->f:Lq4/d;

    .line 44
    .line 45
    const/high16 v1, 0x40a00000    # 5.0f

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lq4/c;->setWidth(F)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public setUpAnimation()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x3e8

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lr4/l;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lr4/l;-><init>(Lr4/m;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data
.end method
