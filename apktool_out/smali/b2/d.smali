.class public final Lb2/d;
.super Lb2/b;
.source "SourceFile"


# instance fields
.field public A:LW1/u;

.field public final x:LU1/a;

.field public final y:Landroid/graphics/Rect;

.field public final z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(LT1/G;Lb2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb2/b;-><init>(LT1/G;Lb2/e;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, LU1/a;

    .line 5
    .line 6
    const/4 p2, 0x3

    .line 7
    invoke-direct {p1, p2}, LU1/a;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lb2/d;->x:LU1/a;

    .line 11
    .line 12
    new-instance p1, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lb2/d;->y:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lb2/d;->z:Landroid/graphics/Rect;

    .line 25
    .line 26
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
    invoke-super {p0, p1, p2}, Lb2/b;->addValueCallback(Ljava/lang/Object;Lg2/c;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, LT1/K;->y:Landroid/graphics/ColorFilter;

    .line 5
    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lb2/d;->A:LW1/u;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, LW1/u;

    .line 15
    .line 16
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lb2/d;->A:LW1/u;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb2/b;->o:Lb2/e;

    .line 2
    .line 3
    iget-object v0, v0, Lb2/e;->g:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lb2/b;->n:LT1/G;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, LT1/G;->getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lf2/h;->dpScale()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lb2/d;->x:LU1/a;

    .line 25
    .line 26
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    iget-object p3, p0, Lb2/d;->A:LW1/u;

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p3}, LW1/u;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Landroid/graphics/ColorFilter;

    .line 38
    .line 39
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    iget-object v3, p0, Lb2/d;->y:Landroid/graphics/Rect;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-virtual {v3, v4, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    int-to-float p2, p2

    .line 67
    mul-float/2addr p2, v1

    .line 68
    float-to-int p2, p2

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    int-to-float p3, p3

    .line 74
    mul-float/2addr p3, v1

    .line 75
    float-to-int p3, p3

    .line 76
    iget-object v1, p0, Lb2/d;->z:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {v1, v4, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lb2/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lb2/b;->o:Lb2/e;

    .line 5
    .line 6
    iget-object p2, p2, Lb2/e;->g:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p3, p0, Lb2/b;->n:LT1/G;

    .line 9
    .line 10
    invoke-virtual {p3, p2}, LT1/G;->getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    int-to-float p3, p3

    .line 21
    invoke-static {}, Lf2/h;->dpScale()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    mul-float/2addr v0, p3

    .line 26
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    int-to-float p2, p2

    .line 31
    invoke-static {}, Lf2/h;->dpScale()F

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    mul-float/2addr p3, p2

    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p1, p2, p2, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lb2/b;->m:Landroid/graphics/Matrix;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
