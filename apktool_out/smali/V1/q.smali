.class public final LV1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV1/f;
.implements LV1/n;
.implements LV1/k;
.implements LW1/a;
.implements LV1/l;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Path;

.field public final c:LT1/G;

.field public final d:Lb2/b;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:LW1/f;

.field public final h:LW1/f;

.field public final i:LW1/t;

.field public j:LV1/e;


# direct methods
.method public constructor <init>(LT1/G;Lb2/b;La2/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV1/q;->a:Landroid/graphics/Matrix;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LV1/q;->b:Landroid/graphics/Path;

    .line 17
    .line 18
    iput-object p1, p0, LV1/q;->c:LT1/G;

    .line 19
    .line 20
    iput-object p2, p0, LV1/q;->d:Lb2/b;

    .line 21
    .line 22
    invoke-virtual {p3}, La2/j;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, LV1/q;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p3}, La2/j;->isHidden()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, LV1/q;->f:Z

    .line 33
    .line 34
    invoke-virtual {p3}, La2/j;->getCopies()LZ1/b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, LZ1/b;->createAnimation()LW1/f;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, LV1/q;->g:LW1/f;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, La2/j;->getOffset()LZ1/b;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, LZ1/b;->createAnimation()LW1/f;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, LV1/q;->h:LW1/f;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, La2/j;->getTransform()LZ1/l;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, LZ1/l;->createAnimation()LW1/t;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, LV1/q;->i:LW1/t;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, LW1/t;->addAnimationsToLayer(Lb2/b;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p0}, LW1/t;->addListener(LW1/a;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public absorbContent(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "LV1/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LV1/q;->j:LV1/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eq v0, p0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, LV1/e;

    .line 45
    .line 46
    iget-object v3, p0, LV1/q;->d:Lb2/b;

    .line 47
    .line 48
    const-string v4, "Repeater"

    .line 49
    .line 50
    iget-object v2, p0, LV1/q;->c:LT1/G;

    .line 51
    .line 52
    iget-boolean v5, p0, LV1/q;->f:Z

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-direct/range {v1 .. v7}, LV1/e;-><init>(LT1/G;Lb2/b;Ljava/lang/String;ZLjava/util/ArrayList;LZ1/l;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, LV1/q;->j:LV1/e;

    .line 59
    .line 60
    return-void
.end method

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
    iget-object v0, p0, LV1/q;->i:LW1/t;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LW1/t;->applyValueCallback(Ljava/lang/Object;Lg2/c;)Z

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
    sget-object v0, LT1/K;->m:Ljava/lang/Float;

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, LV1/q;->g:LW1/f;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    sget-object v0, LT1/K;->n:Ljava/lang/Float;

    .line 21
    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, LV1/q;->h:LW1/f;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 1
    iget-object v0, p0, LV1/q;->g:LW1/f;

    .line 2
    .line 3
    invoke-virtual {v0}, LW1/f;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, LV1/q;->h:LW1/f;

    .line 14
    .line 15
    invoke-virtual {v1}, LW1/f;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Float;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, LV1/q;->i:LW1/t;

    .line 26
    .line 27
    invoke-virtual {v2}, LW1/t;->getStartOpacity()LW1/f;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, LW1/f;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Float;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/high16 v4, 0x42c80000    # 100.0f

    .line 42
    .line 43
    div-float/2addr v3, v4

    .line 44
    invoke-virtual {v2}, LW1/t;->getEndOpacity()LW1/f;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5}, LW1/f;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/lang/Float;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    div-float/2addr v5, v4

    .line 59
    float-to-int v4, v0

    .line 60
    add-int/lit8 v4, v4, -0x1

    .line 61
    .line 62
    :goto_0
    if-ltz v4, :cond_0

    .line 63
    .line 64
    iget-object v6, p0, LV1/q;->a:Landroid/graphics/Matrix;

    .line 65
    .line 66
    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 67
    .line 68
    .line 69
    int-to-float v7, v4

    .line 70
    add-float v8, v7, v1

    .line 71
    .line 72
    invoke-virtual {v2, v8}, LW1/t;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 77
    .line 78
    .line 79
    int-to-float v8, p3

    .line 80
    div-float/2addr v7, v0

    .line 81
    invoke-static {v3, v5, v7}, Lf2/g;->lerp(FFF)F

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    mul-float/2addr v7, v8

    .line 86
    iget-object v8, p0, LV1/q;->j:LV1/e;

    .line 87
    .line 88
    float-to-int v7, v7

    .line 89
    invoke-virtual {v8, p1, v6, v7}, LV1/e;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v4, v4, -0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LV1/q;->j:LV1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LV1/e;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LV1/q;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 7

    .line 1
    iget-object v0, p0, LV1/q;->j:LV1/e;

    .line 2
    .line 3
    invoke-virtual {v0}, LV1/e;->getPath()Landroid/graphics/Path;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, LV1/q;->b:Landroid/graphics/Path;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, LV1/q;->g:LW1/f;

    .line 13
    .line 14
    invoke-virtual {v2}, LW1/f;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, p0, LV1/q;->h:LW1/f;

    .line 25
    .line 26
    invoke-virtual {v3}, LW1/f;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/Float;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    float-to-int v2, v2

    .line 37
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    :goto_0
    if-ltz v2, :cond_0

    .line 40
    .line 41
    iget-object v4, p0, LV1/q;->a:Landroid/graphics/Matrix;

    .line 42
    .line 43
    int-to-float v5, v2

    .line 44
    add-float/2addr v5, v3

    .line 45
    iget-object v6, p0, LV1/q;->i:LW1/t;

    .line 46
    .line 47
    invoke-virtual {v6, v5}, LW1/t;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v2, v2, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-object v1
.end method

.method public onValueChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, LV1/q;->c:LT1/G;

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
    .locals 1
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
    iget-object v0, p0, LV1/q;->j:LV1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LV1/e;->setContents(Ljava/util/List;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
