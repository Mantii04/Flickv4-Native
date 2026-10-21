.class public final Lb2/h;
.super Lb2/b;
.source "SourceFile"


# instance fields
.field public final A:Landroid/graphics/Path;

.field public final B:Lb2/e;

.field public C:LW1/u;

.field public final x:Landroid/graphics/RectF;

.field public final y:LU1/a;

.field public final z:[F


# direct methods
.method public constructor <init>(LT1/G;Lb2/e;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lb2/b;-><init>(LT1/G;Lb2/e;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lb2/h;->x:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance p1, LU1/a;

    .line 12
    .line 13
    invoke-direct {p1}, LU1/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lb2/h;->y:LU1/a;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    iput-object v0, p0, Lb2/h;->z:[F

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lb2/h;->A:Landroid/graphics/Path;

    .line 30
    .line 31
    iput-object p2, p0, Lb2/h;->B:Lb2/e;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    iget p2, p2, Lb2/e;->l:I

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    .line 46
    .line 47
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
    iput-object p1, p0, Lb2/h;->C:LW1/u;

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
    iput-object p1, p0, Lb2/h;->C:LW1/u;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lb2/h;->B:Lb2/e;

    .line 2
    .line 3
    iget v1, v0, Lb2/e;->l:I

    .line 4
    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lb2/b;->v:LW1/t;

    .line 14
    .line 15
    invoke-virtual {v2}, LW1/t;->getOpacity()LW1/f;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    const/16 v2, 0x64

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v2}, LW1/t;->getOpacity()LW1/f;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, LW1/f;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :goto_0
    int-to-float p3, p3

    .line 39
    const/high16 v3, 0x437f0000    # 255.0f

    .line 40
    .line 41
    div-float/2addr p3, v3

    .line 42
    int-to-float v1, v1

    .line 43
    div-float/2addr v1, v3

    .line 44
    int-to-float v2, v2

    .line 45
    mul-float/2addr v1, v2

    .line 46
    const/high16 v2, 0x42c80000    # 100.0f

    .line 47
    .line 48
    div-float/2addr v1, v2

    .line 49
    mul-float/2addr v1, p3

    .line 50
    mul-float/2addr v1, v3

    .line 51
    float-to-int p3, v1

    .line 52
    iget-object v1, p0, Lb2/h;->y:LU1/a;

    .line 53
    .line 54
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lb2/h;->C:LW1/u;

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2}, LW1/u;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/graphics/ColorFilter;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 68
    .line 69
    .line 70
    :cond_2
    if-lez p3, :cond_3

    .line 71
    .line 72
    iget-object p3, p0, Lb2/h;->z:[F

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    aput v3, p3, v2

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    aput v3, p3, v4

    .line 80
    .line 81
    iget v5, v0, Lb2/e;->j:I

    .line 82
    .line 83
    int-to-float v5, v5

    .line 84
    const/4 v6, 0x2

    .line 85
    aput v5, p3, v6

    .line 86
    .line 87
    const/4 v7, 0x3

    .line 88
    aput v3, p3, v7

    .line 89
    .line 90
    const/4 v8, 0x4

    .line 91
    aput v5, p3, v8

    .line 92
    .line 93
    iget v0, v0, Lb2/e;->k:I

    .line 94
    .line 95
    int-to-float v0, v0

    .line 96
    const/4 v5, 0x5

    .line 97
    aput v0, p3, v5

    .line 98
    .line 99
    const/4 v9, 0x6

    .line 100
    aput v3, p3, v9

    .line 101
    .line 102
    const/4 v3, 0x7

    .line 103
    aput v0, p3, v3

    .line 104
    .line 105
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lb2/h;->A:Landroid/graphics/Path;

    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 111
    .line 112
    .line 113
    aget v0, p3, v2

    .line 114
    .line 115
    aget v10, p3, v4

    .line 116
    .line 117
    invoke-virtual {p2, v0, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 118
    .line 119
    .line 120
    aget v0, p3, v6

    .line 121
    .line 122
    aget v6, p3, v7

    .line 123
    .line 124
    invoke-virtual {p2, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    .line 126
    .line 127
    aget v0, p3, v8

    .line 128
    .line 129
    aget v5, p3, v5

    .line 130
    .line 131
    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    .line 133
    .line 134
    aget v0, p3, v9

    .line 135
    .line 136
    aget v3, p3, v3

    .line 137
    .line 138
    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    .line 140
    .line 141
    aget v0, p3, v2

    .line 142
    .line 143
    aget p3, p3, v4

    .line 144
    .line 145
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 152
    .line 153
    .line 154
    :cond_3
    :goto_1
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lb2/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lb2/h;->x:Landroid/graphics/RectF;

    .line 5
    .line 6
    iget-object p3, p0, Lb2/h;->B:Lb2/e;

    .line 7
    .line 8
    iget v0, p3, Lb2/e;->j:I

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    iget p3, p3, Lb2/e;->k:I

    .line 12
    .line 13
    int-to-float p3, p3

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p2, v1, v1, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lb2/b;->m:Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
