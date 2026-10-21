.class public final Lu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu/e;

.field public b:Lu/e;

.field public c:Lu/e;

.field public d:Lu/e;

.field public e:Lu/e;

.field public f:Lu/e;

.field public g:Lu/e;

.field public h:Ljava/util/ArrayList;

.field public i:I

.field public j:I

.field public k:F

.field public final l:I

.field public final m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Lu/e;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lu/c;->k:F

    .line 6
    .line 7
    iput-object p1, p0, Lu/c;->a:Lu/e;

    .line 8
    .line 9
    iput p2, p0, Lu/c;->l:I

    .line 10
    .line 11
    iput-boolean p3, p0, Lu/c;->m:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public define()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lu/c;->q:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_18

    .line 7
    .line 8
    iget v1, v0, Lu/c;->l:I

    .line 9
    .line 10
    mul-int/lit8 v3, v1, 0x2

    .line 11
    .line 12
    iget-object v4, v0, Lu/c;->a:Lu/e;

    .line 13
    .line 14
    move-object v7, v4

    .line 15
    move-object v8, v7

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_0
    if-nez v6, :cond_13

    .line 18
    .line 19
    iget v9, v0, Lu/c;->i:I

    .line 20
    .line 21
    add-int/2addr v9, v2

    .line 22
    iput v9, v0, Lu/c;->i:I

    .line 23
    .line 24
    iget-object v9, v7, Lu/e;->n0:[Lu/e;

    .line 25
    .line 26
    const/4 v10, 0x0

    .line 27
    aput-object v10, v9, v1

    .line 28
    .line 29
    iget-object v9, v7, Lu/e;->m0:[Lu/e;

    .line 30
    .line 31
    aput-object v10, v9, v1

    .line 32
    .line 33
    invoke-virtual {v7}, Lu/e;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    iget-object v11, v7, Lu/e;->Q:[Lu/d;

    .line 38
    .line 39
    const/16 v12, 0x8

    .line 40
    .line 41
    if-eq v9, v12, :cond_e

    .line 42
    .line 43
    invoke-virtual {v7, v1}, Lu/e;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 48
    .line 49
    if-eq v9, v13, :cond_0

    .line 50
    .line 51
    invoke-virtual {v7, v1}, Lu/e;->getLength(I)I

    .line 52
    .line 53
    .line 54
    :cond_0
    aget-object v9, v11, v3

    .line 55
    .line 56
    invoke-virtual {v9}, Lu/d;->getMargin()I

    .line 57
    .line 58
    .line 59
    add-int/lit8 v9, v3, 0x1

    .line 60
    .line 61
    aget-object v14, v11, v9

    .line 62
    .line 63
    invoke-virtual {v14}, Lu/d;->getMargin()I

    .line 64
    .line 65
    .line 66
    aget-object v14, v11, v3

    .line 67
    .line 68
    invoke-virtual {v14}, Lu/d;->getMargin()I

    .line 69
    .line 70
    .line 71
    aget-object v9, v11, v9

    .line 72
    .line 73
    invoke-virtual {v9}, Lu/d;->getMargin()I

    .line 74
    .line 75
    .line 76
    iget-object v9, v0, Lu/c;->b:Lu/e;

    .line 77
    .line 78
    if-nez v9, :cond_1

    .line 79
    .line 80
    iput-object v7, v0, Lu/c;->b:Lu/e;

    .line 81
    .line 82
    :cond_1
    iput-object v7, v0, Lu/c;->d:Lu/e;

    .line 83
    .line 84
    iget-object v9, v7, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 85
    .line 86
    aget-object v14, v9, v1

    .line 87
    .line 88
    if-ne v14, v13, :cond_e

    .line 89
    .line 90
    iget-object v14, v7, Lu/e;->t:[I

    .line 91
    .line 92
    aget v15, v14, v1

    .line 93
    .line 94
    const/4 v5, 0x3

    .line 95
    if-eqz v15, :cond_2

    .line 96
    .line 97
    if-eq v15, v5, :cond_2

    .line 98
    .line 99
    const/4 v10, 0x2

    .line 100
    if-ne v15, v10, :cond_a

    .line 101
    .line 102
    :cond_2
    iget v10, v0, Lu/c;->j:I

    .line 103
    .line 104
    add-int/2addr v10, v2

    .line 105
    iput v10, v0, Lu/c;->j:I

    .line 106
    .line 107
    iget-object v10, v7, Lu/e;->l0:[F

    .line 108
    .line 109
    aget v10, v10, v1

    .line 110
    .line 111
    const/4 v15, 0x0

    .line 112
    cmpl-float v16, v10, v15

    .line 113
    .line 114
    if-lez v16, :cond_3

    .line 115
    .line 116
    move/from16 v16, v15

    .line 117
    .line 118
    iget v15, v0, Lu/c;->k:F

    .line 119
    .line 120
    add-float/2addr v15, v10

    .line 121
    iput v15, v0, Lu/c;->k:F

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    move/from16 v16, v15

    .line 125
    .line 126
    :goto_1
    invoke-virtual {v7}, Lu/e;->getVisibility()I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    if-eq v15, v12, :cond_7

    .line 131
    .line 132
    aget-object v9, v9, v1

    .line 133
    .line 134
    if-ne v9, v13, :cond_7

    .line 135
    .line 136
    aget v9, v14, v1

    .line 137
    .line 138
    if-eqz v9, :cond_4

    .line 139
    .line 140
    if-ne v9, v5, :cond_7

    .line 141
    .line 142
    :cond_4
    cmpg-float v5, v10, v16

    .line 143
    .line 144
    if-gez v5, :cond_5

    .line 145
    .line 146
    iput-boolean v2, v0, Lu/c;->n:Z

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    iput-boolean v2, v0, Lu/c;->o:Z

    .line 150
    .line 151
    :goto_2
    iget-object v5, v0, Lu/c;->h:Ljava/util/ArrayList;

    .line 152
    .line 153
    if-nez v5, :cond_6

    .line 154
    .line 155
    new-instance v5, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v5, v0, Lu/c;->h:Ljava/util/ArrayList;

    .line 161
    .line 162
    :cond_6
    iget-object v5, v0, Lu/c;->h:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_7
    iget-object v5, v0, Lu/c;->f:Lu/e;

    .line 168
    .line 169
    if-nez v5, :cond_8

    .line 170
    .line 171
    iput-object v7, v0, Lu/c;->f:Lu/e;

    .line 172
    .line 173
    :cond_8
    iget-object v5, v0, Lu/c;->g:Lu/e;

    .line 174
    .line 175
    if-eqz v5, :cond_9

    .line 176
    .line 177
    iget-object v5, v5, Lu/e;->m0:[Lu/e;

    .line 178
    .line 179
    aput-object v7, v5, v1

    .line 180
    .line 181
    :cond_9
    iput-object v7, v0, Lu/c;->g:Lu/e;

    .line 182
    .line 183
    :cond_a
    if-nez v1, :cond_c

    .line 184
    .line 185
    iget v5, v7, Lu/e;->r:I

    .line 186
    .line 187
    if-eqz v5, :cond_b

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_b
    iget v5, v7, Lu/e;->u:I

    .line 191
    .line 192
    if-nez v5, :cond_e

    .line 193
    .line 194
    iget v5, v7, Lu/e;->v:I

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_c
    iget v5, v7, Lu/e;->s:I

    .line 198
    .line 199
    if-eqz v5, :cond_d

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_d
    iget v5, v7, Lu/e;->x:I

    .line 203
    .line 204
    if-nez v5, :cond_e

    .line 205
    .line 206
    iget v5, v7, Lu/e;->y:I

    .line 207
    .line 208
    :cond_e
    :goto_3
    if-eq v8, v7, :cond_f

    .line 209
    .line 210
    iget-object v5, v8, Lu/e;->n0:[Lu/e;

    .line 211
    .line 212
    aput-object v7, v5, v1

    .line 213
    .line 214
    :cond_f
    add-int/lit8 v5, v3, 0x1

    .line 215
    .line 216
    aget-object v5, v11, v5

    .line 217
    .line 218
    iget-object v5, v5, Lu/d;->f:Lu/d;

    .line 219
    .line 220
    if-eqz v5, :cond_11

    .line 221
    .line 222
    iget-object v5, v5, Lu/d;->d:Lu/e;

    .line 223
    .line 224
    iget-object v8, v5, Lu/e;->Q:[Lu/d;

    .line 225
    .line 226
    aget-object v8, v8, v3

    .line 227
    .line 228
    iget-object v8, v8, Lu/d;->f:Lu/d;

    .line 229
    .line 230
    if-eqz v8, :cond_11

    .line 231
    .line 232
    iget-object v8, v8, Lu/d;->d:Lu/e;

    .line 233
    .line 234
    if-eq v8, v7, :cond_10

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_10
    move-object v10, v5

    .line 238
    goto :goto_5

    .line 239
    :cond_11
    :goto_4
    const/4 v10, 0x0

    .line 240
    :goto_5
    if-eqz v10, :cond_12

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_12
    move v6, v2

    .line 244
    move-object v10, v7

    .line 245
    :goto_6
    move-object v8, v7

    .line 246
    move-object v7, v10

    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_13
    iget-object v5, v0, Lu/c;->b:Lu/e;

    .line 250
    .line 251
    if-eqz v5, :cond_14

    .line 252
    .line 253
    iget-object v5, v5, Lu/e;->Q:[Lu/d;

    .line 254
    .line 255
    aget-object v5, v5, v3

    .line 256
    .line 257
    invoke-virtual {v5}, Lu/d;->getMargin()I

    .line 258
    .line 259
    .line 260
    :cond_14
    iget-object v5, v0, Lu/c;->d:Lu/e;

    .line 261
    .line 262
    if-eqz v5, :cond_15

    .line 263
    .line 264
    iget-object v5, v5, Lu/e;->Q:[Lu/d;

    .line 265
    .line 266
    add-int/2addr v3, v2

    .line 267
    aget-object v3, v5, v3

    .line 268
    .line 269
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 270
    .line 271
    .line 272
    :cond_15
    iput-object v7, v0, Lu/c;->c:Lu/e;

    .line 273
    .line 274
    if-nez v1, :cond_16

    .line 275
    .line 276
    iget-boolean v1, v0, Lu/c;->m:Z

    .line 277
    .line 278
    if-eqz v1, :cond_16

    .line 279
    .line 280
    iput-object v7, v0, Lu/c;->e:Lu/e;

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_16
    iput-object v4, v0, Lu/c;->e:Lu/e;

    .line 284
    .line 285
    :goto_7
    iget-boolean v1, v0, Lu/c;->o:Z

    .line 286
    .line 287
    if-eqz v1, :cond_17

    .line 288
    .line 289
    iget-boolean v1, v0, Lu/c;->n:Z

    .line 290
    .line 291
    if-eqz v1, :cond_17

    .line 292
    .line 293
    move v5, v2

    .line 294
    goto :goto_8

    .line 295
    :cond_17
    const/4 v5, 0x0

    .line 296
    :goto_8
    iput-boolean v5, v0, Lu/c;->p:Z

    .line 297
    .line 298
    :cond_18
    iput-boolean v2, v0, Lu/c;->q:Z

    .line 299
    .line 300
    return-void
.end method
