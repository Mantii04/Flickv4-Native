.class public final Lb2/c;
.super Lb2/b;
.source "SourceFile"


# instance fields
.field public final A:Landroid/graphics/RectF;

.field public final B:Landroid/graphics/Paint;

.field public x:LW1/f;

.field public final y:Ljava/util/ArrayList;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(LT1/G;Lb2/e;Ljava/util/List;LT1/i;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT1/G;",
            "Lb2/e;",
            "Ljava/util/List<",
            "Lb2/e;",
            ">;",
            "LT1/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lb2/b;-><init>(LT1/G;Lb2/e;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb2/c;->y:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lb2/c;->z:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lb2/c;->A:Landroid/graphics/RectF;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lb2/c;->B:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iget-object p2, p2, Lb2/e;->s:LZ1/b;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2}, LZ1/b;->createAnimation()LW1/f;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lb2/c;->x:LW1/f;

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lb2/b;->addAnimation(LW1/f;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lb2/c;->x:LW1/f;

    .line 47
    .line 48
    invoke-virtual {p2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iput-object v0, p0, Lb2/c;->x:LW1/f;

    .line 53
    .line 54
    :goto_0
    new-instance p2, Lp/n;

    .line 55
    .line 56
    invoke-virtual {p4}, LT1/i;->getLayers()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-direct {p2, v1}, Lp/n;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x1

    .line 72
    sub-int/2addr v1, v2

    .line 73
    move-object v3, v0

    .line 74
    :goto_1
    const/4 v4, 0x0

    .line 75
    if-ltz v1, :cond_a

    .line 76
    .line 77
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lb2/e;

    .line 82
    .line 83
    invoke-virtual {v5}, Lb2/e;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    const/4 v7, 0x2

    .line 92
    if-eqz v6, :cond_6

    .line 93
    .line 94
    if-eq v6, v2, :cond_5

    .line 95
    .line 96
    if-eq v6, v7, :cond_4

    .line 97
    .line 98
    const/4 v8, 0x3

    .line 99
    if-eq v6, v8, :cond_3

    .line 100
    .line 101
    const/4 v8, 0x4

    .line 102
    if-eq v6, v8, :cond_2

    .line 103
    .line 104
    const/4 v8, 0x5

    .line 105
    if-eq v6, v8, :cond_1

    .line 106
    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v8, "Unknown layer type "

    .line 110
    .line 111
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Lb2/e;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v6}, Lf2/d;->warning(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move-object v6, v0

    .line 129
    goto :goto_2

    .line 130
    :cond_1
    new-instance v6, Lb2/j;

    .line 131
    .line 132
    invoke-direct {v6, p1, v5}, Lb2/j;-><init>(LT1/G;Lb2/e;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    new-instance v6, Lb2/g;

    .line 137
    .line 138
    invoke-direct {v6, p1, v5}, Lb2/g;-><init>(LT1/G;Lb2/e;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    new-instance v6, Lb2/f;

    .line 143
    .line 144
    invoke-direct {v6, p1, v5}, Lb2/b;-><init>(LT1/G;Lb2/e;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    new-instance v6, Lb2/d;

    .line 149
    .line 150
    invoke-direct {v6, p1, v5}, Lb2/d;-><init>(LT1/G;Lb2/e;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    new-instance v6, Lb2/h;

    .line 155
    .line 156
    invoke-direct {v6, p1, v5}, Lb2/h;-><init>(LT1/G;Lb2/e;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    new-instance v6, Lb2/c;

    .line 161
    .line 162
    iget-object v8, v5, Lb2/e;->g:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p4, v8}, LT1/i;->getPrecomps(Ljava/lang/String;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-direct {v6, p1, v5, v8, p4}, Lb2/c;-><init>(LT1/G;Lb2/e;Ljava/util/List;LT1/i;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    if-nez v6, :cond_7

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    iget-object v8, v6, Lb2/b;->o:Lb2/e;

    .line 175
    .line 176
    invoke-virtual {v8}, Lb2/e;->getId()J

    .line 177
    .line 178
    .line 179
    move-result-wide v8

    .line 180
    invoke-virtual {p2, v8, v9, v6}, Lp/n;->put(JLjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    if-eqz v3, :cond_8

    .line 184
    .line 185
    iput-object v6, v3, Lb2/b;->r:Lb2/b;

    .line 186
    .line 187
    move-object v3, v0

    .line 188
    goto :goto_3

    .line 189
    :cond_8
    iget-object v8, p0, Lb2/c;->y:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v8, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iget-object v4, v5, Lb2/e;->u:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eq v4, v2, :cond_9

    .line 201
    .line 202
    if-eq v4, v7, :cond_9

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_9
    move-object v3, v6

    .line 206
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_a
    :goto_4
    invoke-virtual {p2}, Lp/n;->size()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-ge v4, p1, :cond_d

    .line 215
    .line 216
    invoke-virtual {p2, v4}, Lp/n;->keyAt(I)J

    .line 217
    .line 218
    .line 219
    move-result-wide p3

    .line 220
    invoke-virtual {p2, p3, p4}, Lp/n;->get(J)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Lb2/b;

    .line 225
    .line 226
    if-nez p1, :cond_b

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_b
    iget-object p3, p1, Lb2/b;->o:Lb2/e;

    .line 230
    .line 231
    iget-wide p3, p3, Lb2/e;->f:J

    .line 232
    .line 233
    invoke-virtual {p2, p3, p4}, Lp/n;->get(J)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    check-cast p3, Lb2/b;

    .line 238
    .line 239
    if-eqz p3, :cond_c

    .line 240
    .line 241
    iput-object p3, p1, Lb2/b;->s:Lb2/b;

    .line 242
    .line 243
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_d
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
    sget-object v0, LT1/K;->w:Ljava/lang/Float;

    .line 5
    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lb2/c;->x:LW1/f;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, LW1/u;

    .line 20
    .line 21
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lb2/c;->x:LW1/f;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lb2/c;->x:LW1/f;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    .line 1
    const-string v0, "CompositionLayer#draw"

    .line 2
    .line 3
    invoke-static {v0}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lb2/c;->A:Landroid/graphics/RectF;

    .line 7
    .line 8
    iget-object v2, p0, Lb2/b;->o:Lb2/e;

    .line 9
    .line 10
    iget v3, v2, Lb2/e;->o:I

    .line 11
    .line 12
    int-to-float v3, v3

    .line 13
    iget v2, v2, Lb2/e;->p:I

    .line 14
    .line 15
    int-to-float v2, v2

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lb2/b;->n:LT1/G;

    .line 24
    .line 25
    invoke-virtual {v2}, LT1/G;->isApplyingOpacityToLayersEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, p0, Lb2/c;->y:Ljava/util/ArrayList;

    .line 30
    .line 31
    const/16 v4, 0xff

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-le v2, v5, :cond_0

    .line 41
    .line 42
    if-eq p3, v4, :cond_0

    .line 43
    .line 44
    move v2, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_0
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v6, p0, Lb2/c;->B:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1, v6}, Lf2/h;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    .line 60
    .line 61
    :goto_1
    if-eqz v2, :cond_2

    .line 62
    .line 63
    move p3, v4

    .line 64
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    sub-int/2addr v2, v5

    .line 69
    :goto_2
    if-ltz v2, :cond_5

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    move v4, v5

    .line 83
    :goto_3
    if-eqz v4, :cond_4

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Lb2/b;

    .line 90
    .line 91
    invoke-virtual {v4, p1, p2, p3}, Lb2/b;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 92
    .line 93
    .line 94
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lb2/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lb2/c;->y:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    const/4 v0, 0x1

    .line 11
    sub-int/2addr p3, v0

    .line 12
    :goto_0
    if-ltz p3, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lb2/c;->z:Landroid/graphics/RectF;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lb2/b;

    .line 25
    .line 26
    iget-object v3, p0, Lb2/b;->m:Landroid/graphics/Matrix;

    .line 27
    .line 28
    invoke-virtual {v2, v1, v3, v0}, Lb2/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p3, p3, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public resolveChildKeyPath(LY1/e;ILjava/util/List;LY1/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY1/e;",
            "I",
            "Ljava/util/List<",
            "LY1/e;",
            ">;",
            "LY1/e;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lb2/c;->y:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lb2/b;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2, p3, p4}, Lb2/b;->resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lb2/b;->setProgress(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb2/c;->x:LW1/f;

    .line 5
    .line 6
    iget-object v1, p0, Lb2/b;->o:Lb2/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lb2/b;->n:LT1/G;

    .line 11
    .line 12
    invoke-virtual {p1}, LT1/G;->getComposition()LT1/i;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, LT1/i;->getDurationFrames()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const v0, 0x3c23d70a    # 0.01f

    .line 21
    .line 22
    .line 23
    add-float/2addr p1, v0

    .line 24
    iget-object v0, v1, Lb2/e;->b:LT1/i;

    .line 25
    .line 26
    invoke-virtual {v0}, LT1/i;->getStartFrame()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Lb2/c;->x:LW1/f;

    .line 31
    .line 32
    invoke-virtual {v2}, LW1/f;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Float;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, v1, Lb2/e;->b:LT1/i;

    .line 43
    .line 44
    invoke-virtual {v3}, LT1/i;->getFrameRate()F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    mul-float/2addr v3, v2

    .line 49
    sub-float/2addr v3, v0

    .line 50
    div-float p1, v3, p1

    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lb2/c;->x:LW1/f;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-object v0, v1, Lb2/e;->b:LT1/i;

    .line 57
    .line 58
    invoke-virtual {v0}, LT1/i;->getDurationFrames()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v2, v1, Lb2/e;->n:F

    .line 63
    .line 64
    div-float/2addr v2, v0

    .line 65
    sub-float/2addr p1, v2

    .line 66
    :cond_1
    iget v0, v1, Lb2/e;->m:F

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    cmpl-float v1, v0, v1

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    div-float/2addr p1, v0

    .line 74
    :cond_2
    iget-object v0, p0, Lb2/c;->y:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    :goto_0
    if-ltz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lb2/b;

    .line 89
    .line 90
    invoke-virtual {v2, p1}, Lb2/b;->setProgress(F)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v1, v1, -0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    return-void
.end method
