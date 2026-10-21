.class public final LG3/u;
.super LG3/z;
.source "SourceFile"


# instance fields
.field public final c:LG3/w;


# direct methods
.method public constructor <init>(LG3/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LG3/z;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LG3/u;->c:LG3/w;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;LF3/a;ILandroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, LG3/u;->c:LG3/w;

    .line 2
    .line 3
    iget v6, v0, LG3/w;->f:F

    .line 4
    .line 5
    iget v7, v0, LG3/w;->g:F

    .line 6
    .line 7
    new-instance v4, Landroid/graphics/RectF;

    .line 8
    .line 9
    iget v1, v0, LG3/w;->b:F

    .line 10
    .line 11
    iget v2, v0, LG3/w;->c:F

    .line 12
    .line 13
    iget v3, v0, LG3/w;->d:F

    .line 14
    .line 15
    iget v0, v0, LG3/w;->e:F

    .line 16
    .line 17
    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 18
    .line 19
    .line 20
    move-object v3, p1

    .line 21
    move-object v1, p2

    .line 22
    move v5, p3

    .line 23
    move-object v2, p4

    .line 24
    invoke-virtual/range {v1 .. v7}, LF3/a;->drawCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
