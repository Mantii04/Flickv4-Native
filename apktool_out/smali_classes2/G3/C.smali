.class public abstract LG3/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:LG3/p;

.field public d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LG3/C;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, LG3/C;->b:Z

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Path;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, LG3/C;->e:Landroid/graphics/Path;

    .line 22
    .line 23
    return-void
.end method

.method public static create(Landroid/view/View;)LG3/C;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, LG3/G;

    .line 8
    .line 9
    invoke-direct {v0, p0}, LG3/G;-><init>(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, LG3/E;

    .line 14
    .line 15
    invoke-direct {v0, p0}, LG3/E;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract b()Z
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 4
    .line 5
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 6
    .line 7
    cmpg-float v1, v1, v2

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 12
    .line 13
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 14
    .line 15
    cmpg-float v0, v1, v0

    .line 16
    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, LG3/C;->c:LG3/p;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, LG3/s;->getInstance()LG3/s;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, LG3/C;->c:LG3/p;

    .line 28
    .line 29
    iget-object v2, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget-object v3, p0, LG3/C;->e:Landroid/graphics/Path;

    .line 32
    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-virtual {v0, v1, v4, v2, v3}, LG3/s;->calculatePath(LG3/p;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public maybeClip(Landroid/graphics/Canvas;Ln3/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LG3/C;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LG3/C;->e:Landroid/graphics/Path;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 19
    .line 20
    .line 21
    check-cast p2, LA0/a;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, LA0/a;->b(Landroid/graphics/Canvas;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    check-cast p2, LA0/a;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, LA0/a;->b(Landroid/graphics/Canvas;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onMaskChanged(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    iput-object p2, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p0}, LG3/C;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, LG3/C;->a(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onShapeAppearanceChanged(Landroid/view/View;LG3/p;)V
    .locals 0

    .line 1
    iput-object p2, p0, LG3/C;->c:LG3/p;

    .line 2
    .line 3
    invoke-virtual {p0}, LG3/C;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, LG3/C;->a(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setForceCompatClippingEnabled(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LG3/C;->a:Z

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p2, p0, LG3/C;->a:Z

    .line 6
    .line 7
    invoke-virtual {p0, p1}, LG3/C;->a(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setOffsetZeroCornerEdgeBoundsEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 1
    iput-boolean p2, p0, LG3/C;->b:Z

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LG3/C;->a(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
