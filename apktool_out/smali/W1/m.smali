.class public final LW1/m;
.super Lg2/a;
.source "SourceFile"


# instance fields
.field public o:Landroid/graphics/Path;

.field public final p:Lg2/a;


# direct methods
.method public constructor <init>(LT1/i;Lg2/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT1/i;",
            "Lg2/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v2, p2, Lg2/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v3, p2, Lg2/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v4, p2, Lg2/a;->d:Landroid/view/animation/Interpolator;

    .line 6
    .line 7
    iget v5, p2, Lg2/a;->e:F

    .line 8
    .line 9
    iget-object v6, p2, Lg2/a;->f:Ljava/lang/Float;

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    invoke-direct/range {v0 .. v6}, Lg2/a;-><init>(LT1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, v0, LW1/m;->p:Lg2/a;

    .line 17
    .line 18
    invoke-virtual {p0}, LW1/m;->createPath()V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public createPath()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg2/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lg2/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroid/graphics/PointF;

    .line 11
    .line 12
    move-object v3, v0

    .line 13
    check-cast v3, Landroid/graphics/PointF;

    .line 14
    .line 15
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 16
    .line 17
    check-cast v0, Landroid/graphics/PointF;

    .line 18
    .line 19
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 20
    .line 21
    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->equals(FF)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, Lg2/a;->c:Ljava/lang/Object;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    check-cast v1, Landroid/graphics/PointF;

    .line 37
    .line 38
    check-cast v2, Landroid/graphics/PointF;

    .line 39
    .line 40
    iget-object v0, p0, LW1/m;->p:Lg2/a;

    .line 41
    .line 42
    iget-object v3, v0, Lg2/a;->m:Landroid/graphics/PointF;

    .line 43
    .line 44
    iget-object v0, v0, Lg2/a;->n:Landroid/graphics/PointF;

    .line 45
    .line 46
    invoke-static {v1, v2, v3, v0}, Lf2/h;->createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, LW1/m;->o:Landroid/graphics/Path;

    .line 51
    .line 52
    :cond_1
    return-void
.end method
