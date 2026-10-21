.class public final Lu/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lu/e;

.field public c:I

.field public d:Lu/d;

.field public e:Lu/d;

.field public f:Lu/d;

.field public g:Lu/d;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final synthetic r:Lu/h;


# direct methods
.method public constructor <init>(Lu/h;ILu/d;Lu/d;Lu/d;Lu/d;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lu/g;->r:Lu/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lu/g;->b:Lu/e;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lu/g;->c:I

    .line 11
    .line 12
    iput v0, p0, Lu/g;->h:I

    .line 13
    .line 14
    iput v0, p0, Lu/g;->i:I

    .line 15
    .line 16
    iput v0, p0, Lu/g;->j:I

    .line 17
    .line 18
    iput v0, p0, Lu/g;->k:I

    .line 19
    .line 20
    iput v0, p0, Lu/g;->l:I

    .line 21
    .line 22
    iput v0, p0, Lu/g;->m:I

    .line 23
    .line 24
    iput v0, p0, Lu/g;->n:I

    .line 25
    .line 26
    iput v0, p0, Lu/g;->o:I

    .line 27
    .line 28
    iput v0, p0, Lu/g;->p:I

    .line 29
    .line 30
    iput v0, p0, Lu/g;->q:I

    .line 31
    .line 32
    iput p2, p0, Lu/g;->a:I

    .line 33
    .line 34
    iput-object p3, p0, Lu/g;->d:Lu/d;

    .line 35
    .line 36
    iput-object p4, p0, Lu/g;->e:Lu/d;

    .line 37
    .line 38
    iput-object p5, p0, Lu/g;->f:Lu/d;

    .line 39
    .line 40
    iput-object p6, p0, Lu/g;->g:Lu/d;

    .line 41
    .line 42
    invoke-virtual {p1}, Lu/m;->getPaddingLeft()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iput p2, p0, Lu/g;->h:I

    .line 47
    .line 48
    invoke-virtual {p1}, Lu/m;->getPaddingTop()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iput p2, p0, Lu/g;->i:I

    .line 53
    .line 54
    invoke-virtual {p1}, Lu/m;->getPaddingRight()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iput p2, p0, Lu/g;->j:I

    .line 59
    .line 60
    invoke-virtual {p1}, Lu/m;->getPaddingBottom()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lu/g;->k:I

    .line 65
    .line 66
    iput p7, p0, Lu/g;->q:I

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public add(Lu/e;)V
    .locals 7

    .line 1
    iget v0, p0, Lu/g;->a:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, Lu/g;->r:Lu/h;

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget v0, p0, Lu/g;->q:I

    .line 13
    .line 14
    invoke-virtual {v4, p1, v0}, Lu/h;->h(Lu/e;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    if-ne v5, v2, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lu/g;->p:I

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    iput v0, p0, Lu/g;->p:I

    .line 29
    .line 30
    move v0, v3

    .line 31
    :cond_0
    iget v2, v4, Lu/h;->P0:I

    .line 32
    .line 33
    invoke-virtual {p1}, Lu/e;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-ne v5, v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v3, v2

    .line 41
    :goto_0
    iget v1, p0, Lu/g;->l:I

    .line 42
    .line 43
    add-int/2addr v0, v3

    .line 44
    add-int/2addr v0, v1

    .line 45
    iput v0, p0, Lu/g;->l:I

    .line 46
    .line 47
    iget v0, p0, Lu/g;->q:I

    .line 48
    .line 49
    invoke-virtual {v4, p1, v0}, Lu/h;->g(Lu/e;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v1, p0, Lu/g;->b:Lu/e;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget v1, p0, Lu/g;->c:I

    .line 58
    .line 59
    if-ge v1, v0, :cond_7

    .line 60
    .line 61
    :cond_2
    iput-object p1, p0, Lu/g;->b:Lu/e;

    .line 62
    .line 63
    iput v0, p0, Lu/g;->c:I

    .line 64
    .line 65
    iput v0, p0, Lu/g;->m:I

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    iget v0, p0, Lu/g;->q:I

    .line 69
    .line 70
    invoke-virtual {v4, p1, v0}, Lu/h;->h(Lu/e;I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget v5, p0, Lu/g;->q:I

    .line 75
    .line 76
    invoke-virtual {v4, p1, v5}, Lu/h;->g(Lu/e;I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {p1}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-ne v6, v2, :cond_4

    .line 85
    .line 86
    iget v2, p0, Lu/g;->p:I

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    iput v2, p0, Lu/g;->p:I

    .line 91
    .line 92
    move v5, v3

    .line 93
    :cond_4
    iget v2, v4, Lu/h;->Q0:I

    .line 94
    .line 95
    invoke-virtual {p1}, Lu/e;->getVisibility()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-ne v4, v1, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    move v3, v2

    .line 103
    :goto_1
    iget v1, p0, Lu/g;->m:I

    .line 104
    .line 105
    add-int/2addr v5, v3

    .line 106
    add-int/2addr v5, v1

    .line 107
    iput v5, p0, Lu/g;->m:I

    .line 108
    .line 109
    iget-object v1, p0, Lu/g;->b:Lu/e;

    .line 110
    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    iget v1, p0, Lu/g;->c:I

    .line 114
    .line 115
    if-ge v1, v0, :cond_7

    .line 116
    .line 117
    :cond_6
    iput-object p1, p0, Lu/g;->b:Lu/e;

    .line 118
    .line 119
    iput v0, p0, Lu/g;->c:I

    .line 120
    .line 121
    iput v0, p0, Lu/g;->l:I

    .line 122
    .line 123
    :cond_7
    :goto_2
    iget p1, p0, Lu/g;->o:I

    .line 124
    .line 125
    add-int/lit8 p1, p1, 0x1

    .line 126
    .line 127
    iput p1, p0, Lu/g;->o:I

    .line 128
    .line 129
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lu/g;->c:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lu/g;->b:Lu/e;

    .line 6
    .line 7
    iput v0, p0, Lu/g;->l:I

    .line 8
    .line 9
    iput v0, p0, Lu/g;->m:I

    .line 10
    .line 11
    iput v0, p0, Lu/g;->n:I

    .line 12
    .line 13
    iput v0, p0, Lu/g;->o:I

    .line 14
    .line 15
    iput v0, p0, Lu/g;->p:I

    .line 16
    .line 17
    return-void
.end method

.method public createConstraints(ZIZ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu/g;->o:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    iget-object v4, v0, Lu/g;->r:Lu/h;

    .line 8
    .line 9
    if-ge v3, v1, :cond_2

    .line 10
    .line 11
    iget v5, v0, Lu/g;->n:I

    .line 12
    .line 13
    add-int v6, v5, v3

    .line 14
    .line 15
    iget v7, v4, Lu/h;->b1:I

    .line 16
    .line 17
    if-lt v6, v7, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v4, v4, Lu/h;->a1:[Lu/e;

    .line 21
    .line 22
    add-int/2addr v5, v3

    .line 23
    aget-object v4, v4, v5

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v4}, Lu/e;->resetAnchors()V

    .line 28
    .line 29
    .line 30
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    if-eqz v1, :cond_3c

    .line 34
    .line 35
    iget-object v3, v0, Lu/g;->b:Lu/e;

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    goto/16 :goto_1d

    .line 40
    .line 41
    :cond_3
    if-eqz p3, :cond_4

    .line 42
    .line 43
    if-nez p2, :cond_4

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    move v5, v2

    .line 48
    :goto_2
    const/4 v6, -0x1

    .line 49
    move v7, v2

    .line 50
    move v8, v6

    .line 51
    move v9, v8

    .line 52
    :goto_3
    if-ge v7, v1, :cond_9

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    add-int/lit8 v10, v1, -0x1

    .line 57
    .line 58
    sub-int/2addr v10, v7

    .line 59
    goto :goto_4

    .line 60
    :cond_5
    move v10, v7

    .line 61
    :goto_4
    iget v11, v0, Lu/g;->n:I

    .line 62
    .line 63
    add-int v12, v11, v10

    .line 64
    .line 65
    iget v13, v4, Lu/h;->b1:I

    .line 66
    .line 67
    if-lt v12, v13, :cond_6

    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_6
    iget-object v12, v4, Lu/h;->a1:[Lu/e;

    .line 71
    .line 72
    add-int/2addr v11, v10

    .line 73
    aget-object v10, v12, v11

    .line 74
    .line 75
    if-eqz v10, :cond_8

    .line 76
    .line 77
    invoke-virtual {v10}, Lu/e;->getVisibility()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-nez v10, :cond_8

    .line 82
    .line 83
    if-ne v8, v6, :cond_7

    .line 84
    .line 85
    move v8, v7

    .line 86
    :cond_7
    move v9, v7

    .line 87
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_9
    :goto_5
    iget v7, v0, Lu/g;->a:I

    .line 91
    .line 92
    if-nez v7, :cond_24

    .line 93
    .line 94
    iget-object v7, v0, Lu/g;->b:Lu/e;

    .line 95
    .line 96
    iget v11, v4, Lu/h;->E0:I

    .line 97
    .line 98
    invoke-virtual {v7, v11}, Lu/e;->setVerticalChainStyle(I)V

    .line 99
    .line 100
    .line 101
    iget v11, v0, Lu/g;->i:I

    .line 102
    .line 103
    if-lez p2, :cond_a

    .line 104
    .line 105
    iget v12, v4, Lu/h;->Q0:I

    .line 106
    .line 107
    add-int/2addr v11, v12

    .line 108
    :cond_a
    iget-object v12, v0, Lu/g;->e:Lu/d;

    .line 109
    .line 110
    iget-object v13, v7, Lu/e;->J:Lu/d;

    .line 111
    .line 112
    invoke-virtual {v13, v12, v11}, Lu/d;->connect(Lu/d;I)Z

    .line 113
    .line 114
    .line 115
    iget-object v11, v7, Lu/e;->L:Lu/d;

    .line 116
    .line 117
    if-eqz p3, :cond_b

    .line 118
    .line 119
    iget-object v12, v0, Lu/g;->g:Lu/d;

    .line 120
    .line 121
    iget v14, v0, Lu/g;->k:I

    .line 122
    .line 123
    invoke-virtual {v11, v12, v14}, Lu/d;->connect(Lu/d;I)Z

    .line 124
    .line 125
    .line 126
    :cond_b
    if-lez p2, :cond_c

    .line 127
    .line 128
    iget-object v12, v0, Lu/g;->e:Lu/d;

    .line 129
    .line 130
    iget-object v12, v12, Lu/d;->d:Lu/e;

    .line 131
    .line 132
    iget-object v12, v12, Lu/e;->L:Lu/d;

    .line 133
    .line 134
    invoke-virtual {v12, v13, v2}, Lu/d;->connect(Lu/d;I)Z

    .line 135
    .line 136
    .line 137
    :cond_c
    iget v12, v4, Lu/h;->S0:I

    .line 138
    .line 139
    const/4 v14, 0x3

    .line 140
    if-ne v12, v14, :cond_10

    .line 141
    .line 142
    invoke-virtual {v7}, Lu/e;->hasBaseline()Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    if-nez v12, :cond_10

    .line 147
    .line 148
    move v12, v2

    .line 149
    :goto_6
    if-ge v12, v1, :cond_10

    .line 150
    .line 151
    if-eqz p1, :cond_d

    .line 152
    .line 153
    add-int/lit8 v15, v1, -0x1

    .line 154
    .line 155
    sub-int/2addr v15, v12

    .line 156
    goto :goto_7

    .line 157
    :cond_d
    move v15, v12

    .line 158
    :goto_7
    iget v10, v0, Lu/g;->n:I

    .line 159
    .line 160
    const/16 v17, 0x1

    .line 161
    .line 162
    add-int v3, v10, v15

    .line 163
    .line 164
    iget v14, v4, Lu/h;->b1:I

    .line 165
    .line 166
    if-lt v3, v14, :cond_e

    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_e
    iget-object v3, v4, Lu/h;->a1:[Lu/e;

    .line 170
    .line 171
    add-int/2addr v10, v15

    .line 172
    aget-object v3, v3, v10

    .line 173
    .line 174
    invoke-virtual {v3}, Lu/e;->hasBaseline()Z

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-eqz v10, :cond_f

    .line 179
    .line 180
    goto :goto_9

    .line 181
    :cond_f
    add-int/lit8 v12, v12, 0x1

    .line 182
    .line 183
    const/4 v14, 0x3

    .line 184
    goto :goto_6

    .line 185
    :cond_10
    const/16 v17, 0x1

    .line 186
    .line 187
    :goto_8
    move-object v3, v7

    .line 188
    :goto_9
    move v12, v2

    .line 189
    const/4 v10, 0x0

    .line 190
    :goto_a
    if-ge v12, v1, :cond_3c

    .line 191
    .line 192
    if-eqz p1, :cond_11

    .line 193
    .line 194
    add-int/lit8 v14, v1, -0x1

    .line 195
    .line 196
    sub-int/2addr v14, v12

    .line 197
    goto :goto_b

    .line 198
    :cond_11
    move v14, v12

    .line 199
    :goto_b
    iget v15, v0, Lu/g;->n:I

    .line 200
    .line 201
    add-int v2, v15, v14

    .line 202
    .line 203
    iget v6, v4, Lu/h;->b1:I

    .line 204
    .line 205
    if-lt v2, v6, :cond_12

    .line 206
    .line 207
    goto/16 :goto_1d

    .line 208
    .line 209
    :cond_12
    iget-object v2, v4, Lu/h;->a1:[Lu/e;

    .line 210
    .line 211
    add-int/2addr v15, v14

    .line 212
    aget-object v2, v2, v15

    .line 213
    .line 214
    if-nez v2, :cond_13

    .line 215
    .line 216
    move/from16 v18, v5

    .line 217
    .line 218
    const/4 v6, 0x3

    .line 219
    goto/16 :goto_14

    .line 220
    .line 221
    :cond_13
    iget-object v6, v2, Lu/e;->I:Lu/d;

    .line 222
    .line 223
    if-nez v12, :cond_14

    .line 224
    .line 225
    iget-object v15, v0, Lu/g;->d:Lu/d;

    .line 226
    .line 227
    move/from16 v18, v5

    .line 228
    .line 229
    iget v5, v0, Lu/g;->h:I

    .line 230
    .line 231
    invoke-virtual {v2, v6, v15, v5}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 232
    .line 233
    .line 234
    goto :goto_c

    .line 235
    :cond_14
    move/from16 v18, v5

    .line 236
    .line 237
    :goto_c
    if-nez v14, :cond_1b

    .line 238
    .line 239
    iget v5, v4, Lu/h;->D0:I

    .line 240
    .line 241
    const/high16 v14, 0x3f800000    # 1.0f

    .line 242
    .line 243
    if-eqz p1, :cond_15

    .line 244
    .line 245
    iget v15, v4, Lu/h;->J0:F

    .line 246
    .line 247
    sub-float v15, v14, v15

    .line 248
    .line 249
    :goto_d
    move/from16 v16, v14

    .line 250
    .line 251
    goto :goto_e

    .line 252
    :cond_15
    iget v15, v4, Lu/h;->J0:F

    .line 253
    .line 254
    goto :goto_d

    .line 255
    :goto_e
    iget v14, v0, Lu/g;->n:I

    .line 256
    .line 257
    if-nez v14, :cond_17

    .line 258
    .line 259
    iget v14, v4, Lu/h;->F0:I

    .line 260
    .line 261
    move/from16 v19, v5

    .line 262
    .line 263
    const/4 v5, -0x1

    .line 264
    if-eq v14, v5, :cond_18

    .line 265
    .line 266
    if-eqz p1, :cond_16

    .line 267
    .line 268
    iget v5, v4, Lu/h;->L0:F

    .line 269
    .line 270
    sub-float v5, v16, v5

    .line 271
    .line 272
    :goto_f
    move v15, v5

    .line 273
    goto :goto_10

    .line 274
    :cond_16
    iget v5, v4, Lu/h;->L0:F

    .line 275
    .line 276
    goto :goto_f

    .line 277
    :goto_10
    move v5, v14

    .line 278
    goto :goto_12

    .line 279
    :cond_17
    move/from16 v19, v5

    .line 280
    .line 281
    :cond_18
    if-eqz p3, :cond_1a

    .line 282
    .line 283
    iget v5, v4, Lu/h;->H0:I

    .line 284
    .line 285
    const/4 v14, -0x1

    .line 286
    if-eq v5, v14, :cond_1a

    .line 287
    .line 288
    if-eqz p1, :cond_19

    .line 289
    .line 290
    iget v14, v4, Lu/h;->N0:F

    .line 291
    .line 292
    sub-float v14, v16, v14

    .line 293
    .line 294
    :goto_11
    move v15, v14

    .line 295
    goto :goto_12

    .line 296
    :cond_19
    iget v14, v4, Lu/h;->N0:F

    .line 297
    .line 298
    goto :goto_11

    .line 299
    :cond_1a
    move/from16 v5, v19

    .line 300
    .line 301
    :goto_12
    invoke-virtual {v2, v5}, Lu/e;->setHorizontalChainStyle(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v15}, Lu/e;->setHorizontalBiasPercent(F)V

    .line 305
    .line 306
    .line 307
    :cond_1b
    add-int/lit8 v5, v1, -0x1

    .line 308
    .line 309
    if-ne v12, v5, :cond_1c

    .line 310
    .line 311
    iget-object v5, v0, Lu/g;->f:Lu/d;

    .line 312
    .line 313
    iget v14, v0, Lu/g;->j:I

    .line 314
    .line 315
    iget-object v15, v2, Lu/e;->K:Lu/d;

    .line 316
    .line 317
    invoke-virtual {v2, v15, v5, v14}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 318
    .line 319
    .line 320
    :cond_1c
    if-eqz v10, :cond_1e

    .line 321
    .line 322
    iget v5, v4, Lu/h;->P0:I

    .line 323
    .line 324
    iget-object v10, v10, Lu/e;->K:Lu/d;

    .line 325
    .line 326
    invoke-virtual {v6, v10, v5}, Lu/d;->connect(Lu/d;I)Z

    .line 327
    .line 328
    .line 329
    if-ne v12, v8, :cond_1d

    .line 330
    .line 331
    iget v5, v0, Lu/g;->h:I

    .line 332
    .line 333
    invoke-virtual {v6, v5}, Lu/d;->setGoneMargin(I)V

    .line 334
    .line 335
    .line 336
    :cond_1d
    const/4 v5, 0x0

    .line 337
    invoke-virtual {v10, v6, v5}, Lu/d;->connect(Lu/d;I)Z

    .line 338
    .line 339
    .line 340
    add-int/lit8 v5, v9, 0x1

    .line 341
    .line 342
    if-ne v12, v5, :cond_1e

    .line 343
    .line 344
    iget v5, v0, Lu/g;->j:I

    .line 345
    .line 346
    invoke-virtual {v10, v5}, Lu/d;->setGoneMargin(I)V

    .line 347
    .line 348
    .line 349
    :cond_1e
    if-eq v2, v7, :cond_23

    .line 350
    .line 351
    iget v5, v4, Lu/h;->S0:I

    .line 352
    .line 353
    const/4 v6, 0x3

    .line 354
    if-ne v5, v6, :cond_1f

    .line 355
    .line 356
    invoke-virtual {v3}, Lu/e;->hasBaseline()Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_1f

    .line 361
    .line 362
    if-eq v2, v3, :cond_1f

    .line 363
    .line 364
    invoke-virtual {v2}, Lu/e;->hasBaseline()Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-eqz v5, :cond_1f

    .line 369
    .line 370
    iget-object v5, v2, Lu/e;->M:Lu/d;

    .line 371
    .line 372
    iget-object v10, v3, Lu/e;->M:Lu/d;

    .line 373
    .line 374
    const/4 v14, 0x0

    .line 375
    invoke-virtual {v5, v10, v14}, Lu/d;->connect(Lu/d;I)Z

    .line 376
    .line 377
    .line 378
    goto :goto_13

    .line 379
    :cond_1f
    iget v5, v4, Lu/h;->S0:I

    .line 380
    .line 381
    iget-object v10, v2, Lu/e;->J:Lu/d;

    .line 382
    .line 383
    if-eqz v5, :cond_22

    .line 384
    .line 385
    iget-object v14, v2, Lu/e;->L:Lu/d;

    .line 386
    .line 387
    move/from16 v15, v17

    .line 388
    .line 389
    if-eq v5, v15, :cond_21

    .line 390
    .line 391
    if-eqz v18, :cond_20

    .line 392
    .line 393
    iget-object v5, v0, Lu/g;->e:Lu/d;

    .line 394
    .line 395
    iget v15, v0, Lu/g;->i:I

    .line 396
    .line 397
    invoke-virtual {v10, v5, v15}, Lu/d;->connect(Lu/d;I)Z

    .line 398
    .line 399
    .line 400
    iget-object v5, v0, Lu/g;->g:Lu/d;

    .line 401
    .line 402
    iget v10, v0, Lu/g;->k:I

    .line 403
    .line 404
    invoke-virtual {v14, v5, v10}, Lu/d;->connect(Lu/d;I)Z

    .line 405
    .line 406
    .line 407
    goto :goto_13

    .line 408
    :cond_20
    const/4 v5, 0x0

    .line 409
    invoke-virtual {v10, v13, v5}, Lu/d;->connect(Lu/d;I)Z

    .line 410
    .line 411
    .line 412
    invoke-virtual {v14, v11, v5}, Lu/d;->connect(Lu/d;I)Z

    .line 413
    .line 414
    .line 415
    goto :goto_13

    .line 416
    :cond_21
    const/4 v5, 0x0

    .line 417
    invoke-virtual {v14, v11, v5}, Lu/d;->connect(Lu/d;I)Z

    .line 418
    .line 419
    .line 420
    goto :goto_13

    .line 421
    :cond_22
    const/4 v5, 0x0

    .line 422
    invoke-virtual {v10, v13, v5}, Lu/d;->connect(Lu/d;I)Z

    .line 423
    .line 424
    .line 425
    goto :goto_13

    .line 426
    :cond_23
    const/4 v6, 0x3

    .line 427
    :goto_13
    move-object v10, v2

    .line 428
    :goto_14
    add-int/lit8 v12, v12, 0x1

    .line 429
    .line 430
    move/from16 v5, v18

    .line 431
    .line 432
    const/4 v2, 0x0

    .line 433
    const/4 v6, -0x1

    .line 434
    const/16 v17, 0x1

    .line 435
    .line 436
    goto/16 :goto_a

    .line 437
    .line 438
    :cond_24
    move/from16 v18, v5

    .line 439
    .line 440
    iget-object v2, v0, Lu/g;->b:Lu/e;

    .line 441
    .line 442
    iget v3, v4, Lu/h;->D0:I

    .line 443
    .line 444
    invoke-virtual {v2, v3}, Lu/e;->setHorizontalChainStyle(I)V

    .line 445
    .line 446
    .line 447
    iget v3, v0, Lu/g;->h:I

    .line 448
    .line 449
    if-lez p2, :cond_25

    .line 450
    .line 451
    iget v5, v4, Lu/h;->P0:I

    .line 452
    .line 453
    add-int/2addr v3, v5

    .line 454
    :cond_25
    iget-object v5, v2, Lu/e;->I:Lu/d;

    .line 455
    .line 456
    iget-object v6, v2, Lu/e;->K:Lu/d;

    .line 457
    .line 458
    if-eqz p1, :cond_27

    .line 459
    .line 460
    iget-object v7, v0, Lu/g;->f:Lu/d;

    .line 461
    .line 462
    invoke-virtual {v6, v7, v3}, Lu/d;->connect(Lu/d;I)Z

    .line 463
    .line 464
    .line 465
    if-eqz p3, :cond_26

    .line 466
    .line 467
    iget-object v3, v0, Lu/g;->d:Lu/d;

    .line 468
    .line 469
    iget v7, v0, Lu/g;->j:I

    .line 470
    .line 471
    invoke-virtual {v5, v3, v7}, Lu/d;->connect(Lu/d;I)Z

    .line 472
    .line 473
    .line 474
    :cond_26
    if-lez p2, :cond_29

    .line 475
    .line 476
    iget-object v3, v0, Lu/g;->f:Lu/d;

    .line 477
    .line 478
    iget-object v3, v3, Lu/d;->d:Lu/e;

    .line 479
    .line 480
    iget-object v3, v3, Lu/e;->I:Lu/d;

    .line 481
    .line 482
    const/4 v14, 0x0

    .line 483
    invoke-virtual {v3, v6, v14}, Lu/d;->connect(Lu/d;I)Z

    .line 484
    .line 485
    .line 486
    goto :goto_15

    .line 487
    :cond_27
    iget-object v7, v0, Lu/g;->d:Lu/d;

    .line 488
    .line 489
    invoke-virtual {v5, v7, v3}, Lu/d;->connect(Lu/d;I)Z

    .line 490
    .line 491
    .line 492
    if-eqz p3, :cond_28

    .line 493
    .line 494
    iget-object v3, v0, Lu/g;->f:Lu/d;

    .line 495
    .line 496
    iget v7, v0, Lu/g;->j:I

    .line 497
    .line 498
    invoke-virtual {v6, v3, v7}, Lu/d;->connect(Lu/d;I)Z

    .line 499
    .line 500
    .line 501
    :cond_28
    if-lez p2, :cond_29

    .line 502
    .line 503
    iget-object v3, v0, Lu/g;->d:Lu/d;

    .line 504
    .line 505
    iget-object v3, v3, Lu/d;->d:Lu/e;

    .line 506
    .line 507
    iget-object v3, v3, Lu/e;->K:Lu/d;

    .line 508
    .line 509
    const/4 v14, 0x0

    .line 510
    invoke-virtual {v3, v5, v14}, Lu/d;->connect(Lu/d;I)Z

    .line 511
    .line 512
    .line 513
    :cond_29
    :goto_15
    const/4 v3, 0x0

    .line 514
    const/4 v10, 0x0

    .line 515
    :goto_16
    if-ge v3, v1, :cond_3c

    .line 516
    .line 517
    iget v7, v0, Lu/g;->n:I

    .line 518
    .line 519
    add-int v11, v7, v3

    .line 520
    .line 521
    iget v12, v4, Lu/h;->b1:I

    .line 522
    .line 523
    if-lt v11, v12, :cond_2a

    .line 524
    .line 525
    goto/16 :goto_1d

    .line 526
    .line 527
    :cond_2a
    iget-object v11, v4, Lu/h;->a1:[Lu/e;

    .line 528
    .line 529
    add-int/2addr v7, v3

    .line 530
    aget-object v7, v11, v7

    .line 531
    .line 532
    if-nez v7, :cond_2b

    .line 533
    .line 534
    move-object v7, v10

    .line 535
    const/4 v10, 0x0

    .line 536
    const/4 v14, 0x1

    .line 537
    const/4 v15, -0x1

    .line 538
    goto/16 :goto_1c

    .line 539
    .line 540
    :cond_2b
    iget-object v11, v7, Lu/e;->J:Lu/d;

    .line 541
    .line 542
    if-nez v3, :cond_2f

    .line 543
    .line 544
    iget-object v12, v0, Lu/g;->e:Lu/d;

    .line 545
    .line 546
    iget v13, v0, Lu/g;->i:I

    .line 547
    .line 548
    invoke-virtual {v7, v11, v12, v13}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 549
    .line 550
    .line 551
    iget v12, v4, Lu/h;->E0:I

    .line 552
    .line 553
    iget v13, v4, Lu/h;->K0:F

    .line 554
    .line 555
    iget v14, v0, Lu/g;->n:I

    .line 556
    .line 557
    if-nez v14, :cond_2c

    .line 558
    .line 559
    iget v14, v4, Lu/h;->G0:I

    .line 560
    .line 561
    const/4 v15, -0x1

    .line 562
    if-eq v14, v15, :cond_2d

    .line 563
    .line 564
    iget v13, v4, Lu/h;->M0:F

    .line 565
    .line 566
    :goto_17
    move v12, v14

    .line 567
    goto :goto_18

    .line 568
    :cond_2c
    const/4 v15, -0x1

    .line 569
    :cond_2d
    if-eqz p3, :cond_2e

    .line 570
    .line 571
    iget v14, v4, Lu/h;->I0:I

    .line 572
    .line 573
    if-eq v14, v15, :cond_2e

    .line 574
    .line 575
    iget v13, v4, Lu/h;->O0:F

    .line 576
    .line 577
    goto :goto_17

    .line 578
    :cond_2e
    :goto_18
    invoke-virtual {v7, v12}, Lu/e;->setVerticalChainStyle(I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v7, v13}, Lu/e;->setVerticalBiasPercent(F)V

    .line 582
    .line 583
    .line 584
    goto :goto_19

    .line 585
    :cond_2f
    const/4 v15, -0x1

    .line 586
    :goto_19
    add-int/lit8 v12, v1, -0x1

    .line 587
    .line 588
    if-ne v3, v12, :cond_30

    .line 589
    .line 590
    iget-object v12, v0, Lu/g;->g:Lu/d;

    .line 591
    .line 592
    iget v13, v0, Lu/g;->k:I

    .line 593
    .line 594
    iget-object v14, v7, Lu/e;->L:Lu/d;

    .line 595
    .line 596
    invoke-virtual {v7, v14, v12, v13}, Lu/e;->connect(Lu/d;Lu/d;I)V

    .line 597
    .line 598
    .line 599
    :cond_30
    if-eqz v10, :cond_32

    .line 600
    .line 601
    iget v12, v4, Lu/h;->Q0:I

    .line 602
    .line 603
    iget-object v10, v10, Lu/e;->L:Lu/d;

    .line 604
    .line 605
    invoke-virtual {v11, v10, v12}, Lu/d;->connect(Lu/d;I)Z

    .line 606
    .line 607
    .line 608
    if-ne v3, v8, :cond_31

    .line 609
    .line 610
    iget v12, v0, Lu/g;->i:I

    .line 611
    .line 612
    invoke-virtual {v11, v12}, Lu/d;->setGoneMargin(I)V

    .line 613
    .line 614
    .line 615
    :cond_31
    const/4 v14, 0x0

    .line 616
    invoke-virtual {v10, v11, v14}, Lu/d;->connect(Lu/d;I)Z

    .line 617
    .line 618
    .line 619
    const/16 v17, 0x1

    .line 620
    .line 621
    add-int/lit8 v11, v9, 0x1

    .line 622
    .line 623
    if-ne v3, v11, :cond_32

    .line 624
    .line 625
    iget v11, v0, Lu/g;->k:I

    .line 626
    .line 627
    invoke-virtual {v10, v11}, Lu/d;->setGoneMargin(I)V

    .line 628
    .line 629
    .line 630
    :cond_32
    if-eq v7, v2, :cond_36

    .line 631
    .line 632
    const/4 v10, 0x2

    .line 633
    iget-object v11, v7, Lu/e;->K:Lu/d;

    .line 634
    .line 635
    iget-object v12, v7, Lu/e;->I:Lu/d;

    .line 636
    .line 637
    if-eqz p1, :cond_37

    .line 638
    .line 639
    iget v13, v4, Lu/h;->R0:I

    .line 640
    .line 641
    if-eqz v13, :cond_35

    .line 642
    .line 643
    const/4 v14, 0x1

    .line 644
    if-eq v13, v14, :cond_34

    .line 645
    .line 646
    if-eq v13, v10, :cond_33

    .line 647
    .line 648
    goto :goto_1a

    .line 649
    :cond_33
    const/4 v14, 0x0

    .line 650
    invoke-virtual {v12, v5, v14}, Lu/d;->connect(Lu/d;I)Z

    .line 651
    .line 652
    .line 653
    invoke-virtual {v11, v6, v14}, Lu/d;->connect(Lu/d;I)Z

    .line 654
    .line 655
    .line 656
    goto :goto_1a

    .line 657
    :cond_34
    const/4 v14, 0x0

    .line 658
    invoke-virtual {v12, v5, v14}, Lu/d;->connect(Lu/d;I)Z

    .line 659
    .line 660
    .line 661
    goto :goto_1a

    .line 662
    :cond_35
    const/4 v14, 0x0

    .line 663
    invoke-virtual {v11, v6, v14}, Lu/d;->connect(Lu/d;I)Z

    .line 664
    .line 665
    .line 666
    :cond_36
    :goto_1a
    const/4 v10, 0x0

    .line 667
    const/4 v14, 0x1

    .line 668
    goto :goto_1c

    .line 669
    :cond_37
    iget v13, v4, Lu/h;->R0:I

    .line 670
    .line 671
    if-eqz v13, :cond_3b

    .line 672
    .line 673
    const/4 v14, 0x1

    .line 674
    if-eq v13, v14, :cond_3a

    .line 675
    .line 676
    if-eq v13, v10, :cond_38

    .line 677
    .line 678
    :goto_1b
    const/4 v10, 0x0

    .line 679
    goto :goto_1c

    .line 680
    :cond_38
    if-eqz v18, :cond_39

    .line 681
    .line 682
    iget-object v10, v0, Lu/g;->d:Lu/d;

    .line 683
    .line 684
    iget v13, v0, Lu/g;->h:I

    .line 685
    .line 686
    invoke-virtual {v12, v10, v13}, Lu/d;->connect(Lu/d;I)Z

    .line 687
    .line 688
    .line 689
    iget-object v10, v0, Lu/g;->f:Lu/d;

    .line 690
    .line 691
    iget v12, v0, Lu/g;->j:I

    .line 692
    .line 693
    invoke-virtual {v11, v10, v12}, Lu/d;->connect(Lu/d;I)Z

    .line 694
    .line 695
    .line 696
    goto :goto_1b

    .line 697
    :cond_39
    const/4 v10, 0x0

    .line 698
    invoke-virtual {v12, v5, v10}, Lu/d;->connect(Lu/d;I)Z

    .line 699
    .line 700
    .line 701
    invoke-virtual {v11, v6, v10}, Lu/d;->connect(Lu/d;I)Z

    .line 702
    .line 703
    .line 704
    goto :goto_1c

    .line 705
    :cond_3a
    const/4 v10, 0x0

    .line 706
    invoke-virtual {v11, v6, v10}, Lu/d;->connect(Lu/d;I)Z

    .line 707
    .line 708
    .line 709
    goto :goto_1c

    .line 710
    :cond_3b
    const/4 v10, 0x0

    .line 711
    const/4 v14, 0x1

    .line 712
    invoke-virtual {v12, v5, v10}, Lu/d;->connect(Lu/d;I)Z

    .line 713
    .line 714
    .line 715
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    .line 716
    .line 717
    move-object v10, v7

    .line 718
    goto/16 :goto_16

    .line 719
    .line 720
    :cond_3c
    :goto_1d
    return-void
.end method

.method public getHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lu/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lu/g;->m:I

    .line 7
    .line 8
    iget-object v1, p0, Lu/g;->r:Lu/h;

    .line 9
    .line 10
    iget v1, v1, Lu/h;->Q0:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    return v0

    .line 14
    :cond_0
    iget v0, p0, Lu/g;->m:I

    .line 15
    .line 16
    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lu/g;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lu/g;->l:I

    .line 6
    .line 7
    iget-object v1, p0, Lu/g;->r:Lu/h;

    .line 8
    .line 9
    iget v1, v1, Lu/h;->P0:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0

    .line 13
    :cond_0
    iget v0, p0, Lu/g;->l:I

    .line 14
    .line 15
    return v0
.end method

.method public measureMatchConstraints(I)V
    .locals 9

    .line 1
    iget v0, p0, Lu/g;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Lu/g;->o:I

    .line 8
    .line 9
    div-int v5, p1, v0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    move v0, p1

    .line 13
    :goto_0
    iget-object v2, p0, Lu/g;->r:Lu/h;

    .line 14
    .line 15
    if-ge v0, v1, :cond_4

    .line 16
    .line 17
    iget v3, p0, Lu/g;->n:I

    .line 18
    .line 19
    add-int v4, v3, v0

    .line 20
    .line 21
    iget v6, v2, Lu/h;->b1:I

    .line 22
    .line 23
    if-lt v4, v6, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    iget-object v2, v2, Lu/h;->a1:[Lu/e;

    .line 27
    .line 28
    add-int/2addr v3, v0

    .line 29
    aget-object v3, v2, v3

    .line 30
    .line 31
    iget v2, p0, Lu/g;->a:I

    .line 32
    .line 33
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    .line 35
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {v3}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-ne v2, v6, :cond_3

    .line 46
    .line 47
    iget v2, v3, Lu/e;->r:I

    .line 48
    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v3}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v3}, Lu/e;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    iget-object v2, p0, Lu/g;->r:Lu/h;

    .line 60
    .line 61
    invoke-virtual/range {v2 .. v7}, Lu/m;->measure(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-ne v2, v6, :cond_3

    .line 72
    .line 73
    iget v2, v3, Lu/e;->s:I

    .line 74
    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    move-object v6, v4

    .line 78
    invoke-virtual {v3}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    move v7, v5

    .line 83
    invoke-virtual {v3}, Lu/e;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    iget-object v2, p0, Lu/g;->r:Lu/h;

    .line 88
    .line 89
    invoke-virtual/range {v2 .. v7}, Lu/m;->measure(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 90
    .line 91
    .line 92
    move v5, v7

    .line 93
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    :goto_2
    iput p1, p0, Lu/g;->l:I

    .line 97
    .line 98
    iput p1, p0, Lu/g;->m:I

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lu/g;->b:Lu/e;

    .line 102
    .line 103
    iput p1, p0, Lu/g;->c:I

    .line 104
    .line 105
    iget v0, p0, Lu/g;->o:I

    .line 106
    .line 107
    move v1, p1

    .line 108
    :goto_3
    if-ge v1, v0, :cond_c

    .line 109
    .line 110
    iget v3, p0, Lu/g;->n:I

    .line 111
    .line 112
    add-int/2addr v3, v1

    .line 113
    iget v4, v2, Lu/h;->b1:I

    .line 114
    .line 115
    if-lt v3, v4, :cond_5

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_5
    iget-object v4, v2, Lu/h;->a1:[Lu/e;

    .line 119
    .line 120
    aget-object v3, v4, v3

    .line 121
    .line 122
    iget v4, p0, Lu/g;->a:I

    .line 123
    .line 124
    const/16 v5, 0x8

    .line 125
    .line 126
    if-nez v4, :cond_8

    .line 127
    .line 128
    invoke-virtual {v3}, Lu/e;->getWidth()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    iget v6, v2, Lu/h;->P0:I

    .line 133
    .line 134
    invoke-virtual {v3}, Lu/e;->getVisibility()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-ne v7, v5, :cond_6

    .line 139
    .line 140
    move v6, p1

    .line 141
    :cond_6
    iget v5, p0, Lu/g;->l:I

    .line 142
    .line 143
    add-int/2addr v4, v6

    .line 144
    add-int/2addr v4, v5

    .line 145
    iput v4, p0, Lu/g;->l:I

    .line 146
    .line 147
    iget v4, p0, Lu/g;->q:I

    .line 148
    .line 149
    invoke-virtual {v2, v3, v4}, Lu/h;->g(Lu/e;I)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    iget-object v5, p0, Lu/g;->b:Lu/e;

    .line 154
    .line 155
    if-eqz v5, :cond_7

    .line 156
    .line 157
    iget v5, p0, Lu/g;->c:I

    .line 158
    .line 159
    if-ge v5, v4, :cond_b

    .line 160
    .line 161
    :cond_7
    iput-object v3, p0, Lu/g;->b:Lu/e;

    .line 162
    .line 163
    iput v4, p0, Lu/g;->c:I

    .line 164
    .line 165
    iput v4, p0, Lu/g;->m:I

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_8
    iget v4, p0, Lu/g;->q:I

    .line 169
    .line 170
    invoke-virtual {v2, v3, v4}, Lu/h;->h(Lu/e;I)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    iget v6, p0, Lu/g;->q:I

    .line 175
    .line 176
    invoke-virtual {v2, v3, v6}, Lu/h;->g(Lu/e;I)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    iget v7, v2, Lu/h;->Q0:I

    .line 181
    .line 182
    invoke-virtual {v3}, Lu/e;->getVisibility()I

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-ne v8, v5, :cond_9

    .line 187
    .line 188
    move v7, p1

    .line 189
    :cond_9
    iget v5, p0, Lu/g;->m:I

    .line 190
    .line 191
    add-int/2addr v6, v7

    .line 192
    add-int/2addr v6, v5

    .line 193
    iput v6, p0, Lu/g;->m:I

    .line 194
    .line 195
    iget-object v5, p0, Lu/g;->b:Lu/e;

    .line 196
    .line 197
    if-eqz v5, :cond_a

    .line 198
    .line 199
    iget v5, p0, Lu/g;->c:I

    .line 200
    .line 201
    if-ge v5, v4, :cond_b

    .line 202
    .line 203
    :cond_a
    iput-object v3, p0, Lu/g;->b:Lu/e;

    .line 204
    .line 205
    iput v4, p0, Lu/g;->c:I

    .line 206
    .line 207
    iput v4, p0, Lu/g;->l:I

    .line 208
    .line 209
    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_c
    :goto_5
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/g;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public setup(ILu/d;Lu/d;Lu/d;Lu/d;IIIII)V
    .locals 0

    .line 1
    iput p1, p0, Lu/g;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lu/g;->d:Lu/d;

    .line 4
    .line 5
    iput-object p3, p0, Lu/g;->e:Lu/d;

    .line 6
    .line 7
    iput-object p4, p0, Lu/g;->f:Lu/d;

    .line 8
    .line 9
    iput-object p5, p0, Lu/g;->g:Lu/d;

    .line 10
    .line 11
    iput p6, p0, Lu/g;->h:I

    .line 12
    .line 13
    iput p7, p0, Lu/g;->i:I

    .line 14
    .line 15
    iput p8, p0, Lu/g;->j:I

    .line 16
    .line 17
    iput p9, p0, Lu/g;->k:I

    .line 18
    .line 19
    iput p10, p0, Lu/g;->q:I

    .line 20
    .line 21
    return-void
.end method
