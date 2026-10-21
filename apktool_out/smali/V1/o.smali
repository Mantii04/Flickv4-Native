.class public final LV1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV1/n;
.implements LW1/a;
.implements LV1/l;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ljava/lang/String;

.field public final c:LT1/G;

.field public final d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field public final e:Z

.field public final f:LW1/f;

.field public final g:LW1/f;

.field public final h:LW1/f;

.field public final i:LW1/f;

.field public final j:LW1/f;

.field public final k:LW1/f;

.field public final l:LW1/f;

.field public final m:LV1/c;

.field public n:Z


# direct methods
.method public constructor <init>(LT1/G;Lb2/b;La2/h;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LV1/o;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, LV1/c;

    .line 12
    .line 13
    invoke-direct {v0}, LV1/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LV1/o;->m:LV1/c;

    .line 17
    .line 18
    iput-object p1, p0, LV1/o;->c:LT1/G;

    .line 19
    .line 20
    invoke-virtual {p3}, La2/h;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, LV1/o;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p3}, La2/h;->getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, LV1/o;->d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 31
    .line 32
    invoke-virtual {p3}, La2/h;->isHidden()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput-boolean v0, p0, LV1/o;->e:Z

    .line 37
    .line 38
    invoke-virtual {p3}, La2/h;->getPoints()LZ1/b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, LZ1/b;->createAnimation()LW1/f;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, LV1/o;->f:LW1/f;

    .line 47
    .line 48
    invoke-virtual {p3}, La2/h;->getPosition()LZ1/m;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, LZ1/m;->createAnimation()LW1/f;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, LV1/o;->g:LW1/f;

    .line 57
    .line 58
    invoke-virtual {p3}, La2/h;->getRotation()LZ1/b;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, LZ1/b;->createAnimation()LW1/f;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iput-object v2, p0, LV1/o;->h:LW1/f;

    .line 67
    .line 68
    invoke-virtual {p3}, La2/h;->getOuterRadius()LZ1/b;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, LZ1/b;->createAnimation()LW1/f;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iput-object v3, p0, LV1/o;->j:LW1/f;

    .line 77
    .line 78
    invoke-virtual {p3}, La2/h;->getOuterRoundedness()LZ1/b;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, LZ1/b;->createAnimation()LW1/f;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iput-object v4, p0, LV1/o;->l:LW1/f;

    .line 87
    .line 88
    sget-object v5, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->e:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 89
    .line 90
    if-ne p1, v5, :cond_0

    .line 91
    .line 92
    invoke-virtual {p3}, La2/h;->getInnerRadius()LZ1/b;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, LZ1/b;->createAnimation()LW1/f;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iput-object v6, p0, LV1/o;->i:LW1/f;

    .line 101
    .line 102
    invoke-virtual {p3}, La2/h;->getInnerRoundedness()LZ1/b;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p3}, LZ1/b;->createAnimation()LW1/f;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    iput-object p3, p0, LV1/o;->k:LW1/f;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const/4 p3, 0x0

    .line 114
    iput-object p3, p0, LV1/o;->i:LW1/f;

    .line 115
    .line 116
    iput-object p3, p0, LV1/o;->k:LW1/f;

    .line 117
    .line 118
    :goto_0
    invoke-virtual {p2, v0}, Lb2/b;->addAnimation(LW1/f;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2}, Lb2/b;->addAnimation(LW1/f;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v3}, Lb2/b;->addAnimation(LW1/f;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v4}, Lb2/b;->addAnimation(LW1/f;)V

    .line 131
    .line 132
    .line 133
    if-ne p1, v5, :cond_1

    .line 134
    .line 135
    iget-object p3, p0, LV1/o;->i:LW1/f;

    .line 136
    .line 137
    invoke-virtual {p2, p3}, Lb2/b;->addAnimation(LW1/f;)V

    .line 138
    .line 139
    .line 140
    iget-object p3, p0, LV1/o;->k:LW1/f;

    .line 141
    .line 142
    invoke-virtual {p2, p3}, Lb2/b;->addAnimation(LW1/f;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    invoke-virtual {v0, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 158
    .line 159
    .line 160
    if-ne p1, v5, :cond_2

    .line 161
    .line 162
    iget-object p1, p0, LV1/o;->i:LW1/f;

    .line 163
    .line 164
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, LV1/o;->k:LW1/f;

    .line 168
    .line 169
    invoke-virtual {p1, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 170
    .line 171
    .line 172
    :cond_2
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
    sget-object v0, LT1/K;->o:Ljava/lang/Float;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, LV1/o;->f:LW1/f;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, LT1/K;->p:Ljava/lang/Float;

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, LV1/o;->h:LW1/f;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget-object v0, LT1/K;->f:Landroid/graphics/PointF;

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, LV1/o;->g:LW1/f;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-object v0, LT1/K;->q:Ljava/lang/Float;

    .line 32
    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, LV1/o;->i:LW1/f;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    sget-object v0, LT1/K;->r:Ljava/lang/Float;

    .line 44
    .line 45
    if-ne p1, v0, :cond_4

    .line 46
    .line 47
    iget-object p1, p0, LV1/o;->j:LW1/f;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    sget-object v0, LT1/K;->s:Ljava/lang/Float;

    .line 54
    .line 55
    if-ne p1, v0, :cond_5

    .line 56
    .line 57
    iget-object v0, p0, LV1/o;->k:LW1/f;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    sget-object v0, LT1/K;->t:Ljava/lang/Float;

    .line 66
    .line 67
    if-ne p1, v0, :cond_6

    .line 68
    .line 69
    iget-object p1, p0, LV1/o;->l:LW1/f;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, LW1/f;->setValueCallback(Lg2/c;)V

    .line 72
    .line 73
    .line 74
    :cond_6
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LV1/o;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, LV1/o;->n:Z

    .line 4
    .line 5
    iget-object v2, v0, LV1/o;->a:Landroid/graphics/Path;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, v0, LV1/o;->e:Z

    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput-boolean v9, v0, LV1/o;->n:Z

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    iget-object v1, v0, LV1/o;->d:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v10, v0, LV1/o;->g:LW1/f;

    .line 28
    .line 29
    iget-object v4, v0, LV1/o;->j:LW1/f;

    .line 30
    .line 31
    iget-object v6, v0, LV1/o;->l:LW1/f;

    .line 32
    .line 33
    const-wide v14, 0x4056800000000000L    # 90.0

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide/16 v16, 0x0

    .line 39
    .line 40
    iget-object v3, v0, LV1/o;->h:LW1/f;

    .line 41
    .line 42
    const/high16 v19, 0x42c80000    # 100.0f

    .line 43
    .line 44
    iget-object v5, v0, LV1/o;->f:LW1/f;

    .line 45
    .line 46
    if-eqz v1, :cond_6

    .line 47
    .line 48
    if-eq v1, v9, :cond_2

    .line 49
    .line 50
    goto/16 :goto_12

    .line 51
    .line 52
    :cond_2
    invoke-virtual {v5}, LW1/f;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/Float;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    float-to-double v7, v1

    .line 68
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    double-to-int v1, v7

    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v3}, LW1/f;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/lang/Float;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    float-to-double v7, v3

    .line 87
    move-wide/from16 v16, v7

    .line 88
    .line 89
    :goto_0
    sub-double v16, v16, v14

    .line 90
    .line 91
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v7

    .line 95
    int-to-double v14, v1

    .line 96
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    div-double v11, v20, v14

    .line 102
    .line 103
    double-to-float v1, v11

    .line 104
    invoke-virtual {v6}, LW1/f;->getValue()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/lang/Float;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    div-float v11, v3, v19

    .line 115
    .line 116
    invoke-virtual {v4}, LW1/f;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/lang/Float;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    float-to-double v3, v12

    .line 127
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    mul-double/2addr v5, v3

    .line 132
    double-to-float v5, v5

    .line 133
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 134
    .line 135
    .line 136
    move-result-wide v16

    .line 137
    move-wide/from16 v25, v14

    .line 138
    .line 139
    const/16 v24, 0x0

    .line 140
    .line 141
    mul-double v13, v16, v3

    .line 142
    .line 143
    double-to-float v6, v13

    .line 144
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 145
    .line 146
    .line 147
    float-to-double v13, v1

    .line 148
    add-double/2addr v7, v13

    .line 149
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->ceil(D)D

    .line 150
    .line 151
    .line 152
    move-result-wide v15

    .line 153
    move-wide/from16 v17, v7

    .line 154
    .line 155
    const/4 v1, 0x0

    .line 156
    :goto_1
    int-to-double v7, v1

    .line 157
    cmpg-double v7, v7, v15

    .line 158
    .line 159
    if-gez v7, :cond_5

    .line 160
    .line 161
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    .line 162
    .line 163
    .line 164
    move-result-wide v7

    .line 165
    mul-double/2addr v7, v3

    .line 166
    double-to-float v7, v7

    .line 167
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    .line 168
    .line 169
    .line 170
    move-result-wide v19

    .line 171
    move-object/from16 v26, v10

    .line 172
    .line 173
    mul-double v9, v19, v3

    .line 174
    .line 175
    double-to-float v8, v9

    .line 176
    cmpl-float v9, v11, v24

    .line 177
    .line 178
    if-eqz v9, :cond_4

    .line 179
    .line 180
    float-to-double v9, v6

    .line 181
    move/from16 v19, v1

    .line 182
    .line 183
    move-object/from16 v27, v2

    .line 184
    .line 185
    float-to-double v1, v5

    .line 186
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    .line 187
    .line 188
    .line 189
    move-result-wide v1

    .line 190
    sub-double v1, v1, v22

    .line 191
    .line 192
    double-to-float v1, v1

    .line 193
    float-to-double v1, v1

    .line 194
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 195
    .line 196
    .line 197
    move-result-wide v9

    .line 198
    double-to-float v9, v9

    .line 199
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 200
    .line 201
    .line 202
    move-result-wide v1

    .line 203
    double-to-float v1, v1

    .line 204
    move v10, v1

    .line 205
    float-to-double v1, v8

    .line 206
    move-wide/from16 v20, v3

    .line 207
    .line 208
    float-to-double v3, v7

    .line 209
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 210
    .line 211
    .line 212
    move-result-wide v1

    .line 213
    sub-double v1, v1, v22

    .line 214
    .line 215
    double-to-float v1, v1

    .line 216
    float-to-double v1, v1

    .line 217
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 218
    .line 219
    .line 220
    move-result-wide v3

    .line 221
    double-to-float v3, v3

    .line 222
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 223
    .line 224
    .line 225
    move-result-wide v1

    .line 226
    double-to-float v1, v1

    .line 227
    mul-float v2, v12, v11

    .line 228
    .line 229
    const/high16 v4, 0x3e800000    # 0.25f

    .line 230
    .line 231
    mul-float/2addr v2, v4

    .line 232
    mul-float/2addr v9, v2

    .line 233
    mul-float v4, v2, v10

    .line 234
    .line 235
    mul-float/2addr v3, v2

    .line 236
    mul-float/2addr v2, v1

    .line 237
    sub-float/2addr v5, v9

    .line 238
    sub-float v4, v6, v4

    .line 239
    .line 240
    add-float/2addr v3, v7

    .line 241
    add-float v6, v8, v2

    .line 242
    .line 243
    move v2, v5

    .line 244
    move v5, v3

    .line 245
    move v3, v2

    .line 246
    move-object/from16 v2, v27

    .line 247
    .line 248
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_4
    move/from16 v19, v1

    .line 253
    .line 254
    move-wide/from16 v20, v3

    .line 255
    .line 256
    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 257
    .line 258
    .line 259
    :goto_2
    add-double v17, v17, v13

    .line 260
    .line 261
    add-int/lit8 v1, v19, 0x1

    .line 262
    .line 263
    move v5, v7

    .line 264
    move v6, v8

    .line 265
    move-wide/from16 v3, v20

    .line 266
    .line 267
    move-object/from16 v10, v26

    .line 268
    .line 269
    const/4 v9, 0x1

    .line 270
    goto :goto_1

    .line 271
    :cond_5
    move-object/from16 v26, v10

    .line 272
    .line 273
    invoke-virtual/range {v26 .. v26}, LW1/f;->getValue()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast v1, Landroid/graphics/PointF;

    .line 278
    .line 279
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 280
    .line 281
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 282
    .line 283
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_12

    .line 290
    .line 291
    :cond_6
    move-object/from16 v26, v10

    .line 292
    .line 293
    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    const/16 v24, 0x0

    .line 304
    .line 305
    invoke-virtual {v5}, LW1/f;->getValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Ljava/lang/Float;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-nez v3, :cond_7

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_7
    invoke-virtual {v3}, LW1/f;->getValue()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    check-cast v3, Ljava/lang/Float;

    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    float-to-double v7, v3

    .line 329
    move-wide/from16 v16, v7

    .line 330
    .line 331
    :goto_3
    sub-double v16, v16, v14

    .line 332
    .line 333
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    .line 334
    .line 335
    .line 336
    move-result-wide v7

    .line 337
    float-to-double v9, v1

    .line 338
    div-double v11, v20, v9

    .line 339
    .line 340
    double-to-float v11, v11

    .line 341
    const/high16 v12, 0x40000000    # 2.0f

    .line 342
    .line 343
    div-float v13, v11, v12

    .line 344
    .line 345
    float-to-int v3, v1

    .line 346
    int-to-float v3, v3

    .line 347
    sub-float/2addr v1, v3

    .line 348
    cmpl-float v14, v1, v24

    .line 349
    .line 350
    if-eqz v14, :cond_8

    .line 351
    .line 352
    const/high16 v3, 0x3f800000    # 1.0f

    .line 353
    .line 354
    sub-float/2addr v3, v1

    .line 355
    mul-float/2addr v3, v13

    .line 356
    move v15, v12

    .line 357
    move/from16 v16, v13

    .line 358
    .line 359
    float-to-double v12, v3

    .line 360
    add-double/2addr v7, v12

    .line 361
    goto :goto_4

    .line 362
    :cond_8
    move v15, v12

    .line 363
    move/from16 v16, v13

    .line 364
    .line 365
    :goto_4
    invoke-virtual {v4}, LW1/f;->getValue()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    check-cast v3, Ljava/lang/Float;

    .line 370
    .line 371
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 372
    .line 373
    .line 374
    move-result v12

    .line 375
    iget-object v3, v0, LV1/o;->i:LW1/f;

    .line 376
    .line 377
    invoke-virtual {v3}, LW1/f;->getValue()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    check-cast v3, Ljava/lang/Float;

    .line 382
    .line 383
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 384
    .line 385
    .line 386
    move-result v13

    .line 387
    iget-object v3, v0, LV1/o;->k:LW1/f;

    .line 388
    .line 389
    if-eqz v3, :cond_9

    .line 390
    .line 391
    invoke-virtual {v3}, LW1/f;->getValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    check-cast v3, Ljava/lang/Float;

    .line 396
    .line 397
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    div-float v3, v3, v19

    .line 402
    .line 403
    move/from16 v17, v3

    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_9
    move/from16 v17, v24

    .line 407
    .line 408
    :goto_5
    if-eqz v6, :cond_a

    .line 409
    .line 410
    invoke-virtual {v6}, LW1/f;->getValue()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    check-cast v3, Ljava/lang/Float;

    .line 415
    .line 416
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    div-float v3, v3, v19

    .line 421
    .line 422
    move/from16 v19, v3

    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_a
    move/from16 v19, v24

    .line 426
    .line 427
    :goto_6
    if-eqz v14, :cond_b

    .line 428
    .line 429
    invoke-static {v12, v13, v1, v13}, Lb/c;->a(FFFF)F

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    float-to-double v4, v3

    .line 434
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 435
    .line 436
    .line 437
    move-result-wide v20

    .line 438
    move v6, v3

    .line 439
    move-wide/from16 v27, v4

    .line 440
    .line 441
    mul-double v3, v20, v27

    .line 442
    .line 443
    double-to-float v3, v3

    .line 444
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 445
    .line 446
    .line 447
    move-result-wide v4

    .line 448
    mul-double v4, v4, v27

    .line 449
    .line 450
    double-to-float v4, v4

    .line 451
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 452
    .line 453
    .line 454
    mul-float v5, v11, v1

    .line 455
    .line 456
    div-float/2addr v5, v15

    .line 457
    move/from16 v20, v3

    .line 458
    .line 459
    move/from16 v21, v4

    .line 460
    .line 461
    float-to-double v3, v5

    .line 462
    add-double/2addr v7, v3

    .line 463
    move/from16 v3, v16

    .line 464
    .line 465
    move/from16 v4, v21

    .line 466
    .line 467
    move/from16 v16, v6

    .line 468
    .line 469
    goto :goto_7

    .line 470
    :cond_b
    float-to-double v3, v12

    .line 471
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 472
    .line 473
    .line 474
    move-result-wide v5

    .line 475
    mul-double/2addr v5, v3

    .line 476
    double-to-float v5, v5

    .line 477
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 478
    .line 479
    .line 480
    move-result-wide v20

    .line 481
    mul-double v3, v3, v20

    .line 482
    .line 483
    double-to-float v4, v3

    .line 484
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 485
    .line 486
    .line 487
    move v6, v5

    .line 488
    move/from16 v3, v16

    .line 489
    .line 490
    move/from16 v16, v4

    .line 491
    .line 492
    float-to-double v4, v3

    .line 493
    add-double/2addr v7, v4

    .line 494
    move/from16 v20, v6

    .line 495
    .line 496
    move/from16 v4, v16

    .line 497
    .line 498
    move/from16 v16, v24

    .line 499
    .line 500
    :goto_7
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 501
    .line 502
    .line 503
    move-result-wide v5

    .line 504
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 505
    .line 506
    mul-double v27, v5, v9

    .line 507
    .line 508
    move v5, v4

    .line 509
    move/from16 v6, v20

    .line 510
    .line 511
    const/4 v4, 0x0

    .line 512
    const/16 v18, 0x0

    .line 513
    .line 514
    move-wide/from16 v20, v7

    .line 515
    .line 516
    :goto_8
    int-to-double v7, v4

    .line 517
    cmpg-double v29, v7, v27

    .line 518
    .line 519
    if-gez v29, :cond_16

    .line 520
    .line 521
    if-eqz v18, :cond_c

    .line 522
    .line 523
    move/from16 v29, v12

    .line 524
    .line 525
    goto :goto_9

    .line 526
    :cond_c
    move/from16 v29, v13

    .line 527
    .line 528
    :goto_9
    cmpl-float v30, v16, v24

    .line 529
    .line 530
    if-eqz v30, :cond_d

    .line 531
    .line 532
    sub-double v31, v27, v9

    .line 533
    .line 534
    cmpl-double v31, v7, v31

    .line 535
    .line 536
    if-nez v31, :cond_d

    .line 537
    .line 538
    mul-float v31, v11, v1

    .line 539
    .line 540
    div-float v31, v31, v15

    .line 541
    .line 542
    move/from16 v9, v31

    .line 543
    .line 544
    goto :goto_a

    .line 545
    :cond_d
    move v9, v3

    .line 546
    :goto_a
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    .line 547
    .line 548
    if-eqz v30, :cond_e

    .line 549
    .line 550
    sub-double v35, v27, v33

    .line 551
    .line 552
    cmpl-double v10, v7, v35

    .line 553
    .line 554
    if-nez v10, :cond_e

    .line 555
    .line 556
    move/from16 v10, v16

    .line 557
    .line 558
    move/from16 v29, v3

    .line 559
    .line 560
    move/from16 v30, v4

    .line 561
    .line 562
    goto :goto_b

    .line 563
    :cond_e
    move/from16 v10, v29

    .line 564
    .line 565
    move/from16 v30, v4

    .line 566
    .line 567
    move/from16 v29, v3

    .line 568
    .line 569
    :goto_b
    float-to-double v3, v10

    .line 570
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    .line 571
    .line 572
    .line 573
    move-result-wide v35

    .line 574
    move-wide/from16 v37, v3

    .line 575
    .line 576
    mul-double v3, v35, v37

    .line 577
    .line 578
    double-to-float v3, v3

    .line 579
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    .line 580
    .line 581
    .line 582
    move-result-wide v35

    .line 583
    move-wide/from16 v39, v7

    .line 584
    .line 585
    mul-double v7, v35, v37

    .line 586
    .line 587
    double-to-float v8, v7

    .line 588
    cmpl-float v4, v17, v24

    .line 589
    .line 590
    if-nez v4, :cond_f

    .line 591
    .line 592
    cmpl-float v4, v19, v24

    .line 593
    .line 594
    if-nez v4, :cond_f

    .line 595
    .line 596
    invoke-virtual {v2, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 597
    .line 598
    .line 599
    move v10, v1

    .line 600
    move v7, v3

    .line 601
    goto/16 :goto_11

    .line 602
    .line 603
    :cond_f
    move v10, v1

    .line 604
    move-object v4, v2

    .line 605
    float-to-double v1, v5

    .line 606
    move-object/from16 v35, v4

    .line 607
    .line 608
    move v7, v5

    .line 609
    float-to-double v4, v6

    .line 610
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 611
    .line 612
    .line 613
    move-result-wide v1

    .line 614
    sub-double v1, v1, v22

    .line 615
    .line 616
    double-to-float v1, v1

    .line 617
    float-to-double v1, v1

    .line 618
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 619
    .line 620
    .line 621
    move-result-wide v4

    .line 622
    double-to-float v4, v4

    .line 623
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 624
    .line 625
    .line 626
    move-result-wide v1

    .line 627
    double-to-float v1, v1

    .line 628
    move v5, v1

    .line 629
    float-to-double v1, v8

    .line 630
    move/from16 v36, v4

    .line 631
    .line 632
    move/from16 v37, v5

    .line 633
    .line 634
    float-to-double v4, v3

    .line 635
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 636
    .line 637
    .line 638
    move-result-wide v1

    .line 639
    sub-double v1, v1, v22

    .line 640
    .line 641
    double-to-float v1, v1

    .line 642
    float-to-double v1, v1

    .line 643
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 644
    .line 645
    .line 646
    move-result-wide v4

    .line 647
    double-to-float v4, v4

    .line 648
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 649
    .line 650
    .line 651
    move-result-wide v1

    .line 652
    double-to-float v1, v1

    .line 653
    if-eqz v18, :cond_10

    .line 654
    .line 655
    move/from16 v2, v17

    .line 656
    .line 657
    goto :goto_c

    .line 658
    :cond_10
    move/from16 v2, v19

    .line 659
    .line 660
    :goto_c
    if-eqz v18, :cond_11

    .line 661
    .line 662
    move/from16 v5, v19

    .line 663
    .line 664
    goto :goto_d

    .line 665
    :cond_11
    move/from16 v5, v17

    .line 666
    .line 667
    :goto_d
    if-eqz v18, :cond_12

    .line 668
    .line 669
    move/from16 v38, v13

    .line 670
    .line 671
    goto :goto_e

    .line 672
    :cond_12
    move/from16 v38, v12

    .line 673
    .line 674
    :goto_e
    if-eqz v18, :cond_13

    .line 675
    .line 676
    move/from16 v41, v12

    .line 677
    .line 678
    goto :goto_f

    .line 679
    :cond_13
    move/from16 v41, v13

    .line 680
    .line 681
    :goto_f
    mul-float v38, v38, v2

    .line 682
    .line 683
    const v2, 0x3ef4e26d    # 0.47829f

    .line 684
    .line 685
    .line 686
    mul-float v38, v38, v2

    .line 687
    .line 688
    mul-float v36, v36, v38

    .line 689
    .line 690
    mul-float v38, v38, v37

    .line 691
    .line 692
    mul-float v41, v41, v5

    .line 693
    .line 694
    mul-float v41, v41, v2

    .line 695
    .line 696
    mul-float v4, v4, v41

    .line 697
    .line 698
    mul-float v41, v41, v1

    .line 699
    .line 700
    if-eqz v14, :cond_15

    .line 701
    .line 702
    if-nez v30, :cond_14

    .line 703
    .line 704
    mul-float v36, v36, v10

    .line 705
    .line 706
    mul-float v38, v38, v10

    .line 707
    .line 708
    goto :goto_10

    .line 709
    :cond_14
    sub-double v1, v27, v33

    .line 710
    .line 711
    cmpl-double v1, v39, v1

    .line 712
    .line 713
    if-nez v1, :cond_15

    .line 714
    .line 715
    mul-float/2addr v4, v10

    .line 716
    mul-float v41, v41, v10

    .line 717
    .line 718
    :cond_15
    :goto_10
    sub-float v6, v6, v36

    .line 719
    .line 720
    sub-float v5, v7, v38

    .line 721
    .line 722
    add-float/2addr v4, v3

    .line 723
    add-float v41, v8, v41

    .line 724
    .line 725
    move v2, v5

    .line 726
    move v5, v4

    .line 727
    move v4, v2

    .line 728
    move v7, v3

    .line 729
    move v3, v6

    .line 730
    move-object/from16 v2, v35

    .line 731
    .line 732
    move/from16 v6, v41

    .line 733
    .line 734
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 735
    .line 736
    .line 737
    :goto_11
    float-to-double v3, v9

    .line 738
    add-double v20, v20, v3

    .line 739
    .line 740
    xor-int/lit8 v18, v18, 0x1

    .line 741
    .line 742
    add-int/lit8 v4, v30, 0x1

    .line 743
    .line 744
    move v6, v7

    .line 745
    move v5, v8

    .line 746
    move v1, v10

    .line 747
    move/from16 v3, v29

    .line 748
    .line 749
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 750
    .line 751
    goto/16 :goto_8

    .line 752
    .line 753
    :cond_16
    invoke-virtual/range {v26 .. v26}, LW1/f;->getValue()Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    check-cast v1, Landroid/graphics/PointF;

    .line 758
    .line 759
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 760
    .line 761
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 762
    .line 763
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 767
    .line 768
    .line 769
    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 770
    .line 771
    .line 772
    iget-object v1, v0, LV1/o;->m:LV1/c;

    .line 773
    .line 774
    invoke-virtual {v1, v2}, LV1/c;->apply(Landroid/graphics/Path;)V

    .line 775
    .line 776
    .line 777
    const/4 v1, 0x1

    .line 778
    iput-boolean v1, v0, LV1/o;->n:Z

    .line 779
    .line 780
    return-object v2
.end method

.method public onValueChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LV1/o;->n:Z

    .line 3
    .line 4
    iget-object v0, p0, LV1/o;->c:LT1/G;

    .line 5
    .line 6
    invoke-virtual {v0}, LT1/G;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
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
    .locals 3
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
    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p2, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, LV1/d;

    .line 13
    .line 14
    instance-of v1, v0, LV1/t;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, LV1/t;

    .line 19
    .line 20
    iget-object v1, v0, LV1/t;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 21
    .line 22
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->b:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 23
    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, LV1/o;->m:LV1/c;

    .line 27
    .line 28
    iget-object v1, v1, LV1/c;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, LV1/t;->a(LW1/a;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method
