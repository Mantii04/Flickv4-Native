.class public LG3/j;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements LG3/B;


# static fields
.field public static final G:Landroid/graphics/Paint;


# instance fields
.field public final A:LG3/s;

.field public B:Landroid/graphics/PorterDuffColorFilter;

.field public C:Landroid/graphics/PorterDuffColorFilter;

.field public D:I

.field public final E:Landroid/graphics/RectF;

.field public final F:Z

.field public b:LG3/i;

.field public final e:[LG3/z;

.field public final f:[LG3/z;

.field public final j:Ljava/util/BitSet;

.field public m:Z

.field public final n:Landroid/graphics/Matrix;

.field public final p:Landroid/graphics/Path;

.field public final q:Landroid/graphics/Path;

.field public final r:Landroid/graphics/RectF;

.field public final s:Landroid/graphics/RectF;

.field public final t:Landroid/graphics/Region;

.field public final u:Landroid/graphics/Region;

.field public v:LG3/p;

.field public final w:Landroid/graphics/Paint;

.field public final x:Landroid/graphics/Paint;

.field public final y:LF3/a;

.field public final z:LG3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LG3/j;->G:Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LG3/p;

    invoke-direct {v0}, LG3/p;-><init>()V

    invoke-direct {p0, v0}, LG3/j;-><init>(LG3/p;)V

    return-void
.end method

.method public constructor <init>(LG3/i;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [LG3/z;

    iput-object v1, p0, LG3/j;->e:[LG3/z;

    .line 6
    new-array v0, v0, [LG3/z;

    iput-object v0, p0, LG3/j;->f:[LG3/z;

    .line 7
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, LG3/j;->j:Ljava/util/BitSet;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LG3/j;->n:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LG3/j;->p:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LG3/j;->q:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LG3/j;->r:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LG3/j;->s:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, LG3/j;->t:Landroid/graphics/Region;

    .line 14
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, LG3/j;->u:Landroid/graphics/Region;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LG3/j;->w:Landroid/graphics/Paint;

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, LG3/j;->x:Landroid/graphics/Paint;

    .line 17
    new-instance v3, LF3/a;

    invoke-direct {v3}, LF3/a;-><init>()V

    iput-object v3, p0, LG3/j;->y:LF3/a;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 19
    invoke-static {}, LG3/s;->getInstance()LG3/s;

    move-result-object v3

    goto :goto_0

    .line 20
    :cond_0
    new-instance v3, LG3/s;

    invoke-direct {v3}, LG3/s;-><init>()V

    :goto_0
    iput-object v3, p0, LG3/j;->A:LG3/s;

    .line 21
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, LG3/j;->E:Landroid/graphics/RectF;

    .line 22
    iput-boolean v1, p0, LG3/j;->F:Z

    .line 23
    iput-object p1, p0, LG3/j;->b:LG3/i;

    .line 24
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {p0}, LG3/j;->f()Z

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, LG3/j;->e([I)Z

    .line 28
    new-instance p1, LG3/g;

    invoke-direct {p1, p0}, LG3/g;-><init>(LG3/j;)V

    iput-object p1, p0, LG3/j;->z:LG3/g;

    return-void
.end method

.method public constructor <init>(LG3/p;)V
    .locals 2

    .line 3
    new-instance v0, LG3/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LG3/i;-><init>(LG3/p;Lu3/a;)V

    invoke-direct {p0, v0}, LG3/j;-><init>(LG3/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, LG3/p;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)LG3/n;

    move-result-object p1

    invoke-virtual {p1}, LG3/n;->build()LG3/p;

    move-result-object p1

    invoke-direct {p0, p1}, LG3/j;-><init>(LG3/p;)V

    return-void
.end method

.method public static createWithElevationOverlay(Landroid/content/Context;FLandroid/content/res/ColorStateList;)LG3/j;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget p2, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 4
    .line 5
    const-class v0, LG3/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, p2, v0}, Lr3/a;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_0
    new-instance v0, LG3/j;

    .line 20
    .line 21
    invoke-direct {v0}, LG3/j;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, LG3/j;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, LG3/j;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, LG3/j;->setElevation(F)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, LG3/j;->calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 5
    .line 6
    iget v0, v0, LG3/i;->h:F

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v0, v0, v1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, LG3/j;->n:Landroid/graphics/Matrix;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, LG3/j;->b:LG3/i;

    .line 20
    .line 21
    iget v1, v1, LG3/i;->h:F

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/high16 v3, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr v2, v3

    .line 30
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    div-float/2addr p1, v3

    .line 35
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, LG3/j;->E:Landroid/graphics/RectF;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, LG3/j;->j:Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "j"

    .line 10
    .line 11
    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 17
    .line 18
    iget v0, v0, LG3/i;->o:I

    .line 19
    .line 20
    iget-object v1, p0, LG3/j;->p:Landroid/graphics/Path;

    .line 21
    .line 22
    iget-object v2, p0, LG3/j;->y:LF3/a;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, LF3/a;->getShadowPaint()Landroid/graphics/Paint;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    const/4 v3, 0x4

    .line 35
    if-ge v0, v3, :cond_2

    .line 36
    .line 37
    iget-object v3, p0, LG3/j;->e:[LG3/z;

    .line 38
    .line 39
    aget-object v3, v3, v0

    .line 40
    .line 41
    iget-object v4, p0, LG3/j;->b:LG3/i;

    .line 42
    .line 43
    iget v4, v4, LG3/i;->n:I

    .line 44
    .line 45
    invoke-virtual {v3, v2, v4, p1}, LG3/z;->draw(LF3/a;ILandroid/graphics/Canvas;)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, LG3/j;->f:[LG3/z;

    .line 49
    .line 50
    aget-object v3, v3, v0

    .line 51
    .line 52
    iget-object v4, p0, LG3/j;->b:LG3/i;

    .line 53
    .line 54
    iget v4, v4, LG3/i;->n:I

    .line 55
    .line 56
    invoke-virtual {v3, v2, v4, p1}, LG3/z;->draw(LF3/a;ILandroid/graphics/Canvas;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-boolean v0, p0, LG3/j;->F:Z

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, LG3/j;->getShadowOffsetX()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0}, LG3/j;->getShadowOffsetY()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    neg-int v3, v0

    .line 75
    int-to-float v3, v3

    .line 76
    neg-int v4, v2

    .line 77
    int-to-float v4, v4

    .line 78
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    .line 80
    .line 81
    sget-object v3, LG3/j;->G:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    int-to-float v0, v0

    .line 87
    int-to-float v1, v2

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LG3/p;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p4, p5}, LG3/p;->isRoundRect(Landroid/graphics/RectF;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p4}, LG3/p;->getTopRightCornerSize()LG3/c;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-interface {p3, p5}, LG3/c;->getCornerSize(Landroid/graphics/RectF;)F

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    iget-object p4, p0, LG3/j;->b:LG3/i;

    .line 16
    .line 17
    iget p4, p4, LG3/i;->i:F

    .line 18
    .line 19
    mul-float/2addr p3, p4

    .line 20
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final calculatePathForSize(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 7

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v2, v0, LG3/i;->a:LG3/p;

    .line 4
    .line 5
    iget v3, v0, LG3/i;->i:F

    .line 6
    .line 7
    iget-object v5, p0, LG3/j;->z:LG3/g;

    .line 8
    .line 9
    iget-object v1, p0, LG3/j;->A:LG3/s;

    .line 10
    .line 11
    move-object v4, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, LG3/s;->calculatePath(LG3/p;FLandroid/graphics/RectF;LG3/r;Landroid/graphics/Path;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public compositeElevationOverlayIfNeeded(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, LG3/j;->getZ()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, LG3/j;->getParentAbsoluteElevation()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-float/2addr v1, v0

    .line 10
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 11
    .line 12
    iget-object v0, v0, LG3/i;->b:Lu3/a;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lu3/a;->compositeOverlayIfNeeded(IF)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :cond_0
    return p1
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v0, v0, LG3/i;->p:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, LG3/j;->x:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v2, p0, LG3/j;->w:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget-object v0, p0, LG3/j;->B:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    .line 5
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    .line 9
    .line 10
    .line 11
    move-result v6

    .line 12
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 13
    .line 14
    iget v0, v0, LG3/i;->k:I

    .line 15
    .line 16
    ushr-int/lit8 v1, v0, 0x7

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    mul-int/2addr v0, v6

    .line 20
    ushr-int/lit8 v0, v0, 0x8

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 23
    .line 24
    .line 25
    iget-object v7, p0, LG3/j;->x:Landroid/graphics/Paint;

    .line 26
    .line 27
    iget-object v0, p0, LG3/j;->C:Landroid/graphics/PorterDuffColorFilter;

    .line 28
    .line 29
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 33
    .line 34
    iget v0, v0, LG3/i;->j:F

    .line 35
    .line 36
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 44
    .line 45
    iget v0, v0, LG3/i;->k:I

    .line 46
    .line 47
    ushr-int/lit8 v1, v0, 0x7

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    mul-int/2addr v0, v8

    .line 51
    ushr-int/lit8 v0, v0, 0x8

    .line 52
    .line 53
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, LG3/j;->m:Z

    .line 57
    .line 58
    iget-object v3, p0, LG3/j;->p:Landroid/graphics/Path;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, LG3/j;->d()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x0

    .line 67
    const/high16 v4, 0x40000000    # 2.0f

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    div-float/2addr v0, v4

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v0, v1

    .line 78
    :goto_0
    neg-float v0, v0

    .line 79
    invoke-virtual {p0}, LG3/j;->getShapeAppearanceModel()LG3/p;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    new-instance v9, LG3/h;

    .line 84
    .line 85
    invoke-direct {v9, v0}, LG3/h;-><init>(F)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v9}, LG3/p;->withTransformedCornerSizes(LG3/o;)LG3/p;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, LG3/j;->v:LG3/p;

    .line 93
    .line 94
    iget-object v5, p0, LG3/j;->b:LG3/i;

    .line 95
    .line 96
    iget v5, v5, LG3/i;->i:F

    .line 97
    .line 98
    iget-object v9, p0, LG3/j;->s:Landroid/graphics/RectF;

    .line 99
    .line 100
    invoke-virtual {p0}, LG3/j;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, LG3/j;->d()Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_1

    .line 112
    .line 113
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    div-float/2addr v1, v4

    .line 118
    :cond_1
    invoke-virtual {v9, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, LG3/j;->q:Landroid/graphics/Path;

    .line 122
    .line 123
    iget-object v4, p0, LG3/j;->A:LG3/s;

    .line 124
    .line 125
    invoke-virtual {v4, v0, v5, v9, v1}, LG3/s;->calculatePath(LG3/p;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, LG3/j;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p0, v0, v3}, LG3/j;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, LG3/j;->m:Z

    .line 137
    .line 138
    :cond_2
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget v0, v0, LG3/i;->n:I

    .line 144
    .line 145
    if-lez v0, :cond_5

    .line 146
    .line 147
    invoke-virtual {p0}, LG3/j;->requiresCompatShadow()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_5

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, LG3/j;->getShadowOffsetX()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-virtual {p0}, LG3/j;->getShadowOffsetY()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    int-to-float v0, v0

    .line 165
    int-to-float v1, v1

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 167
    .line 168
    .line 169
    iget-boolean v0, p0, LG3/j;->F:Z

    .line 170
    .line 171
    if-nez v0, :cond_3

    .line 172
    .line 173
    invoke-virtual {p0, p1}, LG3/j;->b(Landroid/graphics/Canvas;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :cond_3
    iget-object v0, p0, LG3/j;->E:Landroid/graphics/RectF;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    int-to-float v4, v4

    .line 196
    sub-float/2addr v1, v4

    .line 197
    float-to-int v1, v1

    .line 198
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    int-to-float v5, v5

    .line 211
    sub-float/2addr v4, v5

    .line 212
    float-to-int v4, v4

    .line 213
    if-ltz v1, :cond_4

    .line 214
    .line 215
    if-ltz v4, :cond_4

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    float-to-int v5, v5

    .line 222
    iget-object v9, p0, LG3/j;->b:LG3/i;

    .line 223
    .line 224
    iget v9, v9, LG3/i;->n:I

    .line 225
    .line 226
    mul-int/lit8 v9, v9, 0x2

    .line 227
    .line 228
    add-int/2addr v9, v5

    .line 229
    add-int/2addr v9, v1

    .line 230
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    float-to-int v0, v0

    .line 235
    iget-object v5, p0, LG3/j;->b:LG3/i;

    .line 236
    .line 237
    iget v5, v5, LG3/i;->n:I

    .line 238
    .line 239
    mul-int/lit8 v5, v5, 0x2

    .line 240
    .line 241
    add-int/2addr v5, v0

    .line 242
    add-int/2addr v5, v4

    .line 243
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 244
    .line 245
    invoke-static {v9, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    new-instance v5, Landroid/graphics/Canvas;

    .line 250
    .line 251
    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 259
    .line 260
    iget-object v10, p0, LG3/j;->b:LG3/i;

    .line 261
    .line 262
    iget v10, v10, LG3/i;->n:I

    .line 263
    .line 264
    sub-int/2addr v9, v10

    .line 265
    sub-int/2addr v9, v1

    .line 266
    int-to-float v1, v9

    .line 267
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 272
    .line 273
    iget-object v10, p0, LG3/j;->b:LG3/i;

    .line 274
    .line 275
    iget v10, v10, LG3/i;->n:I

    .line 276
    .line 277
    sub-int/2addr v9, v10

    .line 278
    sub-int/2addr v9, v4

    .line 279
    int-to-float v4, v9

    .line 280
    neg-float v9, v1

    .line 281
    neg-float v10, v4

    .line 282
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v5}, LG3/j;->b(Landroid/graphics/Canvas;)V

    .line 286
    .line 287
    .line 288
    const/4 v5, 0x0

    .line 289
    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 296
    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 300
    .line 301
    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    .line 302
    .line 303
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw p1

    .line 307
    :cond_5
    :goto_1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 308
    .line 309
    iget-object v1, v0, LG3/i;->p:Landroid/graphics/Paint$Style;

    .line 310
    .line 311
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 312
    .line 313
    if-eq v1, v4, :cond_7

    .line 314
    .line 315
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 316
    .line 317
    if-ne v1, v4, :cond_6

    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_6
    move-object v1, p1

    .line 321
    goto :goto_3

    .line 322
    :cond_7
    :goto_2
    iget-object v4, v0, LG3/i;->a:LG3/p;

    .line 323
    .line 324
    invoke-virtual {p0}, LG3/j;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    move-object v0, p0

    .line 329
    move-object v1, p1

    .line 330
    invoke-virtual/range {v0 .. v5}, LG3/j;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LG3/p;Landroid/graphics/RectF;)V

    .line 331
    .line 332
    .line 333
    :goto_3
    invoke-virtual {p0}, LG3/j;->d()Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-eqz p1, :cond_8

    .line 338
    .line 339
    invoke-virtual {p0, v1}, LG3/j;->drawStrokeShape(Landroid/graphics/Canvas;)V

    .line 340
    .line 341
    .line 342
    :cond_8
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 346
    .line 347
    .line 348
    return-void
.end method

.method public drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v5, v0, LG3/i;->a:LG3/p;

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v6, p4

    .line 10
    invoke-virtual/range {v1 .. v6}, LG3/j;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LG3/p;Landroid/graphics/RectF;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public drawStrokeShape(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v2, p0, LG3/j;->x:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget-object v3, p0, LG3/j;->q:Landroid/graphics/Path;

    .line 4
    .line 5
    iget-object v4, p0, LG3/j;->v:LG3/p;

    .line 6
    .line 7
    iget-object v5, p0, LG3/j;->s:Landroid/graphics/RectF;

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, LG3/j;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v1, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {v5, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 32
    .line 33
    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    invoke-virtual/range {v0 .. v5}, LG3/j;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;LG3/p;Landroid/graphics/RectF;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final e([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v0, v0, LG3/i;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, LG3/j;->w:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, LG3/j;->b:LG3/i;

    .line 15
    .line 16
    iget-object v3, v3, LG3/i;->c:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-object v2, p0, LG3/j;->b:LG3/i;

    .line 31
    .line 32
    iget-object v2, v2, LG3/i;->d:Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, LG3/j;->x:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, LG3/j;->b:LG3/i;

    .line 43
    .line 44
    iget-object v4, v4, LG3/i;->d:Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    invoke-virtual {v4, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eq v3, p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    :cond_1
    return v0
.end method

.method public final f()Z
    .locals 7

    .line 1
    iget-object v0, p0, LG3/j;->B:Landroid/graphics/PorterDuffColorFilter;

    .line 2
    .line 3
    iget-object v1, p0, LG3/j;->C:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    .line 5
    iget-object v2, p0, LG3/j;->b:LG3/i;

    .line 6
    .line 7
    iget-object v3, v2, LG3/i;->e:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iget-object v2, v2, LG3/i;->f:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iget-object v4, p0, LG3/j;->w:Landroid/graphics/Paint;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, v3}, LG3/j;->compositeElevationOverlayIfNeeded(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iput v3, p0, LG3/j;->D:I

    .line 33
    .line 34
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 35
    .line 36
    invoke-direct {v4, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0, v2}, LG3/j;->compositeElevationOverlayIfNeeded(I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iput v3, p0, LG3/j;->D:I

    .line 49
    .line 50
    if-eq v3, v2, :cond_2

    .line 51
    .line 52
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 53
    .line 54
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 55
    .line 56
    invoke-direct {v4, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v4, 0x0

    .line 61
    :goto_1
    iput-object v4, p0, LG3/j;->B:Landroid/graphics/PorterDuffColorFilter;

    .line 62
    .line 63
    iget-object v2, p0, LG3/j;->b:LG3/i;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    iput-object v2, p0, LG3/j;->C:Landroid/graphics/PorterDuffColorFilter;

    .line 70
    .line 71
    iget-object v2, p0, LG3/j;->b:LG3/i;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, LG3/j;->B:Landroid/graphics/PorterDuffColorFilter;

    .line 77
    .line 78
    invoke-static {v0, v2}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    iget-object v0, p0, LG3/j;->C:Landroid/graphics/PorterDuffColorFilter;

    .line 85
    .line 86
    invoke-static {v1, v0}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const/4 v0, 0x0

    .line 94
    return v0

    .line 95
    :cond_4
    :goto_2
    return v5
.end method

.method public final g()V
    .locals 4

    .line 1
    invoke-virtual {p0}, LG3/j;->getZ()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, LG3/j;->b:LG3/i;

    .line 6
    .line 7
    const/high16 v2, 0x3f400000    # 0.75f

    .line 8
    .line 9
    mul-float/2addr v2, v0

    .line 10
    float-to-double v2, v2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    double-to-int v2, v2

    .line 16
    iput v2, v1, LG3/i;->n:I

    .line 17
    .line 18
    iget-object v1, p0, LG3/j;->b:LG3/i;

    .line 19
    .line 20
    const/high16 v2, 0x3e800000    # 0.25f

    .line 21
    .line 22
    mul-float/2addr v0, v2

    .line 23
    float-to-double v2, v0

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    double-to-int v0, v2

    .line 29
    iput v0, v1, LG3/i;->o:I

    .line 30
    .line 31
    invoke-virtual {p0}, LG3/j;->f()Z

    .line 32
    .line 33
    .line 34
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget v0, v0, LG3/i;->k:I

    .line 4
    .line 5
    return v0
.end method

.method public getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->r:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget v0, v0, LG3/i;->m:F

    .line 4
    .line 5
    return v0
.end method

.method public getFillColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v0, v0, LG3/i;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    return-object v0
.end method

.method public getInterpolation()F
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget v0, v0, LG3/i;->i:F

    .line 4
    .line 5
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LG3/j;->isRoundRect()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, LG3/j;->getTopLeftCornerResolvedSize()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, LG3/j;->b:LG3/i;

    .line 17
    .line 18
    iget v1, v1, LG3/i;->i:F

    .line 19
    .line 20
    mul-float/2addr v0, v1

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, LG3/j;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, LG3/j;->p:Landroid/graphics/Path;

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, LG3/j;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Lt3/c;->setOutlineToPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v0, v0, LG3/i;->g:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public getParentAbsoluteElevation()F
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget v0, v0, LG3/i;->l:F

    .line 4
    .line 5
    return v0
.end method

.method public getResolvedTintColor()I
    .locals 1

    .line 1
    iget v0, p0, LG3/j;->D:I

    .line 2
    .line 3
    return v0
.end method

.method public getShadowOffsetX()I
    .locals 4

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget v0, v0, LG3/i;->o:I

    .line 4
    .line 5
    int-to-double v0, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    int-to-double v2, v2

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    mul-double/2addr v2, v0

    .line 17
    double-to-int v0, v2

    .line 18
    return v0
.end method

.method public getShadowOffsetY()I
    .locals 4

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget v0, v0, LG3/i;->o:I

    .line 4
    .line 5
    int-to-double v0, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    int-to-double v2, v2

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    mul-double/2addr v2, v0

    .line 17
    double-to-int v0, v2

    .line 18
    return v0
.end method

.method public getShapeAppearanceModel()LG3/p;
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v0, v0, LG3/i;->a:LG3/p;

    .line 4
    .line 5
    return-object v0
.end method

.method public getTopLeftCornerResolvedSize()F
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v0, v0, LG3/i;->a:LG3/p;

    .line 4
    .line 5
    invoke-virtual {v0}, LG3/p;->getTopLeftCornerSize()LG3/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, LG3/j;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, LG3/c;->getCornerSize(Landroid/graphics/RectF;)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getTopRightCornerResolvedSize()F
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v0, v0, LG3/i;->a:LG3/p;

    .line 4
    .line 5
    invoke-virtual {v0}, LG3/p;->getTopRightCornerSize()LG3/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, LG3/j;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, LG3/c;->getCornerSize(Landroid/graphics/RectF;)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getTranslationZ()F
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LG3/j;->t:Landroid/graphics/Region;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, LG3/j;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, LG3/j;->p:Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v2}, LG3/j;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, LG3/j;->u:Landroid/graphics/Region;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 22
    .line 23
    .line 24
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public getZ()F
    .locals 2

    .line 1
    invoke-virtual {p0}, LG3/j;->getElevation()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, LG3/j;->getTranslationZ()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-float/2addr v1, v0

    .line 10
    return v1
.end method

.method public initializeElevationOverlay(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    new-instance v1, Lu3/a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lu3/a;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, LG3/i;->b:Lu3/a;

    .line 9
    .line 10
    invoke-virtual {p0}, LG3/j;->g()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LG3/j;->m:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public isElevationOverlayEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v0, v0, LG3/i;->b:Lu3/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lu3/a;->isThemeElevationOverlayEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public isRoundRect()Z
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v0, v0, LG3/i;->a:LG3/p;

    .line 4
    .line 5
    invoke-virtual {p0}, LG3/j;->getBoundsAsRectF()Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, LG3/p;->isRoundRect(Landroid/graphics/RectF;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 8
    .line 9
    iget-object v0, v0, LG3/i;->e:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 25
    .line 26
    iget-object v0, v0, LG3/i;->d:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 37
    .line 38
    iget-object v0, v0, LG3/i;->c:Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    return v0

    .line 51
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 52
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, LG3/i;

    .line 2
    .line 3
    iget-object v1, p0, LG3/j;->b:LG3/i;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LG3/i;-><init>(LG3/i;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LG3/j;->b:LG3/i;

    .line 9
    .line 10
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LG3/j;->m:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LG3/j;->e([I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, LG3/j;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 20
    .line 21
    .line 22
    :cond_2
    return p1
.end method

.method public requiresCompatShadow()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    invoke-virtual {p0}, LG3/j;->isRoundRect()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, LG3/j;->p:Landroid/graphics/Path;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x1d

    .line 18
    .line 19
    if-ge v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget v1, v0, LG3/i;->k:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput p1, v0, LG3/i;->k:I

    .line 8
    .line 9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p1, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setCornerSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    iget-object v0, v0, LG3/i;->a:LG3/p;

    invoke-virtual {v0, p1}, LG3/p;->withCornerSize(F)LG3/p;

    move-result-object p1

    invoke-virtual {p0, p1}, LG3/j;->setShapeAppearanceModel(LG3/p;)V

    return-void
.end method

.method public setCornerSize(LG3/c;)V
    .locals 1

    .line 2
    iget-object v0, p0, LG3/j;->b:LG3/i;

    iget-object v0, v0, LG3/i;->a:LG3/p;

    invoke-virtual {v0, p1}, LG3/p;->withCornerSize(LG3/c;)LG3/p;

    move-result-object p1

    invoke-virtual {p0, p1}, LG3/j;->setShapeAppearanceModel(LG3/p;)V

    return-void
.end method

.method public setElevation(F)V
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget v1, v0, LG3/i;->m:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, LG3/i;->m:F

    .line 10
    .line 11
    invoke-virtual {p0}, LG3/j;->g()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setFillColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v1, v0, LG3/i;->c:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, LG3/i;->c:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, LG3/j;->onStateChange([I)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setInterpolation(F)V
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget v1, v0, LG3/i;->i:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, LG3/i;->i:F

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, LG3/j;->m:Z

    .line 13
    .line 14
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v1, v0, LG3/i;->g:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, LG3/i;->g:Landroid/graphics/Rect;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 15
    .line 16
    iget-object v0, v0, LG3/i;->g:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setParentAbsoluteElevation(F)V
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget v1, v0, LG3/i;->l:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v0, LG3/i;->l:F

    .line 10
    .line 11
    invoke-virtual {p0}, LG3/j;->g()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(LG3/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iput-object p1, v0, LG3/i;->a:LG3/p;

    .line 4
    .line 5
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setStroke(FI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LG3/j;->setStrokeWidth(F)V

    .line 2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LG3/j;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStroke(FLandroid/content/res/ColorStateList;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, LG3/j;->setStrokeWidth(F)V

    .line 4
    invoke-virtual {p0, p2}, LG3/j;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v1, v0, LG3/i;->d:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, LG3/i;->d:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, LG3/j;->onStateChange([I)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iput p1, v0, LG3/i;->j:F

    .line 4
    .line 5
    invoke-virtual {p0}, LG3/j;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTint(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, LG3/j;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iput-object p1, v0, LG3/i;->e:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    invoke-virtual {p0}, LG3/j;->f()Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, LG3/j;->b:LG3/i;

    .line 2
    .line 3
    iget-object v1, v0, LG3/i;->f:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, LG3/i;->f:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    invoke-virtual {p0}, LG3/j;->f()Z

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
