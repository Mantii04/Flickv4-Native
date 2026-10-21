.class public abstract LN2/e;
.super LN2/q;
.source "SourceFile"


# instance fields
.field public final K:Landroid/graphics/Paint;

.field public L:I

.field public M:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LN2/q;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, LN2/e;->setColor(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, LN2/e;->K:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, LN2/e;->L:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LN2/q;->getAlpha()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shr-int/lit8 v1, v0, 0x7

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    iget v1, p0, LN2/e;->M:I

    .line 9
    .line 10
    ushr-int/lit8 v2, v1, 0x18

    .line 11
    .line 12
    mul-int/2addr v2, v0

    .line 13
    shr-int/lit8 v0, v2, 0x8

    .line 14
    .line 15
    shl-int/lit8 v1, v1, 0x8

    .line 16
    .line 17
    ushr-int/lit8 v1, v1, 0x8

    .line 18
    .line 19
    shl-int/lit8 v0, v0, 0x18

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    iput v0, p0, LN2/e;->L:I

    .line 23
    .line 24
    return-void
.end method

.method public final drawSelf(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, LN2/e;->K:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, LN2/e;->L:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, LN2/e;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public abstract drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, LN2/e;->M:I

    .line 2
    .line 3
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LN2/q;->setAlpha(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LN2/e;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, LN2/e;->M:I

    .line 2
    .line 3
    invoke-virtual {p0}, LN2/e;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN2/e;->K:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    return-void
.end method
