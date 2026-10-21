.class public final LV1/s;
.super LV1/b;
.source "SourceFile"


# instance fields
.field public final o:Lb2/b;

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:LW1/f;

.field public s:LW1/u;


# direct methods
.method public constructor <init>(LT1/G;Lb2/b;La2/o;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, La2/o;->getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {p3}, La2/o;->getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {p3}, La2/o;->getMiterLimit()F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {p3}, La2/o;->getOpacity()LZ1/d;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {p3}, La2/o;->getWidth()LZ1/b;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p3}, La2/o;->getLineDashPattern()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {p3}, La2/o;->getDashOffset()LZ1/b;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p2

    .line 40
    invoke-direct/range {v1 .. v10}, LV1/b;-><init>(LT1/G;Lb2/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLZ1/d;LZ1/b;Ljava/util/List;LZ1/b;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, v1, LV1/s;->o:Lb2/b;

    .line 44
    .line 45
    invoke-virtual {p3}, La2/o;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, v1, LV1/s;->p:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p3}, La2/o;->isHidden()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, v1, LV1/s;->q:Z

    .line 56
    .line 57
    invoke-virtual {p3}, La2/o;->getColor()LZ1/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, LZ1/a;->createAnimation()LW1/f;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, v1, LV1/s;->r:LW1/f;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lg2/c;)V
    .locals 2
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
    invoke-super {p0, p1, p2}, LV1/b;->addValueCallback(Ljava/lang/Object;Lg2/c;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, LT1/K;->a:Landroid/graphics/PointF;

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, LV1/s;->r:LW1/f;

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, LT1/K;->y:Landroid/graphics/ColorFilter;

    .line 20
    .line 21
    if-ne p1, v0, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, LV1/s;->s:LW1/u;

    .line 24
    .line 25
    iget-object v0, p0, LV1/s;->o:Lb2/b;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    if-nez p2, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, LV1/s;->s:LW1/u;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance p1, LW1/u;

    .line 39
    .line 40
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, LV1/s;->s:LW1/u;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LV1/s;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LV1/s;->r:LW1/f;

    .line 7
    .line 8
    check-cast v0, LW1/g;

    .line 9
    .line 10
    invoke-virtual {v0}, LW1/g;->getIntValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, LV1/b;->i:LU1/a;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, LV1/s;->s:LW1/u;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, LW1/u;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/graphics/ColorFilter;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-super {p0, p1, p2, p3}, LV1/b;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LV1/s;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
