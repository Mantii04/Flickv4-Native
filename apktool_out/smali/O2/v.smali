.class public final LO2/v;
.super LN2/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LN2/r;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, LN2/q;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, LN2/r;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, LN2/r;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, LN2/r;->getChildAt(I)LN2/q;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    div-int/lit8 v4, v4, 0x4

    .line 28
    .line 29
    add-int/2addr v4, v2

    .line 30
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    div-int/lit8 v6, v6, 0x4

    .line 37
    .line 38
    add-int/2addr v6, v5

    .line 39
    invoke-virtual {v1, v2, v3, v4, v6}, LN2/q;->setDrawBounds(IIII)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public varargs onChildCreated([LN2/q;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, LN2/r;->onChildCreated([LN2/q;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x18

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    aget-object p1, p1, v0

    .line 12
    .line 13
    const/16 v0, -0x384

    .line 14
    .line 15
    invoke-virtual {p1, v0}, LN2/q;->setAnimationDelay(I)LN2/q;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onCreateChild()[LN2/q;
    .locals 4

    .line 1
    new-instance v0, LO2/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, LO2/u;-><init>(LO2/v;I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, LO2/u;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    invoke-direct {v2, p0, v3}, LO2/u;-><init>(LO2/v;I)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    new-array v3, v3, [LN2/q;

    .line 15
    .line 16
    aput-object v0, v3, v1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    aput-object v2, v3, v0

    .line 20
    .line 21
    return-object v3
.end method
