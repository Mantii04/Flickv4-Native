.class public final Lq4/a;
.super Lq4/c;
.source "SourceFile"


# instance fields
.field public b:Landroid/graphics/RectF;

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq4/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lq4/a;->b:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v2, p0, Lq4/a;->c:F

    .line 4
    .line 5
    iget v3, p0, Lq4/a;->d:F

    .line 6
    .line 7
    iget-object v5, p0, Lq4/c;->a:Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v0, p1

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getStartAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lq4/a;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public setOval(Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq4/a;->b:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    .line 1
    iput p1, p0, Lq4/a;->c:F

    .line 2
    .line 3
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0

    .line 1
    iput p1, p0, Lq4/a;->d:F

    .line 2
    .line 3
    return-void
.end method
