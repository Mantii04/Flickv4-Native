.class public final Lx1/c;
.super Landroid/util/Property;
.source "SourceFile"


# virtual methods
.method public get(Lx1/i;)Landroid/graphics/PointF;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lx1/i;

    invoke-virtual {p0, p1}, Lx1/c;->get(Lx1/i;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lx1/i;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lx1/c;->set(Lx1/i;Landroid/graphics/PointF;)V

    return-void
.end method

.method public set(Lx1/i;Landroid/graphics/PointF;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lx1/i;->c:I

    .line 4
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lx1/i;->d:I

    .line 5
    iget v0, p1, Lx1/i;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lx1/i;->g:I

    .line 6
    iget v1, p1, Lx1/i;->f:I

    if-ne v1, v0, :cond_0

    .line 7
    iget v0, p1, Lx1/i;->a:I

    iget v1, p1, Lx1/i;->b:I

    iget v2, p1, Lx1/i;->c:I

    iget-object v3, p1, Lx1/i;->e:Landroid/view/View;

    invoke-static {v3, v0, v1, v2, p2}, Lx1/M;->a(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    .line 8
    iput p2, p1, Lx1/i;->f:I

    .line 9
    iput p2, p1, Lx1/i;->g:I

    :cond_0
    return-void
.end method
