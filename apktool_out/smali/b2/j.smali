.class public final Lb2/j;
.super Lb2/b;
.source "SourceFile"


# instance fields
.field public final A:Lb2/i;

.field public final B:Lb2/i;

.field public final C:Ljava/util/HashMap;

.field public final D:Lp/n;

.field public final E:LW1/s;

.field public final F:LT1/G;

.field public final G:LT1/i;

.field public final H:LW1/f;

.field public I:LW1/u;

.field public final J:LW1/f;

.field public K:LW1/u;

.field public final L:LW1/f;

.field public M:LW1/u;

.field public final N:LW1/f;

.field public O:LW1/u;

.field public P:LW1/u;

.field public final x:Ljava/lang/StringBuilder;

.field public final y:Landroid/graphics/RectF;

.field public final z:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(LT1/G;Lb2/e;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lb2/b;-><init>(LT1/G;Lb2/e;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lb2/j;->x:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lb2/j;->y:Landroid/graphics/RectF;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lb2/j;->z:Landroid/graphics/Matrix;

    .line 25
    .line 26
    new-instance v0, Lb2/i;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lb2/j;->A:Lb2/i;

    .line 38
    .line 39
    new-instance v0, Lb2/i;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lb2/j;->B:Lb2/i;

    .line 50
    .line 51
    new-instance v0, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lb2/j;->C:Ljava/util/HashMap;

    .line 57
    .line 58
    new-instance v0, Lp/n;

    .line 59
    .line 60
    invoke-direct {v0}, Lp/n;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lb2/j;->D:Lp/n;

    .line 64
    .line 65
    iput-object p1, p0, Lb2/j;->F:LT1/G;

    .line 66
    .line 67
    iget-object p1, p2, Lb2/e;->b:LT1/i;

    .line 68
    .line 69
    iput-object p1, p0, Lb2/j;->G:LT1/i;

    .line 70
    .line 71
    iget-object p1, p2, Lb2/e;->q:LZ1/j;

    .line 72
    .line 73
    invoke-virtual {p1}, LZ1/j;->createAnimation()LW1/s;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lb2/j;->E:LW1/s;

    .line 78
    .line 79
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p2, Lb2/e;->r:LZ1/k;

    .line 86
    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    iget-object p2, p1, LZ1/k;->a:LZ1/a;

    .line 90
    .line 91
    if-eqz p2, :cond_0

    .line 92
    .line 93
    invoke-virtual {p2}, LZ1/a;->createAnimation()LW1/f;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iput-object p2, p0, Lb2/j;->H:LW1/f;

    .line 98
    .line 99
    invoke-virtual {p2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p2}, Lb2/b;->addAnimation(LW1/f;)V

    .line 103
    .line 104
    .line 105
    :cond_0
    if-eqz p1, :cond_1

    .line 106
    .line 107
    iget-object p2, p1, LZ1/k;->b:LZ1/a;

    .line 108
    .line 109
    if-eqz p2, :cond_1

    .line 110
    .line 111
    invoke-virtual {p2}, LZ1/a;->createAnimation()LW1/f;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iput-object p2, p0, Lb2/j;->J:LW1/f;

    .line 116
    .line 117
    invoke-virtual {p2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p2}, Lb2/b;->addAnimation(LW1/f;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    if-eqz p1, :cond_2

    .line 124
    .line 125
    iget-object p2, p1, LZ1/k;->c:LZ1/b;

    .line 126
    .line 127
    if-eqz p2, :cond_2

    .line 128
    .line 129
    invoke-virtual {p2}, LZ1/b;->createAnimation()LW1/f;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    iput-object p2, p0, Lb2/j;->L:LW1/f;

    .line 134
    .line 135
    invoke-virtual {p2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p2}, Lb2/b;->addAnimation(LW1/f;)V

    .line 139
    .line 140
    .line 141
    :cond_2
    if-eqz p1, :cond_3

    .line 142
    .line 143
    iget-object p1, p1, LZ1/k;->d:LZ1/b;

    .line 144
    .line 145
    if-eqz p1, :cond_3

    .line 146
    .line 147
    invoke-virtual {p1}, LZ1/b;->createAnimation()LW1/f;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lb2/j;->N:LW1/f;

    .line 152
    .line 153
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 157
    .line 158
    .line 159
    :cond_3
    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    move-object v2, p0

    .line 34
    move-object v7, p1

    .line 35
    move-object v1, p2

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static d(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public addValueCallback(Ljava/lang/Object;Lg2/c;)V
    .locals 2
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
    sget-object v0, LT1/K;->a:Landroid/graphics/PointF;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lb2/j;->I:LW1/u;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-nez p2, :cond_1

    .line 22
    .line 23
    iput-object v1, p0, Lb2/j;->I:LW1/u;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p1, LW1/u;

    .line 27
    .line 28
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lb2/j;->I:LW1/u;

    .line 32
    .line 33
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lb2/j;->I:LW1/u;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const/4 v0, 0x2

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-ne p1, v0, :cond_5

    .line 48
    .line 49
    iget-object p1, p0, Lb2/j;->K:LW1/u;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    if-nez p2, :cond_4

    .line 57
    .line 58
    iput-object v1, p0, Lb2/j;->K:LW1/u;

    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    new-instance p1, LW1/u;

    .line 62
    .line 63
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lb2/j;->K:LW1/u;

    .line 67
    .line 68
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lb2/j;->K:LW1/u;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_5
    sget-object v0, LT1/K;->k:Ljava/lang/Float;

    .line 78
    .line 79
    if-ne p1, v0, :cond_8

    .line 80
    .line 81
    iget-object p1, p0, Lb2/j;->M:LW1/u;

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    if-nez p2, :cond_7

    .line 89
    .line 90
    iput-object v1, p0, Lb2/j;->M:LW1/u;

    .line 91
    .line 92
    return-void

    .line 93
    :cond_7
    new-instance p1, LW1/u;

    .line 94
    .line 95
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lb2/j;->M:LW1/u;

    .line 99
    .line 100
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lb2/j;->M:LW1/u;

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_8
    sget-object v0, LT1/K;->l:Ljava/lang/Float;

    .line 110
    .line 111
    if-ne p1, v0, :cond_b

    .line 112
    .line 113
    iget-object p1, p0, Lb2/j;->O:LW1/u;

    .line 114
    .line 115
    if-eqz p1, :cond_9

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 118
    .line 119
    .line 120
    :cond_9
    if-nez p2, :cond_a

    .line 121
    .line 122
    iput-object v1, p0, Lb2/j;->O:LW1/u;

    .line 123
    .line 124
    return-void

    .line 125
    :cond_a
    new-instance p1, LW1/u;

    .line 126
    .line 127
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, Lb2/j;->O:LW1/u;

    .line 131
    .line 132
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lb2/j;->O:LW1/u;

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_b
    sget-object v0, LT1/K;->x:Ljava/lang/Float;

    .line 142
    .line 143
    if-ne p1, v0, :cond_e

    .line 144
    .line 145
    iget-object p1, p0, Lb2/j;->P:LW1/u;

    .line 146
    .line 147
    if-eqz p1, :cond_c

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 150
    .line 151
    .line 152
    :cond_c
    if-nez p2, :cond_d

    .line 153
    .line 154
    iput-object v1, p0, Lb2/j;->P:LW1/u;

    .line 155
    .line 156
    return-void

    .line 157
    :cond_d
    new-instance p1, LW1/u;

    .line 158
    .line 159
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lb2/j;->P:LW1/u;

    .line 163
    .line 164
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lb2/j;->P:LW1/u;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 170
    .line 171
    .line 172
    :cond_e
    return-void
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lb2/j;->F:LT1/G;

    .line 9
    .line 10
    invoke-virtual {v2}, LT1/G;->useTextGlyphs()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v3, v0, Lb2/j;->E:LW1/s;

    .line 20
    .line 21
    invoke-virtual {v3}, LW1/f;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, LY1/b;

    .line 26
    .line 27
    iget-object v4, v0, Lb2/j;->G:LT1/i;

    .line 28
    .line 29
    invoke-virtual {v4}, LT1/i;->getFonts()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, v3, LY1/b;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, LY1/c;

    .line 40
    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-object v6, v0, Lb2/j;->I:LW1/u;

    .line 48
    .line 49
    iget-object v7, v0, Lb2/j;->A:Lb2/i;

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    invoke-virtual {v6}, LW1/u;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v6, v0, Lb2/j;->H:LW1/f;

    .line 68
    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    invoke-virtual {v6}, LW1/f;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iget v6, v3, LY1/b;->h:I

    .line 86
    .line 87
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iget-object v6, v0, Lb2/j;->K:LW1/u;

    .line 91
    .line 92
    iget-object v8, v0, Lb2/j;->B:Lb2/i;

    .line 93
    .line 94
    if-eqz v6, :cond_4

    .line 95
    .line 96
    invoke-virtual {v6}, LW1/u;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    iget-object v6, v0, Lb2/j;->J:LW1/f;

    .line 111
    .line 112
    if-eqz v6, :cond_5

    .line 113
    .line 114
    invoke-virtual {v6}, LW1/f;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    check-cast v6, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    iget v6, v3, LY1/b;->i:I

    .line 129
    .line 130
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    .line 132
    .line 133
    :goto_1
    iget-object v6, v0, Lb2/b;->v:LW1/t;

    .line 134
    .line 135
    invoke-virtual {v6}, LW1/t;->getOpacity()LW1/f;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    const/16 v10, 0x64

    .line 140
    .line 141
    if-nez v9, :cond_6

    .line 142
    .line 143
    move v6, v10

    .line 144
    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {v6}, LW1/t;->getOpacity()LW1/f;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v6}, LW1/f;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    check-cast v6, Ljava/lang/Integer;

    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    :goto_2
    mul-int/lit16 v6, v6, 0xff

    .line 160
    .line 161
    div-int/2addr v6, v10

    .line 162
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 166
    .line 167
    .line 168
    iget-object v6, v0, Lb2/j;->M:LW1/u;

    .line 169
    .line 170
    if-eqz v6, :cond_7

    .line 171
    .line 172
    invoke-virtual {v6}, LW1/u;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    check-cast v6, Ljava/lang/Float;

    .line 177
    .line 178
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    iget-object v6, v0, Lb2/j;->L:LW1/f;

    .line 187
    .line 188
    if-eqz v6, :cond_8

    .line 189
    .line 190
    invoke-virtual {v6}, LW1/f;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    check-cast v6, Ljava/lang/Float;

    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_8
    invoke-static/range {p2 .. p2}, Lf2/h;->getScale(Landroid/graphics/Matrix;)F

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    iget v9, v3, LY1/b;->j:F

    .line 209
    .line 210
    invoke-static {}, Lf2/h;->dpScale()F

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    mul-float/2addr v10, v9

    .line 215
    mul-float/2addr v10, v6

    .line 216
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    .line 218
    .line 219
    :goto_3
    invoke-virtual {v2}, LT1/G;->useTextGlyphs()Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    iget-object v9, v0, Lb2/j;->N:LW1/f;

    .line 224
    .line 225
    const-string v11, "\n"

    .line 226
    .line 227
    const-string v12, "\r"

    .line 228
    .line 229
    const-string v13, "\r\n"

    .line 230
    .line 231
    const/high16 p3, 0x40000000    # 2.0f

    .line 232
    .line 233
    const/high16 v16, 0x41200000    # 10.0f

    .line 234
    .line 235
    iget v14, v3, LY1/b;->e:I

    .line 236
    .line 237
    iget-boolean v10, v3, LY1/b;->k:Z

    .line 238
    .line 239
    iget-object v15, v3, LY1/b;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 240
    .line 241
    move-object/from16 v17, v4

    .line 242
    .line 243
    iget v4, v3, LY1/b;->f:F

    .line 244
    .line 245
    move/from16 v18, v4

    .line 246
    .line 247
    iget-object v4, v3, LY1/b;->a:Ljava/lang/String;

    .line 248
    .line 249
    move-object/from16 v19, v5

    .line 250
    .line 251
    iget v5, v3, LY1/b;->c:F

    .line 252
    .line 253
    if-eqz v6, :cond_16

    .line 254
    .line 255
    iget-object v6, v0, Lb2/j;->P:LW1/u;

    .line 256
    .line 257
    if-eqz v6, :cond_9

    .line 258
    .line 259
    invoke-virtual {v6}, LW1/u;->getValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    check-cast v5, Ljava/lang/Float;

    .line 264
    .line 265
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    :cond_9
    const/high16 v6, 0x42c80000    # 100.0f

    .line 270
    .line 271
    div-float/2addr v5, v6

    .line 272
    invoke-static/range {p2 .. p2}, Lf2/h;->getScale(Landroid/graphics/Matrix;)F

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    invoke-static {}, Lf2/h;->dpScale()F

    .line 277
    .line 278
    .line 279
    move-result v20

    .line 280
    mul-float v20, v20, v18

    .line 281
    .line 282
    invoke-virtual {v4, v13, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 299
    .line 300
    .line 301
    move-result v11

    .line 302
    const/4 v12, 0x0

    .line 303
    :goto_4
    if-ge v12, v11, :cond_24

    .line 304
    .line 305
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v13

    .line 309
    check-cast v13, Ljava/lang/String;

    .line 310
    .line 311
    move-object/from16 v18, v4

    .line 312
    .line 313
    move-object/from16 v21, v9

    .line 314
    .line 315
    move/from16 v22, v10

    .line 316
    .line 317
    const/4 v4, 0x0

    .line 318
    const/4 v9, 0x0

    .line 319
    :goto_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 320
    .line 321
    .line 322
    move-result v10

    .line 323
    if-ge v9, v10, :cond_b

    .line 324
    .line 325
    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    move/from16 v23, v9

    .line 330
    .line 331
    invoke-virtual/range {v19 .. v19}, LY1/c;->getFamily()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    move/from16 v24, v11

    .line 336
    .line 337
    invoke-virtual/range {v19 .. v19}, LY1/c;->getStyle()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    invoke-static {v10, v9, v11}, LY1/d;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    invoke-virtual/range {v17 .. v17}, LT1/i;->getCharacters()Lp/r;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    invoke-virtual {v10, v9}, Lp/r;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    check-cast v9, LY1/d;

    .line 354
    .line 355
    if-nez v9, :cond_a

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_a
    float-to-double v10, v4

    .line 359
    invoke-virtual {v9}, LY1/d;->getWidth()D

    .line 360
    .line 361
    .line 362
    move-result-wide v25

    .line 363
    move-wide/from16 v27, v10

    .line 364
    .line 365
    float-to-double v9, v5

    .line 366
    mul-double v25, v25, v9

    .line 367
    .line 368
    invoke-static {}, Lf2/h;->dpScale()F

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    float-to-double v9, v4

    .line 373
    mul-double v25, v25, v9

    .line 374
    .line 375
    float-to-double v9, v6

    .line 376
    mul-double v25, v25, v9

    .line 377
    .line 378
    add-double v9, v25, v27

    .line 379
    .line 380
    double-to-float v4, v9

    .line 381
    :goto_6
    add-int/lit8 v9, v23, 0x1

    .line 382
    .line 383
    move/from16 v11, v24

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_b
    move/from16 v24, v11

    .line 387
    .line 388
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 389
    .line 390
    .line 391
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 392
    .line 393
    .line 394
    move-result v9

    .line 395
    const/4 v10, 0x1

    .line 396
    if-eq v9, v10, :cond_d

    .line 397
    .line 398
    const/4 v10, 0x2

    .line 399
    if-eq v9, v10, :cond_c

    .line 400
    .line 401
    const/4 v9, 0x0

    .line 402
    goto :goto_7

    .line 403
    :cond_c
    neg-float v4, v4

    .line 404
    div-float v4, v4, p3

    .line 405
    .line 406
    const/4 v9, 0x0

    .line 407
    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 408
    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_d
    const/4 v9, 0x0

    .line 412
    neg-float v4, v4

    .line 413
    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 414
    .line 415
    .line 416
    :goto_7
    add-int/lit8 v11, v24, -0x1

    .line 417
    .line 418
    int-to-float v4, v11

    .line 419
    mul-float v4, v4, v20

    .line 420
    .line 421
    div-float v4, v4, p3

    .line 422
    .line 423
    int-to-float v10, v12

    .line 424
    mul-float v10, v10, v20

    .line 425
    .line 426
    sub-float/2addr v10, v4

    .line 427
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 428
    .line 429
    .line 430
    const/4 v4, 0x0

    .line 431
    :goto_8
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    if-ge v4, v9, :cond_15

    .line 436
    .line 437
    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    .line 438
    .line 439
    .line 440
    move-result v9

    .line 441
    invoke-virtual/range {v19 .. v19}, LY1/c;->getFamily()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v10

    .line 445
    invoke-virtual/range {v19 .. v19}, LY1/c;->getStyle()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v11

    .line 449
    invoke-static {v9, v10, v11}, LY1/d;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    invoke-virtual/range {v17 .. v17}, LT1/i;->getCharacters()Lp/r;

    .line 454
    .line 455
    .line 456
    move-result-object v10

    .line 457
    invoke-virtual {v10, v9}, Lp/r;->get(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v9

    .line 461
    check-cast v9, LY1/d;

    .line 462
    .line 463
    if-nez v9, :cond_e

    .line 464
    .line 465
    move-object/from16 v28, v3

    .line 466
    .line 467
    move/from16 v23, v4

    .line 468
    .line 469
    move/from16 v25, v6

    .line 470
    .line 471
    move/from16 v26, v12

    .line 472
    .line 473
    move-object/from16 v12, p2

    .line 474
    .line 475
    goto/16 :goto_f

    .line 476
    .line 477
    :cond_e
    iget-object v10, v0, Lb2/j;->C:Ljava/util/HashMap;

    .line 478
    .line 479
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v11

    .line 483
    if-eqz v11, :cond_f

    .line 484
    .line 485
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v10

    .line 489
    check-cast v10, Ljava/util/List;

    .line 490
    .line 491
    move/from16 v23, v4

    .line 492
    .line 493
    move/from16 v25, v6

    .line 494
    .line 495
    move/from16 v26, v12

    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_f
    invoke-virtual {v9}, LY1/d;->getShapes()Ljava/util/List;

    .line 499
    .line 500
    .line 501
    move-result-object v11

    .line 502
    move/from16 v23, v4

    .line 503
    .line 504
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    move/from16 v25, v6

    .line 509
    .line 510
    new-instance v6, Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 513
    .line 514
    .line 515
    move/from16 v26, v12

    .line 516
    .line 517
    const/4 v12, 0x0

    .line 518
    :goto_9
    if-ge v12, v4, :cond_10

    .line 519
    .line 520
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v27

    .line 524
    move/from16 v28, v4

    .line 525
    .line 526
    move-object/from16 v4, v27

    .line 527
    .line 528
    check-cast v4, La2/m;

    .line 529
    .line 530
    move-object/from16 v27, v11

    .line 531
    .line 532
    new-instance v11, LV1/e;

    .line 533
    .line 534
    invoke-direct {v11, v2, v0, v4}, LV1/e;-><init>(LT1/G;Lb2/b;La2/m;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    add-int/lit8 v12, v12, 0x1

    .line 541
    .line 542
    move-object/from16 v11, v27

    .line 543
    .line 544
    move/from16 v4, v28

    .line 545
    .line 546
    goto :goto_9

    .line 547
    :cond_10
    invoke-virtual {v10, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-object v10, v6

    .line 551
    :goto_a
    const/4 v4, 0x0

    .line 552
    :goto_b
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 553
    .line 554
    .line 555
    move-result v6

    .line 556
    if-ge v4, v6, :cond_12

    .line 557
    .line 558
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    check-cast v6, LV1/e;

    .line 563
    .line 564
    invoke-virtual {v6}, LV1/e;->getPath()Landroid/graphics/Path;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    iget-object v11, v0, Lb2/j;->y:Landroid/graphics/RectF;

    .line 569
    .line 570
    const/4 v12, 0x0

    .line 571
    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 572
    .line 573
    .line 574
    iget-object v11, v0, Lb2/j;->z:Landroid/graphics/Matrix;

    .line 575
    .line 576
    move-object/from16 v12, p2

    .line 577
    .line 578
    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 579
    .line 580
    .line 581
    move/from16 v27, v4

    .line 582
    .line 583
    iget v4, v3, LY1/b;->g:F

    .line 584
    .line 585
    neg-float v4, v4

    .line 586
    invoke-static {}, Lf2/h;->dpScale()F

    .line 587
    .line 588
    .line 589
    move-result v28

    .line 590
    mul-float v4, v4, v28

    .line 591
    .line 592
    move-object/from16 v28, v3

    .line 593
    .line 594
    const/4 v3, 0x0

    .line 595
    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 596
    .line 597
    .line 598
    invoke-virtual {v11, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 599
    .line 600
    .line 601
    invoke-virtual {v6, v11}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 602
    .line 603
    .line 604
    if-eqz v22, :cond_11

    .line 605
    .line 606
    invoke-static {v6, v7, v1}, Lb2/j;->d(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 607
    .line 608
    .line 609
    invoke-static {v6, v8, v1}, Lb2/j;->d(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 610
    .line 611
    .line 612
    goto :goto_c

    .line 613
    :cond_11
    invoke-static {v6, v8, v1}, Lb2/j;->d(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 614
    .line 615
    .line 616
    invoke-static {v6, v7, v1}, Lb2/j;->d(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 617
    .line 618
    .line 619
    :goto_c
    add-int/lit8 v4, v27, 0x1

    .line 620
    .line 621
    move-object/from16 v3, v28

    .line 622
    .line 623
    goto :goto_b

    .line 624
    :cond_12
    move-object/from16 v12, p2

    .line 625
    .line 626
    move-object/from16 v28, v3

    .line 627
    .line 628
    invoke-virtual {v9}, LY1/d;->getWidth()D

    .line 629
    .line 630
    .line 631
    move-result-wide v3

    .line 632
    double-to-float v3, v3

    .line 633
    mul-float/2addr v3, v5

    .line 634
    invoke-static {}, Lf2/h;->dpScale()F

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    mul-float/2addr v4, v3

    .line 639
    mul-float v4, v4, v25

    .line 640
    .line 641
    int-to-float v3, v14

    .line 642
    div-float v3, v3, v16

    .line 643
    .line 644
    iget-object v6, v0, Lb2/j;->O:LW1/u;

    .line 645
    .line 646
    if-eqz v6, :cond_13

    .line 647
    .line 648
    invoke-virtual {v6}, LW1/u;->getValue()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v6

    .line 652
    check-cast v6, Ljava/lang/Float;

    .line 653
    .line 654
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 655
    .line 656
    .line 657
    move-result v6

    .line 658
    :goto_d
    add-float/2addr v3, v6

    .line 659
    goto :goto_e

    .line 660
    :cond_13
    if-eqz v21, :cond_14

    .line 661
    .line 662
    invoke-virtual/range {v21 .. v21}, LW1/f;->getValue()Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v6

    .line 666
    check-cast v6, Ljava/lang/Float;

    .line 667
    .line 668
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 669
    .line 670
    .line 671
    move-result v6

    .line 672
    goto :goto_d

    .line 673
    :cond_14
    :goto_e
    mul-float v3, v3, v25

    .line 674
    .line 675
    add-float/2addr v3, v4

    .line 676
    const/4 v9, 0x0

    .line 677
    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 678
    .line 679
    .line 680
    :goto_f
    add-int/lit8 v4, v23, 0x1

    .line 681
    .line 682
    move/from16 v6, v25

    .line 683
    .line 684
    move/from16 v12, v26

    .line 685
    .line 686
    move-object/from16 v3, v28

    .line 687
    .line 688
    goto/16 :goto_8

    .line 689
    .line 690
    :cond_15
    move-object/from16 v28, v3

    .line 691
    .line 692
    move/from16 v25, v6

    .line 693
    .line 694
    move/from16 v26, v12

    .line 695
    .line 696
    move-object/from16 v12, p2

    .line 697
    .line 698
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 699
    .line 700
    .line 701
    add-int/lit8 v3, v26, 0x1

    .line 702
    .line 703
    move v12, v3

    .line 704
    move-object/from16 v4, v18

    .line 705
    .line 706
    move-object/from16 v9, v21

    .line 707
    .line 708
    move/from16 v10, v22

    .line 709
    .line 710
    move/from16 v11, v24

    .line 711
    .line 712
    move-object/from16 v3, v28

    .line 713
    .line 714
    goto/16 :goto_4

    .line 715
    .line 716
    :cond_16
    move-object/from16 v21, v9

    .line 717
    .line 718
    move/from16 v22, v10

    .line 719
    .line 720
    invoke-static/range {p2 .. p2}, Lf2/h;->getScale(Landroid/graphics/Matrix;)F

    .line 721
    .line 722
    .line 723
    move-result v3

    .line 724
    invoke-virtual/range {v19 .. v19}, LY1/c;->getFamily()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v6

    .line 728
    invoke-virtual/range {v19 .. v19}, LY1/c;->getStyle()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v9

    .line 732
    invoke-virtual {v2, v6, v9}, LT1/G;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 733
    .line 734
    .line 735
    move-result-object v6

    .line 736
    if-nez v6, :cond_17

    .line 737
    .line 738
    goto/16 :goto_1a

    .line 739
    .line 740
    :cond_17
    invoke-virtual {v2}, LT1/G;->getTextDelegate()LT1/S;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 744
    .line 745
    .line 746
    iget-object v2, v0, Lb2/j;->P:LW1/u;

    .line 747
    .line 748
    if-eqz v2, :cond_18

    .line 749
    .line 750
    invoke-virtual {v2}, LW1/u;->getValue()Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    check-cast v2, Ljava/lang/Float;

    .line 755
    .line 756
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 757
    .line 758
    .line 759
    move-result v5

    .line 760
    :cond_18
    invoke-static {}, Lf2/h;->dpScale()F

    .line 761
    .line 762
    .line 763
    move-result v2

    .line 764
    mul-float/2addr v2, v5

    .line 765
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    .line 776
    .line 777
    .line 778
    move-result v2

    .line 779
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 780
    .line 781
    .line 782
    invoke-static {}, Lf2/h;->dpScale()F

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    mul-float v2, v2, v18

    .line 787
    .line 788
    invoke-virtual {v4, v13, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v4

    .line 792
    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v4

    .line 796
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v4

    .line 800
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 801
    .line 802
    .line 803
    move-result-object v4

    .line 804
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 805
    .line 806
    .line 807
    move-result v5

    .line 808
    const/4 v12, 0x0

    .line 809
    :goto_10
    if-ge v12, v5, :cond_24

    .line 810
    .line 811
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v6

    .line 815
    check-cast v6, Ljava/lang/String;

    .line 816
    .line 817
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 818
    .line 819
    .line 820
    move-result v9

    .line 821
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 822
    .line 823
    .line 824
    move-result v10

    .line 825
    const/4 v11, 0x1

    .line 826
    if-eq v10, v11, :cond_1a

    .line 827
    .line 828
    const/4 v11, 0x2

    .line 829
    if-eq v10, v11, :cond_19

    .line 830
    .line 831
    const/4 v10, 0x0

    .line 832
    goto :goto_11

    .line 833
    :cond_19
    neg-float v9, v9

    .line 834
    div-float v9, v9, p3

    .line 835
    .line 836
    const/4 v10, 0x0

    .line 837
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 838
    .line 839
    .line 840
    goto :goto_11

    .line 841
    :cond_1a
    const/4 v10, 0x0

    .line 842
    const/4 v11, 0x2

    .line 843
    neg-float v9, v9

    .line 844
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 845
    .line 846
    .line 847
    :goto_11
    add-int/lit8 v9, v5, -0x1

    .line 848
    .line 849
    int-to-float v9, v9

    .line 850
    mul-float/2addr v9, v2

    .line 851
    div-float v9, v9, p3

    .line 852
    .line 853
    int-to-float v13, v12

    .line 854
    mul-float/2addr v13, v2

    .line 855
    sub-float/2addr v13, v9

    .line 856
    invoke-virtual {v1, v10, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 857
    .line 858
    .line 859
    const/4 v9, 0x0

    .line 860
    :goto_12
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 861
    .line 862
    .line 863
    move-result v10

    .line 864
    if-ge v9, v10, :cond_23

    .line 865
    .line 866
    invoke-virtual {v6, v9}, Ljava/lang/String;->codePointAt(I)I

    .line 867
    .line 868
    .line 869
    move-result v10

    .line 870
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    .line 871
    .line 872
    .line 873
    move-result v13

    .line 874
    add-int/2addr v13, v9

    .line 875
    :goto_13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 876
    .line 877
    .line 878
    move-result v11

    .line 879
    if-ge v13, v11, :cond_1c

    .line 880
    .line 881
    invoke-virtual {v6, v13}, Ljava/lang/String;->codePointAt(I)I

    .line 882
    .line 883
    .line 884
    move-result v11

    .line 885
    move/from16 v17, v2

    .line 886
    .line 887
    invoke-static {v11}, Ljava/lang/Character;->getType(I)I

    .line 888
    .line 889
    .line 890
    move-result v2

    .line 891
    move/from16 v18, v3

    .line 892
    .line 893
    const/16 v3, 0x10

    .line 894
    .line 895
    if-eq v2, v3, :cond_1b

    .line 896
    .line 897
    invoke-static {v11}, Ljava/lang/Character;->getType(I)I

    .line 898
    .line 899
    .line 900
    move-result v2

    .line 901
    const/16 v3, 0x1b

    .line 902
    .line 903
    if-eq v2, v3, :cond_1b

    .line 904
    .line 905
    invoke-static {v11}, Ljava/lang/Character;->getType(I)I

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    const/4 v3, 0x6

    .line 910
    if-eq v2, v3, :cond_1b

    .line 911
    .line 912
    invoke-static {v11}, Ljava/lang/Character;->getType(I)I

    .line 913
    .line 914
    .line 915
    move-result v2

    .line 916
    const/16 v3, 0x1c

    .line 917
    .line 918
    if-eq v2, v3, :cond_1b

    .line 919
    .line 920
    invoke-static {v11}, Ljava/lang/Character;->getType(I)I

    .line 921
    .line 922
    .line 923
    move-result v2

    .line 924
    const/16 v3, 0x13

    .line 925
    .line 926
    if-ne v2, v3, :cond_1d

    .line 927
    .line 928
    :cond_1b
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 929
    .line 930
    .line 931
    move-result v2

    .line 932
    add-int/2addr v13, v2

    .line 933
    mul-int/lit8 v10, v10, 0x1f

    .line 934
    .line 935
    add-int/2addr v10, v11

    .line 936
    move/from16 v2, v17

    .line 937
    .line 938
    move/from16 v3, v18

    .line 939
    .line 940
    goto :goto_13

    .line 941
    :cond_1c
    move/from16 v17, v2

    .line 942
    .line 943
    move/from16 v18, v3

    .line 944
    .line 945
    :cond_1d
    int-to-long v2, v10

    .line 946
    iget-object v10, v0, Lb2/j;->D:Lp/n;

    .line 947
    .line 948
    invoke-virtual {v10, v2, v3}, Lp/n;->containsKey(J)Z

    .line 949
    .line 950
    .line 951
    move-result v11

    .line 952
    if-eqz v11, :cond_1e

    .line 953
    .line 954
    invoke-virtual {v10, v2, v3}, Lp/n;->get(J)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v2

    .line 958
    check-cast v2, Ljava/lang/String;

    .line 959
    .line 960
    move-object/from16 v19, v4

    .line 961
    .line 962
    move/from16 v20, v5

    .line 963
    .line 964
    goto :goto_15

    .line 965
    :cond_1e
    iget-object v11, v0, Lb2/j;->x:Ljava/lang/StringBuilder;

    .line 966
    .line 967
    move-object/from16 v19, v4

    .line 968
    .line 969
    const/4 v4, 0x0

    .line 970
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 971
    .line 972
    .line 973
    move v4, v9

    .line 974
    :goto_14
    if-ge v4, v13, :cond_1f

    .line 975
    .line 976
    move/from16 v20, v5

    .line 977
    .line 978
    invoke-virtual {v6, v4}, Ljava/lang/String;->codePointAt(I)I

    .line 979
    .line 980
    .line 981
    move-result v5

    .line 982
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    .line 986
    .line 987
    .line 988
    move-result v5

    .line 989
    add-int/2addr v4, v5

    .line 990
    move/from16 v5, v20

    .line 991
    .line 992
    goto :goto_14

    .line 993
    :cond_1f
    move/from16 v20, v5

    .line 994
    .line 995
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v4

    .line 999
    invoke-virtual {v10, v2, v3, v4}, Lp/n;->put(JLjava/lang/Object;)V

    .line 1000
    .line 1001
    .line 1002
    move-object v2, v4

    .line 1003
    :goto_15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1004
    .line 1005
    .line 1006
    move-result v3

    .line 1007
    add-int/2addr v9, v3

    .line 1008
    if-eqz v22, :cond_20

    .line 1009
    .line 1010
    invoke-static {v2, v7, v1}, Lb2/j;->c(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v2, v8, v1}, Lb2/j;->c(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1014
    .line 1015
    .line 1016
    :goto_16
    const/4 v4, 0x0

    .line 1017
    const/4 v10, 0x1

    .line 1018
    goto :goto_17

    .line 1019
    :cond_20
    invoke-static {v2, v8, v1}, Lb2/j;->c(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1020
    .line 1021
    .line 1022
    invoke-static {v2, v7, v1}, Lb2/j;->c(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_16

    .line 1026
    :goto_17
    invoke-virtual {v7, v2, v4, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 1027
    .line 1028
    .line 1029
    move-result v2

    .line 1030
    int-to-float v3, v14

    .line 1031
    div-float v3, v3, v16

    .line 1032
    .line 1033
    iget-object v5, v0, Lb2/j;->O:LW1/u;

    .line 1034
    .line 1035
    if-eqz v5, :cond_21

    .line 1036
    .line 1037
    invoke-virtual {v5}, LW1/u;->getValue()Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v5

    .line 1041
    check-cast v5, Ljava/lang/Float;

    .line 1042
    .line 1043
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 1044
    .line 1045
    .line 1046
    move-result v5

    .line 1047
    :goto_18
    add-float/2addr v3, v5

    .line 1048
    goto :goto_19

    .line 1049
    :cond_21
    if-eqz v21, :cond_22

    .line 1050
    .line 1051
    invoke-virtual/range {v21 .. v21}, LW1/f;->getValue()Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v5

    .line 1055
    check-cast v5, Ljava/lang/Float;

    .line 1056
    .line 1057
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 1058
    .line 1059
    .line 1060
    move-result v5

    .line 1061
    goto :goto_18

    .line 1062
    :cond_22
    :goto_19
    mul-float v3, v3, v18

    .line 1063
    .line 1064
    add-float/2addr v3, v2

    .line 1065
    const/4 v2, 0x0

    .line 1066
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1067
    .line 1068
    .line 1069
    move/from16 v2, v17

    .line 1070
    .line 1071
    move/from16 v3, v18

    .line 1072
    .line 1073
    move-object/from16 v4, v19

    .line 1074
    .line 1075
    move/from16 v5, v20

    .line 1076
    .line 1077
    const/4 v11, 0x2

    .line 1078
    goto/16 :goto_12

    .line 1079
    .line 1080
    :cond_23
    move/from16 v17, v2

    .line 1081
    .line 1082
    move/from16 v18, v3

    .line 1083
    .line 1084
    move-object/from16 v19, v4

    .line 1085
    .line 1086
    move/from16 v20, v5

    .line 1087
    .line 1088
    const/4 v2, 0x0

    .line 1089
    const/4 v4, 0x0

    .line 1090
    const/4 v10, 0x1

    .line 1091
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1092
    .line 1093
    .line 1094
    add-int/lit8 v12, v12, 0x1

    .line 1095
    .line 1096
    move/from16 v2, v17

    .line 1097
    .line 1098
    move-object/from16 v4, v19

    .line 1099
    .line 1100
    goto/16 :goto_10

    .line 1101
    .line 1102
    :cond_24
    :goto_1a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1103
    .line 1104
    .line 1105
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lb2/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lb2/j;->G:LT1/i;

    .line 5
    .line 6
    invoke-virtual {p2}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    int-to-float p3, p3

    .line 15
    invoke-virtual {p2}, LT1/i;->getBounds()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    int-to-float p2, p2

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
