.class public final LV1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV1/f;
.implements LW1/a;
.implements LV1/l;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:LU1/a;

.field public final c:Lb2/b;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/ArrayList;

.field public final g:LW1/f;

.field public final h:LW1/f;

.field public i:LW1/u;

.field public final j:LT1/G;


# direct methods
.method public constructor <init>(LT1/G;Lb2/b;La2/l;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV1/h;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v1, LU1/a;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2}, LU1/a;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, LV1/h;->b:LU1/a;

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, LV1/h;->f:Ljava/util/ArrayList;

    .line 25
    .line 26
    iput-object p2, p0, LV1/h;->c:Lb2/b;

    .line 27
    .line 28
    invoke-virtual {p3}, La2/l;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, LV1/h;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p3}, La2/l;->isHidden()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput-boolean v1, p0, LV1/h;->e:Z

    .line 39
    .line 40
    iput-object p1, p0, LV1/h;->j:LT1/G;

    .line 41
    .line 42
    invoke-virtual {p3}, La2/l;->getColor()LZ1/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p3}, La2/l;->getOpacity()LZ1/d;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p3}, La2/l;->getFillType()Landroid/graphics/Path$FillType;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, La2/l;->getColor()LZ1/a;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, LZ1/a;->createAnimation()LW1/f;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, LV1/h;->g:LW1/f;

    .line 71
    .line 72
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, La2/l;->getOpacity()LZ1/d;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, LZ1/d;->createAnimation()LW1/f;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, LV1/h;->h:LW1/f;

    .line 87
    .line 88
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, LV1/h;->g:LW1/f;

    .line 97
    .line 98
    iput-object p1, p0, LV1/h;->h:LW1/f;

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lg2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lg2/c;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, LT1/K;->a:Landroid/graphics/PointF;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, LV1/h;->g:LW1/f;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x4

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, LV1/h;->h:LW1/f;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    sget-object v0, LT1/K;->y:Landroid/graphics/ColorFilter;

    .line 30
    .line 31
    if-ne p1, v0, :cond_4

    .line 32
    .line 33
    iget-object p1, p0, LV1/h;->i:LW1/u;

    .line 34
    .line 35
    iget-object v0, p0, LV1/h;->c:Lb2/b;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    if-nez p2, :cond_3

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, LV1/h;->i:LW1/u;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    new-instance p1, LW1/u;

    .line 49
    .line 50
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, LV1/h;->i:LW1/u;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, LV1/h;->i:LW1/u;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, LV1/h;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "FillContent#draw"

    .line 7
    .line 8
    invoke-static {v0}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, LV1/h;->g:LW1/f;

    .line 12
    .line 13
    check-cast v1, LW1/g;

    .line 14
    .line 15
    invoke-virtual {v1}, LW1/g;->getIntValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, LV1/h;->b:LU1/a;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    int-to-float p3, p3

    .line 25
    const/high16 v1, 0x437f0000    # 255.0f

    .line 26
    .line 27
    div-float/2addr p3, v1

    .line 28
    iget-object v3, p0, LV1/h;->h:LW1/f;

    .line 29
    .line 30
    invoke-virtual {v3}, LW1/f;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    int-to-float v3, v3

    .line 41
    mul-float/2addr p3, v3

    .line 42
    const/high16 v3, 0x42c80000    # 100.0f

    .line 43
    .line 44
    div-float/2addr p3, v3

    .line 45
    mul-float/2addr p3, v1

    .line 46
    float-to-int p3, p3

    .line 47
    const/4 v1, 0x0

    .line 48
    const/16 v3, 0xff

    .line 49
    .line 50
    invoke-static {p3, v1, v3}, Lf2/g;->clamp(III)I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    .line 56
    .line 57
    iget-object p3, p0, LV1/h;->i:LW1/u;

    .line 58
    .line 59
    if-eqz p3, :cond_1

    .line 60
    .line 61
    invoke-virtual {p3}, LW1/u;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    check-cast p3, Landroid/graphics/ColorFilter;

    .line 66
    .line 67
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object p3, p0, LV1/h;->a:Landroid/graphics/Path;

    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 73
    .line 74
    .line 75
    :goto_0
    iget-object v3, p0, LV1/h;->f:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ge v1, v4, :cond_2

    .line 82
    .line 83
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, LV1/n;

    .line 88
    .line 89
    invoke-interface {v3}, LV1/n;->getPath()Landroid/graphics/Path;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {p3, v3, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1, p3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    .line 1
    iget-object p3, p0, LV1/h;->a:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, LV1/h;->f:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v1, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, LV1/n;

    .line 21
    .line 22
    invoke-interface {v2}, LV1/n;->getPath()Landroid/graphics/Path;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 33
    .line 34
    .line 35
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 36
    .line 37
    const/high16 p3, 0x3f800000    # 1.0f

    .line 38
    .line 39
    sub-float/2addr p2, p3

    .line 40
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 41
    .line 42
    sub-float/2addr v0, p3

    .line 43
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 44
    .line 45
    add-float/2addr v1, p3

    .line 46
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 47
    .line 48
    add-float/2addr v2, p3

    .line 49
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LV1/h;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, LV1/h;->j:LT1/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LT1/G;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY1/e;",
            "I",
            "Ljava/util/List<",
            "LY1/e;",
            ">;",
            "LY1/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lf2/g;->resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;LV1/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LV1/d;",
            ">;",
            "Ljava/util/List<",
            "LV1/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, LV1/d;

    .line 13
    .line 14
    instance-of v1, v0, LV1/n;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, LV1/h;->f:Ljava/util/ArrayList;

    .line 19
    .line 20
    check-cast v0, LV1/n;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method
