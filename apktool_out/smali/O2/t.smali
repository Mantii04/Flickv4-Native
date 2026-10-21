.class public final LO2/t;
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
    invoke-super {p0, p1}, LN2/r;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, LN2/q;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    div-int/lit8 v0, v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v1, v0

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/2addr v2, v0

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, LN2/r;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v3, v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    mul-int/2addr v4, v3

    .line 36
    div-int/lit8 v4, v4, 0x3

    .line 37
    .line 38
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    add-int/2addr v4, v5

    .line 41
    invoke-virtual {p0, v3}, LN2/r;->getChildAt(I)LN2/q;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    mul-int/lit8 v6, v0, 0x2

    .line 46
    .line 47
    add-int/2addr v6, v4

    .line 48
    invoke-virtual {v5, v4, v1, v6, v2}, LN2/q;->setDrawBounds(IIII)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
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
    const/4 v0, 0x1

    .line 5
    aget-object v0, p1, v0

    .line 6
    .line 7
    const/16 v1, 0xa0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, LN2/q;->setAnimationDelay(I)LN2/q;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    aget-object p1, p1, v0

    .line 14
    .line 15
    const/16 v0, 0x140

    .line 16
    .line 17
    invoke-virtual {p1, v0}, LN2/q;->setAnimationDelay(I)LN2/q;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onCreateChild()[LN2/q;
    .locals 5

    .line 1
    new-instance v0, LO2/s;

    .line 2
    .line 3
    invoke-direct {v0}, LO2/s;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LO2/s;

    .line 7
    .line 8
    invoke-direct {v1}, LO2/s;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, LO2/s;

    .line 12
    .line 13
    invoke-direct {v2}, LO2/s;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    new-array v3, v3, [LN2/q;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v0, v3, v4

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    aput-object v1, v3, v0

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    aput-object v2, v3, v0

    .line 27
    .line 28
    return-object v3
.end method
