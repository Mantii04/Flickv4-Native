.class public final LW1/n;
.super LW1/k;
.source "SourceFile"


# instance fields
.field public final i:Landroid/graphics/PointF;

.field public final j:[F

.field public k:LW1/m;

.field public final l:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lg2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LW1/f;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/PointF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LW1/n;->i:Landroid/graphics/PointF;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    new-array p1, p1, [F

    .line 13
    .line 14
    iput-object p1, p0, LW1/n;->j:[F

    .line 15
    .line 16
    new-instance p1, Landroid/graphics/PathMeasure;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, LW1/n;->l:Landroid/graphics/PathMeasure;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public getValue(Lg2/a;F)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/a;",
            "F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 2
    move-object v0, p1

    check-cast v0, LW1/m;

    .line 3
    iget-object v1, v0, LW1/m;->o:Landroid/graphics/Path;

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p1, Lg2/a;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    return-object p1

    .line 5
    :cond_0
    iget-object v2, p0, LW1/f;->e:Lg2/c;

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, v0, Lg2/a;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v6, v0, Lg2/a;->c:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, LW1/f;->b()F

    move-result v7

    .line 8
    invoke-virtual {p0}, LW1/f;->getProgress()F

    move-result v9

    .line 9
    iget v3, v0, Lg2/a;->e:F

    iget-object v5, v0, Lg2/a;->b:Ljava/lang/Object;

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Lg2/c;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_2

    return-object p1

    :cond_1
    move v8, p2

    .line 10
    :cond_2
    iget-object p1, p0, LW1/n;->k:LW1/m;

    const/4 p2, 0x0

    iget-object v2, p0, LW1/n;->l:Landroid/graphics/PathMeasure;

    if-eq p1, v0, :cond_3

    .line 11
    invoke-virtual {v2, v1, p2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 12
    iput-object v0, p0, LW1/n;->k:LW1/m;

    .line 13
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    mul-float/2addr p1, v8

    const/4 v0, 0x0

    iget-object v1, p0, LW1/n;->j:[F

    invoke-virtual {v2, p1, v1, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 14
    iget-object p1, p0, LW1/n;->i:Landroid/graphics/PointF;

    aget p2, v1, p2

    const/4 v0, 0x1

    aget v0, v1, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p1
.end method

.method public bridge synthetic getValue(Lg2/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW1/n;->getValue(Lg2/a;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
