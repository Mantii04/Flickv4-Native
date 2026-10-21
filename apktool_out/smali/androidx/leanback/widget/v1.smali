.class public final Landroidx/leanback/widget/v1;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Landroidx/leanback/widget/w1;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/w1;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/v1;->c:Landroidx/leanback/widget/w1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroidx/leanback/widget/v1;->a:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/leanback/widget/v1;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 13

    .line 1
    move/from16 v1, p3

    .line 2
    .line 3
    move/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p9

    .line 6
    .line 7
    invoke-virtual {v3, p2, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    iget-object v1, p0, Landroidx/leanback/widget/v1;->c:Landroidx/leanback/widget/w1;

    .line 13
    .line 14
    iget-object v2, v1, Landroidx/leanback/widget/w1;->e:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    mul-int/lit8 v4, v2, 0x2

    .line 21
    .line 22
    div-int v5, v0, v4

    .line 23
    .line 24
    rem-int v6, v0, v4

    .line 25
    .line 26
    div-int/lit8 v6, v6, 0x2

    .line 27
    .line 28
    invoke-static {v1}, Landroidx/leanback/widget/w1;->isLayoutRtl(Landroid/view/View;)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    iget-object v8, v1, Landroidx/leanback/widget/w1;->b:Ljava/util/Random;

    .line 33
    .line 34
    iget v9, p0, Landroidx/leanback/widget/v1;->a:I

    .line 35
    .line 36
    int-to-long v9, v9

    .line 37
    invoke-virtual {v8, v9, v10}, Ljava/util/Random;->setSeed(J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const/4 v9, 0x0

    .line 45
    :goto_0
    if-ge v9, v5, :cond_3

    .line 46
    .line 47
    iget v10, p0, Landroidx/leanback/widget/v1;->b:I

    .line 48
    .line 49
    add-int/2addr v10, v9

    .line 50
    iget v11, v1, Landroidx/leanback/widget/w1;->j:I

    .line 51
    .line 52
    if-lt v10, v11, :cond_0

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_0
    mul-int v10, v9, v4

    .line 56
    .line 57
    add-int/2addr v10, v6

    .line 58
    div-int/lit8 v11, v2, 0x2

    .line 59
    .line 60
    add-int/2addr v11, v10

    .line 61
    int-to-float v10, v11

    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    int-to-float v11, v0

    .line 65
    add-float v11, p5, v11

    .line 66
    .line 67
    sub-float/2addr v11, v10

    .line 68
    int-to-float v10, v2

    .line 69
    sub-float/2addr v11, v10

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    add-float v11, p5, v10

    .line 72
    .line 73
    :goto_1
    iget-object v10, v1, Landroidx/leanback/widget/w1;->b:Ljava/util/Random;

    .line 74
    .line 75
    const/4 v12, 0x4

    .line 76
    invoke-virtual {v10, v12}, Ljava/util/Random;->nextInt(I)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    add-int/lit8 v10, v10, 0x1

    .line 81
    .line 82
    mul-int/lit8 v10, v10, 0x3f

    .line 83
    .line 84
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 85
    .line 86
    .line 87
    iget-object v10, v1, Landroidx/leanback/widget/w1;->b:Ljava/util/Random;

    .line 88
    .line 89
    invoke-virtual {v10}, Ljava/util/Random;->nextBoolean()Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_2

    .line 94
    .line 95
    iget-object v10, v1, Landroidx/leanback/widget/w1;->f:Landroid/graphics/Bitmap;

    .line 96
    .line 97
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    sub-int v12, p7, v12

    .line 102
    .line 103
    int-to-float v12, v12

    .line 104
    invoke-virtual {p1, v10, v11, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    iget-object v10, v1, Landroidx/leanback/widget/w1;->e:Landroid/graphics/Bitmap;

    .line 109
    .line 110
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    sub-int v12, p7, v12

    .line 115
    .line 116
    int-to-float v12, v12

    .line 117
    invoke-virtual {p1, v10, v11, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    :goto_3
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    float-to-int p1, p1

    .line 6
    return p1
.end method
