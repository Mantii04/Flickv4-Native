.class public final LW1/o;
.super LW1/k;
.source "SourceFile"


# instance fields
.field public final i:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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
    iput-object p1, p0, LW1/o;->i:Landroid/graphics/PointF;

    .line 10
    .line 11
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
    iget-object v0, p1, Lg2/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lg2/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 3
    move-object v5, v0

    check-cast v5, Landroid/graphics/PointF;

    .line 4
    move-object v6, v1

    check-cast v6, Landroid/graphics/PointF;

    .line 5
    iget-object v2, p0, LW1/f;->e:Lg2/c;

    if-eqz v2, :cond_0

    .line 6
    iget-object v0, p1, Lg2/a;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 7
    invoke-virtual {p0}, LW1/f;->b()F

    move-result v8

    invoke-virtual {p0}, LW1/f;->getProgress()F

    move-result v9

    .line 8
    iget v3, p1, Lg2/a;->e:F

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lg2/c;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_1

    return-object p1

    :cond_0
    move v7, p2

    .line 9
    :cond_1
    iget-object p1, p0, LW1/o;->i:Landroid/graphics/PointF;

    iget p2, v5, Landroid/graphics/PointF;->x:F

    iget v0, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v0, p2, v7, p2}, Lb/c;->a(FFFF)F

    move-result p2

    iget v0, v5, Landroid/graphics/PointF;->y:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0, v7, v0}, Lb/c;->a(FFFF)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getValue(Lg2/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW1/o;->getValue(Lg2/a;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
