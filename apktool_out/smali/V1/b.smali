.class public abstract LV1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW1/a;
.implements LV1/l;
.implements LV1/f;


# instance fields
.field public final a:Landroid/graphics/PathMeasure;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/RectF;

.field public final e:LT1/G;

.field public final f:Lb2/b;

.field public final g:Ljava/util/ArrayList;

.field public final h:[F

.field public final i:LU1/a;

.field public final j:LW1/f;

.field public final k:LW1/f;

.field public final l:Ljava/util/ArrayList;

.field public final m:LW1/f;

.field public n:LW1/u;


# direct methods
.method public constructor <init>(LT1/G;Lb2/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLZ1/d;LZ1/b;Ljava/util/List;LZ1/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV1/b;->a:Landroid/graphics/PathMeasure;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LV1/b;->b:Landroid/graphics/Path;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LV1/b;->c:Landroid/graphics/Path;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, LV1/b;->d:Landroid/graphics/RectF;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, LV1/b;->g:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, LU1/a;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, v1}, LU1/a;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, LV1/b;->i:LU1/a;

    .line 46
    .line 47
    iput-object p1, p0, LV1/b;->e:LT1/G;

    .line 48
    .line 49
    iput-object p2, p0, LV1/b;->f:Lb2/b;

    .line 50
    .line 51
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p6}, LZ1/d;->createAnimation()LW1/f;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, LV1/b;->k:LW1/f;

    .line 70
    .line 71
    invoke-virtual {p7}, LZ1/b;->createAnimation()LW1/f;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, LV1/b;->j:LW1/f;

    .line 76
    .line 77
    if-nez p9, :cond_0

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, LV1/b;->m:LW1/f;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p9}, LZ1/b;->createAnimation()LW1/f;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, LV1/b;->m:LW1/f;

    .line 88
    .line 89
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, LV1/b;->l:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    new-array p1, p1, [F

    .line 105
    .line 106
    iput-object p1, p0, LV1/b;->h:[F

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    move p3, p1

    .line 110
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result p4

    .line 114
    if-ge p3, p4, :cond_1

    .line 115
    .line 116
    iget-object p4, p0, LV1/b;->l:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p5

    .line 122
    check-cast p5, LZ1/b;

    .line 123
    .line 124
    invoke-virtual {p5}, LZ1/b;->createAnimation()LW1/f;

    .line 125
    .line 126
    .line 127
    move-result-object p5

    .line 128
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 p3, p3, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    iget-object p3, p0, LV1/b;->k:LW1/f;

    .line 135
    .line 136
    invoke-virtual {p2, p3}, Lb2/b;->addAnimation(LW1/f;)V

    .line 137
    .line 138
    .line 139
    iget-object p3, p0, LV1/b;->j:LW1/f;

    .line 140
    .line 141
    invoke-virtual {p2, p3}, Lb2/b;->addAnimation(LW1/f;)V

    .line 142
    .line 143
    .line 144
    move p3, p1

    .line 145
    :goto_2
    iget-object p4, p0, LV1/b;->l:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 148
    .line 149
    .line 150
    move-result p4

    .line 151
    if-ge p3, p4, :cond_2

    .line 152
    .line 153
    iget-object p4, p0, LV1/b;->l:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p4

    .line 159
    check-cast p4, LW1/f;

    .line 160
    .line 161
    invoke-virtual {p2, p4}, Lb2/b;->addAnimation(LW1/f;)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 p3, p3, 0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_2
    iget-object p3, p0, LV1/b;->m:LW1/f;

    .line 168
    .line 169
    if-eqz p3, :cond_3

    .line 170
    .line 171
    invoke-virtual {p2, p3}, Lb2/b;->addAnimation(LW1/f;)V

    .line 172
    .line 173
    .line 174
    :cond_3
    iget-object p2, p0, LV1/b;->k:LW1/f;

    .line 175
    .line 176
    invoke-virtual {p2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 177
    .line 178
    .line 179
    iget-object p2, p0, LV1/b;->j:LW1/f;

    .line 180
    .line 181
    invoke-virtual {p2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 182
    .line 183
    .line 184
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-ge p1, p2, :cond_4

    .line 189
    .line 190
    iget-object p2, p0, LV1/b;->l:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    check-cast p2, LW1/f;

    .line 197
    .line 198
    invoke-virtual {p2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 p1, p1, 0x1

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_4
    iget-object p1, p0, LV1/b;->m:LW1/f;

    .line 205
    .line 206
    if-eqz p1, :cond_5

    .line 207
    .line 208
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 209
    .line 210
    .line 211
    :cond_5
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
    sget-object v0, LT1/K;->a:Landroid/graphics/PointF;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, LV1/b;->k:LW1/f;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, LT1/K;->k:Ljava/lang/Float;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, LV1/b;->j:LW1/f;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    sget-object v0, LT1/K;->y:Landroid/graphics/ColorFilter;

    .line 27
    .line 28
    if-ne p1, v0, :cond_4

    .line 29
    .line 30
    iget-object p1, p0, LV1/b;->n:LW1/u;

    .line 31
    .line 32
    iget-object v0, p0, LV1/b;->f:Lb2/b;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lb2/b;->removeAnimation(LW1/f;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    if-nez p2, :cond_3

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, LV1/b;->n:LW1/u;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    new-instance p1, LW1/u;

    .line 46
    .line 47
    invoke-direct {p1, p2}, LW1/u;-><init>(Lg2/c;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, LV1/b;->n:LW1/u;

    .line 51
    .line 52
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, LV1/b;->n:LW1/u;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "StrokeContent#draw"

    .line 8
    .line 9
    invoke-static {v3}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lf2/h;->hasZeroScaleAxis(Landroid/graphics/Matrix;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-static {v3}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    move/from16 v4, p3

    .line 23
    .line 24
    int-to-float v4, v4

    .line 25
    const/high16 v5, 0x437f0000    # 255.0f

    .line 26
    .line 27
    div-float/2addr v4, v5

    .line 28
    iget-object v6, v0, LV1/b;->k:LW1/f;

    .line 29
    .line 30
    check-cast v6, LW1/j;

    .line 31
    .line 32
    invoke-virtual {v6}, LW1/j;->getIntValue()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    int-to-float v6, v6

    .line 37
    mul-float/2addr v4, v6

    .line 38
    const/high16 v6, 0x42c80000    # 100.0f

    .line 39
    .line 40
    div-float/2addr v4, v6

    .line 41
    mul-float/2addr v4, v5

    .line 42
    float-to-int v4, v4

    .line 43
    const/4 v5, 0x0

    .line 44
    const/16 v7, 0xff

    .line 45
    .line 46
    invoke-static {v4, v5, v7}, Lf2/g;->clamp(III)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object v7, v0, LV1/b;->i:LU1/a;

    .line 51
    .line 52
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    .line 54
    .line 55
    iget-object v4, v0, LV1/b;->j:LW1/f;

    .line 56
    .line 57
    check-cast v4, LW1/h;

    .line 58
    .line 59
    invoke-virtual {v4}, LW1/h;->getFloatValue()F

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v2}, Lf2/h;->getScale(Landroid/graphics/Matrix;)F

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    mul-float/2addr v8, v4

    .line 68
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    const/4 v8, 0x0

    .line 76
    cmpg-float v4, v4, v8

    .line 77
    .line 78
    if-gtz v4, :cond_1

    .line 79
    .line 80
    invoke-static {v3}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    const-string v4, "StrokeContent#applyDashPattern"

    .line 85
    .line 86
    invoke-static {v4}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v9, v0, LV1/b;->l:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    const/high16 v11, 0x3f800000    # 1.0f

    .line 96
    .line 97
    if-eqz v10, :cond_2

    .line 98
    .line 99
    invoke-static {v4}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_2
    invoke-static {v2}, Lf2/h;->getScale(Landroid/graphics/Matrix;)F

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    move v12, v5

    .line 108
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    iget-object v14, v0, LV1/b;->h:[F

    .line 113
    .line 114
    if-ge v12, v13, :cond_5

    .line 115
    .line 116
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    check-cast v13, LW1/f;

    .line 121
    .line 122
    invoke-virtual {v13}, LW1/f;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    check-cast v13, Ljava/lang/Float;

    .line 127
    .line 128
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    aput v13, v14, v12

    .line 133
    .line 134
    rem-int/lit8 v15, v12, 0x2

    .line 135
    .line 136
    if-nez v15, :cond_3

    .line 137
    .line 138
    cmpg-float v13, v13, v11

    .line 139
    .line 140
    if-gez v13, :cond_4

    .line 141
    .line 142
    aput v11, v14, v12

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    const v15, 0x3dcccccd    # 0.1f

    .line 146
    .line 147
    .line 148
    cmpg-float v13, v13, v15

    .line 149
    .line 150
    if-gez v13, :cond_4

    .line 151
    .line 152
    aput v15, v14, v12

    .line 153
    .line 154
    :cond_4
    :goto_1
    aget v13, v14, v12

    .line 155
    .line 156
    mul-float/2addr v13, v10

    .line 157
    aput v13, v14, v12

    .line 158
    .line 159
    add-int/lit8 v12, v12, 0x1

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_5
    iget-object v9, v0, LV1/b;->m:LW1/f;

    .line 163
    .line 164
    if-nez v9, :cond_6

    .line 165
    .line 166
    move v9, v8

    .line 167
    goto :goto_2

    .line 168
    :cond_6
    invoke-virtual {v9}, LW1/f;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    check-cast v9, Ljava/lang/Float;

    .line 173
    .line 174
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    mul-float/2addr v9, v10

    .line 179
    :goto_2
    new-instance v10, Landroid/graphics/DashPathEffect;

    .line 180
    .line 181
    invoke-direct {v10, v14, v9}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 185
    .line 186
    .line 187
    invoke-static {v4}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 188
    .line 189
    .line 190
    :goto_3
    iget-object v4, v0, LV1/b;->n:LW1/u;

    .line 191
    .line 192
    if-eqz v4, :cond_7

    .line 193
    .line 194
    invoke-virtual {v4}, LW1/u;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Landroid/graphics/ColorFilter;

    .line 199
    .line 200
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 201
    .line 202
    .line 203
    :cond_7
    move v4, v5

    .line 204
    :goto_4
    iget-object v9, v0, LV1/b;->g:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    if-ge v4, v10, :cond_15

    .line 211
    .line 212
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    check-cast v9, LV1/a;

    .line 217
    .line 218
    iget-object v10, v9, LV1/a;->b:LV1/t;

    .line 219
    .line 220
    iget-object v12, v0, LV1/b;->b:Landroid/graphics/Path;

    .line 221
    .line 222
    iget-object v13, v9, LV1/a;->a:Ljava/util/ArrayList;

    .line 223
    .line 224
    if-eqz v10, :cond_13

    .line 225
    .line 226
    const-string v10, "StrokeContent#applyTrimPath"

    .line 227
    .line 228
    invoke-static {v10}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v9, v9, LV1/a;->b:LV1/t;

    .line 232
    .line 233
    if-nez v9, :cond_8

    .line 234
    .line 235
    invoke-static {v10}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 236
    .line 237
    .line 238
    move v5, v8

    .line 239
    goto/16 :goto_f

    .line 240
    .line 241
    :cond_8
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v14

    .line 248
    add-int/lit8 v14, v14, -0x1

    .line 249
    .line 250
    :goto_5
    if-ltz v14, :cond_9

    .line 251
    .line 252
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v15

    .line 256
    check-cast v15, LV1/n;

    .line 257
    .line 258
    invoke-interface {v15}, LV1/n;->getPath()Landroid/graphics/Path;

    .line 259
    .line 260
    .line 261
    move-result-object v15

    .line 262
    invoke-virtual {v12, v15, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 263
    .line 264
    .line 265
    add-int/lit8 v14, v14, -0x1

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_9
    iget-object v14, v0, LV1/b;->a:Landroid/graphics/PathMeasure;

    .line 269
    .line 270
    invoke-virtual {v14, v12, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    .line 274
    .line 275
    .line 276
    move-result v12

    .line 277
    :goto_6
    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 278
    .line 279
    .line 280
    move-result v15

    .line 281
    if-eqz v15, :cond_a

    .line 282
    .line 283
    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    .line 284
    .line 285
    .line 286
    move-result v15

    .line 287
    add-float/2addr v12, v15

    .line 288
    goto :goto_6

    .line 289
    :cond_a
    invoke-virtual {v9}, LV1/t;->getOffset()LW1/f;

    .line 290
    .line 291
    .line 292
    move-result-object v15

    .line 293
    invoke-virtual {v15}, LW1/f;->getValue()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v15

    .line 297
    check-cast v15, Ljava/lang/Float;

    .line 298
    .line 299
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    .line 300
    .line 301
    .line 302
    move-result v15

    .line 303
    mul-float/2addr v15, v12

    .line 304
    const/high16 v16, 0x43b40000    # 360.0f

    .line 305
    .line 306
    div-float v15, v15, v16

    .line 307
    .line 308
    invoke-virtual {v9}, LV1/t;->getStart()LW1/f;

    .line 309
    .line 310
    .line 311
    move-result-object v16

    .line 312
    invoke-virtual/range {v16 .. v16}, LW1/f;->getValue()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v16

    .line 316
    check-cast v16, Ljava/lang/Float;

    .line 317
    .line 318
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    .line 319
    .line 320
    .line 321
    move-result v16

    .line 322
    mul-float v16, v16, v12

    .line 323
    .line 324
    div-float v16, v16, v6

    .line 325
    .line 326
    add-float v16, v16, v15

    .line 327
    .line 328
    invoke-virtual {v9}, LV1/t;->getEnd()LW1/f;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    invoke-virtual {v9}, LW1/f;->getValue()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    check-cast v9, Ljava/lang/Float;

    .line 337
    .line 338
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 339
    .line 340
    .line 341
    move-result v9

    .line 342
    mul-float/2addr v9, v12

    .line 343
    div-float/2addr v9, v6

    .line 344
    add-float/2addr v9, v15

    .line 345
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 346
    .line 347
    .line 348
    move-result v15

    .line 349
    add-int/lit8 v15, v15, -0x1

    .line 350
    .line 351
    move/from16 v17, v8

    .line 352
    .line 353
    :goto_7
    if-ltz v15, :cond_12

    .line 354
    .line 355
    iget-object v6, v0, LV1/b;->c:Landroid/graphics/Path;

    .line 356
    .line 357
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v18

    .line 361
    check-cast v18, LV1/n;

    .line 362
    .line 363
    invoke-interface/range {v18 .. v18}, LV1/n;->getPath()Landroid/graphics/Path;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-virtual {v6, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v6, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v14, v6, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    cmpl-float v18, v9, v12

    .line 381
    .line 382
    if-lez v18, :cond_d

    .line 383
    .line 384
    sub-float v18, v9, v12

    .line 385
    .line 386
    add-float v19, v17, v8

    .line 387
    .line 388
    cmpg-float v19, v18, v19

    .line 389
    .line 390
    if-gez v19, :cond_d

    .line 391
    .line 392
    cmpg-float v19, v17, v18

    .line 393
    .line 394
    if-gez v19, :cond_d

    .line 395
    .line 396
    cmpl-float v19, v16, v12

    .line 397
    .line 398
    if-lez v19, :cond_b

    .line 399
    .line 400
    sub-float v19, v16, v12

    .line 401
    .line 402
    div-float v19, v19, v8

    .line 403
    .line 404
    move/from16 v5, v19

    .line 405
    .line 406
    goto :goto_8

    .line 407
    :cond_b
    const/4 v5, 0x0

    .line 408
    :goto_8
    div-float v0, v18, v8

    .line 409
    .line 410
    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    const/4 v11, 0x0

    .line 415
    invoke-static {v6, v5, v0, v11}, Lf2/h;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 419
    .line 420
    .line 421
    :cond_c
    :goto_9
    const/4 v5, 0x0

    .line 422
    goto :goto_d

    .line 423
    :cond_d
    add-float v0, v17, v8

    .line 424
    .line 425
    cmpg-float v5, v0, v16

    .line 426
    .line 427
    if-ltz v5, :cond_c

    .line 428
    .line 429
    cmpl-float v5, v17, v9

    .line 430
    .line 431
    if-lez v5, :cond_e

    .line 432
    .line 433
    goto :goto_9

    .line 434
    :cond_e
    cmpg-float v5, v0, v9

    .line 435
    .line 436
    if-gtz v5, :cond_f

    .line 437
    .line 438
    cmpg-float v5, v16, v17

    .line 439
    .line 440
    if-gez v5, :cond_f

    .line 441
    .line 442
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 443
    .line 444
    .line 445
    goto :goto_9

    .line 446
    :cond_f
    cmpg-float v5, v16, v17

    .line 447
    .line 448
    if-gez v5, :cond_10

    .line 449
    .line 450
    const/4 v11, 0x0

    .line 451
    goto :goto_a

    .line 452
    :cond_10
    sub-float v5, v16, v17

    .line 453
    .line 454
    div-float v11, v5, v8

    .line 455
    .line 456
    :goto_a
    cmpl-float v0, v9, v0

    .line 457
    .line 458
    if-lez v0, :cond_11

    .line 459
    .line 460
    const/high16 v0, 0x3f800000    # 1.0f

    .line 461
    .line 462
    :goto_b
    const/4 v5, 0x0

    .line 463
    goto :goto_c

    .line 464
    :cond_11
    sub-float v0, v9, v17

    .line 465
    .line 466
    div-float/2addr v0, v8

    .line 467
    goto :goto_b

    .line 468
    :goto_c
    invoke-static {v6, v11, v0, v5}, Lf2/h;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 472
    .line 473
    .line 474
    :goto_d
    add-float v17, v17, v8

    .line 475
    .line 476
    add-int/lit8 v15, v15, -0x1

    .line 477
    .line 478
    move-object/from16 v0, p0

    .line 479
    .line 480
    move v8, v5

    .line 481
    const/4 v5, 0x0

    .line 482
    const/high16 v6, 0x42c80000    # 100.0f

    .line 483
    .line 484
    const/high16 v11, 0x3f800000    # 1.0f

    .line 485
    .line 486
    goto/16 :goto_7

    .line 487
    .line 488
    :cond_12
    move v5, v8

    .line 489
    invoke-static {v10}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 490
    .line 491
    .line 492
    goto :goto_f

    .line 493
    :cond_13
    move v5, v8

    .line 494
    const-string v0, "StrokeContent#buildPath"

    .line 495
    .line 496
    invoke-static {v0}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    add-int/lit8 v6, v6, -0x1

    .line 507
    .line 508
    :goto_e
    if-ltz v6, :cond_14

    .line 509
    .line 510
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    check-cast v8, LV1/n;

    .line 515
    .line 516
    invoke-interface {v8}, LV1/n;->getPath()Landroid/graphics/Path;

    .line 517
    .line 518
    .line 519
    move-result-object v8

    .line 520
    invoke-virtual {v12, v8, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 521
    .line 522
    .line 523
    add-int/lit8 v6, v6, -0x1

    .line 524
    .line 525
    goto :goto_e

    .line 526
    :cond_14
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 527
    .line 528
    .line 529
    const-string v0, "StrokeContent#drawPath"

    .line 530
    .line 531
    invoke-static {v0}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v12, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 535
    .line 536
    .line 537
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 538
    .line 539
    .line 540
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 541
    .line 542
    move-object/from16 v0, p0

    .line 543
    .line 544
    move v8, v5

    .line 545
    const/4 v5, 0x0

    .line 546
    const/high16 v6, 0x42c80000    # 100.0f

    .line 547
    .line 548
    const/high16 v11, 0x3f800000    # 1.0f

    .line 549
    .line 550
    goto/16 :goto_4

    .line 551
    .line 552
    :cond_15
    invoke-static {v3}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 553
    .line 554
    .line 555
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 6

    .line 1
    const-string p3, "StrokeContent#getBounds"

    .line 2
    .line 3
    invoke-static {p3}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LV1/b;->b:Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    iget-object v3, p0, LV1/b;->g:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ge v2, v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, LV1/a;

    .line 26
    .line 27
    move v4, v1

    .line 28
    :goto_1
    iget-object v5, v3, LV1/a;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ge v4, v5, :cond_0

    .line 35
    .line 36
    iget-object v5, v3, LV1/a;->a:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, LV1/n;

    .line 43
    .line 44
    invoke-interface {v5}, LV1/n;->getPath()Landroid/graphics/Path;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v0, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p2, p0, LV1/b;->d:Landroid/graphics/RectF;

    .line 58
    .line 59
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, LV1/b;->j:LW1/f;

    .line 63
    .line 64
    check-cast v0, LW1/h;

    .line 65
    .line 66
    invoke-virtual {v0}, LW1/h;->getFloatValue()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget v1, p2, Landroid/graphics/RectF;->left:F

    .line 71
    .line 72
    const/high16 v2, 0x40000000    # 2.0f

    .line 73
    .line 74
    div-float/2addr v0, v2

    .line 75
    sub-float/2addr v1, v0

    .line 76
    iget v2, p2, Landroid/graphics/RectF;->top:F

    .line 77
    .line 78
    sub-float/2addr v2, v0

    .line 79
    iget v3, p2, Landroid/graphics/RectF;->right:F

    .line 80
    .line 81
    add-float/2addr v3, v0

    .line 82
    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    .line 83
    .line 84
    add-float/2addr v4, v0

    .line 85
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 89
    .line 90
    .line 91
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 92
    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    .line 94
    .line 95
    sub-float/2addr p2, v0

    .line 96
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 97
    .line 98
    sub-float/2addr v1, v0

    .line 99
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 100
    .line 101
    add-float/2addr v2, v0

    .line 102
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 103
    .line 104
    add-float/2addr v3, v0

    .line 105
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    .line 107
    .line 108
    invoke-static {p3}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public onValueChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, LV1/b;->e:LT1/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LT1/G;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;)V
    .locals 0
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
    invoke-static {p1, p2, p3, p4, p0}, Lf2/g;->resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;LV1/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LV1/d;",
            ">;",
            "Ljava/util/List<",
            "LV1/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v2, v1

    .line 9
    :goto_0
    sget-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->e:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 10
    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, LV1/d;

    .line 18
    .line 19
    instance-of v5, v4, LV1/t;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    check-cast v4, LV1/t;

    .line 24
    .line 25
    iget-object v5, v4, LV1/t;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 26
    .line 27
    if-ne v5, v3, :cond_0

    .line 28
    .line 29
    move-object v2, v4

    .line 30
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2, p0}, LV1/t;->a(LW1/a;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/lit8 p1, p1, -0x1

    .line 43
    .line 44
    :goto_1
    iget-object v0, p0, LV1/b;->g:Ljava/util/ArrayList;

    .line 45
    .line 46
    if-ltz p1, :cond_7

    .line 47
    .line 48
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, LV1/d;

    .line 53
    .line 54
    instance-of v5, v4, LV1/t;

    .line 55
    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    move-object v5, v4

    .line 59
    check-cast v5, LV1/t;

    .line 60
    .line 61
    iget-object v6, v5, LV1/t;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 62
    .line 63
    if-ne v6, v3, :cond_4

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_3
    new-instance v0, LV1/a;

    .line 71
    .line 72
    invoke-direct {v0, v5}, LV1/a;-><init>(LV1/t;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, p0}, LV1/t;->a(LW1/a;)V

    .line 76
    .line 77
    .line 78
    move-object v1, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    instance-of v0, v4, LV1/n;

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    new-instance v1, LV1/a;

    .line 87
    .line 88
    invoke-direct {v1, v2}, LV1/a;-><init>(LV1/t;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    iget-object v0, v1, LV1/a;->a:Ljava/util/ArrayList;

    .line 92
    .line 93
    check-cast v4, LV1/n;

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_7
    if-eqz v1, :cond_8

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_8
    return-void
.end method
