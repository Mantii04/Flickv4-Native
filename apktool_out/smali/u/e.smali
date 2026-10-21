.class public Lu/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:F

.field public final C:[I

.field public D:F

.field public E:Z

.field public F:Z

.field public G:I

.field public H:I

.field public final I:Lu/d;

.field public final J:Lu/d;

.field public final K:Lu/d;

.field public final L:Lu/d;

.field public final M:Lu/d;

.field public final N:Lu/d;

.field public final O:Lu/d;

.field public final P:Lu/d;

.field public final Q:[Lu/d;

.field public final R:Ljava/util/ArrayList;

.field public final S:[Z

.field public final T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public U:Lu/e;

.field public V:I

.field public W:I

.field public X:F

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:Lv/e;

.field public b0:I

.field public c:Lv/e;

.field public c0:I

.field public d:Landroidx/constraintlayout/core/widgets/analyzer/d;

.field public d0:I

.field public e:Landroidx/constraintlayout/core/widgets/analyzer/e;

.field public e0:F

.field public final f:[Z

.field public f0:F

.field public g:Z

.field public g0:Ljava/lang/Object;

.field public h:I

.field public h0:I

.field public i:I

.field public i0:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public j0:I

.field public k:Z

.field public k0:I

.field public l:Z

.field public final l0:[F

.field public m:Z

.field public final m0:[Lu/e;

.field public n:Z

.field public final n0:[Lu/e;

.field public o:I

.field public o0:I

.field public p:I

.field public p0:I

.field public q:I

.field public r:I

.field public s:I

.field public final t:[I

.field public u:I

.field public v:I

.field public w:F

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lu/e;->a:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 11
    .line 12
    iput-object v2, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x2

    .line 16
    new-array v5, v4, [Z

    .line 17
    .line 18
    fill-array-data v5, :array_0

    .line 19
    .line 20
    .line 21
    iput-object v5, v0, Lu/e;->f:[Z

    .line 22
    .line 23
    iput-boolean v3, v0, Lu/e;->g:Z

    .line 24
    .line 25
    const/4 v5, -0x1

    .line 26
    iput v5, v0, Lu/e;->h:I

    .line 27
    .line 28
    iput v5, v0, Lu/e;->i:I

    .line 29
    .line 30
    new-instance v6, Lt/a;

    .line 31
    .line 32
    invoke-direct {v6, v0}, Lt/a;-><init>(Lu/e;)V

    .line 33
    .line 34
    .line 35
    iput-boolean v1, v0, Lu/e;->k:Z

    .line 36
    .line 37
    iput-boolean v1, v0, Lu/e;->l:Z

    .line 38
    .line 39
    iput-boolean v1, v0, Lu/e;->m:Z

    .line 40
    .line 41
    iput-boolean v1, v0, Lu/e;->n:Z

    .line 42
    .line 43
    iput v5, v0, Lu/e;->o:I

    .line 44
    .line 45
    iput v5, v0, Lu/e;->p:I

    .line 46
    .line 47
    iput v1, v0, Lu/e;->q:I

    .line 48
    .line 49
    iput v1, v0, Lu/e;->r:I

    .line 50
    .line 51
    iput v1, v0, Lu/e;->s:I

    .line 52
    .line 53
    new-array v6, v4, [I

    .line 54
    .line 55
    iput-object v6, v0, Lu/e;->t:[I

    .line 56
    .line 57
    iput v1, v0, Lu/e;->u:I

    .line 58
    .line 59
    iput v1, v0, Lu/e;->v:I

    .line 60
    .line 61
    const/high16 v6, 0x3f800000    # 1.0f

    .line 62
    .line 63
    iput v6, v0, Lu/e;->w:F

    .line 64
    .line 65
    iput v1, v0, Lu/e;->x:I

    .line 66
    .line 67
    iput v1, v0, Lu/e;->y:I

    .line 68
    .line 69
    iput v6, v0, Lu/e;->z:F

    .line 70
    .line 71
    iput v5, v0, Lu/e;->A:I

    .line 72
    .line 73
    iput v6, v0, Lu/e;->B:F

    .line 74
    .line 75
    const v6, 0x7fffffff

    .line 76
    .line 77
    .line 78
    filled-new-array {v6, v6}, [I

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    iput-object v6, v0, Lu/e;->C:[I

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    iput v6, v0, Lu/e;->D:F

    .line 86
    .line 87
    iput-boolean v1, v0, Lu/e;->E:Z

    .line 88
    .line 89
    iput-boolean v1, v0, Lu/e;->F:Z

    .line 90
    .line 91
    iput v1, v0, Lu/e;->G:I

    .line 92
    .line 93
    iput v1, v0, Lu/e;->H:I

    .line 94
    .line 95
    new-instance v7, Lu/d;

    .line 96
    .line 97
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 98
    .line 99
    invoke-direct {v7, v0, v8}, Lu/d;-><init>(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 100
    .line 101
    .line 102
    iput-object v7, v0, Lu/e;->I:Lu/d;

    .line 103
    .line 104
    new-instance v8, Lu/d;

    .line 105
    .line 106
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 107
    .line 108
    invoke-direct {v8, v0, v9}, Lu/d;-><init>(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 109
    .line 110
    .line 111
    iput-object v8, v0, Lu/e;->J:Lu/d;

    .line 112
    .line 113
    new-instance v9, Lu/d;

    .line 114
    .line 115
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 116
    .line 117
    invoke-direct {v9, v0, v10}, Lu/d;-><init>(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 118
    .line 119
    .line 120
    iput-object v9, v0, Lu/e;->K:Lu/d;

    .line 121
    .line 122
    new-instance v10, Lu/d;

    .line 123
    .line 124
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 125
    .line 126
    invoke-direct {v10, v0, v11}, Lu/d;-><init>(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 127
    .line 128
    .line 129
    iput-object v10, v0, Lu/e;->L:Lu/d;

    .line 130
    .line 131
    new-instance v11, Lu/d;

    .line 132
    .line 133
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 134
    .line 135
    invoke-direct {v11, v0, v12}, Lu/d;-><init>(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 136
    .line 137
    .line 138
    iput-object v11, v0, Lu/e;->M:Lu/d;

    .line 139
    .line 140
    new-instance v12, Lu/d;

    .line 141
    .line 142
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->p:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 143
    .line 144
    invoke-direct {v12, v0, v13}, Lu/d;-><init>(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 145
    .line 146
    .line 147
    iput-object v12, v0, Lu/e;->N:Lu/d;

    .line 148
    .line 149
    new-instance v13, Lu/d;

    .line 150
    .line 151
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 152
    .line 153
    invoke-direct {v13, v0, v14}, Lu/d;-><init>(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 154
    .line 155
    .line 156
    iput-object v13, v0, Lu/e;->O:Lu/d;

    .line 157
    .line 158
    new-instance v14, Lu/d;

    .line 159
    .line 160
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->n:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 161
    .line 162
    invoke-direct {v14, v0, v15}, Lu/d;-><init>(Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 163
    .line 164
    .line 165
    iput-object v14, v0, Lu/e;->P:Lu/d;

    .line 166
    .line 167
    const/4 v15, 0x6

    .line 168
    new-array v15, v15, [Lu/d;

    .line 169
    .line 170
    aput-object v7, v15, v1

    .line 171
    .line 172
    aput-object v9, v15, v3

    .line 173
    .line 174
    aput-object v8, v15, v4

    .line 175
    .line 176
    const/16 v16, 0x3

    .line 177
    .line 178
    aput-object v10, v15, v16

    .line 179
    .line 180
    const/16 v16, 0x4

    .line 181
    .line 182
    aput-object v11, v15, v16

    .line 183
    .line 184
    const/16 v16, 0x5

    .line 185
    .line 186
    aput-object v14, v15, v16

    .line 187
    .line 188
    iput-object v15, v0, Lu/e;->Q:[Lu/d;

    .line 189
    .line 190
    new-instance v15, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v15, v0, Lu/e;->R:Ljava/util/ArrayList;

    .line 196
    .line 197
    move/from16 v16, v3

    .line 198
    .line 199
    new-array v3, v4, [Z

    .line 200
    .line 201
    iput-object v3, v0, Lu/e;->S:[Z

    .line 202
    .line 203
    new-array v3, v4, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 204
    .line 205
    sget-object v17, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 206
    .line 207
    aput-object v17, v3, v1

    .line 208
    .line 209
    aput-object v17, v3, v16

    .line 210
    .line 211
    iput-object v3, v0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 212
    .line 213
    iput-object v2, v0, Lu/e;->U:Lu/e;

    .line 214
    .line 215
    iput v1, v0, Lu/e;->V:I

    .line 216
    .line 217
    iput v1, v0, Lu/e;->W:I

    .line 218
    .line 219
    iput v6, v0, Lu/e;->X:F

    .line 220
    .line 221
    iput v5, v0, Lu/e;->Y:I

    .line 222
    .line 223
    iput v1, v0, Lu/e;->Z:I

    .line 224
    .line 225
    iput v1, v0, Lu/e;->a0:I

    .line 226
    .line 227
    iput v1, v0, Lu/e;->b0:I

    .line 228
    .line 229
    const/high16 v3, 0x3f000000    # 0.5f

    .line 230
    .line 231
    iput v3, v0, Lu/e;->e0:F

    .line 232
    .line 233
    iput v3, v0, Lu/e;->f0:F

    .line 234
    .line 235
    iput v1, v0, Lu/e;->h0:I

    .line 236
    .line 237
    iput-object v2, v0, Lu/e;->i0:Ljava/lang/String;

    .line 238
    .line 239
    iput v1, v0, Lu/e;->j0:I

    .line 240
    .line 241
    iput v1, v0, Lu/e;->k0:I

    .line 242
    .line 243
    new-array v3, v4, [F

    .line 244
    .line 245
    fill-array-data v3, :array_1

    .line 246
    .line 247
    .line 248
    iput-object v3, v0, Lu/e;->l0:[F

    .line 249
    .line 250
    new-array v3, v4, [Lu/e;

    .line 251
    .line 252
    aput-object v2, v3, v1

    .line 253
    .line 254
    aput-object v2, v3, v16

    .line 255
    .line 256
    iput-object v3, v0, Lu/e;->m0:[Lu/e;

    .line 257
    .line 258
    new-array v3, v4, [Lu/e;

    .line 259
    .line 260
    aput-object v2, v3, v1

    .line 261
    .line 262
    aput-object v2, v3, v16

    .line 263
    .line 264
    iput-object v3, v0, Lu/e;->n0:[Lu/e;

    .line 265
    .line 266
    iput v5, v0, Lu/e;->o0:I

    .line 267
    .line 268
    iput v5, v0, Lu/e;->p0:I

    .line 269
    .line 270
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    nop

    .line 301
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static b(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    const-string p1, " :  {\n"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "      size"

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p2, v0, p1, p0}, Lu/e;->e(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "      min"

    .line 16
    .line 17
    invoke-static {p3, v0, p1, p0}, Lu/e;->e(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "      max"

    .line 21
    .line 22
    const p2, 0x7fffffff

    .line 23
    .line 24
    .line 25
    invoke-static {p4, p2, p1, p0}, Lu/e;->e(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "      matchMin"

    .line 29
    .line 30
    invoke-static {p5, v0, p1, p0}, Lu/e;->e(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "      matchDef"

    .line 34
    .line 35
    invoke-static {p6, v0, p1, p0}, Lu/e;->e(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "      matchPercent"

    .line 39
    .line 40
    const/high16 p2, 0x3f800000    # 1.0f

    .line 41
    .line 42
    invoke-static {p0, p1, p7, p2}, Lu/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 43
    .line 44
    .line 45
    const-string p1, "    },\n"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static c(Ljava/lang/StringBuilder;Ljava/lang/String;Lu/d;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lu/d;->f:Lu/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "    "

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " : [ \'"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object p1, p2, Lu/d;->f:Lu/d;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, "\'"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget p1, p2, Lu/d;->h:I

    .line 30
    .line 31
    const/high16 v0, -0x80000000

    .line 32
    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    .line 35
    iget p1, p2, Lu/d;->g:I

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    :cond_1
    const-string p1, ","

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v1, p2, Lu/d;->g:I

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p2, Lu/d;->h:I

    .line 50
    .line 51
    if-eq v1, v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget p2, p2, Lu/d;->h:I

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_2
    const-string p1, " ] ,\n"

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static e(IILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    const-string p1, " :   "

    .line 8
    .line 9
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, ",\n"

    .line 16
    .line 17
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static f(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .locals 0

    .line 1
    cmpl-float p3, p2, p3

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " :   "

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, ",\n"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lr/f;ZZZZLr/m;Lr/m;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLu/d;Lu/d;IIIIFZZZZZIIIIFZ)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p6

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p14

    move/from16 v2, p15

    move/from16 v4, p24

    move/from16 v5, p25

    .line 1
    invoke-virtual {v1, v12}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    move-result-object v6

    .line 2
    invoke-virtual {v1, v13}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    move-result-object v7

    .line 3
    invoke-virtual {v12}, Lu/d;->getTarget()Lu/d;

    move-result-object v8

    invoke-virtual {v1, v8}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    move-result-object v15

    .line 4
    invoke-virtual {v13}, Lu/d;->getTarget()Lu/d;

    move-result-object v8

    invoke-virtual {v1, v8}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    move-result-object v8

    .line 5
    invoke-static {}, Lr/f;->getMetrics()Lr/g;

    .line 6
    invoke-virtual {v12}, Lu/d;->isConnected()Z

    move-result v16

    .line 7
    invoke-virtual {v13}, Lu/d;->isConnected()Z

    move-result v17

    .line 8
    iget-object v9, v0, Lu/e;->P:Lu/d;

    invoke-virtual {v9}, Lu/d;->isConnected()Z

    move-result v18

    if-eqz v17, :cond_0

    add-int/lit8 v9, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v9, v16

    :goto_0
    if-eqz v18, :cond_1

    add-int/lit8 v9, v9, 0x1

    :cond_1
    if-eqz p17, :cond_2

    const/4 v11, 0x3

    :goto_1
    move-object/from16 v19, v8

    goto :goto_2

    :cond_2
    move/from16 v11, p22

    goto :goto_1

    .line 9
    :goto_2
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    if-eq v8, v3, :cond_3

    const/4 v3, 0x2

    if-eq v8, v3, :cond_4

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    const/4 v3, 0x4

    if-eq v11, v3, :cond_3

    const/4 v8, 0x1

    .line 10
    :goto_3
    iget v3, v0, Lu/e;->h:I

    const/4 v13, -0x1

    if-eq v3, v13, :cond_5

    if-eqz p2, :cond_5

    .line 11
    iput v13, v0, Lu/e;->h:I

    move/from16 p13, v3

    const/4 v8, 0x0

    .line 12
    :cond_5
    iget v3, v0, Lu/e;->i:I

    if-eq v3, v13, :cond_6

    if-nez p2, :cond_6

    .line 13
    iput v13, v0, Lu/e;->i:I

    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    move/from16 v3, p13

    .line 14
    :goto_4
    iget v13, v0, Lu/e;->h0:I

    move/from16 p13, v3

    const/16 v3, 0x8

    if-ne v13, v3, :cond_7

    const/4 v8, 0x0

    const/4 v13, 0x0

    goto :goto_5

    :cond_7
    move v13, v8

    move/from16 v8, p13

    :goto_5
    if-eqz p27, :cond_a

    if-nez v16, :cond_9

    if-nez v17, :cond_9

    if-nez v18, :cond_9

    move/from16 v3, p12

    .line 15
    invoke-virtual {v1, v6, v3}, Lr/f;->addEquality(Lr/m;I)V

    :cond_8
    move/from16 v23, v13

    const/16 v13, 0x8

    goto :goto_6

    :cond_9
    if-eqz v16, :cond_8

    if-nez v17, :cond_8

    .line 16
    invoke-virtual {v12}, Lu/d;->getMargin()I

    move-result v3

    move/from16 v23, v13

    const/16 v13, 0x8

    invoke-virtual {v1, v6, v15, v3, v13}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    goto :goto_6

    :cond_a
    move/from16 v23, v13

    move v13, v3

    :goto_6
    if-nez v23, :cond_e

    if-eqz p9, :cond_c

    const/4 v3, 0x3

    const/4 v13, 0x0

    .line 17
    invoke-virtual {v1, v7, v6, v13, v3}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    const/16 v13, 0x8

    if-lez v14, :cond_b

    .line 18
    invoke-virtual {v1, v7, v6, v14, v13}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    :cond_b
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_d

    .line 19
    invoke-virtual {v1, v7, v6, v2, v13}, Lr/f;->addLowerThan(Lr/m;Lr/m;II)V

    goto :goto_7

    .line 20
    :cond_c
    invoke-virtual {v1, v7, v6, v8, v13}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    :cond_d
    :goto_7
    move v3, v5

    move-object v5, v7

    move v2, v9

    move-object/from16 v13, v19

    move/from16 v24, v23

    move/from16 v19, p5

    move/from16 v23, v4

    goto/16 :goto_10

    :cond_e
    const/4 v3, 0x2

    if-eq v9, v3, :cond_11

    if-nez p17, :cond_11

    const/4 v3, 0x1

    if-eq v11, v3, :cond_f

    if-nez v11, :cond_11

    .line 21
    :cond_f
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v5, :cond_10

    .line 22
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_10
    const/16 v13, 0x8

    .line 23
    invoke-virtual {v1, v7, v6, v2, v13}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    move/from16 v23, v4

    move v3, v5

    move-object v5, v7

    move v2, v9

    move-object/from16 v13, v19

    const/16 v24, 0x0

    move/from16 v19, p5

    goto/16 :goto_10

    :cond_11
    const/4 v2, -0x2

    if-ne v4, v2, :cond_12

    move v3, v8

    goto :goto_8

    :cond_12
    move v3, v4

    :goto_8
    if-ne v5, v2, :cond_13

    move v2, v8

    goto :goto_9

    :cond_13
    move v2, v5

    :goto_9
    if-lez v8, :cond_14

    const/4 v4, 0x1

    if-eq v11, v4, :cond_14

    const/4 v8, 0x0

    :cond_14
    const/16 v13, 0x8

    if-lez v3, :cond_15

    .line 24
    invoke-virtual {v1, v7, v6, v3, v13}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 25
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_15
    const/4 v4, 0x1

    if-lez v2, :cond_17

    if-eqz p3, :cond_16

    if-ne v11, v4, :cond_16

    goto :goto_a

    .line 26
    :cond_16
    invoke-virtual {v1, v7, v6, v2, v13}, Lr/f;->addLowerThan(Lr/m;Lr/m;II)V

    .line 27
    :goto_a
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_17
    if-ne v11, v4, :cond_1a

    if-eqz p3, :cond_18

    .line 28
    invoke-virtual {v1, v7, v6, v8, v13}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    goto :goto_b

    :cond_18
    if-eqz p19, :cond_19

    const/4 v4, 0x5

    .line 29
    invoke-virtual {v1, v7, v6, v8, v4}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 30
    invoke-virtual {v1, v7, v6, v8, v13}, Lr/f;->addLowerThan(Lr/m;Lr/m;II)V

    goto :goto_b

    :cond_19
    const/4 v4, 0x5

    .line 31
    invoke-virtual {v1, v7, v6, v8, v4}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 32
    invoke-virtual {v1, v7, v6, v8, v13}, Lr/f;->addLowerThan(Lr/m;Lr/m;II)V

    :goto_b
    move-object v5, v7

    move-object/from16 v13, v19

    move/from16 v24, v23

    move/from16 v19, p5

    move/from16 v23, v3

    move v3, v2

    move v2, v9

    goto/16 :goto_10

    :cond_1a
    const/4 v4, 0x2

    if-ne v11, v4, :cond_1e

    .line 33
    invoke-virtual {v12}, Lu/d;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v4, v5, :cond_1c

    invoke-virtual {v12}, Lu/d;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v4

    if-ne v4, v8, :cond_1b

    goto :goto_d

    .line 34
    :cond_1b
    iget-object v4, v0, Lu/e;->U:Lu/e;

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object v4

    invoke-virtual {v1, v4}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    move-result-object v4

    .line 35
    iget-object v5, v0, Lu/e;->U:Lu/e;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v8}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object v5

    invoke-virtual {v1, v5}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    move-result-object v5

    :goto_c
    move-object v8, v4

    goto :goto_e

    .line 36
    :cond_1c
    :goto_d
    iget-object v4, v0, Lu/e;->U:Lu/e;

    invoke-virtual {v4, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object v4

    invoke-virtual {v1, v4}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    move-result-object v4

    .line 37
    iget-object v5, v0, Lu/e;->U:Lu/e;

    invoke-virtual {v5, v8}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object v5

    invoke-virtual {v1, v5}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    move-result-object v5

    goto :goto_c

    .line 38
    :goto_e
    invoke-virtual {v1}, Lr/f;->createRow()Lr/c;

    move-result-object v4

    move-object/from16 p9, v7

    move-object v7, v5

    move-object/from16 v5, p9

    move/from16 p9, v2

    move v2, v9

    move-object/from16 v13, v19

    move/from16 v9, p26

    invoke-virtual/range {v4 .. v9}, Lr/c;->createRowDimensionRatio(Lr/m;Lr/m;Lr/m;Lr/m;F)Lr/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Lr/f;->addConstraint(Lr/c;)V

    if-eqz p3, :cond_1d

    const/16 v23, 0x0

    :cond_1d
    move/from16 v19, p5

    move/from16 v24, v23

    :goto_f
    move/from16 v23, v3

    move/from16 v3, p9

    goto :goto_10

    :cond_1e
    move/from16 p9, v2

    move-object v5, v7

    move v2, v9

    move-object/from16 v13, v19

    move/from16 v24, v23

    const/16 v19, 0x1

    goto :goto_f

    :goto_10
    if-eqz p27, :cond_57

    if-eqz p19, :cond_1f

    move-object/from16 v13, p7

    const/4 v3, 0x2

    const/16 v18, 0x1

    goto/16 :goto_33

    :cond_1f
    if-nez v16, :cond_21

    if-nez v17, :cond_21

    if-nez v18, :cond_21

    :cond_20
    move-object v2, v13

    const/4 v4, 0x5

    :goto_11
    move-object/from16 v13, p7

    goto/16 :goto_30

    :cond_21
    if-eqz v16, :cond_23

    if-nez v17, :cond_23

    .line 39
    iget-object v2, v12, Lu/d;->f:Lu/d;

    iget-object v2, v2, Lu/d;->d:Lu/e;

    if-eqz p3, :cond_22

    .line 40
    instance-of v2, v2, Lu/a;

    if-eqz v2, :cond_22

    const/16 v3, 0x8

    goto :goto_12

    :cond_22
    const/4 v3, 0x5

    :goto_12
    move/from16 v21, p3

    move-object v2, v13

    move-object/from16 v13, p7

    goto/16 :goto_31

    :cond_23
    if-nez v16, :cond_24

    if-eqz v17, :cond_24

    .line 41
    invoke-virtual/range {p11 .. p11}, Lu/d;->getMargin()I

    move-result v2

    neg-int v2, v2

    const/16 v3, 0x8

    invoke-virtual {v1, v5, v13, v2, v3}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    if-eqz p3, :cond_20

    const/4 v2, 0x0

    const/4 v4, 0x5

    .line 42
    invoke-virtual {v1, v6, v10, v2, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    move-object v2, v13

    goto :goto_11

    :cond_24
    const/4 v2, 0x0

    if-eqz v16, :cond_20

    if-eqz v17, :cond_20

    .line 43
    iget-object v4, v12, Lu/d;->f:Lu/d;

    iget-object v4, v4, Lu/d;->d:Lu/e;

    move-object/from16 v7, p11

    .line 44
    iget-object v8, v7, Lu/d;->f:Lu/d;

    iget-object v8, v8, Lu/d;->d:Lu/e;

    .line 45
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    move-result-object v9

    const/16 v16, 0x6

    if-eqz v24, :cond_39

    if-nez v11, :cond_29

    if-nez v3, :cond_26

    if-nez v23, :cond_26

    .line 46
    iget-boolean v3, v15, Lr/m;->n:Z

    if-eqz v3, :cond_25

    iget-boolean v3, v13, Lr/m;->n:Z

    if-eqz v3, :cond_25

    .line 47
    invoke-virtual {v12}, Lu/d;->getMargin()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v1, v6, v15, v2, v3}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 48
    invoke-virtual {v7}, Lu/d;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v5, v13, v2, v3}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    return-void

    :cond_25
    const/16 v3, 0x8

    move/from16 v17, v2

    move/from16 v21, v17

    move/from16 v22, v3

    move/from16 v25, v22

    const/16 v18, 0x1

    goto :goto_13

    :cond_26
    const/16 v3, 0x8

    move/from16 v18, v2

    const/16 v17, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x5

    const/16 v25, 0x5

    .line 49
    :goto_13
    instance-of v2, v4, Lu/a;

    if-nez v2, :cond_28

    instance-of v2, v8, Lu/a;

    if-eqz v2, :cond_27

    goto :goto_15

    :cond_27
    move-object v2, v6

    move-object v6, v13

    move/from16 v26, v16

    move/from16 v28, v22

    move/from16 v27, v25

    move-object/from16 v13, p7

    move/from16 v22, v17

    move/from16 v25, v18

    const/16 v18, 0x1

    :goto_14
    move/from16 v17, v3

    move-object v3, v15

    const/4 v15, 0x5

    goto/16 :goto_23

    :cond_28
    :goto_15
    move-object v2, v6

    move-object v6, v13

    move/from16 v26, v16

    move/from16 v25, v18

    move/from16 v28, v22

    const/16 v18, 0x1

    const/16 v27, 0x4

    move-object/from16 v13, p7

    move/from16 v22, v17

    goto :goto_14

    :cond_29
    const/4 v2, 0x2

    const/16 v17, 0x8

    if-ne v11, v2, :cond_2c

    .line 50
    instance-of v2, v4, Lu/a;

    if-nez v2, :cond_2b

    instance-of v2, v8, Lu/a;

    if-eqz v2, :cond_2a

    goto :goto_19

    :cond_2a
    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v26, v16

    const/4 v15, 0x5

    const/16 v18, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v25, 0x0

    :goto_16
    const/16 v27, 0x5

    :goto_17
    const/16 v28, 0x5

    :goto_18
    move-object/from16 v13, p7

    goto/16 :goto_23

    :cond_2b
    :goto_19
    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v26, v16

    const/4 v15, 0x5

    const/16 v18, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    :goto_1a
    const/16 v25, 0x0

    :goto_1b
    const/16 v27, 0x4

    goto :goto_17

    :cond_2c
    const/4 v2, 0x1

    if-ne v11, v2, :cond_2d

    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v26, v16

    move/from16 v28, v17

    const/4 v15, 0x5

    const/16 v18, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v25, 0x0

    const/16 v27, 0x4

    goto :goto_18

    :cond_2d
    const/4 v2, 0x3

    if-ne v11, v2, :cond_38

    .line 51
    iget v2, v0, Lu/e;->A:I

    const/4 v1, -0x1

    if-ne v2, v1, :cond_30

    if-eqz p20, :cond_2f

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v28, v17

    const/4 v15, 0x5

    const/16 v18, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v25, 0x1

    if-eqz p3, :cond_2e

    const/16 v26, 0x5

    :goto_1c
    const/16 v27, 0x5

    goto :goto_18

    :cond_2e
    const/16 v26, 0x4

    goto :goto_1c

    :cond_2f
    move-object/from16 v1, p1

    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v26, v17

    move/from16 v28, v26

    const/4 v15, 0x5

    const/16 v18, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v25, 0x1

    goto :goto_1c

    :cond_30
    if-eqz p17, :cond_33

    move/from16 v1, p23

    const/4 v2, 0x2

    if-eq v1, v2, :cond_32

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    goto :goto_1d

    :cond_31
    move/from16 v1, v17

    const/4 v3, 0x5

    goto :goto_1e

    :cond_32
    const/4 v2, 0x1

    :goto_1d
    const/4 v1, 0x5

    const/4 v3, 0x4

    :goto_1e
    move/from16 v28, v1

    move/from16 v18, v2

    move/from16 v21, v18

    move/from16 v22, v21

    move/from16 v25, v22

    move/from16 v27, v3

    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v26, v16

    const/4 v15, 0x5

    :goto_1f
    move-object/from16 v1, p1

    goto/16 :goto_18

    :cond_33
    const/4 v2, 0x1

    if-lez v3, :cond_34

    move-object/from16 v1, p1

    move/from16 v18, v2

    move/from16 v21, v18

    move/from16 v22, v21

    move/from16 v25, v22

    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v26, v16

    const/4 v15, 0x5

    goto/16 :goto_16

    :cond_34
    if-nez v3, :cond_37

    if-nez v23, :cond_37

    if-nez p20, :cond_35

    move-object/from16 v1, p1

    move/from16 v18, v2

    move/from16 v21, v18

    move/from16 v22, v21

    move/from16 v25, v22

    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v26, v16

    move/from16 v27, v17

    const/4 v15, 0x5

    goto/16 :goto_17

    :cond_35
    if-eq v4, v9, :cond_36

    if-eq v8, v9, :cond_36

    const/4 v1, 0x4

    goto :goto_20

    :cond_36
    const/4 v1, 0x5

    :goto_20
    move/from16 v28, v1

    move/from16 v18, v2

    move/from16 v21, v18

    move/from16 v22, v21

    move/from16 v25, v22

    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v26, v16

    const/4 v15, 0x5

    const/16 v27, 0x4

    goto :goto_1f

    :cond_37
    move-object/from16 v1, p1

    move/from16 v18, v2

    move/from16 v21, v18

    move/from16 v22, v21

    move/from16 v25, v22

    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v26, v16

    const/4 v15, 0x5

    goto/16 :goto_1b

    :cond_38
    move-object/from16 v1, p1

    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    move/from16 v26, v16

    const/4 v15, 0x5

    const/16 v18, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    goto/16 :goto_1a

    :cond_39
    const/4 v2, 0x1

    const/16 v17, 0x8

    .line 52
    iget-boolean v1, v15, Lr/m;->n:Z

    if-eqz v1, :cond_3b

    iget-boolean v1, v13, Lr/m;->n:Z

    if-eqz v1, :cond_3b

    .line 53
    invoke-virtual {v12}, Lu/d;->getMargin()I

    move-result v1

    .line 54
    invoke-virtual {v7}, Lu/d;->getMargin()I

    move-result v2

    const/16 v3, 0x8

    move-object/from16 p17, p1

    move/from16 p21, p16

    move/from16 p20, v1

    move/from16 p24, v2

    move/from16 p25, v3

    move-object/from16 p23, v5

    move-object/from16 p18, v6

    move-object/from16 p22, v13

    move-object/from16 p19, v15

    .line 55
    invoke-virtual/range {p17 .. p25}, Lr/f;->addCentering(Lr/m;Lr/m;IFLr/m;Lr/m;II)V

    move-object/from16 v1, p17

    move-object/from16 v6, p22

    if-eqz p3, :cond_5c

    if-eqz v19, :cond_5c

    .line 56
    iget-object v2, v7, Lu/d;->f:Lu/d;

    if-eqz v2, :cond_3a

    .line 57
    invoke-virtual {v7}, Lu/d;->getMargin()I

    move-result v3

    :goto_21
    move-object/from16 v13, p7

    goto :goto_22

    :cond_3a
    const/4 v3, 0x0

    goto :goto_21

    :goto_22
    if-eq v6, v13, :cond_5c

    const/4 v15, 0x5

    .line 58
    invoke-virtual {v1, v13, v5, v3, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    return-void

    :cond_3b
    move-object/from16 v1, p1

    move/from16 v18, v2

    move-object v2, v6

    move-object v6, v13

    move-object v3, v15

    const/4 v15, 0x5

    move-object/from16 v13, p7

    move/from16 v28, v15

    move/from16 v26, v16

    move/from16 v21, v18

    move/from16 v22, v21

    const/16 v25, 0x0

    const/16 v27, 0x4

    :goto_23
    if-eqz v21, :cond_3c

    if-ne v3, v6, :cond_3c

    if-eq v4, v9, :cond_3c

    const/16 v21, 0x0

    const/16 v29, 0x0

    goto :goto_24

    :cond_3c
    move/from16 v29, v21

    move/from16 v21, v18

    :goto_24
    if-eqz v22, :cond_3e

    if-nez v24, :cond_3d

    if-nez p18, :cond_3d

    if-nez p20, :cond_3d

    if-ne v3, v10, :cond_3d

    if-ne v6, v13, :cond_3d

    move-object/from16 v26, v9

    move/from16 v9, v17

    move/from16 v28, v9

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_25
    move-object/from16 v30, v4

    goto :goto_26

    :cond_3d
    move/from16 v22, v26

    move-object/from16 v26, v9

    move/from16 v9, v22

    move/from16 v22, v21

    move/from16 v21, p3

    goto :goto_25

    .line 59
    :goto_26
    invoke-virtual {v12}, Lu/d;->getMargin()I

    move-result v4

    move-object/from16 v31, v8

    .line 60
    invoke-virtual {v7}, Lu/d;->getMargin()I

    move-result v8

    move-object v7, v5

    move/from16 v15, v17

    move-object/from16 v34, v26

    move-object/from16 v32, v30

    move-object/from16 v33, v31

    const/16 v20, 0x4

    move/from16 v5, p16

    .line 61
    invoke-virtual/range {v1 .. v9}, Lr/f;->addCentering(Lr/m;Lr/m;IFLr/m;Lr/m;II)V

    move-object v5, v6

    move-object v6, v2

    move-object v2, v5

    move-object v5, v7

    goto :goto_27

    :cond_3e
    move-object v15, v6

    move-object v6, v2

    move-object v2, v15

    move-object/from16 v32, v4

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move/from16 v15, v17

    const/16 v20, 0x4

    move/from16 v22, v21

    move/from16 v21, p3

    .line 62
    :goto_27
    iget v4, v0, Lu/e;->h0:I

    if-ne v4, v15, :cond_3f

    invoke-virtual/range {p11 .. p11}, Lu/d;->hasDependents()Z

    move-result v4

    if-nez v4, :cond_3f

    goto/16 :goto_37

    :cond_3f
    if-eqz v29, :cond_43

    if-eqz v21, :cond_41

    if-eq v3, v2, :cond_41

    if-nez v24, :cond_41

    move-object/from16 v4, v32

    .line 63
    instance-of v7, v4, Lu/a;

    if-nez v7, :cond_40

    move-object/from16 v7, v33

    instance-of v8, v7, Lu/a;

    if-eqz v8, :cond_42

    goto :goto_28

    :cond_40
    move-object/from16 v7, v33

    :goto_28
    move/from16 v8, v16

    goto :goto_29

    :cond_41
    move-object/from16 v4, v32

    move-object/from16 v7, v33

    :cond_42
    move/from16 v8, v28

    .line 64
    :goto_29
    invoke-virtual {v12}, Lu/d;->getMargin()I

    move-result v9

    invoke-virtual {v1, v6, v3, v9, v8}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 65
    invoke-virtual/range {p11 .. p11}, Lu/d;->getMargin()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v1, v5, v2, v9, v8}, Lr/f;->addLowerThan(Lr/m;Lr/m;II)V

    move/from16 v28, v8

    goto :goto_2a

    :cond_43
    move-object/from16 v4, v32

    move-object/from16 v7, v33

    :goto_2a
    if-eqz v21, :cond_44

    if-eqz p21, :cond_44

    .line 66
    instance-of v8, v4, Lu/a;

    if-nez v8, :cond_44

    instance-of v8, v7, Lu/a;

    if-nez v8, :cond_44

    move-object/from16 v8, v34

    if-eq v7, v8, :cond_45

    move/from16 v9, v16

    move v15, v9

    move/from16 v22, v18

    goto :goto_2b

    :cond_44
    move-object/from16 v8, v34

    :cond_45
    move/from16 v9, v27

    move/from16 v15, v28

    :goto_2b
    if-eqz v22, :cond_51

    if-eqz v25, :cond_4e

    if-eqz p20, :cond_46

    if-eqz p4, :cond_4e

    :cond_46
    if-eq v4, v8, :cond_48

    if-ne v7, v8, :cond_47

    goto :goto_2c

    :cond_47
    move/from16 v16, v9

    .line 67
    :cond_48
    :goto_2c
    instance-of v12, v4, Lu/i;

    if-nez v12, :cond_49

    instance-of v12, v7, Lu/i;

    if-eqz v12, :cond_4a

    :cond_49
    const/16 v16, 0x5

    .line 68
    :cond_4a
    instance-of v12, v4, Lu/a;

    if-nez v12, :cond_4b

    instance-of v12, v7, Lu/a;

    if-eqz v12, :cond_4c

    :cond_4b
    const/16 v16, 0x5

    :cond_4c
    if-eqz p20, :cond_4d

    const/4 v12, 0x5

    goto :goto_2d

    :cond_4d
    move/from16 v12, v16

    .line 69
    :goto_2d
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_4e
    if-eqz v21, :cond_50

    .line 70
    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-eqz p17, :cond_50

    if-nez p20, :cond_50

    if-eq v4, v8, :cond_4f

    if-ne v7, v8, :cond_50

    :cond_4f
    move/from16 v9, v20

    .line 71
    :cond_50
    invoke-virtual/range {p10 .. p10}, Lu/d;->getMargin()I

    move-result v4

    invoke-virtual {v1, v6, v3, v4, v9}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 72
    invoke-virtual/range {p11 .. p11}, Lu/d;->getMargin()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v5, v2, v4, v9}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    :cond_51
    if-eqz v21, :cond_53

    if-ne v10, v3, :cond_52

    .line 73
    invoke-virtual/range {p10 .. p10}, Lu/d;->getMargin()I

    move-result v4

    goto :goto_2e

    :cond_52
    const/4 v4, 0x0

    :goto_2e
    if-eq v3, v10, :cond_53

    const/4 v15, 0x5

    .line 74
    invoke-virtual {v1, v6, v10, v4, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    :cond_53
    if-eqz v21, :cond_54

    if-eqz v24, :cond_54

    if-nez v14, :cond_54

    if-nez v23, :cond_54

    if-eqz v24, :cond_55

    const/4 v3, 0x3

    if-ne v11, v3, :cond_55

    const/4 v3, 0x0

    const/16 v15, 0x8

    .line 75
    invoke-virtual {v1, v5, v6, v3, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    :cond_54
    const/4 v4, 0x5

    goto :goto_2f

    :cond_55
    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 76
    invoke-virtual {v1, v5, v6, v3, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    :goto_2f
    move v3, v4

    goto :goto_31

    :goto_30
    move/from16 v21, p3

    goto :goto_2f

    :goto_31
    if-eqz v21, :cond_5c

    if-eqz v19, :cond_5c

    move-object/from16 v7, p11

    .line 77
    iget-object v4, v7, Lu/d;->f:Lu/d;

    if-eqz v4, :cond_56

    .line 78
    invoke-virtual {v7}, Lu/d;->getMargin()I

    move-result v4

    goto :goto_32

    :cond_56
    const/4 v4, 0x0

    :goto_32
    if-eq v2, v13, :cond_5c

    .line 79
    invoke-virtual {v1, v13, v5, v4, v3}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    return-void

    :cond_57
    move-object/from16 v13, p7

    const/16 v18, 0x1

    const/4 v3, 0x2

    :goto_33
    if-ge v2, v3, :cond_5c

    if-eqz p3, :cond_5c

    if-eqz v19, :cond_5c

    const/4 v2, 0x0

    const/16 v15, 0x8

    .line 80
    invoke-virtual {v1, v6, v10, v2, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 81
    iget-object v2, v0, Lu/e;->M:Lu/d;

    if-nez p2, :cond_59

    iget-object v3, v2, Lu/d;->f:Lu/d;

    if-nez v3, :cond_58

    goto :goto_34

    :cond_58
    const/4 v3, 0x0

    goto :goto_35

    :cond_59
    :goto_34
    move/from16 v3, v18

    :goto_35
    if-nez p2, :cond_5b

    .line 82
    iget-object v2, v2, Lu/d;->f:Lu/d;

    if-eqz v2, :cond_5b

    .line 83
    iget-object v2, v2, Lu/d;->d:Lu/e;

    iget v3, v2, Lu/e;->X:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5a

    iget-object v2, v2, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v17, 0x0

    aget-object v3, v2, v17

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_5a

    aget-object v2, v2, v18

    if-ne v2, v4, :cond_5a

    move/from16 v3, v18

    goto :goto_36

    :cond_5a
    const/4 v3, 0x0

    :cond_5b
    :goto_36
    if-eqz v3, :cond_5c

    const/4 v2, 0x0

    const/16 v15, 0x8

    .line 84
    invoke-virtual {v1, v13, v5, v2, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    :cond_5c
    :goto_37
    return-void
.end method

.method public addChildrenToSolverByDependency(Lu/f;Lr/f;Ljava/util/HashSet;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/f;",
            "Lr/f;",
            "Ljava/util/HashSet<",
            "Lu/e;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    if-eqz p5, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    invoke-static {p1, p2, p0}, Lu/l;->a(Lu/f;Lr/f;Lu/e;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x40

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lu/f;->optimizeFor(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, p2, v0}, Lu/e;->addToSolver(Lr/f;Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    if-nez p4, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lu/d;

    .line 51
    .line 52
    iget-object v1, v1, Lu/d;->d:Lu/e;

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    move-object v2, p1

    .line 56
    move-object v3, p2

    .line 57
    move-object v4, p3

    .line 58
    move v5, p4

    .line 59
    invoke-virtual/range {v1 .. v6}, Lu/e;->addChildrenToSolverByDependency(Lu/f;Lr/f;Ljava/util/HashSet;IZ)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lu/e;->K:Lu/d;

    .line 64
    .line 65
    invoke-virtual {v0}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lu/d;

    .line 86
    .line 87
    iget-object v1, v1, Lu/d;->d:Lu/e;

    .line 88
    .line 89
    const/4 v6, 0x1

    .line 90
    move-object v2, p1

    .line 91
    move-object v3, p2

    .line 92
    move-object v4, p3

    .line 93
    move v5, p4

    .line 94
    invoke-virtual/range {v1 .. v6}, Lu/e;->addChildrenToSolverByDependency(Lu/f;Lr/f;Ljava/util/HashSet;IZ)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 99
    .line 100
    invoke-virtual {v0}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lu/d;

    .line 121
    .line 122
    iget-object v1, v1, Lu/d;->d:Lu/e;

    .line 123
    .line 124
    const/4 v6, 0x1

    .line 125
    move-object v2, p1

    .line 126
    move-object v3, p2

    .line 127
    move-object v4, p3

    .line 128
    move v5, p4

    .line 129
    invoke-virtual/range {v1 .. v6}, Lu/e;->addChildrenToSolverByDependency(Lu/f;Lr/f;Ljava/util/HashSet;IZ)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    iget-object v0, p0, Lu/e;->L:Lu/d;

    .line 134
    .line 135
    invoke-virtual {v0}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_5

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Lu/d;

    .line 156
    .line 157
    iget-object v1, v1, Lu/d;->d:Lu/e;

    .line 158
    .line 159
    const/4 v6, 0x1

    .line 160
    move-object v2, p1

    .line 161
    move-object v3, p2

    .line 162
    move-object v4, p3

    .line 163
    move v5, p4

    .line 164
    invoke-virtual/range {v1 .. v6}, Lu/e;->addChildrenToSolverByDependency(Lu/f;Lr/f;Ljava/util/HashSet;IZ)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    iget-object v0, p0, Lu/e;->M:Lu/d;

    .line 169
    .line 170
    invoke-virtual {v0}, Lu/d;->getDependents()Ljava/util/HashSet;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_6

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Lu/d;

    .line 191
    .line 192
    iget-object v1, v1, Lu/d;->d:Lu/e;

    .line 193
    .line 194
    const/4 v6, 0x1

    .line 195
    move-object v2, p1

    .line 196
    move-object v3, p2

    .line 197
    move-object v4, p3

    .line 198
    move v5, p4

    .line 199
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lu/e;->addChildrenToSolverByDependency(Lu/f;Lr/f;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    throw v0

    .line 205
    :cond_6
    :goto_5
    return-void
.end method

.method public addToSolver(Lr/f;Z)V
    .locals 56

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lu/e;->I:Lu/d;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, v0, Lu/e;->K:Lu/d;

    .line 12
    .line 13
    invoke-virtual {v1, v4}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget-object v6, v0, Lu/e;->J:Lu/d;

    .line 18
    .line 19
    invoke-virtual {v1, v6}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    iget-object v8, v0, Lu/e;->L:Lu/d;

    .line 24
    .line 25
    invoke-virtual {v1, v8}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    iget-object v10, v0, Lu/e;->M:Lu/d;

    .line 30
    .line 31
    invoke-virtual {v1, v10}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    iget-object v12, v0, Lu/e;->U:Lu/e;

    .line 36
    .line 37
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 38
    .line 39
    const/4 v15, 0x1

    .line 40
    if-eqz v12, :cond_5

    .line 41
    .line 42
    iget-object v12, v12, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 43
    .line 44
    const/16 v18, 0x0

    .line 45
    .line 46
    aget-object v14, v12, v18

    .line 47
    .line 48
    if-ne v14, v13, :cond_0

    .line 49
    .line 50
    move v14, v15

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move/from16 v14, v18

    .line 53
    .line 54
    :goto_0
    aget-object v12, v12, v15

    .line 55
    .line 56
    if-ne v12, v13, :cond_1

    .line 57
    .line 58
    move v12, v15

    .line 59
    :goto_1
    move-object/from16 v19, v10

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    move/from16 v12, v18

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_2
    iget v10, v0, Lu/e;->q:I

    .line 66
    .line 67
    if-eq v10, v15, :cond_4

    .line 68
    .line 69
    move/from16 v20, v15

    .line 70
    .line 71
    const/4 v15, 0x2

    .line 72
    if-eq v10, v15, :cond_3

    .line 73
    .line 74
    const/4 v15, 0x3

    .line 75
    if-eq v10, v15, :cond_2

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_2
    :goto_3
    move/from16 v12, v18

    .line 79
    .line 80
    move v14, v12

    .line 81
    goto :goto_4

    .line 82
    :cond_3
    move/from16 v14, v18

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    move/from16 v20, v15

    .line 86
    .line 87
    move/from16 v12, v18

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_5
    move-object/from16 v19, v10

    .line 91
    .line 92
    move/from16 v20, v15

    .line 93
    .line 94
    const/16 v18, 0x0

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :goto_4
    iget v10, v0, Lu/e;->h0:I

    .line 98
    .line 99
    iget-object v15, v0, Lu/e;->S:[Z

    .line 100
    .line 101
    move-object/from16 v21, v15

    .line 102
    .line 103
    const/16 v15, 0x8

    .line 104
    .line 105
    if-ne v10, v15, :cond_6

    .line 106
    .line 107
    invoke-virtual {v0}, Lu/e;->hasDependencies()Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-nez v10, :cond_6

    .line 112
    .line 113
    aget-boolean v10, v21, v18

    .line 114
    .line 115
    if-nez v10, :cond_6

    .line 116
    .line 117
    aget-boolean v10, v21, v20

    .line 118
    .line 119
    if-nez v10, :cond_6

    .line 120
    .line 121
    return-void

    .line 122
    :cond_6
    iget-boolean v10, v0, Lu/e;->k:Z

    .line 123
    .line 124
    if-nez v10, :cond_8

    .line 125
    .line 126
    iget-boolean v15, v0, Lu/e;->l:Z

    .line 127
    .line 128
    if-eqz v15, :cond_7

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_7
    move-object/from16 v23, v13

    .line 132
    .line 133
    goto/16 :goto_8

    .line 134
    .line 135
    :cond_8
    :goto_5
    if-eqz v10, :cond_9

    .line 136
    .line 137
    iget v10, v0, Lu/e;->Z:I

    .line 138
    .line 139
    invoke-virtual {v1, v3, v10}, Lr/f;->addEquality(Lr/m;I)V

    .line 140
    .line 141
    .line 142
    iget v10, v0, Lu/e;->Z:I

    .line 143
    .line 144
    iget v15, v0, Lu/e;->V:I

    .line 145
    .line 146
    add-int/2addr v10, v15

    .line 147
    invoke-virtual {v1, v5, v10}, Lr/f;->addEquality(Lr/m;I)V

    .line 148
    .line 149
    .line 150
    if-eqz v14, :cond_9

    .line 151
    .line 152
    iget-object v10, v0, Lu/e;->U:Lu/e;

    .line 153
    .line 154
    if-eqz v10, :cond_9

    .line 155
    .line 156
    check-cast v10, Lu/f;

    .line 157
    .line 158
    invoke-virtual {v10, v2}, Lu/f;->addHorizontalWrapMinVariable(Lu/d;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v4}, Lu/f;->addHorizontalWrapMaxVariable(Lu/d;)V

    .line 162
    .line 163
    .line 164
    :cond_9
    iget-boolean v10, v0, Lu/e;->l:Z

    .line 165
    .line 166
    if-eqz v10, :cond_e

    .line 167
    .line 168
    iget v10, v0, Lu/e;->a0:I

    .line 169
    .line 170
    invoke-virtual {v1, v7, v10}, Lr/f;->addEquality(Lr/m;I)V

    .line 171
    .line 172
    .line 173
    iget v10, v0, Lu/e;->a0:I

    .line 174
    .line 175
    iget v15, v0, Lu/e;->W:I

    .line 176
    .line 177
    add-int/2addr v10, v15

    .line 178
    invoke-virtual {v1, v9, v10}, Lr/f;->addEquality(Lr/m;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {v19 .. v19}, Lu/d;->hasDependents()Z

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-eqz v10, :cond_a

    .line 186
    .line 187
    iget v10, v0, Lu/e;->a0:I

    .line 188
    .line 189
    iget v15, v0, Lu/e;->b0:I

    .line 190
    .line 191
    add-int/2addr v10, v15

    .line 192
    invoke-virtual {v1, v11, v10}, Lr/f;->addEquality(Lr/m;I)V

    .line 193
    .line 194
    .line 195
    :cond_a
    if-eqz v12, :cond_e

    .line 196
    .line 197
    iget-object v10, v0, Lu/e;->U:Lu/e;

    .line 198
    .line 199
    if-eqz v10, :cond_e

    .line 200
    .line 201
    check-cast v10, Lu/f;

    .line 202
    .line 203
    iget-object v15, v10, Lu/f;->G0:Ljava/lang/ref/WeakReference;

    .line 204
    .line 205
    if-eqz v15, :cond_b

    .line 206
    .line 207
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v15

    .line 211
    if-eqz v15, :cond_b

    .line 212
    .line 213
    invoke-virtual {v6}, Lu/d;->getFinalValue()I

    .line 214
    .line 215
    .line 216
    move-result v15

    .line 217
    move-object/from16 v23, v13

    .line 218
    .line 219
    iget-object v13, v10, Lu/f;->G0:Ljava/lang/ref/WeakReference;

    .line 220
    .line 221
    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v13

    .line 225
    check-cast v13, Lu/d;

    .line 226
    .line 227
    invoke-virtual {v13}, Lu/d;->getFinalValue()I

    .line 228
    .line 229
    .line 230
    move-result v13

    .line 231
    if-le v15, v13, :cond_c

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_b
    move-object/from16 v23, v13

    .line 235
    .line 236
    :goto_6
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 237
    .line 238
    invoke-direct {v13, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    iput-object v13, v10, Lu/f;->G0:Ljava/lang/ref/WeakReference;

    .line 242
    .line 243
    :cond_c
    iget-object v13, v10, Lu/f;->I0:Ljava/lang/ref/WeakReference;

    .line 244
    .line 245
    if-eqz v13, :cond_d

    .line 246
    .line 247
    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    if-eqz v13, :cond_d

    .line 252
    .line 253
    invoke-virtual {v8}, Lu/d;->getFinalValue()I

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    iget-object v15, v10, Lu/f;->I0:Ljava/lang/ref/WeakReference;

    .line 258
    .line 259
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v15

    .line 263
    check-cast v15, Lu/d;

    .line 264
    .line 265
    invoke-virtual {v15}, Lu/d;->getFinalValue()I

    .line 266
    .line 267
    .line 268
    move-result v15

    .line 269
    if-le v13, v15, :cond_f

    .line 270
    .line 271
    :cond_d
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 272
    .line 273
    invoke-direct {v13, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    iput-object v13, v10, Lu/f;->I0:Ljava/lang/ref/WeakReference;

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_e
    move-object/from16 v23, v13

    .line 280
    .line 281
    :cond_f
    :goto_7
    iget-boolean v10, v0, Lu/e;->k:Z

    .line 282
    .line 283
    if-eqz v10, :cond_10

    .line 284
    .line 285
    iget-boolean v10, v0, Lu/e;->l:Z

    .line 286
    .line 287
    if-eqz v10, :cond_10

    .line 288
    .line 289
    move/from16 v10, v18

    .line 290
    .line 291
    iput-boolean v10, v0, Lu/e;->k:Z

    .line 292
    .line 293
    iput-boolean v10, v0, Lu/e;->l:Z

    .line 294
    .line 295
    return-void

    .line 296
    :cond_10
    :goto_8
    iget-object v10, v0, Lu/e;->f:[Z

    .line 297
    .line 298
    if-eqz p2, :cond_14

    .line 299
    .line 300
    iget-object v13, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 301
    .line 302
    if-eqz v13, :cond_14

    .line 303
    .line 304
    iget-object v15, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 305
    .line 306
    if-eqz v15, :cond_14

    .line 307
    .line 308
    move-object/from16 v24, v10

    .line 309
    .line 310
    iget-object v10, v13, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 311
    .line 312
    move/from16 v25, v12

    .line 313
    .line 314
    iget-boolean v12, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 315
    .line 316
    if-eqz v12, :cond_13

    .line 317
    .line 318
    iget-object v12, v13, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 319
    .line 320
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 321
    .line 322
    if-eqz v12, :cond_13

    .line 323
    .line 324
    iget-object v12, v15, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 325
    .line 326
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 327
    .line 328
    if-eqz v12, :cond_13

    .line 329
    .line 330
    iget-object v12, v15, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 331
    .line 332
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 333
    .line 334
    if-eqz v12, :cond_13

    .line 335
    .line 336
    iget v2, v10, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 337
    .line 338
    invoke-virtual {v1, v3, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 339
    .line 340
    .line 341
    iget-object v2, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 342
    .line 343
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 344
    .line 345
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 346
    .line 347
    invoke-virtual {v1, v5, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 348
    .line 349
    .line 350
    iget-object v2, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 351
    .line 352
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 353
    .line 354
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 355
    .line 356
    invoke-virtual {v1, v7, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 357
    .line 358
    .line 359
    iget-object v2, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 360
    .line 361
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 362
    .line 363
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 364
    .line 365
    invoke-virtual {v1, v9, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 366
    .line 367
    .line 368
    iget-object v2, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 369
    .line 370
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 371
    .line 372
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 373
    .line 374
    invoke-virtual {v1, v11, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 375
    .line 376
    .line 377
    iget-object v2, v0, Lu/e;->U:Lu/e;

    .line 378
    .line 379
    if-eqz v2, :cond_12

    .line 380
    .line 381
    if-eqz v14, :cond_11

    .line 382
    .line 383
    const/4 v10, 0x0

    .line 384
    aget-boolean v2, v24, v10

    .line 385
    .line 386
    if-eqz v2, :cond_11

    .line 387
    .line 388
    invoke-virtual {v0}, Lu/e;->isInHorizontalChain()Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-nez v2, :cond_11

    .line 393
    .line 394
    iget-object v2, v0, Lu/e;->U:Lu/e;

    .line 395
    .line 396
    iget-object v2, v2, Lu/e;->K:Lu/d;

    .line 397
    .line 398
    invoke-virtual {v1, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    const/16 v3, 0x8

    .line 403
    .line 404
    invoke-virtual {v1, v2, v5, v10, v3}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 405
    .line 406
    .line 407
    :cond_11
    if-eqz v25, :cond_12

    .line 408
    .line 409
    aget-boolean v2, v24, v20

    .line 410
    .line 411
    if-eqz v2, :cond_12

    .line 412
    .line 413
    invoke-virtual {v0}, Lu/e;->isInVerticalChain()Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-nez v2, :cond_12

    .line 418
    .line 419
    iget-object v2, v0, Lu/e;->U:Lu/e;

    .line 420
    .line 421
    iget-object v2, v2, Lu/e;->L:Lu/d;

    .line 422
    .line 423
    invoke-virtual {v1, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    const/16 v3, 0x8

    .line 428
    .line 429
    const/4 v10, 0x0

    .line 430
    invoke-virtual {v1, v2, v9, v10, v3}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 431
    .line 432
    .line 433
    goto :goto_9

    .line 434
    :cond_12
    const/4 v10, 0x0

    .line 435
    :goto_9
    iput-boolean v10, v0, Lu/e;->k:Z

    .line 436
    .line 437
    iput-boolean v10, v0, Lu/e;->l:Z

    .line 438
    .line 439
    return-void

    .line 440
    :cond_13
    :goto_a
    const/4 v10, 0x0

    .line 441
    goto :goto_b

    .line 442
    :cond_14
    move-object/from16 v24, v10

    .line 443
    .line 444
    move/from16 v25, v12

    .line 445
    .line 446
    goto :goto_a

    .line 447
    :goto_b
    iget-object v12, v0, Lu/e;->U:Lu/e;

    .line 448
    .line 449
    if-eqz v12, :cond_18

    .line 450
    .line 451
    invoke-virtual {v0, v10}, Lu/e;->d(I)Z

    .line 452
    .line 453
    .line 454
    move-result v12

    .line 455
    if-eqz v12, :cond_15

    .line 456
    .line 457
    iget-object v12, v0, Lu/e;->U:Lu/e;

    .line 458
    .line 459
    check-cast v12, Lu/f;

    .line 460
    .line 461
    invoke-virtual {v12, v0, v10}, Lu/f;->g(Lu/e;I)V

    .line 462
    .line 463
    .line 464
    move/from16 v10, v20

    .line 465
    .line 466
    move v12, v10

    .line 467
    goto :goto_c

    .line 468
    :cond_15
    invoke-virtual {v0}, Lu/e;->isInHorizontalChain()Z

    .line 469
    .line 470
    .line 471
    move-result v10

    .line 472
    move/from16 v12, v20

    .line 473
    .line 474
    :goto_c
    invoke-virtual {v0, v12}, Lu/e;->d(I)Z

    .line 475
    .line 476
    .line 477
    move-result v13

    .line 478
    if-eqz v13, :cond_16

    .line 479
    .line 480
    iget-object v13, v0, Lu/e;->U:Lu/e;

    .line 481
    .line 482
    check-cast v13, Lu/f;

    .line 483
    .line 484
    invoke-virtual {v13, v0, v12}, Lu/f;->g(Lu/e;I)V

    .line 485
    .line 486
    .line 487
    const/4 v12, 0x1

    .line 488
    goto :goto_d

    .line 489
    :cond_16
    invoke-virtual {v0}, Lu/e;->isInVerticalChain()Z

    .line 490
    .line 491
    .line 492
    move-result v12

    .line 493
    :goto_d
    if-nez v10, :cond_17

    .line 494
    .line 495
    if-eqz v14, :cond_17

    .line 496
    .line 497
    iget v13, v0, Lu/e;->h0:I

    .line 498
    .line 499
    const/16 v15, 0x8

    .line 500
    .line 501
    if-eq v13, v15, :cond_17

    .line 502
    .line 503
    iget-object v2, v2, Lu/d;->f:Lu/d;

    .line 504
    .line 505
    if-nez v2, :cond_17

    .line 506
    .line 507
    iget-object v2, v4, Lu/d;->f:Lu/d;

    .line 508
    .line 509
    if-nez v2, :cond_17

    .line 510
    .line 511
    iget-object v2, v0, Lu/e;->U:Lu/e;

    .line 512
    .line 513
    iget-object v2, v2, Lu/e;->K:Lu/d;

    .line 514
    .line 515
    invoke-virtual {v1, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    const/4 v4, 0x1

    .line 520
    const/4 v13, 0x0

    .line 521
    invoke-virtual {v1, v2, v5, v13, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 522
    .line 523
    .line 524
    :cond_17
    if-nez v12, :cond_19

    .line 525
    .line 526
    if-eqz v25, :cond_19

    .line 527
    .line 528
    iget v2, v0, Lu/e;->h0:I

    .line 529
    .line 530
    const/16 v15, 0x8

    .line 531
    .line 532
    if-eq v2, v15, :cond_19

    .line 533
    .line 534
    iget-object v2, v6, Lu/d;->f:Lu/d;

    .line 535
    .line 536
    if-nez v2, :cond_19

    .line 537
    .line 538
    iget-object v2, v8, Lu/d;->f:Lu/d;

    .line 539
    .line 540
    if-nez v2, :cond_19

    .line 541
    .line 542
    if-nez v19, :cond_19

    .line 543
    .line 544
    iget-object v2, v0, Lu/e;->U:Lu/e;

    .line 545
    .line 546
    iget-object v2, v2, Lu/e;->L:Lu/d;

    .line 547
    .line 548
    invoke-virtual {v1, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    const/4 v4, 0x1

    .line 553
    const/4 v13, 0x0

    .line 554
    invoke-virtual {v1, v2, v9, v13, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 555
    .line 556
    .line 557
    goto :goto_e

    .line 558
    :cond_18
    const/4 v10, 0x0

    .line 559
    const/4 v12, 0x0

    .line 560
    :cond_19
    :goto_e
    iget v2, v0, Lu/e;->V:I

    .line 561
    .line 562
    iget v4, v0, Lu/e;->c0:I

    .line 563
    .line 564
    if-ge v2, v4, :cond_1a

    .line 565
    .line 566
    goto :goto_f

    .line 567
    :cond_1a
    move v4, v2

    .line 568
    :goto_f
    iget v6, v0, Lu/e;->W:I

    .line 569
    .line 570
    iget v13, v0, Lu/e;->d0:I

    .line 571
    .line 572
    if-ge v6, v13, :cond_1b

    .line 573
    .line 574
    goto :goto_10

    .line 575
    :cond_1b
    move v13, v6

    .line 576
    :goto_10
    iget-object v15, v0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 577
    .line 578
    move/from16 v26, v4

    .line 579
    .line 580
    const/16 v18, 0x0

    .line 581
    .line 582
    aget-object v4, v15, v18

    .line 583
    .line 584
    move-object/from16 v27, v7

    .line 585
    .line 586
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 587
    .line 588
    move-object/from16 v28, v8

    .line 589
    .line 590
    if-eq v4, v7, :cond_1c

    .line 591
    .line 592
    const/4 v8, 0x1

    .line 593
    :goto_11
    move-object/from16 v29, v9

    .line 594
    .line 595
    const/16 v20, 0x1

    .line 596
    .line 597
    goto :goto_12

    .line 598
    :cond_1c
    const/4 v8, 0x0

    .line 599
    goto :goto_11

    .line 600
    :goto_12
    aget-object v9, v15, v20

    .line 601
    .line 602
    move/from16 v30, v10

    .line 603
    .line 604
    if-eq v9, v7, :cond_1d

    .line 605
    .line 606
    const/4 v10, 0x1

    .line 607
    :goto_13
    move-object/from16 v31, v11

    .line 608
    .line 609
    goto :goto_14

    .line 610
    :cond_1d
    const/4 v10, 0x0

    .line 611
    goto :goto_13

    .line 612
    :goto_14
    iget v11, v0, Lu/e;->Y:I

    .line 613
    .line 614
    iput v11, v0, Lu/e;->A:I

    .line 615
    .line 616
    move/from16 v32, v12

    .line 617
    .line 618
    iget v12, v0, Lu/e;->X:F

    .line 619
    .line 620
    iput v12, v0, Lu/e;->B:F

    .line 621
    .line 622
    move/from16 v33, v12

    .line 623
    .line 624
    iget v12, v0, Lu/e;->r:I

    .line 625
    .line 626
    move/from16 v34, v12

    .line 627
    .line 628
    iget v12, v0, Lu/e;->s:I

    .line 629
    .line 630
    const/16 v35, 0x0

    .line 631
    .line 632
    cmpl-float v35, v33, v35

    .line 633
    .line 634
    move/from16 v36, v12

    .line 635
    .line 636
    if-lez v35, :cond_27

    .line 637
    .line 638
    iget v12, v0, Lu/e;->h0:I

    .line 639
    .line 640
    move/from16 v37, v13

    .line 641
    .line 642
    const/16 v13, 0x8

    .line 643
    .line 644
    if-eq v12, v13, :cond_26

    .line 645
    .line 646
    if-ne v4, v7, :cond_1e

    .line 647
    .line 648
    if-nez v34, :cond_1e

    .line 649
    .line 650
    const/4 v12, 0x3

    .line 651
    goto :goto_15

    .line 652
    :cond_1e
    move/from16 v12, v34

    .line 653
    .line 654
    :goto_15
    if-ne v9, v7, :cond_1f

    .line 655
    .line 656
    if-nez v36, :cond_1f

    .line 657
    .line 658
    const/4 v13, 0x3

    .line 659
    goto :goto_16

    .line 660
    :cond_1f
    move/from16 v13, v36

    .line 661
    .line 662
    :goto_16
    if-ne v4, v7, :cond_21

    .line 663
    .line 664
    if-ne v9, v7, :cond_21

    .line 665
    .line 666
    move-object/from16 v38, v15

    .line 667
    .line 668
    const/4 v15, 0x3

    .line 669
    if-ne v12, v15, :cond_20

    .line 670
    .line 671
    if-ne v13, v15, :cond_20

    .line 672
    .line 673
    move/from16 v15, v25

    .line 674
    .line 675
    invoke-virtual {v0, v14, v15, v8, v10}, Lu/e;->setupDimensionRatio(ZZZZ)V

    .line 676
    .line 677
    .line 678
    goto :goto_1c

    .line 679
    :cond_20
    :goto_17
    move/from16 v15, v25

    .line 680
    .line 681
    goto :goto_18

    .line 682
    :cond_21
    move-object/from16 v38, v15

    .line 683
    .line 684
    goto :goto_17

    .line 685
    :goto_18
    const/4 v10, 0x3

    .line 686
    if-ne v4, v7, :cond_23

    .line 687
    .line 688
    if-ne v12, v10, :cond_23

    .line 689
    .line 690
    const/4 v8, 0x0

    .line 691
    iput v8, v0, Lu/e;->A:I

    .line 692
    .line 693
    int-to-float v2, v6

    .line 694
    mul-float v2, v2, v33

    .line 695
    .line 696
    float-to-int v2, v2

    .line 697
    move/from16 v26, v2

    .line 698
    .line 699
    move-object/from16 v2, v23

    .line 700
    .line 701
    if-eq v9, v7, :cond_22

    .line 702
    .line 703
    const/4 v12, 0x4

    .line 704
    const/16 v33, 0x0

    .line 705
    .line 706
    :goto_19
    move/from16 v23, v13

    .line 707
    .line 708
    goto :goto_1f

    .line 709
    :cond_22
    :goto_1a
    const/16 v33, 0x1

    .line 710
    .line 711
    goto :goto_19

    .line 712
    :cond_23
    if-ne v9, v7, :cond_25

    .line 713
    .line 714
    if-ne v13, v10, :cond_25

    .line 715
    .line 716
    const/4 v6, 0x1

    .line 717
    iput v6, v0, Lu/e;->A:I

    .line 718
    .line 719
    const/4 v6, -0x1

    .line 720
    if-ne v11, v6, :cond_24

    .line 721
    .line 722
    const/high16 v6, 0x3f800000    # 1.0f

    .line 723
    .line 724
    div-float v6, v6, v33

    .line 725
    .line 726
    iput v6, v0, Lu/e;->B:F

    .line 727
    .line 728
    :cond_24
    iget v6, v0, Lu/e;->B:F

    .line 729
    .line 730
    int-to-float v2, v2

    .line 731
    mul-float/2addr v6, v2

    .line 732
    float-to-int v2, v6

    .line 733
    move/from16 v37, v2

    .line 734
    .line 735
    move-object/from16 v2, v23

    .line 736
    .line 737
    if-eq v4, v7, :cond_22

    .line 738
    .line 739
    const/16 v23, 0x4

    .line 740
    .line 741
    :goto_1b
    const/16 v33, 0x0

    .line 742
    .line 743
    goto :goto_1f

    .line 744
    :cond_25
    :goto_1c
    move-object/from16 v2, v23

    .line 745
    .line 746
    goto :goto_1a

    .line 747
    :cond_26
    :goto_1d
    move-object/from16 v38, v15

    .line 748
    .line 749
    move/from16 v15, v25

    .line 750
    .line 751
    goto :goto_1e

    .line 752
    :cond_27
    move/from16 v37, v13

    .line 753
    .line 754
    goto :goto_1d

    .line 755
    :goto_1e
    move-object/from16 v2, v23

    .line 756
    .line 757
    move/from16 v12, v34

    .line 758
    .line 759
    move/from16 v23, v36

    .line 760
    .line 761
    goto :goto_1b

    .line 762
    :goto_1f
    iget-object v4, v0, Lu/e;->t:[I

    .line 763
    .line 764
    const/16 v18, 0x0

    .line 765
    .line 766
    aput v12, v4, v18

    .line 767
    .line 768
    const/16 v20, 0x1

    .line 769
    .line 770
    aput v23, v4, v20

    .line 771
    .line 772
    if-eqz v33, :cond_29

    .line 773
    .line 774
    iget v4, v0, Lu/e;->A:I

    .line 775
    .line 776
    const/4 v6, -0x1

    .line 777
    if-eqz v4, :cond_28

    .line 778
    .line 779
    if-ne v4, v6, :cond_2a

    .line 780
    .line 781
    :cond_28
    const/4 v10, 0x1

    .line 782
    goto :goto_20

    .line 783
    :cond_29
    const/4 v6, -0x1

    .line 784
    :cond_2a
    const/4 v10, 0x0

    .line 785
    :goto_20
    if-eqz v33, :cond_2c

    .line 786
    .line 787
    iget v4, v0, Lu/e;->A:I

    .line 788
    .line 789
    const/4 v8, 0x1

    .line 790
    if-eq v4, v8, :cond_2b

    .line 791
    .line 792
    if-ne v4, v6, :cond_2c

    .line 793
    .line 794
    :cond_2b
    const/16 v34, 0x1

    .line 795
    .line 796
    :goto_21
    const/16 v18, 0x0

    .line 797
    .line 798
    goto :goto_22

    .line 799
    :cond_2c
    const/16 v34, 0x0

    .line 800
    .line 801
    goto :goto_21

    .line 802
    :goto_22
    aget-object v4, v38, v18

    .line 803
    .line 804
    if-ne v4, v2, :cond_2d

    .line 805
    .line 806
    instance-of v4, v0, Lu/f;

    .line 807
    .line 808
    if-eqz v4, :cond_2d

    .line 809
    .line 810
    const/4 v9, 0x1

    .line 811
    goto :goto_23

    .line 812
    :cond_2d
    const/4 v9, 0x0

    .line 813
    :goto_23
    if-eqz v9, :cond_2e

    .line 814
    .line 815
    const/4 v13, 0x0

    .line 816
    goto :goto_24

    .line 817
    :cond_2e
    move/from16 v13, v26

    .line 818
    .line 819
    :goto_24
    iget-object v4, v0, Lu/e;->P:Lu/d;

    .line 820
    .line 821
    invoke-virtual {v4}, Lu/d;->isConnected()Z

    .line 822
    .line 823
    .line 824
    move-result v6

    .line 825
    const/16 v20, 0x1

    .line 826
    .line 827
    xor-int/lit8 v6, v6, 0x1

    .line 828
    .line 829
    move-object/from16 v8, v21

    .line 830
    .line 831
    const/16 v18, 0x0

    .line 832
    .line 833
    aget-boolean v21, v8, v18

    .line 834
    .line 835
    aget-boolean v35, v8, v20

    .line 836
    .line 837
    iget v8, v0, Lu/e;->o:I

    .line 838
    .line 839
    iget-object v11, v0, Lu/e;->C:[I

    .line 840
    .line 841
    const/16 v36, 0x0

    .line 842
    .line 843
    move-object/from16 v16, v2

    .line 844
    .line 845
    const/4 v2, 0x2

    .line 846
    if-eq v8, v2, :cond_36

    .line 847
    .line 848
    iget-boolean v8, v0, Lu/e;->k:Z

    .line 849
    .line 850
    if-nez v8, :cond_36

    .line 851
    .line 852
    if-eqz p2, :cond_32

    .line 853
    .line 854
    iget-object v8, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 855
    .line 856
    if-eqz v8, :cond_32

    .line 857
    .line 858
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 859
    .line 860
    move-object/from16 v25, v4

    .line 861
    .line 862
    iget-boolean v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 863
    .line 864
    if-eqz v4, :cond_2f

    .line 865
    .line 866
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 867
    .line 868
    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 869
    .line 870
    if-nez v4, :cond_30

    .line 871
    .line 872
    :cond_2f
    :goto_25
    const/16 v4, 0x8

    .line 873
    .line 874
    goto :goto_26

    .line 875
    :cond_30
    if-eqz p2, :cond_31

    .line 876
    .line 877
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 878
    .line 879
    invoke-virtual {v1, v3, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 880
    .line 881
    .line 882
    iget-object v2, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 883
    .line 884
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 885
    .line 886
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 887
    .line 888
    invoke-virtual {v1, v5, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 889
    .line 890
    .line 891
    iget-object v2, v0, Lu/e;->U:Lu/e;

    .line 892
    .line 893
    if-eqz v2, :cond_31

    .line 894
    .line 895
    if-eqz v14, :cond_31

    .line 896
    .line 897
    const/4 v10, 0x0

    .line 898
    aget-boolean v2, v24, v10

    .line 899
    .line 900
    if-eqz v2, :cond_31

    .line 901
    .line 902
    invoke-virtual {v0}, Lu/e;->isInHorizontalChain()Z

    .line 903
    .line 904
    .line 905
    move-result v2

    .line 906
    if-nez v2, :cond_31

    .line 907
    .line 908
    iget-object v2, v0, Lu/e;->U:Lu/e;

    .line 909
    .line 910
    iget-object v2, v2, Lu/e;->K:Lu/d;

    .line 911
    .line 912
    invoke-virtual {v1, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 913
    .line 914
    .line 915
    move-result-object v2

    .line 916
    const/16 v4, 0x8

    .line 917
    .line 918
    invoke-virtual {v1, v2, v5, v10, v4}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 919
    .line 920
    .line 921
    :cond_31
    move-object/from16 v40, v3

    .line 922
    .line 923
    move-object/from16 v39, v5

    .line 924
    .line 925
    move-object/from16 v55, v7

    .line 926
    .line 927
    move-object/from16 v46, v11

    .line 928
    .line 929
    move/from16 v22, v12

    .line 930
    .line 931
    move v3, v14

    .line 932
    move v4, v15

    .line 933
    move-object/from16 v54, v16

    .line 934
    .line 935
    move-object/from16 v52, v19

    .line 936
    .line 937
    move-object/from16 v49, v27

    .line 938
    .line 939
    move-object/from16 v50, v28

    .line 940
    .line 941
    move-object/from16 v51, v29

    .line 942
    .line 943
    move-object/from16 v53, v31

    .line 944
    .line 945
    move/from16 v27, v6

    .line 946
    .line 947
    move-object/from16 v28, v24

    .line 948
    .line 949
    move-object/from16 v29, v25

    .line 950
    .line 951
    goto/16 :goto_2a

    .line 952
    .line 953
    :cond_32
    move-object/from16 v25, v4

    .line 954
    .line 955
    goto :goto_25

    .line 956
    :goto_26
    iget-object v2, v0, Lu/e;->U:Lu/e;

    .line 957
    .line 958
    if-eqz v2, :cond_33

    .line 959
    .line 960
    iget-object v2, v2, Lu/e;->K:Lu/d;

    .line 961
    .line 962
    invoke-virtual {v1, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    goto :goto_27

    .line 967
    :cond_33
    move-object/from16 v2, v36

    .line 968
    .line 969
    :goto_27
    iget-object v8, v0, Lu/e;->U:Lu/e;

    .line 970
    .line 971
    if-eqz v8, :cond_34

    .line 972
    .line 973
    iget-object v8, v8, Lu/e;->I:Lu/d;

    .line 974
    .line 975
    invoke-virtual {v1, v8}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 976
    .line 977
    .line 978
    move-result-object v8

    .line 979
    :goto_28
    move-object/from16 v22, v5

    .line 980
    .line 981
    const/16 v18, 0x0

    .line 982
    .line 983
    goto :goto_29

    .line 984
    :cond_34
    move-object/from16 v8, v36

    .line 985
    .line 986
    goto :goto_28

    .line 987
    :goto_29
    aget-boolean v5, v24, v18

    .line 988
    .line 989
    move-object/from16 v26, v27

    .line 990
    .line 991
    move/from16 v27, v6

    .line 992
    .line 993
    move-object v6, v8

    .line 994
    aget-object v8, v38, v18

    .line 995
    .line 996
    move-object/from16 v39, v22

    .line 997
    .line 998
    move/from16 v22, v12

    .line 999
    .line 1000
    iget v12, v0, Lu/e;->Z:I

    .line 1001
    .line 1002
    move-object/from16 v40, v3

    .line 1003
    .line 1004
    move v3, v14

    .line 1005
    iget v14, v0, Lu/e;->c0:I

    .line 1006
    .line 1007
    move/from16 v41, v4

    .line 1008
    .line 1009
    move v4, v15

    .line 1010
    aget v15, v11, v18

    .line 1011
    .line 1012
    iget v1, v0, Lu/e;->e0:F

    .line 1013
    .line 1014
    move/from16 v42, v1

    .line 1015
    .line 1016
    const/16 v20, 0x1

    .line 1017
    .line 1018
    aget-object v1, v38, v20

    .line 1019
    .line 1020
    if-ne v1, v7, :cond_35

    .line 1021
    .line 1022
    move/from16 v18, v20

    .line 1023
    .line 1024
    :cond_35
    iget v1, v0, Lu/e;->u:I

    .line 1025
    .line 1026
    move/from16 v43, v1

    .line 1027
    .line 1028
    iget v1, v0, Lu/e;->v:I

    .line 1029
    .line 1030
    move/from16 v44, v1

    .line 1031
    .line 1032
    iget v1, v0, Lu/e;->w:F

    .line 1033
    .line 1034
    move/from16 v17, v10

    .line 1035
    .line 1036
    const/16 v45, 0x2

    .line 1037
    .line 1038
    iget-object v10, v0, Lu/e;->I:Lu/d;

    .line 1039
    .line 1040
    move-object/from16 v46, v11

    .line 1041
    .line 1042
    iget-object v11, v0, Lu/e;->K:Lu/d;

    .line 1043
    .line 1044
    move-object/from16 v47, v7

    .line 1045
    .line 1046
    move-object v7, v2

    .line 1047
    const/4 v2, 0x1

    .line 1048
    move-object/from16 v54, v16

    .line 1049
    .line 1050
    move-object/from16 v52, v19

    .line 1051
    .line 1052
    move-object/from16 v49, v26

    .line 1053
    .line 1054
    move-object/from16 v50, v28

    .line 1055
    .line 1056
    move-object/from16 v51, v29

    .line 1057
    .line 1058
    move/from16 v19, v30

    .line 1059
    .line 1060
    move-object/from16 v53, v31

    .line 1061
    .line 1062
    move/from16 v20, v32

    .line 1063
    .line 1064
    move/from16 v16, v42

    .line 1065
    .line 1066
    move-object/from16 v55, v47

    .line 1067
    .line 1068
    move/from16 v26, v1

    .line 1069
    .line 1070
    move-object/from16 v28, v24

    .line 1071
    .line 1072
    move-object/from16 v29, v25

    .line 1073
    .line 1074
    move/from16 v24, v43

    .line 1075
    .line 1076
    move/from16 v25, v44

    .line 1077
    .line 1078
    move-object/from16 v1, p1

    .line 1079
    .line 1080
    invoke-virtual/range {v0 .. v27}, Lu/e;->a(Lr/f;ZZZZLr/m;Lr/m;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLu/d;Lu/d;IIIIFZZZZZIIIIFZ)V

    .line 1081
    .line 1082
    .line 1083
    goto :goto_2a

    .line 1084
    :cond_36
    move-object/from16 v40, v3

    .line 1085
    .line 1086
    move-object/from16 v39, v5

    .line 1087
    .line 1088
    move-object/from16 v55, v7

    .line 1089
    .line 1090
    move-object/from16 v46, v11

    .line 1091
    .line 1092
    move/from16 v22, v12

    .line 1093
    .line 1094
    move v3, v14

    .line 1095
    move-object/from16 v54, v16

    .line 1096
    .line 1097
    move-object/from16 v52, v19

    .line 1098
    .line 1099
    move-object/from16 v49, v27

    .line 1100
    .line 1101
    move-object/from16 v50, v28

    .line 1102
    .line 1103
    move-object/from16 v51, v29

    .line 1104
    .line 1105
    move-object/from16 v53, v31

    .line 1106
    .line 1107
    move-object/from16 v29, v4

    .line 1108
    .line 1109
    move/from16 v27, v6

    .line 1110
    .line 1111
    move v4, v15

    .line 1112
    move-object/from16 v28, v24

    .line 1113
    .line 1114
    :goto_2a
    if-eqz p2, :cond_39

    .line 1115
    .line 1116
    iget-object v2, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 1117
    .line 1118
    if-eqz v2, :cond_39

    .line 1119
    .line 1120
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1121
    .line 1122
    iget-boolean v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 1123
    .line 1124
    if-eqz v6, :cond_39

    .line 1125
    .line 1126
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1127
    .line 1128
    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 1129
    .line 1130
    if-eqz v2, :cond_39

    .line 1131
    .line 1132
    iget v2, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 1133
    .line 1134
    move-object/from16 v5, v49

    .line 1135
    .line 1136
    invoke-virtual {v1, v5, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 1137
    .line 1138
    .line 1139
    iget-object v2, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 1140
    .line 1141
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1142
    .line 1143
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 1144
    .line 1145
    move-object/from16 v6, v51

    .line 1146
    .line 1147
    invoke-virtual {v1, v6, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 1148
    .line 1149
    .line 1150
    iget-object v2, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 1151
    .line 1152
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 1153
    .line 1154
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 1155
    .line 1156
    move-object/from16 v7, v53

    .line 1157
    .line 1158
    invoke-virtual {v1, v7, v2}, Lr/f;->addEquality(Lr/m;I)V

    .line 1159
    .line 1160
    .line 1161
    iget-object v2, v0, Lu/e;->U:Lu/e;

    .line 1162
    .line 1163
    if-eqz v2, :cond_38

    .line 1164
    .line 1165
    if-nez v32, :cond_38

    .line 1166
    .line 1167
    if-eqz v4, :cond_38

    .line 1168
    .line 1169
    const/16 v20, 0x1

    .line 1170
    .line 1171
    aget-boolean v8, v28, v20

    .line 1172
    .line 1173
    if-eqz v8, :cond_37

    .line 1174
    .line 1175
    iget-object v2, v2, Lu/e;->L:Lu/d;

    .line 1176
    .line 1177
    invoke-virtual {v1, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v2

    .line 1181
    const/4 v8, 0x0

    .line 1182
    const/16 v15, 0x8

    .line 1183
    .line 1184
    invoke-virtual {v1, v2, v6, v8, v15}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 1185
    .line 1186
    .line 1187
    goto :goto_2b

    .line 1188
    :cond_37
    const/4 v8, 0x0

    .line 1189
    const/16 v15, 0x8

    .line 1190
    .line 1191
    goto :goto_2b

    .line 1192
    :cond_38
    const/4 v8, 0x0

    .line 1193
    const/16 v15, 0x8

    .line 1194
    .line 1195
    const/16 v20, 0x1

    .line 1196
    .line 1197
    :goto_2b
    move v2, v8

    .line 1198
    goto :goto_2c

    .line 1199
    :cond_39
    move-object/from16 v5, v49

    .line 1200
    .line 1201
    move-object/from16 v6, v51

    .line 1202
    .line 1203
    move-object/from16 v7, v53

    .line 1204
    .line 1205
    const/4 v8, 0x0

    .line 1206
    const/16 v15, 0x8

    .line 1207
    .line 1208
    const/16 v20, 0x1

    .line 1209
    .line 1210
    move/from16 v2, v20

    .line 1211
    .line 1212
    :goto_2c
    iget v9, v0, Lu/e;->p:I

    .line 1213
    .line 1214
    const/4 v10, 0x2

    .line 1215
    if-ne v9, v10, :cond_3a

    .line 1216
    .line 1217
    move v14, v8

    .line 1218
    goto :goto_2d

    .line 1219
    :cond_3a
    move v14, v2

    .line 1220
    :goto_2d
    if-eqz v14, :cond_45

    .line 1221
    .line 1222
    iget-boolean v2, v0, Lu/e;->l:Z

    .line 1223
    .line 1224
    if-nez v2, :cond_45

    .line 1225
    .line 1226
    aget-object v2, v38, v20

    .line 1227
    .line 1228
    move-object/from16 v9, v54

    .line 1229
    .line 1230
    if-ne v2, v9, :cond_3b

    .line 1231
    .line 1232
    instance-of v2, v0, Lu/f;

    .line 1233
    .line 1234
    if-eqz v2, :cond_3b

    .line 1235
    .line 1236
    move/from16 v9, v20

    .line 1237
    .line 1238
    goto :goto_2e

    .line 1239
    :cond_3b
    move v9, v8

    .line 1240
    :goto_2e
    if-eqz v9, :cond_3c

    .line 1241
    .line 1242
    move v13, v8

    .line 1243
    goto :goto_2f

    .line 1244
    :cond_3c
    move/from16 v13, v37

    .line 1245
    .line 1246
    :goto_2f
    iget-object v2, v0, Lu/e;->U:Lu/e;

    .line 1247
    .line 1248
    if-eqz v2, :cond_3d

    .line 1249
    .line 1250
    iget-object v2, v2, Lu/e;->L:Lu/d;

    .line 1251
    .line 1252
    invoke-virtual {v1, v2}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v2

    .line 1256
    goto :goto_30

    .line 1257
    :cond_3d
    move-object/from16 v2, v36

    .line 1258
    .line 1259
    :goto_30
    iget-object v10, v0, Lu/e;->U:Lu/e;

    .line 1260
    .line 1261
    if-eqz v10, :cond_3e

    .line 1262
    .line 1263
    iget-object v10, v10, Lu/e;->J:Lu/d;

    .line 1264
    .line 1265
    invoke-virtual {v1, v10}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v36

    .line 1269
    :cond_3e
    iget v10, v0, Lu/e;->b0:I

    .line 1270
    .line 1271
    if-gtz v10, :cond_3f

    .line 1272
    .line 1273
    iget v10, v0, Lu/e;->h0:I

    .line 1274
    .line 1275
    if-ne v10, v15, :cond_43

    .line 1276
    .line 1277
    :cond_3f
    move-object/from16 v10, v52

    .line 1278
    .line 1279
    iget-object v11, v10, Lu/d;->f:Lu/d;

    .line 1280
    .line 1281
    if-eqz v11, :cond_41

    .line 1282
    .line 1283
    invoke-virtual {v0}, Lu/e;->getBaselineDistance()I

    .line 1284
    .line 1285
    .line 1286
    move-result v11

    .line 1287
    invoke-virtual {v1, v7, v5, v11, v15}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 1288
    .line 1289
    .line 1290
    iget-object v11, v10, Lu/d;->f:Lu/d;

    .line 1291
    .line 1292
    invoke-virtual {v1, v11}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v11

    .line 1296
    invoke-virtual {v10}, Lu/d;->getMargin()I

    .line 1297
    .line 1298
    .line 1299
    move-result v10

    .line 1300
    invoke-virtual {v1, v7, v11, v10, v15}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 1301
    .line 1302
    .line 1303
    if-eqz v4, :cond_40

    .line 1304
    .line 1305
    move-object/from16 v7, v50

    .line 1306
    .line 1307
    invoke-virtual {v1, v7}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v7

    .line 1311
    const/4 v10, 0x5

    .line 1312
    invoke-virtual {v1, v2, v7, v8, v10}, Lr/f;->addGreaterThan(Lr/m;Lr/m;II)V

    .line 1313
    .line 1314
    .line 1315
    :cond_40
    move/from16 v27, v8

    .line 1316
    .line 1317
    goto :goto_31

    .line 1318
    :cond_41
    iget v11, v0, Lu/e;->h0:I

    .line 1319
    .line 1320
    if-ne v11, v15, :cond_42

    .line 1321
    .line 1322
    invoke-virtual {v10}, Lu/d;->getMargin()I

    .line 1323
    .line 1324
    .line 1325
    move-result v10

    .line 1326
    invoke-virtual {v1, v7, v5, v10, v15}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 1327
    .line 1328
    .line 1329
    goto :goto_31

    .line 1330
    :cond_42
    invoke-virtual {v0}, Lu/e;->getBaselineDistance()I

    .line 1331
    .line 1332
    .line 1333
    move-result v10

    .line 1334
    invoke-virtual {v1, v7, v5, v10, v15}, Lr/f;->addEquality(Lr/m;Lr/m;II)Lr/c;

    .line 1335
    .line 1336
    .line 1337
    :cond_43
    :goto_31
    aget-boolean v7, v28, v20

    .line 1338
    .line 1339
    move/from16 v18, v8

    .line 1340
    .line 1341
    aget-object v8, v38, v20

    .line 1342
    .line 1343
    iget v12, v0, Lu/e;->a0:I

    .line 1344
    .line 1345
    iget v14, v0, Lu/e;->d0:I

    .line 1346
    .line 1347
    aget v15, v46, v20

    .line 1348
    .line 1349
    iget v10, v0, Lu/e;->f0:F

    .line 1350
    .line 1351
    aget-object v11, v38, v18

    .line 1352
    .line 1353
    move-object/from16 v1, v55

    .line 1354
    .line 1355
    move/from16 v48, v18

    .line 1356
    .line 1357
    if-ne v11, v1, :cond_44

    .line 1358
    .line 1359
    move/from16 v18, v20

    .line 1360
    .line 1361
    :cond_44
    iget v1, v0, Lu/e;->x:I

    .line 1362
    .line 1363
    iget v11, v0, Lu/e;->y:I

    .line 1364
    .line 1365
    move/from16 v24, v1

    .line 1366
    .line 1367
    iget v1, v0, Lu/e;->z:F

    .line 1368
    .line 1369
    move/from16 v16, v10

    .line 1370
    .line 1371
    iget-object v10, v0, Lu/e;->J:Lu/d;

    .line 1372
    .line 1373
    move/from16 v25, v11

    .line 1374
    .line 1375
    iget-object v11, v0, Lu/e;->L:Lu/d;

    .line 1376
    .line 1377
    move-object/from16 v49, v5

    .line 1378
    .line 1379
    move v5, v7

    .line 1380
    move-object v7, v2

    .line 1381
    const/4 v2, 0x0

    .line 1382
    move/from16 v17, v4

    .line 1383
    .line 1384
    move v4, v3

    .line 1385
    move/from16 v3, v17

    .line 1386
    .line 1387
    move/from16 v17, v23

    .line 1388
    .line 1389
    move/from16 v23, v22

    .line 1390
    .line 1391
    move/from16 v22, v17

    .line 1392
    .line 1393
    move/from16 v26, v1

    .line 1394
    .line 1395
    move-object/from16 v51, v6

    .line 1396
    .line 1397
    move/from16 v20, v30

    .line 1398
    .line 1399
    move/from16 v19, v32

    .line 1400
    .line 1401
    move/from16 v17, v34

    .line 1402
    .line 1403
    move/from16 v21, v35

    .line 1404
    .line 1405
    move-object/from16 v6, v36

    .line 1406
    .line 1407
    move-object/from16 v1, p1

    .line 1408
    .line 1409
    invoke-virtual/range {v0 .. v27}, Lu/e;->a(Lr/f;ZZZZLr/m;Lr/m;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLu/d;Lu/d;IIIIFZZZZZIIIIFZ)V

    .line 1410
    .line 1411
    .line 1412
    move-object v7, v0

    .line 1413
    goto :goto_32

    .line 1414
    :cond_45
    move-object v7, v0

    .line 1415
    move-object/from16 v49, v5

    .line 1416
    .line 1417
    move-object/from16 v51, v6

    .line 1418
    .line 1419
    :goto_32
    if-eqz v33, :cond_46

    .line 1420
    .line 1421
    iget v0, v7, Lu/e;->A:I

    .line 1422
    .line 1423
    const/16 v6, 0x8

    .line 1424
    .line 1425
    const/4 v4, 0x1

    .line 1426
    if-ne v0, v4, :cond_47

    .line 1427
    .line 1428
    iget v5, v7, Lu/e;->B:F

    .line 1429
    .line 1430
    move-object/from16 v0, p1

    .line 1431
    .line 1432
    move-object/from16 v3, v39

    .line 1433
    .line 1434
    move-object/from16 v4, v40

    .line 1435
    .line 1436
    move-object/from16 v2, v49

    .line 1437
    .line 1438
    move-object/from16 v1, v51

    .line 1439
    .line 1440
    invoke-virtual/range {v0 .. v6}, Lr/f;->addRatio(Lr/m;Lr/m;Lr/m;Lr/m;FI)V

    .line 1441
    .line 1442
    .line 1443
    :cond_46
    move-object/from16 v1, p1

    .line 1444
    .line 1445
    goto :goto_33

    .line 1446
    :cond_47
    iget v5, v7, Lu/e;->B:F

    .line 1447
    .line 1448
    move-object/from16 v0, p1

    .line 1449
    .line 1450
    move-object/from16 v1, v39

    .line 1451
    .line 1452
    move-object/from16 v2, v40

    .line 1453
    .line 1454
    move-object/from16 v4, v49

    .line 1455
    .line 1456
    move-object/from16 v3, v51

    .line 1457
    .line 1458
    invoke-virtual/range {v0 .. v6}, Lr/f;->addRatio(Lr/m;Lr/m;Lr/m;Lr/m;FI)V

    .line 1459
    .line 1460
    .line 1461
    move-object v1, v0

    .line 1462
    :goto_33
    invoke-virtual/range {v29 .. v29}, Lu/d;->isConnected()Z

    .line 1463
    .line 1464
    .line 1465
    move-result v0

    .line 1466
    if-eqz v0, :cond_48

    .line 1467
    .line 1468
    invoke-virtual/range {v29 .. v29}, Lu/d;->getTarget()Lu/d;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v0

    .line 1472
    invoke-virtual {v0}, Lu/d;->getOwner()Lu/e;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    iget v2, v7, Lu/e;->D:F

    .line 1477
    .line 1478
    const/high16 v3, 0x42b40000    # 90.0f

    .line 1479
    .line 1480
    add-float/2addr v2, v3

    .line 1481
    float-to-double v2, v2

    .line 1482
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 1483
    .line 1484
    .line 1485
    move-result-wide v2

    .line 1486
    double-to-float v2, v2

    .line 1487
    invoke-virtual/range {v29 .. v29}, Lu/d;->getMargin()I

    .line 1488
    .line 1489
    .line 1490
    move-result v3

    .line 1491
    invoke-virtual {v1, v7, v0, v2, v3}, Lr/f;->addCenterPoint(Lu/e;Lu/e;FI)V

    .line 1492
    .line 1493
    .line 1494
    :cond_48
    const/4 v10, 0x0

    .line 1495
    iput-boolean v10, v7, Lu/e;->k:Z

    .line 1496
    .line 1497
    iput-boolean v10, v7, Lu/e;->l:Z

    .line 1498
    .line 1499
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 2

    .line 1
    iget v0, p0, Lu/e;->h0:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    .locals 10

    .line 3
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->n:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->p:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v7, 0x0

    if-ne p1, v0, :cond_c

    if-ne p3, v0, :cond_8

    .line 4
    invoke-virtual {p0, v3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p3

    .line 6
    invoke-virtual {p0, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p4

    .line 7
    invoke-virtual {p0, v6}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lu/d;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p3}, Lu/d;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, v7

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v3, p2, v3, v7}, Lu/e;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 11
    invoke-virtual {p0, v5, p2, v5, v7}, Lu/e;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    move p1, v9

    :goto_0
    if-eqz p4, :cond_3

    .line 12
    invoke-virtual {p4}, Lu/d;->isConnected()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v8, :cond_5

    .line 13
    invoke-virtual {v8}, Lu/d;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    move v9, v7

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p0, v4, p2, v4, v7}, Lu/e;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 15
    invoke-virtual {p0, v6, p2, v6, v7}, Lu/e;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v9, :cond_6

    .line 16
    invoke-virtual {p0, v0}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 17
    invoke-virtual {p2, v0}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lu/d;->connect(Lu/d;I)Z

    return-void

    :cond_6
    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p0, v2}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 19
    invoke-virtual {p2, v2}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lu/d;->connect(Lu/d;I)Z

    return-void

    :cond_7
    if-eqz v9, :cond_1c

    .line 20
    invoke-virtual {p0, v1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 21
    invoke-virtual {p2, v1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lu/d;->connect(Lu/d;I)Z

    return-void

    :cond_8
    if-eq p3, v3, :cond_b

    if-ne p3, v5, :cond_9

    goto :goto_2

    :cond_9
    if-eq p3, v4, :cond_a

    if-ne p3, v6, :cond_1c

    .line 22
    :cond_a
    invoke-virtual {p0, v4, p2, p3, v7}, Lu/e;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 23
    invoke-virtual {p0, v6, p2, p3, v7}, Lu/e;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 24
    invoke-virtual {p0, v0}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 25
    invoke-virtual {p2, p3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lu/d;->connect(Lu/d;I)Z

    return-void

    .line 26
    :cond_b
    :goto_2
    invoke-virtual {p0, v3, p2, p3, v7}, Lu/e;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    .line 27
    :try_start_0
    invoke-virtual {p0, v5, p2, p3, v7}, Lu/e;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p0, v0}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 29
    invoke-virtual {p2, p3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lu/d;->connect(Lu/d;I)Z

    return-void

    :catchall_0
    move-exception p1

    .line 30
    throw p1

    :cond_c
    if-ne p1, v2, :cond_e

    if-eq p3, v3, :cond_d

    if-ne p3, v5, :cond_e

    .line 31
    :cond_d
    invoke-virtual {p0, v3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 32
    invoke-virtual {p2, p3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    .line 33
    invoke-virtual {p0, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p3

    .line 34
    invoke-virtual {p1, p2, v7}, Lu/d;->connect(Lu/d;I)Z

    .line 35
    invoke-virtual {p3, p2, v7}, Lu/d;->connect(Lu/d;I)Z

    .line 36
    invoke-virtual {p0, v2}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p2, v7}, Lu/d;->connect(Lu/d;I)Z

    return-void

    :cond_e
    if-ne p1, v1, :cond_10

    if-eq p3, v4, :cond_f

    if-ne p3, v6, :cond_10

    .line 38
    :cond_f
    invoke-virtual {p2, p3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 39
    invoke-virtual {p0, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    .line 40
    invoke-virtual {p2, p1, v7}, Lu/d;->connect(Lu/d;I)Z

    .line 41
    invoke-virtual {p0, v6}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    .line 42
    invoke-virtual {p2, p1, v7}, Lu/d;->connect(Lu/d;I)Z

    .line 43
    invoke-virtual {p0, v1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    .line 44
    invoke-virtual {p2, p1, v7}, Lu/d;->connect(Lu/d;I)Z

    return-void

    :cond_10
    if-ne p1, v2, :cond_11

    if-ne p3, v2, :cond_11

    .line 45
    invoke-virtual {p0, v3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 46
    invoke-virtual {p2, v3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p4

    .line 47
    invoke-virtual {p1, p4, v7}, Lu/d;->connect(Lu/d;I)Z

    .line 48
    invoke-virtual {p0, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 49
    invoke-virtual {p2, v5}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p4

    .line 50
    invoke-virtual {p1, p4, v7}, Lu/d;->connect(Lu/d;I)Z

    .line 51
    invoke-virtual {p0, v2}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 52
    invoke-virtual {p2, p3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lu/d;->connect(Lu/d;I)Z

    return-void

    :cond_11
    if-ne p1, v1, :cond_12

    if-ne p3, v1, :cond_12

    .line 53
    invoke-virtual {p0, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 54
    invoke-virtual {p2, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p4

    .line 55
    invoke-virtual {p1, p4, v7}, Lu/d;->connect(Lu/d;I)Z

    .line 56
    invoke-virtual {p0, v6}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 57
    invoke-virtual {p2, v6}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p4

    .line 58
    invoke-virtual {p1, p4, v7}, Lu/d;->connect(Lu/d;I)Z

    .line 59
    invoke-virtual {p0, v1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 60
    invoke-virtual {p2, p3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lu/d;->connect(Lu/d;I)Z

    return-void

    .line 61
    :cond_12
    invoke-virtual {p0, p1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object v7

    .line 62
    invoke-virtual {p2, p3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p2

    .line 63
    invoke-virtual {v7, p2}, Lu/d;->isValidConnection(Lu/d;)Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 64
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->m:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, p3, :cond_14

    .line 65
    invoke-virtual {p0, v4}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    .line 66
    invoke-virtual {p0, v6}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p3

    if-eqz p1, :cond_13

    .line 67
    invoke-virtual {p1}, Lu/d;->reset()V

    :cond_13
    if-eqz p3, :cond_1b

    .line 68
    invoke-virtual {p3}, Lu/d;->reset()V

    goto :goto_4

    :cond_14
    if-eq p1, v4, :cond_18

    if-ne p1, v6, :cond_15

    goto :goto_3

    :cond_15
    if-eq p1, v3, :cond_16

    if-ne p1, v5, :cond_1b

    .line 69
    :cond_16
    invoke-virtual {p0, v0}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p3

    .line 70
    invoke-virtual {p3}, Lu/d;->getTarget()Lu/d;

    move-result-object v0

    if-eq v0, p2, :cond_17

    .line 71
    invoke-virtual {p3}, Lu/d;->reset()V

    .line 72
    :cond_17
    invoke-virtual {p0, p1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    invoke-virtual {p1}, Lu/d;->getOpposite()Lu/d;

    move-result-object p1

    .line 73
    invoke-virtual {p0, v2}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p3

    .line 74
    invoke-virtual {p3}, Lu/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 75
    invoke-virtual {p1}, Lu/d;->reset()V

    .line 76
    invoke-virtual {p3}, Lu/d;->reset()V

    goto :goto_4

    .line 77
    :cond_18
    :goto_3
    invoke-virtual {p0, p3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p3

    if-eqz p3, :cond_19

    .line 78
    invoke-virtual {p3}, Lu/d;->reset()V

    .line 79
    :cond_19
    invoke-virtual {p0, v0}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p3

    .line 80
    invoke-virtual {p3}, Lu/d;->getTarget()Lu/d;

    move-result-object v0

    if-eq v0, p2, :cond_1a

    .line 81
    invoke-virtual {p3}, Lu/d;->reset()V

    .line 82
    :cond_1a
    invoke-virtual {p0, p1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p1

    invoke-virtual {p1}, Lu/d;->getOpposite()Lu/d;

    move-result-object p1

    .line 83
    invoke-virtual {p0, v1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    move-result-object p3

    .line 84
    invoke-virtual {p3}, Lu/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 85
    invoke-virtual {p1}, Lu/d;->reset()V

    .line 86
    invoke-virtual {p3}, Lu/d;->reset()V

    .line 87
    :cond_1b
    :goto_4
    invoke-virtual {v7, p2, p4}, Lu/d;->connect(Lu/d;I)Z

    :cond_1c
    return-void
.end method

.method public connect(Lu/d;Lu/d;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lu/d;->getOwner()Lu/e;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2
    invoke-virtual {p1}, Lu/d;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object p1

    invoke-virtual {p2}, Lu/d;->getOwner()Lu/e;

    move-result-object v0

    invoke-virtual {p2}, Lu/d;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lu/e;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    :cond_0
    return-void
.end method

.method public connectCircularConstraint(Lu/e;FI)V
    .locals 6

    .line 1
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->n:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v3, v1

    .line 5
    move-object v0, p0

    .line 6
    move-object v2, p1

    .line 7
    move v4, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lu/e;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 9
    .line 10
    .line 11
    iput p2, v0, Lu/e;->D:F

    .line 12
    .line 13
    return-void
.end method

.method public createObjectVariables(Lr/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lu/e;->K:Lu/d;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lu/e;->L:Lu/d;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lu/e;->b0:I

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lu/e;->M:Lu/d;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lr/f;->createObjectVariable(Ljava/lang/Object;)Lr/m;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final d(I)Z
    .locals 3

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lu/e;->Q:[Lu/d;

    .line 4
    .line 5
    aget-object v1, v0, p1

    .line 6
    .line 7
    iget-object v2, v1, Lu/d;->f:Lu/d;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, v2, Lu/d;->f:Lu/d;

    .line 12
    .line 13
    if-eq v2, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    add-int/2addr p1, v1

    .line 17
    aget-object p1, v0, p1

    .line 18
    .line 19
    iget-object v0, p1, Lu/d;->f:Lu/d;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Lu/d;->f:Lu/d;

    .line 24
    .line 25
    if-ne v0, p1, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public ensureWidgetRuns()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/d;-><init>(Lu/e;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/e;-><init>(Lu/e;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/AssertionError;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    iget-object p1, p0, Lu/e;->O:Lu/d;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_1
    iget-object p1, p0, Lu/e;->N:Lu/d;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_2
    iget-object p1, p0, Lu/e;->P:Lu/d;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_3
    iget-object p1, p0, Lu/e;->M:Lu/d;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_4
    iget-object p1, p0, Lu/e;->L:Lu/d;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_5
    iget-object p1, p0, Lu/e;->K:Lu/d;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_6
    iget-object p1, p0, Lu/e;->J:Lu/d;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_7
    iget-object p1, p0, Lu/e;->I:Lu/d;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_8
    const/4 p1, 0x0

    .line 43
    return-object p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBaselineDistance()I
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->b0:I

    .line 2
    .line 3
    return v0
.end method

.method public getBiasPercent(I)F
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lu/e;->e0:F

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget p1, p0, Lu/e;->f0:F

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    .line 13
    .line 14
    return p1
.end method

.method public getBottom()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/e;->getY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lu/e;->W:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->g0:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->i0:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getDimensionRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->X:F

    .line 2
    .line 3
    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->Y:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lu/e;->h0:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Lu/e;->W:I

    .line 10
    .line 11
    return v0
.end method

.method public getHorizontalBiasPercent()F
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->e0:F

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalChainStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->j0:I

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    return-object v0
.end method

.method public getHorizontalMargin()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lu/d;->g:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lu/e;->K:Lu/d;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v1, v1, Lu/d;->g:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    :cond_1
    return v0
.end method

.method public getLastHorizontalMeasureSpec()I
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->G:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastVerticalMeasureSpec()I
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->H:I

    .line 2
    .line 3
    return v0
.end method

.method public getLength(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lu/e;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lu/e;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public getMaxHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->C:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->C:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->d0:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->c0:I

    .line 2
    .line 3
    return v0
.end method

.method public getNextChainMember(I)Lu/e;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lu/e;->K:Lu/d;

    .line 4
    .line 5
    iget-object v0, p1, Lu/d;->f:Lu/d;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lu/d;->f:Lu/d;

    .line 10
    .line 11
    if-ne v1, p1, :cond_1

    .line 12
    .line 13
    iget-object p1, v0, Lu/d;->d:Lu/e;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lu/e;->L:Lu/d;

    .line 20
    .line 21
    iget-object v0, p1, Lu/d;->f:Lu/d;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lu/d;->f:Lu/d;

    .line 26
    .line 27
    if-ne v1, p1, :cond_1

    .line 28
    .line 29
    iget-object p1, v0, Lu/d;->d:Lu/e;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public getParent()Lu/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->U:Lu/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreviousChainMember(I)Lu/e;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lu/e;->I:Lu/d;

    .line 4
    .line 5
    iget-object v0, p1, Lu/d;->f:Lu/d;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lu/d;->f:Lu/d;

    .line 10
    .line 11
    if-ne v1, p1, :cond_1

    .line 12
    .line 13
    iget-object p1, v0, Lu/d;->d:Lu/e;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lu/e;->J:Lu/d;

    .line 20
    .line 21
    iget-object v0, p1, Lu/d;->f:Lu/d;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lu/d;->f:Lu/d;

    .line 26
    .line 27
    if-ne v1, p1, :cond_1

    .line 28
    .line 29
    iget-object p1, v0, Lu/d;->d:Lu/e;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public getRight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/e;->getX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lu/e;->V:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/f;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public getSceneString(Ljava/lang/StringBuilder;)V
    .locals 11

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v2, "  "

    .line 4
    .line 5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lu/e;->j:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ":{\n"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "    actualWidth:"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lu/e;->V:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, "\n"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v3, "    actualHeight:"

    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v3, p0, Lu/e;->W:I

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "    actualLeft:"

    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v3, p0, Lu/e;->Z:I

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v3, "    actualTop:"

    .line 96
    .line 97
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v3, p0, Lu/e;->a0:I

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, "left"

    .line 116
    .line 117
    iget-object v2, p0, Lu/e;->I:Lu/d;

    .line 118
    .line 119
    invoke-static {p1, v1, v2}, Lu/e;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lu/d;)V

    .line 120
    .line 121
    .line 122
    const-string v1, "top"

    .line 123
    .line 124
    iget-object v2, p0, Lu/e;->J:Lu/d;

    .line 125
    .line 126
    invoke-static {p1, v1, v2}, Lu/e;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lu/d;)V

    .line 127
    .line 128
    .line 129
    const-string v1, "right"

    .line 130
    .line 131
    iget-object v2, p0, Lu/e;->K:Lu/d;

    .line 132
    .line 133
    invoke-static {p1, v1, v2}, Lu/e;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lu/d;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "bottom"

    .line 137
    .line 138
    iget-object v2, p0, Lu/e;->L:Lu/d;

    .line 139
    .line 140
    invoke-static {p1, v1, v2}, Lu/e;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lu/d;)V

    .line 141
    .line 142
    .line 143
    const-string v1, "baseline"

    .line 144
    .line 145
    iget-object v2, p0, Lu/e;->M:Lu/d;

    .line 146
    .line 147
    invoke-static {p1, v1, v2}, Lu/e;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lu/d;)V

    .line 148
    .line 149
    .line 150
    const-string v1, "centerX"

    .line 151
    .line 152
    iget-object v2, p0, Lu/e;->N:Lu/d;

    .line 153
    .line 154
    invoke-static {p1, v1, v2}, Lu/e;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lu/d;)V

    .line 155
    .line 156
    .line 157
    const-string v1, "centerY"

    .line 158
    .line 159
    iget-object v2, p0, Lu/e;->O:Lu/d;

    .line 160
    .line 161
    invoke-static {p1, v1, v2}, Lu/e;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lu/d;)V

    .line 162
    .line 163
    .line 164
    iget v2, p0, Lu/e;->V:I

    .line 165
    .line 166
    iget v3, p0, Lu/e;->c0:I

    .line 167
    .line 168
    iget-object v8, p0, Lu/e;->C:[I

    .line 169
    .line 170
    const/4 v9, 0x0

    .line 171
    aget v4, v8, v9

    .line 172
    .line 173
    iget v5, p0, Lu/e;->u:I

    .line 174
    .line 175
    iget v6, p0, Lu/e;->r:I

    .line 176
    .line 177
    iget v7, p0, Lu/e;->w:F

    .line 178
    .line 179
    iget-object v10, p0, Lu/e;->l0:[F

    .line 180
    .line 181
    aget v1, v10, v9

    .line 182
    .line 183
    const-string v1, "    width"

    .line 184
    .line 185
    move-object v0, p1

    .line 186
    invoke-static/range {v0 .. v7}, Lu/e;->b(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V

    .line 187
    .line 188
    .line 189
    iget v2, p0, Lu/e;->W:I

    .line 190
    .line 191
    iget v3, p0, Lu/e;->d0:I

    .line 192
    .line 193
    const/4 v0, 0x1

    .line 194
    aget v4, v8, v0

    .line 195
    .line 196
    iget v5, p0, Lu/e;->x:I

    .line 197
    .line 198
    iget v6, p0, Lu/e;->s:I

    .line 199
    .line 200
    iget v7, p0, Lu/e;->z:F

    .line 201
    .line 202
    aget v0, v10, v0

    .line 203
    .line 204
    const-string v1, "    height"

    .line 205
    .line 206
    move-object v0, p1

    .line 207
    invoke-static/range {v0 .. v7}, Lu/e;->b(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V

    .line 208
    .line 209
    .line 210
    iget v1, p0, Lu/e;->X:F

    .line 211
    .line 212
    iget v2, p0, Lu/e;->Y:I

    .line 213
    .line 214
    const/4 v3, 0x0

    .line 215
    cmpl-float v3, v1, v3

    .line 216
    .line 217
    if-nez v3, :cond_0

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_0
    const-string v3, "    dimensionRatio"

    .line 221
    .line 222
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v3, " :  ["

    .line 226
    .line 227
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v1, ","

    .line 234
    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v1, ""

    .line 242
    .line 243
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, "],\n"

    .line 247
    .line 248
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    :goto_0
    iget v1, p0, Lu/e;->e0:F

    .line 252
    .line 253
    const-string v2, "    horizontalBias"

    .line 254
    .line 255
    const/high16 v3, 0x3f000000    # 0.5f

    .line 256
    .line 257
    invoke-static {p1, v2, v1, v3}, Lu/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 258
    .line 259
    .line 260
    const-string v1, "    verticalBias"

    .line 261
    .line 262
    iget v2, p0, Lu/e;->f0:F

    .line 263
    .line 264
    invoke-static {p1, v1, v2, v3}, Lu/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 265
    .line 266
    .line 267
    const-string v1, "    horizontalChainStyle"

    .line 268
    .line 269
    iget v2, p0, Lu/e;->j0:I

    .line 270
    .line 271
    invoke-static {v2, v9, v1, p1}, Lu/e;->e(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 272
    .line 273
    .line 274
    const-string v1, "    verticalChainStyle"

    .line 275
    .line 276
    iget v2, p0, Lu/e;->k0:I

    .line 277
    .line 278
    invoke-static {v2, v9, v1, p1}, Lu/e;->e(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 279
    .line 280
    .line 281
    const-string v1, "  }"

    .line 282
    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    return-void
.end method

.method public getVerticalBiasPercent()F
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->f0:F

    .line 2
    .line 3
    return v0
.end method

.method public getVerticalChainStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->k0:I

    .line 2
    .line 3
    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    return-object v0
.end method

.method public getVerticalMargin()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 6
    .line 7
    iget v0, v0, Lu/d;->g:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lu/e;->K:Lu/d;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lu/e;->L:Lu/d;

    .line 16
    .line 17
    iget v1, v1, Lu/d;->g:I

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    :cond_1
    return v0
.end method

.method public getVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Lu/e;->h0:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lu/e;->h0:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Lu/e;->V:I

    .line 10
    .line 11
    return v0
.end method

.method public getX()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->U:Lu/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lu/f;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lu/f;

    .line 10
    .line 11
    iget v0, v0, Lu/f;->x0:I

    .line 12
    .line 13
    iget v1, p0, Lu/e;->Z:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_0
    iget v0, p0, Lu/e;->Z:I

    .line 18
    .line 19
    return v0
.end method

.method public getY()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->U:Lu/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lu/f;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lu/f;

    .line 10
    .line 11
    iget v0, v0, Lu/f;->y0:I

    .line 12
    .line 13
    iget v1, p0, Lu/e;->a0:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_0
    iget v0, p0, Lu/e;->a0:I

    .line 18
    .line 19
    return v0
.end method

.method public hasBaseline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/e;->E:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasDanglingDimension(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p1, :cond_3

    .line 5
    .line 6
    iget-object p1, p0, Lu/e;->I:Lu/d;

    .line 7
    .line 8
    iget-object p1, p1, Lu/d;->f:Lu/d;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move p1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v1

    .line 15
    :goto_0
    iget-object v3, p0, Lu/e;->K:Lu/d;

    .line 16
    .line 17
    iget-object v3, v3, Lu/d;->f:Lu/d;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    move v3, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v3, v1

    .line 24
    :goto_1
    add-int/2addr p1, v3

    .line 25
    if-ge p1, v0, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    return v1

    .line 29
    :cond_3
    iget-object p1, p0, Lu/e;->J:Lu/d;

    .line 30
    .line 31
    iget-object p1, p1, Lu/d;->f:Lu/d;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    move p1, v2

    .line 36
    goto :goto_2

    .line 37
    :cond_4
    move p1, v1

    .line 38
    :goto_2
    iget-object v3, p0, Lu/e;->L:Lu/d;

    .line 39
    .line 40
    iget-object v3, v3, Lu/d;->f:Lu/d;

    .line 41
    .line 42
    if-eqz v3, :cond_5

    .line 43
    .line 44
    move v3, v2

    .line 45
    goto :goto_3

    .line 46
    :cond_5
    move v3, v1

    .line 47
    :goto_3
    add-int/2addr p1, v3

    .line 48
    iget-object v3, p0, Lu/e;->M:Lu/d;

    .line 49
    .line 50
    iget-object v3, v3, Lu/d;->f:Lu/d;

    .line 51
    .line 52
    if-eqz v3, :cond_6

    .line 53
    .line 54
    move v3, v2

    .line 55
    goto :goto_4

    .line 56
    :cond_6
    move v3, v1

    .line 57
    :goto_4
    add-int/2addr p1, v3

    .line 58
    if-ge p1, v0, :cond_7

    .line 59
    .line 60
    return v2

    .line 61
    :cond_7
    return v1
.end method

.method public hasDependencies()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lu/e;->R:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lu/d;

    .line 16
    .line 17
    invoke-virtual {v4}, Lu/d;->hasDependents()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v2
.end method

.method public hasDimensionOverride()Z
    .locals 2

    .line 1
    iget v0, p0, Lu/e;->h:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lu/e;->i:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 14
    return v0
.end method

.method public hasResolvedTargets(II)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lu/e;->I:Lu/d;

    .line 6
    .line 7
    iget-object v2, p1, Lu/d;->f:Lu/d;

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {v2}, Lu/d;->hasFinalValue()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lu/e;->K:Lu/d;

    .line 18
    .line 19
    iget-object v3, v2, Lu/d;->f:Lu/d;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v3}, Lu/d;->hasFinalValue()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    iget-object v3, v2, Lu/d;->f:Lu/d;

    .line 30
    .line 31
    invoke-virtual {v3}, Lu/d;->getFinalValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sub-int/2addr v3, v2

    .line 40
    iget-object v2, p1, Lu/d;->f:Lu/d;

    .line 41
    .line 42
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p1}, Lu/d;->getMargin()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    add-int/2addr p1, v2

    .line 51
    sub-int/2addr v3, p1

    .line 52
    if-lt v3, p2, :cond_0

    .line 53
    .line 54
    return v0

    .line 55
    :cond_0
    return v1

    .line 56
    :cond_1
    iget-object p1, p0, Lu/e;->J:Lu/d;

    .line 57
    .line 58
    iget-object v2, p1, Lu/d;->f:Lu/d;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2}, Lu/d;->hasFinalValue()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    iget-object v2, p0, Lu/e;->L:Lu/d;

    .line 69
    .line 70
    iget-object v3, v2, Lu/d;->f:Lu/d;

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v3}, Lu/d;->hasFinalValue()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    iget-object v3, v2, Lu/d;->f:Lu/d;

    .line 81
    .line 82
    invoke-virtual {v3}, Lu/d;->getFinalValue()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    sub-int/2addr v3, v2

    .line 91
    iget-object v2, p1, Lu/d;->f:Lu/d;

    .line 92
    .line 93
    invoke-virtual {v2}, Lu/d;->getFinalValue()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {p1}, Lu/d;->getMargin()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    add-int/2addr p1, v2

    .line 102
    sub-int/2addr v3, p1

    .line 103
    if-lt v3, p2, :cond_2

    .line 104
    .line 105
    return v0

    .line 106
    :cond_2
    return v1
.end method

.method public immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lu/e;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x1

    .line 10
    invoke-virtual {p1, p2, p4, p5, p3}, Lu/d;->connect(Lu/d;IIZ)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public isHorizontalSolvingPassDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/e;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInBarrier(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->S:[Z

    .line 2
    .line 3
    aget-boolean p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public isInHorizontalChain()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 2
    .line 3
    iget-object v1, v0, Lu/d;->f:Lu/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Lu/d;->f:Lu/d;

    .line 8
    .line 9
    if-eq v1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lu/e;->K:Lu/d;

    .line 12
    .line 13
    iget-object v1, v0, Lu/d;->f:Lu/d;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, v1, Lu/d;->f:Lu/d;

    .line 18
    .line 19
    if-ne v1, v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public isInPlaceholder()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isInVerticalChain()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 2
    .line 3
    iget-object v1, v0, Lu/d;->f:Lu/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Lu/d;->f:Lu/d;

    .line 8
    .line 9
    if-eq v1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lu/e;->L:Lu/d;

    .line 12
    .line 13
    iget-object v1, v0, Lu/d;->f:Lu/d;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, v1, Lu/d;->f:Lu/d;

    .line 18
    .line 19
    if-ne v1, v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public isInVirtualLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/e;->F:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMeasureRequested()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu/e;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lu/e;->h0:I

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public isResolvedHorizontally()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/e;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lu/d;->hasFinalValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lu/e;->K:Lu/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lu/d;->hasFinalValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method public isResolvedVertically()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/e;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lu/d;->hasFinalValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lu/e;->L:Lu/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lu/d;->hasFinalValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method public isVerticalSolvingPassDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/e;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public markHorizontalSolvingPassDone()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu/e;->m:Z

    .line 3
    .line 4
    return-void
.end method

.method public markVerticalSolvingPassDone()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu/e;->n:Z

    .line 3
    .line 4
    return-void
.end method

.method public oppositeDimensionsTied()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    .line 5
    .line 6
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 7
    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    aget-object v0, v0, v2

    .line 12
    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    return v1
.end method

.method public reset()V
    .locals 6

    .line 1
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lu/d;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lu/d;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lu/e;->K:Lu/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lu/d;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lu/e;->L:Lu/d;

    .line 17
    .line 18
    invoke-virtual {v0}, Lu/d;->reset()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lu/e;->M:Lu/d;

    .line 22
    .line 23
    invoke-virtual {v0}, Lu/d;->reset()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lu/e;->N:Lu/d;

    .line 27
    .line 28
    invoke-virtual {v0}, Lu/d;->reset()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lu/e;->O:Lu/d;

    .line 32
    .line 33
    invoke-virtual {v0}, Lu/d;->reset()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lu/e;->P:Lu/d;

    .line 37
    .line 38
    invoke-virtual {v0}, Lu/d;->reset()V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lu/e;->U:Lu/e;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lu/e;->D:F

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    iput v2, p0, Lu/e;->V:I

    .line 49
    .line 50
    iput v2, p0, Lu/e;->W:I

    .line 51
    .line 52
    iput v1, p0, Lu/e;->X:F

    .line 53
    .line 54
    const/4 v1, -0x1

    .line 55
    iput v1, p0, Lu/e;->Y:I

    .line 56
    .line 57
    iput v2, p0, Lu/e;->Z:I

    .line 58
    .line 59
    iput v2, p0, Lu/e;->a0:I

    .line 60
    .line 61
    iput v2, p0, Lu/e;->b0:I

    .line 62
    .line 63
    iput v2, p0, Lu/e;->c0:I

    .line 64
    .line 65
    iput v2, p0, Lu/e;->d0:I

    .line 66
    .line 67
    const/high16 v3, 0x3f000000    # 0.5f

    .line 68
    .line 69
    iput v3, p0, Lu/e;->e0:F

    .line 70
    .line 71
    iput v3, p0, Lu/e;->f0:F

    .line 72
    .line 73
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 74
    .line 75
    iget-object v4, p0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 76
    .line 77
    aput-object v3, v4, v2

    .line 78
    .line 79
    const/4 v5, 0x1

    .line 80
    aput-object v3, v4, v5

    .line 81
    .line 82
    iput-object v0, p0, Lu/e;->g0:Ljava/lang/Object;

    .line 83
    .line 84
    iput v2, p0, Lu/e;->h0:I

    .line 85
    .line 86
    iput v2, p0, Lu/e;->j0:I

    .line 87
    .line 88
    iput v2, p0, Lu/e;->k0:I

    .line 89
    .line 90
    iget-object v0, p0, Lu/e;->l0:[F

    .line 91
    .line 92
    const/high16 v3, -0x40800000    # -1.0f

    .line 93
    .line 94
    aput v3, v0, v2

    .line 95
    .line 96
    aput v3, v0, v5

    .line 97
    .line 98
    iput v1, p0, Lu/e;->o:I

    .line 99
    .line 100
    iput v1, p0, Lu/e;->p:I

    .line 101
    .line 102
    iget-object v0, p0, Lu/e;->C:[I

    .line 103
    .line 104
    const v3, 0x7fffffff

    .line 105
    .line 106
    .line 107
    aput v3, v0, v2

    .line 108
    .line 109
    aput v3, v0, v5

    .line 110
    .line 111
    iput v2, p0, Lu/e;->r:I

    .line 112
    .line 113
    iput v2, p0, Lu/e;->s:I

    .line 114
    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    .line 116
    .line 117
    iput v0, p0, Lu/e;->w:F

    .line 118
    .line 119
    iput v0, p0, Lu/e;->z:F

    .line 120
    .line 121
    iput v3, p0, Lu/e;->v:I

    .line 122
    .line 123
    iput v3, p0, Lu/e;->y:I

    .line 124
    .line 125
    iput v2, p0, Lu/e;->u:I

    .line 126
    .line 127
    iput v2, p0, Lu/e;->x:I

    .line 128
    .line 129
    iput v1, p0, Lu/e;->A:I

    .line 130
    .line 131
    iput v0, p0, Lu/e;->B:F

    .line 132
    .line 133
    iget-object v0, p0, Lu/e;->f:[Z

    .line 134
    .line 135
    aput-boolean v5, v0, v2

    .line 136
    .line 137
    aput-boolean v5, v0, v5

    .line 138
    .line 139
    iput-boolean v2, p0, Lu/e;->F:Z

    .line 140
    .line 141
    iget-object v0, p0, Lu/e;->S:[Z

    .line 142
    .line 143
    aput-boolean v2, v0, v2

    .line 144
    .line 145
    aput-boolean v2, v0, v5

    .line 146
    .line 147
    iput-boolean v5, p0, Lu/e;->g:Z

    .line 148
    .line 149
    iget-object v0, p0, Lu/e;->t:[I

    .line 150
    .line 151
    aput v2, v0, v2

    .line 152
    .line 153
    aput v2, v0, v5

    .line 154
    .line 155
    iput v1, p0, Lu/e;->h:I

    .line 156
    .line 157
    iput v1, p0, Lu/e;->i:I

    .line 158
    .line 159
    return-void
.end method

.method public resetAnchors()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    instance-of v0, v0, Lu/f;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lu/e;->getParent()Lu/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lu/f;

    .line 16
    .line 17
    invoke-virtual {v0}, Lu/f;->handlesInternalConstraints()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lu/e;->R:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-ge v2, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lu/d;

    .line 38
    .line 39
    invoke-virtual {v3}, Lu/d;->reset()V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    return-void
.end method

.method public resetFinalResolution()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lu/e;->k:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lu/e;->l:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lu/e;->m:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lu/e;->n:Z

    .line 9
    .line 10
    iget-object v1, p0, Lu/e;->R:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    :goto_0
    if-ge v0, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lu/d;

    .line 23
    .line 24
    invoke-virtual {v3}, Lu/d;->resetFinalResolution()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Lr/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu/d;->resetSolverVariable(Lr/d;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lu/d;->resetSolverVariable(Lr/d;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lu/e;->K:Lu/d;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lu/d;->resetSolverVariable(Lr/d;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lu/e;->L:Lu/d;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lu/d;->resetSolverVariable(Lr/d;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lu/e;->M:Lu/d;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lu/d;->resetSolverVariable(Lr/d;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lu/e;->P:Lu/d;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lu/d;->resetSolverVariable(Lr/d;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lu/e;->N:Lu/d;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lu/d;->resetSolverVariable(Lr/d;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lu/e;->O:Lu/d;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lu/d;->resetSolverVariable(Lr/d;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->b0:I

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lu/e;->E:Z

    .line 9
    .line 10
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/e;->g0:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/e;->i0:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x2c

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, -0x1

    .line 25
    if-lez v2, :cond_3

    .line 26
    .line 27
    add-int/lit8 v6, v1, -0x1

    .line 28
    .line 29
    if-ge v2, v6, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v7, "W"

    .line 36
    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v3, "H"

    .line 45
    .line 46
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    move v3, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v3, v5

    .line 55
    :goto_0
    add-int/2addr v2, v4

    .line 56
    move v5, v3

    .line 57
    move v3, v2

    .line 58
    :cond_3
    const/16 v2, 0x3a

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ltz v2, :cond_5

    .line 65
    .line 66
    sub-int/2addr v1, v4

    .line 67
    if-ge v2, v1, :cond_5

    .line 68
    .line 69
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    add-int/2addr v2, v4

    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-lez v2, :cond_6

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-lez v2, :cond_6

    .line 89
    .line 90
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    cmpl-float v2, v1, v0

    .line 99
    .line 100
    if-lez v2, :cond_6

    .line 101
    .line 102
    cmpl-float v2, p1, v0

    .line 103
    .line 104
    if-lez v2, :cond_6

    .line 105
    .line 106
    if-ne v5, v4, :cond_4

    .line 107
    .line 108
    div-float/2addr p1, v1

    .line 109
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    div-float/2addr v1, p1

    .line 115
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 116
    .line 117
    .line 118
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_1

    .line 120
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-lez v1, :cond_6

    .line 129
    .line 130
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 131
    .line 132
    .line 133
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    goto :goto_1

    .line 135
    :catch_0
    :cond_6
    move p1, v0

    .line 136
    :goto_1
    cmpl-float v0, p1, v0

    .line 137
    .line 138
    if-lez v0, :cond_7

    .line 139
    .line 140
    iput p1, p0, Lu/e;->X:F

    .line 141
    .line 142
    iput v5, p0, Lu/e;->Y:I

    .line 143
    .line 144
    :cond_7
    return-void

    .line 145
    :cond_8
    :goto_2
    iput v0, p0, Lu/e;->X:F

    .line 146
    .line 147
    return-void
.end method

.method public setFinalBaseline(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu/e;->E:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lu/e;->b0:I

    .line 7
    .line 8
    sub-int v0, p1, v0

    .line 9
    .line 10
    iget v1, p0, Lu/e;->W:I

    .line 11
    .line 12
    add-int/2addr v1, v0

    .line 13
    iput v0, p0, Lu/e;->a0:I

    .line 14
    .line 15
    iget-object v2, p0, Lu/e;->J:Lu/d;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Lu/d;->setFinalValue(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lu/e;->L:Lu/d;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lu/d;->setFinalValue(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lu/e;->M:Lu/d;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lu/d;->setFinalValue(I)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lu/e;->l:Z

    .line 32
    .line 33
    return-void
.end method

.method public setFinalHorizontal(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/e;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lu/d;->setFinalValue(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lu/e;->K:Lu/d;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lu/d;->setFinalValue(I)V

    .line 14
    .line 15
    .line 16
    iput p1, p0, Lu/e;->Z:I

    .line 17
    .line 18
    sub-int/2addr p2, p1

    .line 19
    iput p2, p0, Lu/e;->V:I

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lu/e;->k:Z

    .line 23
    .line 24
    return-void
.end method

.method public setFinalLeft(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu/d;->setFinalValue(I)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lu/e;->Z:I

    .line 7
    .line 8
    return-void
.end method

.method public setFinalTop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu/d;->setFinalValue(I)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lu/e;->a0:I

    .line 7
    .line 8
    return-void
.end method

.method public setFinalVertical(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu/e;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lu/e;->J:Lu/d;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lu/d;->setFinalValue(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lu/e;->L:Lu/d;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lu/d;->setFinalValue(I)V

    .line 14
    .line 15
    .line 16
    iput p1, p0, Lu/e;->a0:I

    .line 17
    .line 18
    sub-int/2addr p2, p1

    .line 19
    iput p2, p0, Lu/e;->W:I

    .line 20
    .line 21
    iget-boolean p2, p0, Lu/e;->E:Z

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget p2, p0, Lu/e;->b0:I

    .line 26
    .line 27
    add-int/2addr p1, p2

    .line 28
    iget-object p2, p0, Lu/e;->M:Lu/d;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lu/d;->setFinalValue(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lu/e;->l:Z

    .line 35
    .line 36
    return-void
.end method

.method public setFrame(IIII)V
    .locals 3

    .line 1
    sub-int/2addr p3, p1

    .line 2
    sub-int/2addr p4, p2

    .line 3
    iput p1, p0, Lu/e;->Z:I

    .line 4
    .line 5
    iput p2, p0, Lu/e;->a0:I

    .line 6
    .line 7
    iget p1, p0, Lu/e;->h0:I

    .line 8
    .line 9
    const/16 p2, 0x8

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    .line 14
    iput v0, p0, Lu/e;->V:I

    .line 15
    .line 16
    iput v0, p0, Lu/e;->W:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 20
    .line 21
    aget-object p2, p1, v0

    .line 22
    .line 23
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 24
    .line 25
    if-ne p2, v0, :cond_1

    .line 26
    .line 27
    iget v1, p0, Lu/e;->V:I

    .line 28
    .line 29
    if-ge p3, v1, :cond_1

    .line 30
    .line 31
    move p3, v1

    .line 32
    :cond_1
    const/4 v1, 0x1

    .line 33
    aget-object v2, p1, v1

    .line 34
    .line 35
    if-ne v2, v0, :cond_2

    .line 36
    .line 37
    iget v0, p0, Lu/e;->W:I

    .line 38
    .line 39
    if-ge p4, v0, :cond_2

    .line 40
    .line 41
    move p4, v0

    .line 42
    :cond_2
    iput p3, p0, Lu/e;->V:I

    .line 43
    .line 44
    iput p4, p0, Lu/e;->W:I

    .line 45
    .line 46
    iget v0, p0, Lu/e;->d0:I

    .line 47
    .line 48
    if-ge p4, v0, :cond_3

    .line 49
    .line 50
    iput v0, p0, Lu/e;->W:I

    .line 51
    .line 52
    :cond_3
    iget v0, p0, Lu/e;->c0:I

    .line 53
    .line 54
    if-ge p3, v0, :cond_4

    .line 55
    .line 56
    iput v0, p0, Lu/e;->V:I

    .line 57
    .line 58
    :cond_4
    iget v0, p0, Lu/e;->v:I

    .line 59
    .line 60
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 61
    .line 62
    if-lez v0, :cond_5

    .line 63
    .line 64
    if-ne p2, v2, :cond_5

    .line 65
    .line 66
    iget p2, p0, Lu/e;->V:I

    .line 67
    .line 68
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    iput p2, p0, Lu/e;->V:I

    .line 73
    .line 74
    :cond_5
    iget p2, p0, Lu/e;->y:I

    .line 75
    .line 76
    if-lez p2, :cond_6

    .line 77
    .line 78
    aget-object p1, p1, v1

    .line 79
    .line 80
    if-ne p1, v2, :cond_6

    .line 81
    .line 82
    iget p1, p0, Lu/e;->W:I

    .line 83
    .line 84
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput p1, p0, Lu/e;->W:I

    .line 89
    .line 90
    :cond_6
    iget p1, p0, Lu/e;->V:I

    .line 91
    .line 92
    if-eq p3, p1, :cond_7

    .line 93
    .line 94
    iput p1, p0, Lu/e;->h:I

    .line 95
    .line 96
    :cond_7
    iget p1, p0, Lu/e;->W:I

    .line 97
    .line 98
    if-eq p4, p1, :cond_8

    .line 99
    .line 100
    iput p1, p0, Lu/e;->i:I

    .line 101
    .line 102
    :cond_8
    return-void
.end method

.method public setHasBaseline(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lu/e;->E:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 1
    iput p1, p0, Lu/e;->W:I

    .line 2
    .line 3
    iget v0, p0, Lu/e;->d0:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iput v0, p0, Lu/e;->W:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->e0:F

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->j0:I

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->Z:I

    .line 2
    .line 3
    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lu/e;->V:I

    .line 5
    .line 6
    iget p1, p0, Lu/e;->c0:I

    .line 7
    .line 8
    if-ge p2, p1, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lu/e;->V:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput-object p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->r:I

    .line 2
    .line 3
    iput p2, p0, Lu/e;->u:I

    .line 4
    .line 5
    const p2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    if-ne p3, p2, :cond_0

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_0
    iput p3, p0, Lu/e;->v:I

    .line 12
    .line 13
    iput p4, p0, Lu/e;->w:F

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    cmpl-float p2, p4, p2

    .line 17
    .line 18
    if-lez p2, :cond_1

    .line 19
    .line 20
    const/high16 p2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpg-float p2, p4, p2

    .line 23
    .line 24
    if-gez p2, :cond_1

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    iput p1, p0, Lu/e;->r:I

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->l0:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public setInBarrier(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/e;->S:[Z

    .line 2
    .line 3
    aput-boolean p2, v0, p1

    .line 4
    .line 5
    return-void
.end method

.method public setInVirtualLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lu/e;->F:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLastMeasureSpec(II)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->G:I

    .line 2
    .line 3
    iput p2, p0, Lu/e;->H:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lu/e;->setMeasureRequested(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->C:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->C:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public setMeasureRequested(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lu/e;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lu/e;->d0:I

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput p1, p0, Lu/e;->d0:I

    .line 8
    .line 9
    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lu/e;->c0:I

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput p1, p0, Lu/e;->c0:I

    .line 8
    .line 9
    return-void
.end method

.method public setOrigin(II)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->Z:I

    .line 2
    .line 3
    iput p2, p0, Lu/e;->a0:I

    .line 4
    .line 5
    return-void
.end method

.method public setParent(Lu/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/e;->U:Lu/e;

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->f0:F

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->k0:I

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->a0:I

    .line 2
    .line 3
    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lu/e;->W:I

    .line 5
    .line 6
    iget p1, p0, Lu/e;->d0:I

    .line 7
    .line 8
    if-ge p2, p1, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lu/e;->W:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput-object p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->s:I

    .line 2
    .line 3
    iput p2, p0, Lu/e;->x:I

    .line 4
    .line 5
    const p2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    if-ne p3, p2, :cond_0

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_0
    iput p3, p0, Lu/e;->y:I

    .line 12
    .line 13
    iput p4, p0, Lu/e;->z:F

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    cmpl-float p2, p4, p2

    .line 17
    .line 18
    if-lez p2, :cond_1

    .line 19
    .line 20
    const/high16 p2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    cmpg-float p2, p4, p2

    .line 23
    .line 24
    if-gez p2, :cond_1

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    iput p1, p0, Lu/e;->s:I

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/e;->l0:[F

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->h0:I

    .line 2
    .line 3
    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lu/e;->V:I

    .line 2
    .line 3
    iget v0, p0, Lu/e;->c0:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iput v0, p0, Lu/e;->V:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setWrapBehaviorInParent(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lu/e;->q:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->Z:I

    .line 2
    .line 3
    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu/e;->a0:I

    .line 2
    .line 3
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 5

    .line 1
    iget p1, p0, Lu/e;->A:I

    .line 2
    .line 3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne p1, v2, :cond_1

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    iput v0, p0, Lu/e;->A:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p3, :cond_1

    .line 18
    .line 19
    if-eqz p4, :cond_1

    .line 20
    .line 21
    iput v1, p0, Lu/e;->A:I

    .line 22
    .line 23
    iget p1, p0, Lu/e;->Y:I

    .line 24
    .line 25
    if-ne p1, v2, :cond_1

    .line 26
    .line 27
    iget p1, p0, Lu/e;->B:F

    .line 28
    .line 29
    div-float p1, p2, p1

    .line 30
    .line 31
    iput p1, p0, Lu/e;->B:F

    .line 32
    .line 33
    :cond_1
    :goto_0
    iget p1, p0, Lu/e;->A:I

    .line 34
    .line 35
    iget-object p3, p0, Lu/e;->K:Lu/d;

    .line 36
    .line 37
    iget-object p4, p0, Lu/e;->I:Lu/d;

    .line 38
    .line 39
    iget-object v3, p0, Lu/e;->L:Lu/d;

    .line 40
    .line 41
    iget-object v4, p0, Lu/e;->J:Lu/d;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v4}, Lu/d;->isConnected()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Lu/d;->isConnected()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    :cond_2
    iput v1, p0, Lu/e;->A:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget p1, p0, Lu/e;->A:I

    .line 61
    .line 62
    if-ne p1, v1, :cond_5

    .line 63
    .line 64
    invoke-virtual {p4}, Lu/d;->isConnected()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    invoke-virtual {p3}, Lu/d;->isConnected()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    :cond_4
    iput v0, p0, Lu/e;->A:I

    .line 77
    .line 78
    :cond_5
    :goto_1
    iget p1, p0, Lu/e;->A:I

    .line 79
    .line 80
    if-ne p1, v2, :cond_8

    .line 81
    .line 82
    invoke-virtual {v4}, Lu/d;->isConnected()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    invoke-virtual {v3}, Lu/d;->isConnected()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    invoke-virtual {p4}, Lu/d;->isConnected()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-virtual {p3}, Lu/d;->isConnected()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_8

    .line 105
    .line 106
    :cond_6
    invoke-virtual {v4}, Lu/d;->isConnected()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_7

    .line 111
    .line 112
    invoke-virtual {v3}, Lu/d;->isConnected()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    iput v0, p0, Lu/e;->A:I

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    invoke-virtual {p4}, Lu/d;->isConnected()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    invoke-virtual {p3}, Lu/d;->isConnected()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_8

    .line 132
    .line 133
    iget p1, p0, Lu/e;->B:F

    .line 134
    .line 135
    div-float p1, p2, p1

    .line 136
    .line 137
    iput p1, p0, Lu/e;->B:F

    .line 138
    .line 139
    iput v1, p0, Lu/e;->A:I

    .line 140
    .line 141
    :cond_8
    :goto_2
    iget p1, p0, Lu/e;->A:I

    .line 142
    .line 143
    if-ne p1, v2, :cond_a

    .line 144
    .line 145
    iget p1, p0, Lu/e;->u:I

    .line 146
    .line 147
    if-lez p1, :cond_9

    .line 148
    .line 149
    iget p3, p0, Lu/e;->x:I

    .line 150
    .line 151
    if-nez p3, :cond_9

    .line 152
    .line 153
    iput v0, p0, Lu/e;->A:I

    .line 154
    .line 155
    return-void

    .line 156
    :cond_9
    if-nez p1, :cond_a

    .line 157
    .line 158
    iget p1, p0, Lu/e;->x:I

    .line 159
    .line 160
    if-lez p1, :cond_a

    .line 161
    .line 162
    iget p1, p0, Lu/e;->B:F

    .line 163
    .line 164
    div-float/2addr p2, p1

    .line 165
    iput p2, p0, Lu/e;->B:F

    .line 166
    .line 167
    iput v1, p0, Lu/e;->A:I

    .line 168
    .line 169
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {v0}, Lb/c;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lu/e;->i0:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "id: "

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lu/e;->i0:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, " "

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "("

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lu/e;->Z:I

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", "

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lu/e;->a0:I

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ") - ("

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lu/e;->V:I

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, " x "

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lu/e;->W:I

    .line 65
    .line 66
    const-string v2, ")"

    .line 67
    .line 68
    invoke-static {v1, v0, v2}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public updateFromRuns(ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->isResolved()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/2addr p1, v0

    .line 8
    iget-object v0, p0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->isResolved()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    and-int/2addr p2, v0

    .line 15
    iget-object v0, p0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 18
    .line 19
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 20
    .line 21
    iget-object v2, p0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 22
    .line 23
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 24
    .line 25
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 28
    .line 29
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 32
    .line 33
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 34
    .line 35
    sub-int v4, v0, v1

    .line 36
    .line 37
    sub-int v5, v2, v3

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    if-ltz v4, :cond_0

    .line 41
    .line 42
    if-ltz v5, :cond_0

    .line 43
    .line 44
    const/high16 v4, -0x80000000

    .line 45
    .line 46
    if-eq v1, v4, :cond_0

    .line 47
    .line 48
    const v5, 0x7fffffff

    .line 49
    .line 50
    .line 51
    if-eq v1, v5, :cond_0

    .line 52
    .line 53
    if-eq v3, v4, :cond_0

    .line 54
    .line 55
    if-eq v3, v5, :cond_0

    .line 56
    .line 57
    if-eq v0, v4, :cond_0

    .line 58
    .line 59
    if-eq v0, v5, :cond_0

    .line 60
    .line 61
    if-eq v2, v4, :cond_0

    .line 62
    .line 63
    if-ne v2, v5, :cond_1

    .line 64
    .line 65
    :cond_0
    move v0, v6

    .line 66
    move v1, v0

    .line 67
    move v2, v1

    .line 68
    move v3, v2

    .line 69
    :cond_1
    sub-int/2addr v0, v1

    .line 70
    sub-int/2addr v2, v3

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iput v1, p0, Lu/e;->Z:I

    .line 74
    .line 75
    :cond_2
    if-eqz p2, :cond_3

    .line 76
    .line 77
    iput v3, p0, Lu/e;->a0:I

    .line 78
    .line 79
    :cond_3
    iget v1, p0, Lu/e;->h0:I

    .line 80
    .line 81
    const/16 v3, 0x8

    .line 82
    .line 83
    if-ne v1, v3, :cond_4

    .line 84
    .line 85
    iput v6, p0, Lu/e;->V:I

    .line 86
    .line 87
    iput v6, p0, Lu/e;->W:I

    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 91
    .line 92
    iget-object v3, p0, Lu/e;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    aget-object p1, v3, v6

    .line 97
    .line 98
    if-ne p1, v1, :cond_5

    .line 99
    .line 100
    iget p1, p0, Lu/e;->V:I

    .line 101
    .line 102
    if-ge v0, p1, :cond_5

    .line 103
    .line 104
    move v0, p1

    .line 105
    :cond_5
    iput v0, p0, Lu/e;->V:I

    .line 106
    .line 107
    iget p1, p0, Lu/e;->c0:I

    .line 108
    .line 109
    if-ge v0, p1, :cond_6

    .line 110
    .line 111
    iput p1, p0, Lu/e;->V:I

    .line 112
    .line 113
    :cond_6
    if-eqz p2, :cond_8

    .line 114
    .line 115
    const/4 p1, 0x1

    .line 116
    aget-object p1, v3, p1

    .line 117
    .line 118
    if-ne p1, v1, :cond_7

    .line 119
    .line 120
    iget p1, p0, Lu/e;->W:I

    .line 121
    .line 122
    if-ge v2, p1, :cond_7

    .line 123
    .line 124
    move v2, p1

    .line 125
    :cond_7
    iput v2, p0, Lu/e;->W:I

    .line 126
    .line 127
    iget p1, p0, Lu/e;->d0:I

    .line 128
    .line 129
    if-ge v2, p1, :cond_8

    .line 130
    .line 131
    iput p1, p0, Lu/e;->W:I

    .line 132
    .line 133
    :cond_8
    return-void
.end method

.method public updateFromSolver(Lr/f;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lu/e;->I:Lu/d;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lr/f;->getObjectVariableValue(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lu/e;->J:Lu/d;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lr/f;->getObjectVariableValue(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lu/e;->K:Lu/d;

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lr/f;->getObjectVariableValue(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lu/e;->L:Lu/d;

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Lr/f;->getObjectVariableValue(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 32
    .line 33
    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 38
    .line 39
    iget-boolean v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 40
    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    iget v0, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 44
    .line 45
    iget v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 46
    .line 47
    :cond_0
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iget-object p2, p0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 54
    .line 55
    iget-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 60
    .line 61
    iget-boolean v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 66
    .line 67
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 68
    .line 69
    :cond_1
    sub-int p2, v2, v0

    .line 70
    .line 71
    sub-int v3, p1, v1

    .line 72
    .line 73
    if-ltz p2, :cond_2

    .line 74
    .line 75
    if-ltz v3, :cond_2

    .line 76
    .line 77
    const/high16 p2, -0x80000000

    .line 78
    .line 79
    if-eq v0, p2, :cond_2

    .line 80
    .line 81
    const v3, 0x7fffffff

    .line 82
    .line 83
    .line 84
    if-eq v0, v3, :cond_2

    .line 85
    .line 86
    if-eq v1, p2, :cond_2

    .line 87
    .line 88
    if-eq v1, v3, :cond_2

    .line 89
    .line 90
    if-eq v2, p2, :cond_2

    .line 91
    .line 92
    if-eq v2, v3, :cond_2

    .line 93
    .line 94
    if-eq p1, p2, :cond_2

    .line 95
    .line 96
    if-ne p1, v3, :cond_3

    .line 97
    .line 98
    :cond_2
    const/4 v0, 0x0

    .line 99
    move p1, v0

    .line 100
    move v1, p1

    .line 101
    move v2, v1

    .line 102
    :cond_3
    invoke-virtual {p0, v0, v1, v2, p1}, Lu/e;->setFrame(IIII)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
