.class public final Lh3/e;
.super Lh3/d;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lh3/d;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh3/e;->a:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lh3/e;->b:Landroid/graphics/Rect;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/e;->a:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    neg-int p1, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 16
    .line 17
    .line 18
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    int-to-float p1, p1

    .line 21
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    sub-float/2addr p1, p3

    .line 26
    const/4 p3, 0x0

    .line 27
    cmpg-float v2, p1, p3

    .line 28
    .line 29
    if-gtz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    int-to-float v2, v2

    .line 36
    div-float v2, p1, v2

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/high16 v3, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-static {v2, p3, v3}, LG/a;->clamp(FFF)F

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    neg-float p1, p1

    .line 49
    sub-float p3, v3, p3

    .line 50
    .line 51
    mul-float/2addr p3, p3

    .line 52
    sub-float/2addr v3, p3

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    int-to-float p3, p3

    .line 58
    const v0, 0x3e99999a    # 0.3f

    .line 59
    .line 60
    .line 61
    mul-float/2addr p3, v0

    .line 62
    mul-float/2addr p3, v3

    .line 63
    sub-float/2addr p1, p3

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 65
    .line 66
    .line 67
    iget-object p3, p0, Lh3/e;->b:Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    neg-float v0, p1

    .line 73
    float-to-int v0, v0

    .line 74
    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    int-to-float v0, v0

    .line 82
    cmpl-float p1, p1, v0

    .line 83
    .line 84
    if-ltz p1, :cond_0

    .line 85
    .line 86
    const/4 p1, 0x4

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-static {p2, p3}, LM/p0;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_1
    const/4 p1, 0x0

    .line 99
    invoke-static {p2, p1}, LM/p0;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
