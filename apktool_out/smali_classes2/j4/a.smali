.class public final Lj4/a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# static fields
.field public static final w:Z

.field public static final x:Ljava/util/WeakHashMap;


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public final e:Landroid/graphics/Camera;

.field public f:F

.field public j:F

.field public m:F

.field public n:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public final t:Landroid/graphics/RectF;

.field public final u:Landroid/graphics/RectF;

.field public final v:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0xb

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    sput-boolean v0, Lj4/a;->w:Z

    .line 19
    .line 20
    new-instance v0, Ljava/util/WeakHashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lj4/a;->x:Ljava/util/WeakHashMap;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Camera;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lj4/a;->e:Landroid/graphics/Camera;

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v0, p0, Lj4/a;->f:F

    .line 14
    .line 15
    iput v0, p0, Lj4/a;->p:F

    .line 16
    .line 17
    iput v0, p0, Lj4/a;->q:F

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/RectF;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lj4/a;->t:Landroid/graphics/RectF;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lj4/a;->u:Landroid/graphics/RectF;

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lj4/a;->v:Landroid/graphics/Matrix;

    .line 39
    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lj4/a;->b:Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    return-void
.end method

.method public static wrap(Landroid/view/View;)Lj4/a;
    .locals 3

    .line 1
    sget-object v0, Lj4/a;->x:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lj4/a;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object v1

    .line 19
    :cond_1
    :goto_0
    new-instance v1, Lj4/a;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lj4/a;-><init>(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lj4/a;->v:Landroid/graphics/Matrix;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lj4/a;->d(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    int-to-float p1, p1

    .line 36
    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 37
    .line 38
    .line 39
    iget p1, p2, Landroid/graphics/RectF;->right:F

    .line 40
    .line 41
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 42
    .line 43
    cmpg-float v1, p1, v0

    .line 44
    .line 45
    if-gez v1, :cond_0

    .line 46
    .line 47
    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 48
    .line 49
    iput p1, p2, Landroid/graphics/RectF;->left:F

    .line 50
    .line 51
    :cond_0
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 52
    .line 53
    iget v0, p2, Landroid/graphics/RectF;->top:F

    .line 54
    .line 55
    cmpg-float v1, p1, v0

    .line 56
    .line 57
    if-gez v1, :cond_1

    .line 58
    .line 59
    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 60
    .line 61
    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj4/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lj4/a;->f:F

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Lj4/a;->d(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lj4/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lj4/a;->u:Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lj4/a;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lj4/a;->t:Landroid/graphics/RectF;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/view/View;

    .line 33
    .line 34
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 35
    .line 36
    float-to-double v2, v2

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    double-to-int v2, v2

    .line 42
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 43
    .line 44
    float-to-double v3, v3

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    double-to-int v3, v3

    .line 50
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 51
    .line 52
    float-to-double v4, v4

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    double-to-int v4, v4

    .line 58
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 59
    .line 60
    float-to-double v5, v1

    .line 61
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    double-to-int v1, v5

    .line 66
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj4/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lj4/a;->t:Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lj4/a;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float v2, v0, v1

    .line 14
    .line 15
    div-float v1, p1, v1

    .line 16
    .line 17
    iget v3, p0, Lj4/a;->j:F

    .line 18
    .line 19
    iget v4, p0, Lj4/a;->m:F

    .line 20
    .line 21
    iget v5, p0, Lj4/a;->n:F

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    cmpl-float v7, v3, v6

    .line 25
    .line 26
    if-nez v7, :cond_0

    .line 27
    .line 28
    cmpl-float v7, v4, v6

    .line 29
    .line 30
    if-nez v7, :cond_0

    .line 31
    .line 32
    cmpl-float v6, v5, v6

    .line 33
    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    :cond_0
    iget-object v6, p0, Lj4/a;->e:Landroid/graphics/Camera;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 45
    .line 46
    .line 47
    neg-float v3, v5

    .line 48
    invoke-virtual {v6, v3}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    .line 55
    .line 56
    .line 57
    neg-float v3, v2

    .line 58
    neg-float v4, v1

    .line 59
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    iget v3, p0, Lj4/a;->p:F

    .line 66
    .line 67
    iget v4, p0, Lj4/a;->q:F

    .line 68
    .line 69
    const/high16 v5, 0x3f800000    # 1.0f

    .line 70
    .line 71
    cmpl-float v6, v3, v5

    .line 72
    .line 73
    if-nez v6, :cond_2

    .line 74
    .line 75
    cmpl-float v5, v4, v5

    .line 76
    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    :cond_2
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 80
    .line 81
    .line 82
    div-float/2addr v2, v0

    .line 83
    neg-float v2, v2

    .line 84
    mul-float/2addr v3, v0

    .line 85
    sub-float/2addr v3, v0

    .line 86
    mul-float/2addr v3, v2

    .line 87
    div-float/2addr v1, p1

    .line 88
    neg-float v0, v1

    .line 89
    mul-float/2addr v4, p1

    .line 90
    sub-float/2addr v4, p1

    .line 91
    mul-float/2addr v4, v0

    .line 92
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    iget p1, p0, Lj4/a;->r:F

    .line 96
    .line 97
    iget v0, p0, Lj4/a;->s:F

    .line 98
    .line 99
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->n:F

    .line 2
    .line 3
    return v0
.end method

.method public getRotationX()F
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public getRotationY()F
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->p:F

    .line 2
    .line 3
    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->q:F

    .line 2
    .line 3
    return v0
.end method

.method public getTranslationX()F
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->r:F

    .line 2
    .line 3
    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->s:F

    .line 2
    .line 3
    return v0
.end method

.method public getX()F
    .locals 2

    .line 1
    iget-object v0, p0, Lj4/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    iget v1, p0, Lj4/a;->r:F

    .line 19
    .line 20
    add-float/2addr v0, v1

    .line 21
    return v0
.end method

.method public getY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lj4/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    iget v1, p0, Lj4/a;->s:F

    .line 19
    .line 20
    add-float/2addr v0, v1

    .line 21
    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->f:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lj4/a;->f:F

    .line 8
    .line 9
    iget-object p1, p0, Lj4/a;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/view/View;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->n:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lj4/a;->c()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lj4/a;->n:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lj4/a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->j:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lj4/a;->c()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lj4/a;->j:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lj4/a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->m:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lj4/a;->c()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lj4/a;->m:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lj4/a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->p:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lj4/a;->c()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lj4/a;->p:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lj4/a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->q:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lj4/a;->c()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lj4/a;->q:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lj4/a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->r:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lj4/a;->c()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lj4/a;->r:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lj4/a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 1
    iget v0, p0, Lj4/a;->s:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lj4/a;->c()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lj4/a;->s:F

    .line 11
    .line 12
    invoke-virtual {p0}, Lj4/a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    sub-float/2addr p1, v0

    .line 17
    invoke-virtual {p0, p1}, Lj4/a;->setTranslationX(F)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj4/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    sub-float/2addr p1, v0

    .line 17
    invoke-virtual {p0, p1}, Lj4/a;->setTranslationY(F)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
