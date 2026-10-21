.class public final Lo3/f;
.super Lm1/d0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm1/d0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo3/f;->a:Landroid/graphics/Paint;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lo3/f;->b:Ljava/util/List;

    .line 21
    .line 22
    const/high16 v1, 0x40a00000    # 5.0f

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    .line 26
    .line 27
    const v1, -0xff01

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Lm1/x0;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm1/d0;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Lm1/x0;)V

    .line 2
    .line 3
    .line 4
    iget-object v5, p0, Lo3/f;->a:Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    sget v0, Lcom/google/android/material/R$dimen;->m3_carousel_debug_keyline_width:I

    .line 11
    .line 12
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lo3/f;->b:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lo3/m;

    .line 36
    .line 37
    iget v1, v0, Lo3/m;->c:F

    .line 38
    .line 39
    const v2, -0xff01

    .line 40
    .line 41
    .line 42
    const v3, -0xffff01

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v1}, LD/a;->blendARGB(IIF)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 71
    .line 72
    invoke-virtual {v1}, Lo3/i;->f()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    int-to-float v2, v1

    .line 77
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 84
    .line 85
    invoke-virtual {v1}, Lo3/i;->a()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    int-to-float v4, v1

    .line 90
    iget v1, v0, Lo3/m;->b:F

    .line 91
    .line 92
    move v3, v1

    .line 93
    move-object v0, p1

    .line 94
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 105
    .line 106
    invoke-virtual {v1}, Lo3/i;->c()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    int-to-float v1, v1

    .line 111
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lm1/i0;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 118
    .line 119
    invoke-virtual {v2}, Lo3/i;->d()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    int-to-float v3, v2

    .line 124
    iget v2, v0, Lo3/m;->b:F

    .line 125
    .line 126
    move v4, v2

    .line 127
    move-object v0, p1

    .line 128
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    move-object p1, v0

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method
