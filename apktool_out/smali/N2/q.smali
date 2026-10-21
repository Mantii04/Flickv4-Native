.class public abstract LN2/q;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field public static final B:Landroid/graphics/Rect;

.field public static final C:LN2/h;

.field public static final D:LN2/i;

.field public static final E:LN2/j;

.field public static final F:LN2/m;

.field public static final G:LN2/n;

.field public static final H:LN2/p;

.field public static final I:LN2/f;

.field public static final J:LN2/g;


# instance fields
.field public final A:Landroid/graphics/Matrix;

.field public b:F

.field public e:F

.field public f:F

.field public j:F

.field public m:F

.field public n:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:F

.field public v:F

.field public w:Landroid/animation/ValueAnimator;

.field public x:I

.field public y:Landroid/graphics/Rect;

.field public final z:Landroid/graphics/Camera;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LN2/q;->B:Landroid/graphics/Rect;

    .line 7
    .line 8
    new-instance v0, LN2/h;

    .line 9
    .line 10
    const-string v1, "rotateX"

    .line 11
    .line 12
    invoke-direct {v0, v1}, LL2/c;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, LN2/q;->C:LN2/h;

    .line 16
    .line 17
    new-instance v0, LN2/i;

    .line 18
    .line 19
    const-string v1, "rotate"

    .line 20
    .line 21
    invoke-direct {v0, v1}, LL2/c;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, LN2/q;->D:LN2/i;

    .line 25
    .line 26
    new-instance v0, LN2/j;

    .line 27
    .line 28
    const-string v1, "rotateY"

    .line 29
    .line 30
    invoke-direct {v0, v1}, LL2/c;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, LN2/q;->E:LN2/j;

    .line 34
    .line 35
    new-instance v0, LN2/k;

    .line 36
    .line 37
    const-string v1, "translateX"

    .line 38
    .line 39
    invoke-direct {v0, v1}, LL2/c;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, LN2/l;

    .line 43
    .line 44
    const-string v1, "translateY"

    .line 45
    .line 46
    invoke-direct {v0, v1}, LL2/c;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, LN2/m;

    .line 50
    .line 51
    const-string v1, "translateXPercentage"

    .line 52
    .line 53
    invoke-direct {v0, v1}, LL2/b;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v0, LN2/q;->F:LN2/m;

    .line 57
    .line 58
    new-instance v0, LN2/n;

    .line 59
    .line 60
    const-string v1, "translateYPercentage"

    .line 61
    .line 62
    invoke-direct {v0, v1}, LL2/b;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sput-object v0, LN2/q;->G:LN2/n;

    .line 66
    .line 67
    new-instance v0, LN2/o;

    .line 68
    .line 69
    const-string v1, "scaleX"

    .line 70
    .line 71
    invoke-direct {v0, v1}, LL2/b;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, LN2/p;

    .line 75
    .line 76
    const-string v1, "scaleY"

    .line 77
    .line 78
    invoke-direct {v0, v1}, LL2/b;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, LN2/q;->H:LN2/p;

    .line 82
    .line 83
    new-instance v0, LN2/f;

    .line 84
    .line 85
    const-string v1, "scale"

    .line 86
    .line 87
    invoke-direct {v0, v1}, LL2/b;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, LN2/q;->I:LN2/f;

    .line 91
    .line 92
    new-instance v0, LN2/g;

    .line 93
    .line 94
    const-string v1, "alpha"

    .line 95
    .line 96
    invoke-direct {v0, v1}, LL2/c;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v0, LN2/q;->J:LN2/g;

    .line 100
    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, LN2/q;->b:F

    .line 7
    .line 8
    iput v0, p0, LN2/q;->e:F

    .line 9
    .line 10
    iput v0, p0, LN2/q;->f:F

    .line 11
    .line 12
    const/16 v0, 0xff

    .line 13
    .line 14
    iput v0, p0, LN2/q;->x:I

    .line 15
    .line 16
    sget-object v0, LN2/q;->B:Landroid/graphics/Rect;

    .line 17
    .line 18
    iput-object v0, p0, LN2/q;->y:Landroid/graphics/Rect;

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Camera;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, LN2/q;->z:Landroid/graphics/Camera;

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, LN2/q;->A:Landroid/graphics/Matrix;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    div-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    new-instance v2, Landroid/graphics/Rect;

    .line 24
    .line 25
    sub-int v3, v1, v0

    .line 26
    .line 27
    sub-int v4, p1, v0

    .line 28
    .line 29
    add-int/2addr v1, v0

    .line 30
    add-int/2addr p1, v0

    .line 31
    invoke-direct {v2, v3, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    .line 33
    .line 34
    return-object v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, LN2/q;->getTranslateX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    invoke-virtual {p0}, LN2/q;->getTranslateXPercentage()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    mul-float/2addr v1, v0

    .line 21
    float-to-int v0, v1

    .line 22
    :cond_0
    invoke-virtual {p0}, LN2/q;->getTranslateY()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-float v1, v1

    .line 37
    invoke-virtual {p0}, LN2/q;->getTranslateYPercentage()F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    mul-float/2addr v2, v1

    .line 42
    float-to-int v1, v2

    .line 43
    :cond_1
    int-to-float v0, v0

    .line 44
    int-to-float v1, v1

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, LN2/q;->getScaleX()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p0}, LN2/q;->getScaleY()F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {p0}, LN2/q;->getPivotX()F

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p0}, LN2/q;->getPivotY()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, LN2/q;->getRotate()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    int-to-float v0, v0

    .line 72
    invoke-virtual {p0}, LN2/q;->getPivotX()F

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {p0}, LN2/q;->getPivotY()F

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, LN2/q;->getRotateX()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0}, LN2/q;->getRotateY()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    :cond_2
    iget-object v0, p0, LN2/q;->z:Landroid/graphics/Camera;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, LN2/q;->getRotateX()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    int-to-float v1, v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, LN2/q;->getRotateY()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    int-to-float v1, v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, LN2/q;->A:Landroid/graphics/Matrix;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, LN2/q;->getPivotX()F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    neg-float v2, v2

    .line 126
    invoke-virtual {p0}, LN2/q;->getPivotY()F

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    neg-float v3, v3

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, LN2/q;->getPivotX()F

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {p0}, LN2/q;->getPivotY()F

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-virtual {p0, p1}, LN2/q;->drawSelf(Landroid/graphics/Canvas;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public abstract drawSelf(Landroid/graphics/Canvas;)V
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract getColor()I
.end method

.method public getDrawBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, LN2/q;->y:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public getPivotX()F
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public getRotate()I
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public getRotateX()I
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getRotateY()I
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public getTranslateX()I
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public getTranslateXPercentage()F
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->u:F

    .line 2
    .line 3
    return v0
.end method

.method public getTranslateY()I
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public getTranslateYPercentage()F
    .locals 1

    .line 1
    iget v0, p0, LN2/q;->v:F

    .line 2
    .line 3
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-static {v0}, LL2/a;->isRunning(Landroid/animation/ValueAnimator;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public obtainAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    iget-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LN2/q;->onCreateAnimation()Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    iget v1, p0, LN2/q;->n:I

    .line 21
    .line 22
    int-to-long v1, v1

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, LN2/q;->setDrawBounds(Landroid/graphics/Rect;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public abstract onCreateAnimation()Landroid/animation/ValueAnimator;
.end method

.method public reset()V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iput v0, p0, LN2/q;->b:F

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, LN2/q;->p:I

    .line 7
    .line 8
    iput v0, p0, LN2/q;->q:I

    .line 9
    .line 10
    iput v0, p0, LN2/q;->r:I

    .line 11
    .line 12
    iput v0, p0, LN2/q;->s:I

    .line 13
    .line 14
    iput v0, p0, LN2/q;->t:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, LN2/q;->u:F

    .line 18
    .line 19
    iput v0, p0, LN2/q;->v:F

    .line 20
    .line 21
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->x:I

    .line 2
    .line 3
    return-void
.end method

.method public setAnimationDelay(I)LN2/q;
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract setColor(I)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDrawBounds(IIII)V
    .locals 1

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, LN2/q;->y:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0}, LN2/q;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, LN2/q;->setPivotX(F)V

    .line 4
    invoke-virtual {p0}, LN2/q;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, LN2/q;->setPivotY(F)V

    return-void
.end method

.method public setDrawBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, LN2/q;->setDrawBounds(IIII)V

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->j:F

    .line 2
    .line 3
    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->m:F

    .line 2
    .line 3
    return-void
.end method

.method public setRotate(I)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public setRotateX(I)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public setRotateY(I)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->b:F

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LN2/q;->setScaleX(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, LN2/q;->setScaleY(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->e:F

    .line 2
    .line 3
    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->f:F

    .line 2
    .line 3
    return-void
.end method

.method public setTranslateX(I)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->r:I

    .line 2
    .line 3
    return-void
.end method

.method public setTranslateXPercentage(F)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->u:F

    .line 2
    .line 3
    return-void
.end method

.method public setTranslateY(I)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->s:I

    .line 2
    .line 3
    return-void
.end method

.method public setTranslateYPercentage(F)V
    .locals 0

    .line 1
    iput p1, p0, LN2/q;->v:F

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-static {v0}, LL2/a;->isStarted(Landroid/animation/ValueAnimator;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, LN2/q;->obtainAnimation()Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-static {v0}, LL2/a;->start(Landroid/animation/Animator;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-static {v0}, LL2/a;->isStarted(Landroid/animation/ValueAnimator;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, LN2/q;->w:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, LN2/q;->reset()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
.end method
