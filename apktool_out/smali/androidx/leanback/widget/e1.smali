.class public final Landroidx/leanback/widget/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/leanback/widget/e1;->a:I

    .line 5
    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/leanback/widget/e1;->getBrightColor(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    :cond_0
    iput p2, p0, Landroidx/leanback/widget/e1;->b:I

    .line 13
    .line 14
    iput p3, p0, Landroidx/leanback/widget/e1;->c:I

    .line 15
    .line 16
    return-void
.end method

.method public static getBrightColor(I)I
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const v1, 0x3f59999a    # 0.85f

    .line 7
    .line 8
    .line 9
    mul-float/2addr v0, v1

    .line 10
    const/high16 v2, 0x42190000    # 38.25f

    .line 11
    .line 12
    add-float/2addr v0, v2

    .line 13
    float-to-int v0, v0

    .line 14
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    int-to-float v3, v3

    .line 19
    mul-float/2addr v3, v1

    .line 20
    add-float/2addr v3, v2

    .line 21
    float-to-int v3, v3

    .line 22
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    int-to-float v4, v4

    .line 27
    mul-float/2addr v4, v1

    .line 28
    add-float/2addr v4, v2

    .line 29
    float-to-int v4, v4

    .line 30
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    int-to-float p0, p0

    .line 35
    mul-float/2addr p0, v1

    .line 36
    add-float/2addr p0, v2

    .line 37
    float-to-int p0, p0

    .line 38
    invoke-static {p0, v0, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method
