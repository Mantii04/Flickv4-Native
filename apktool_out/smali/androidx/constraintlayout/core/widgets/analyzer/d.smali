.class public final Landroidx/constraintlayout/core/widgets/analyzer/d;
.super Landroidx/constraintlayout/core/widgets/analyzer/f;
.source "SourceFile"


# static fields
.field public static final k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:[I

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lu/e;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/f;-><init>(Lu/e;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 5
    .line 6
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->j:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 7
    .line 8
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 11
    .line 12
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->m:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 13
    .line 14
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 18
    .line 19
    return-void
.end method

.method public static d([IIIIIFI)V
    .locals 2

    .line 1
    sub-int/2addr p2, p1

    .line 2
    sub-int/2addr p4, p3

    .line 3
    const/4 p1, -0x1

    .line 4
    const/4 p3, 0x0

    .line 5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p6, p1, :cond_2

    .line 9
    .line 10
    if-eqz p6, :cond_1

    .line 11
    .line 12
    if-eq p6, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    int-to-float p1, p2

    .line 16
    mul-float/2addr p1, p5

    .line 17
    add-float/2addr p1, v0

    .line 18
    float-to-int p1, p1

    .line 19
    aput p2, p0, p3

    .line 20
    .line 21
    aput p1, p0, v1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    int-to-float p1, p4

    .line 25
    mul-float/2addr p1, p5

    .line 26
    add-float/2addr p1, v0

    .line 27
    float-to-int p1, p1

    .line 28
    aput p1, p0, p3

    .line 29
    .line 30
    aput p4, p0, v1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    int-to-float p1, p4

    .line 34
    mul-float/2addr p1, p5

    .line 35
    add-float/2addr p1, v0

    .line 36
    float-to-int p1, p1

    .line 37
    int-to-float p6, p2

    .line 38
    div-float/2addr p6, p5

    .line 39
    add-float/2addr p6, v0

    .line 40
    float-to-int p5, p6

    .line 41
    if-gt p1, p2, :cond_3

    .line 42
    .line 43
    aput p1, p0, p3

    .line 44
    .line 45
    aput p4, p0, v1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    if-gt p5, p4, :cond_4

    .line 49
    .line 50
    aput p2, p0, p3

    .line 51
    .line 52
    aput p5, p0, v1

    .line 53
    .line 54
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 2
    .line 3
    iget-boolean v1, v0, Lu/e;->a:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lu/e;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 17
    .line 18
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 19
    .line 20
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 21
    .line 22
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 23
    .line 24
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 25
    .line 26
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 31
    .line 32
    invoke-virtual {v0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    .line 38
    if-eq v0, v3, :cond_5

    .line 39
    .line 40
    if-ne v0, v1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 43
    .line 44
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    if-eq v7, v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    if-ne v7, v1, :cond_2

    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0}, Lu/e;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 67
    .line 68
    iget-object v3, v3, Lu/e;->I:Lu/d;

    .line 69
    .line 70
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    sub-int/2addr v1, v3

    .line 75
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 76
    .line 77
    iget-object v3, v3, Lu/e;->K:Lu/d;

    .line 78
    .line 79
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    sub-int/2addr v1, v3

    .line 84
    iget-object v3, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 85
    .line 86
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 87
    .line 88
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 89
    .line 90
    iget-object v4, v4, Lu/e;->I:Lu/d;

    .line 91
    .line 92
    invoke-virtual {v4}, Lu/d;->getMargin()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {p0, v6, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 100
    .line 101
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 102
    .line 103
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 104
    .line 105
    iget-object v3, v3, Lu/e;->K:Lu/d;

    .line 106
    .line 107
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    neg-int v3, v3

    .line 112
    invoke-virtual {p0, v5, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 120
    .line 121
    if-ne v0, v4, :cond_5

    .line 122
    .line 123
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 124
    .line 125
    invoke-virtual {v0}, Lu/e;->getWidth()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 134
    .line 135
    if-ne v0, v1, :cond_5

    .line 136
    .line 137
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 138
    .line 139
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    invoke-virtual {v0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    if-eq v7, v4, :cond_4

    .line 150
    .line 151
    invoke-virtual {v0}, Lu/e;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    if-ne v4, v1, :cond_5

    .line 156
    .line 157
    :cond_4
    iget-object v1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 158
    .line 159
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 160
    .line 161
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 162
    .line 163
    iget-object v2, v2, Lu/e;->I:Lu/d;

    .line 164
    .line 165
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual {p0, v6, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 170
    .line 171
    .line 172
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 173
    .line 174
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 175
    .line 176
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 177
    .line 178
    iget-object v1, v1, Lu/e;->K:Lu/d;

    .line 179
    .line 180
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    neg-int v1, v1

    .line 185
    invoke-virtual {p0, v5, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_5
    :goto_0
    iget-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 190
    .line 191
    const/4 v1, 0x0

    .line 192
    const/4 v4, 0x1

    .line 193
    if-eqz v0, :cond_c

    .line 194
    .line 195
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 196
    .line 197
    iget-boolean v7, v0, Lu/e;->a:Z

    .line 198
    .line 199
    if-eqz v7, :cond_c

    .line 200
    .line 201
    iget-object v3, v0, Lu/e;->Q:[Lu/d;

    .line 202
    .line 203
    aget-object v7, v3, v1

    .line 204
    .line 205
    iget-object v8, v7, Lu/d;->f:Lu/d;

    .line 206
    .line 207
    if-eqz v8, :cond_9

    .line 208
    .line 209
    aget-object v9, v3, v4

    .line 210
    .line 211
    iget-object v9, v9, Lu/d;->f:Lu/d;

    .line 212
    .line 213
    if-eqz v9, :cond_9

    .line 214
    .line 215
    invoke-virtual {v0}, Lu/e;->isInHorizontalChain()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_6

    .line 220
    .line 221
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 222
    .line 223
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 224
    .line 225
    aget-object v0, v0, v1

    .line 226
    .line 227
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    iput v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 232
    .line 233
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 234
    .line 235
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 236
    .line 237
    aget-object v0, v0, v4

    .line 238
    .line 239
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    neg-int v0, v0

    .line 244
    iput v0, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 245
    .line 246
    return-void

    .line 247
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 248
    .line 249
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 250
    .line 251
    aget-object v0, v0, v1

    .line 252
    .line 253
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    if-eqz v0, :cond_7

    .line 258
    .line 259
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 260
    .line 261
    iget-object v2, v2, Lu/e;->Q:[Lu/d;

    .line 262
    .line 263
    aget-object v1, v2, v1

    .line 264
    .line 265
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-virtual {p0, v6, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 270
    .line 271
    .line 272
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 273
    .line 274
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 275
    .line 276
    aget-object v0, v0, v4

    .line 277
    .line 278
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-eqz v0, :cond_8

    .line 283
    .line 284
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 285
    .line 286
    iget-object v1, v1, Lu/e;->Q:[Lu/d;

    .line 287
    .line 288
    aget-object v1, v1, v4

    .line 289
    .line 290
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    neg-int v1, v1

    .line 295
    invoke-virtual {p0, v5, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 296
    .line 297
    .line 298
    :cond_8
    iput-boolean v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    .line 299
    .line 300
    iput-boolean v4, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    .line 301
    .line 302
    return-void

    .line 303
    :cond_9
    if-eqz v8, :cond_a

    .line 304
    .line 305
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-eqz v0, :cond_1a

    .line 310
    .line 311
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 312
    .line 313
    iget-object v3, v3, Lu/e;->Q:[Lu/d;

    .line 314
    .line 315
    aget-object v1, v3, v1

    .line 316
    .line 317
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    invoke-virtual {p0, v6, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 322
    .line 323
    .line 324
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 325
    .line 326
    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :cond_a
    aget-object v1, v3, v4

    .line 331
    .line 332
    iget-object v3, v1, Lu/d;->f:Lu/d;

    .line 333
    .line 334
    if-eqz v3, :cond_b

    .line 335
    .line 336
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    if-eqz v0, :cond_1a

    .line 341
    .line 342
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 343
    .line 344
    iget-object v1, v1, Lu/e;->Q:[Lu/d;

    .line 345
    .line 346
    aget-object v1, v1, v4

    .line 347
    .line 348
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    neg-int v1, v1

    .line 353
    invoke-virtual {p0, v5, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 354
    .line 355
    .line 356
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 357
    .line 358
    neg-int v0, v0

    .line 359
    invoke-virtual {p0, v6, v5, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :cond_b
    instance-of v1, v0, Lu/j;

    .line 364
    .line 365
    if-nez v1, :cond_1a

    .line 366
    .line 367
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    if-eqz v0, :cond_1a

    .line 372
    .line 373
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 374
    .line 375
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->n:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    iget-object v0, v0, Lu/d;->f:Lu/d;

    .line 382
    .line 383
    if-nez v0, :cond_1a

    .line 384
    .line 385
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 386
    .line 387
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 392
    .line 393
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 394
    .line 395
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 396
    .line 397
    invoke-virtual {v1}, Lu/e;->getX()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-virtual {p0, v6, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 402
    .line 403
    .line 404
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 405
    .line 406
    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 411
    .line 412
    if-ne v0, v3, :cond_13

    .line 413
    .line 414
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 415
    .line 416
    iget v3, v0, Lu/e;->r:I

    .line 417
    .line 418
    const/4 v7, 0x2

    .line 419
    if-eq v3, v7, :cond_11

    .line 420
    .line 421
    const/4 v7, 0x3

    .line 422
    if-eq v3, v7, :cond_d

    .line 423
    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :cond_d
    iget v3, v0, Lu/e;->s:I

    .line 427
    .line 428
    if-ne v3, v7, :cond_10

    .line 429
    .line 430
    iput-object p0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 431
    .line 432
    iput-object p0, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 433
    .line 434
    iget-object v3, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 435
    .line 436
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 437
    .line 438
    iput-object p0, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 439
    .line 440
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 441
    .line 442
    iput-object p0, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 443
    .line 444
    iput-object p0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 445
    .line 446
    invoke-virtual {v0}, Lu/e;->isInVerticalChain()Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_e

    .line 451
    .line 452
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 453
    .line 454
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 455
    .line 456
    iget-object v3, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 457
    .line 458
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 459
    .line 460
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 464
    .line 465
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 466
    .line 467
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 468
    .line 469
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 475
    .line 476
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 477
    .line 478
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 479
    .line 480
    iput-object p0, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 481
    .line 482
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 483
    .line 484
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 485
    .line 486
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 490
    .line 491
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 492
    .line 493
    iget-object v3, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 494
    .line 495
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 496
    .line 497
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 501
    .line 502
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 503
    .line 504
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 505
    .line 506
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 512
    .line 513
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 514
    .line 515
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 516
    .line 517
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 518
    .line 519
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    goto/16 :goto_1

    .line 523
    .line 524
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 525
    .line 526
    invoke-virtual {v0}, Lu/e;->isInHorizontalChain()Z

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_f

    .line 531
    .line 532
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 533
    .line 534
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 535
    .line 536
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 537
    .line 538
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 539
    .line 540
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 544
    .line 545
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 546
    .line 547
    iget-object v3, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 548
    .line 549
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 550
    .line 551
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    goto :goto_1

    .line 555
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 556
    .line 557
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 558
    .line 559
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 560
    .line 561
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    goto :goto_1

    .line 567
    :cond_10
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 568
    .line 569
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 570
    .line 571
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 572
    .line 573
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 577
    .line 578
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 582
    .line 583
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 584
    .line 585
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 586
    .line 587
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 588
    .line 589
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 593
    .line 594
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 595
    .line 596
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 597
    .line 598
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 599
    .line 600
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    iput-boolean v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    .line 604
    .line 605
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 611
    .line 612
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 616
    .line 617
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 621
    .line 622
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    goto :goto_1

    .line 626
    :cond_11
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    if-nez v0, :cond_12

    .line 631
    .line 632
    goto :goto_1

    .line 633
    :cond_12
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 634
    .line 635
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 636
    .line 637
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 638
    .line 639
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 643
    .line 644
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    iput-boolean v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    .line 648
    .line 649
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 650
    .line 651
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    :cond_13
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 660
    .line 661
    iget-object v3, v0, Lu/e;->Q:[Lu/d;

    .line 662
    .line 663
    aget-object v7, v3, v1

    .line 664
    .line 665
    iget-object v8, v7, Lu/d;->f:Lu/d;

    .line 666
    .line 667
    if-eqz v8, :cond_17

    .line 668
    .line 669
    aget-object v9, v3, v4

    .line 670
    .line 671
    iget-object v9, v9, Lu/d;->f:Lu/d;

    .line 672
    .line 673
    if-eqz v9, :cond_17

    .line 674
    .line 675
    invoke-virtual {v0}, Lu/e;->isInHorizontalChain()Z

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-eqz v0, :cond_14

    .line 680
    .line 681
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 682
    .line 683
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 684
    .line 685
    aget-object v0, v0, v1

    .line 686
    .line 687
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    iput v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 692
    .line 693
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 694
    .line 695
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 696
    .line 697
    aget-object v0, v0, v4

    .line 698
    .line 699
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    neg-int v0, v0

    .line 704
    iput v0, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 705
    .line 706
    return-void

    .line 707
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 708
    .line 709
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 710
    .line 711
    aget-object v0, v0, v1

    .line 712
    .line 713
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 718
    .line 719
    iget-object v1, v1, Lu/e;->Q:[Lu/d;

    .line 720
    .line 721
    aget-object v1, v1, v4

    .line 722
    .line 723
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    if-eqz v0, :cond_15

    .line 728
    .line 729
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->addDependency(Lv/f;)V

    .line 730
    .line 731
    .line 732
    :cond_15
    if-eqz v1, :cond_16

    .line 733
    .line 734
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->addDependency(Lv/f;)V

    .line 735
    .line 736
    .line 737
    :cond_16
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->e:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 738
    .line 739
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 740
    .line 741
    return-void

    .line 742
    :cond_17
    if-eqz v8, :cond_18

    .line 743
    .line 744
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    if-eqz v0, :cond_1a

    .line 749
    .line 750
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 751
    .line 752
    iget-object v3, v3, Lu/e;->Q:[Lu/d;

    .line 753
    .line 754
    aget-object v1, v3, v1

    .line 755
    .line 756
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 757
    .line 758
    .line 759
    move-result v1

    .line 760
    invoke-virtual {p0, v6, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {p0, v5, v6, v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 764
    .line 765
    .line 766
    return-void

    .line 767
    :cond_18
    aget-object v1, v3, v4

    .line 768
    .line 769
    iget-object v3, v1, Lu/d;->f:Lu/d;

    .line 770
    .line 771
    if-eqz v3, :cond_19

    .line 772
    .line 773
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    if-eqz v0, :cond_1a

    .line 778
    .line 779
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 780
    .line 781
    iget-object v1, v1, Lu/e;->Q:[Lu/d;

    .line 782
    .line 783
    aget-object v1, v1, v4

    .line 784
    .line 785
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    neg-int v1, v1

    .line 790
    invoke-virtual {p0, v5, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 791
    .line 792
    .line 793
    const/4 v0, -0x1

    .line 794
    invoke-virtual {p0, v6, v5, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 795
    .line 796
    .line 797
    return-void

    .line 798
    :cond_19
    instance-of v1, v0, Lu/j;

    .line 799
    .line 800
    if-nez v1, :cond_1a

    .line 801
    .line 802
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    if-eqz v0, :cond_1a

    .line 807
    .line 808
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 809
    .line 810
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 815
    .line 816
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 817
    .line 818
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 819
    .line 820
    invoke-virtual {v1}, Lu/e;->getX()I

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    invoke-virtual {p0, v6, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p0, v5, v6, v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 828
    .line 829
    .line 830
    :cond_1a
    return-void
.end method

.method public applyToWidget()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 8
    .line 9
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lu/e;->setX(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->c:Lv/k;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->clear()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 21
    .line 22
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 9
    .line 10
    iget v0, v0, Lu/e;->r:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_1
    return v2
.end method

.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->clear()V

    .line 7
    .line 8
    .line 9
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->clear()V

    .line 14
    .line 15
    .line 16
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 19
    .line 20
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 21
    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HorizontalRun "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 9
    .line 10
    invoke-virtual {v1}, Lu/e;->getDebugName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public update(Lv/f;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    if-eq v1, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 21
    .line 22
    iget-object v2, v1, Lu/e;->I:Lu/d;

    .line 23
    .line 24
    iget-object v1, v1, Lu/e;->K:Lu/d;

    .line 25
    .line 26
    move-object/from16 v6, p1

    .line 27
    .line 28
    invoke-virtual {v0, v6, v2, v1, v5}, Landroidx/constraintlayout/core/widgets/analyzer/f;->updateRunCenter(Lv/f;Lu/d;Lu/d;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    move-object/from16 v6, p1

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->updateRunEnd(Lv/f;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object/from16 v6, p1

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->updateRunStart(Lv/f;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 44
    .line 45
    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 46
    .line 47
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 48
    .line 49
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 50
    .line 51
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 52
    .line 53
    const/high16 v10, 0x3f000000    # 0.5f

    .line 54
    .line 55
    if-nez v6, :cond_1f

    .line 56
    .line 57
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 58
    .line 59
    if-ne v6, v7, :cond_1f

    .line 60
    .line 61
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 62
    .line 63
    iget v11, v6, Lu/e;->r:I

    .line 64
    .line 65
    if-eq v11, v2, :cond_1e

    .line 66
    .line 67
    if-eq v11, v3, :cond_3

    .line 68
    .line 69
    goto/16 :goto_8

    .line 70
    .line 71
    :cond_3
    iget v2, v6, Lu/e;->s:I

    .line 72
    .line 73
    const/4 v11, -0x1

    .line 74
    if-eqz v2, :cond_8

    .line 75
    .line 76
    if-ne v2, v3, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    invoke-virtual {v6}, Lu/e;->getDimensionRatioSide()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eq v2, v11, :cond_7

    .line 84
    .line 85
    if-eqz v2, :cond_6

    .line 86
    .line 87
    if-eq v2, v4, :cond_5

    .line 88
    .line 89
    move v2, v5

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 92
    .line 93
    iget-object v3, v2, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 94
    .line 95
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 96
    .line 97
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 98
    .line 99
    int-to-float v3, v3

    .line 100
    invoke-virtual {v2}, Lu/e;->getDimensionRatio()F

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    :goto_1
    mul-float/2addr v2, v3

    .line 105
    add-float/2addr v2, v10

    .line 106
    float-to-int v2, v2

    .line 107
    goto :goto_2

    .line 108
    :cond_6
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 109
    .line 110
    iget-object v3, v2, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 111
    .line 112
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 113
    .line 114
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 115
    .line 116
    int-to-float v3, v3

    .line 117
    invoke-virtual {v2}, Lu/e;->getDimensionRatio()F

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    div-float/2addr v3, v2

    .line 122
    add-float/2addr v3, v10

    .line 123
    float-to-int v2, v3

    .line 124
    goto :goto_2

    .line 125
    :cond_7
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 126
    .line 127
    iget-object v3, v2, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 128
    .line 129
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 130
    .line 131
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 132
    .line 133
    int-to-float v3, v3

    .line 134
    invoke-virtual {v2}, Lu/e;->getDimensionRatio()F

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    goto :goto_1

    .line 139
    :goto_2
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_8

    .line 143
    .line 144
    :cond_8
    :goto_3
    iget-object v2, v6, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 145
    .line 146
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 147
    .line 148
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 149
    .line 150
    iget-object v12, v6, Lu/e;->I:Lu/d;

    .line 151
    .line 152
    iget-object v12, v12, Lu/d;->f:Lu/d;

    .line 153
    .line 154
    if-eqz v12, :cond_9

    .line 155
    .line 156
    move v12, v4

    .line 157
    goto :goto_4

    .line 158
    :cond_9
    move v12, v5

    .line 159
    :goto_4
    iget-object v13, v6, Lu/e;->J:Lu/d;

    .line 160
    .line 161
    iget-object v13, v13, Lu/d;->f:Lu/d;

    .line 162
    .line 163
    if-eqz v13, :cond_a

    .line 164
    .line 165
    move v13, v4

    .line 166
    goto :goto_5

    .line 167
    :cond_a
    move v13, v5

    .line 168
    :goto_5
    iget-object v14, v6, Lu/e;->K:Lu/d;

    .line 169
    .line 170
    iget-object v14, v14, Lu/d;->f:Lu/d;

    .line 171
    .line 172
    if-eqz v14, :cond_b

    .line 173
    .line 174
    move v14, v4

    .line 175
    goto :goto_6

    .line 176
    :cond_b
    move v14, v5

    .line 177
    :goto_6
    iget-object v15, v6, Lu/e;->L:Lu/d;

    .line 178
    .line 179
    iget-object v15, v15, Lu/d;->f:Lu/d;

    .line 180
    .line 181
    if-eqz v15, :cond_c

    .line 182
    .line 183
    move v15, v4

    .line 184
    goto :goto_7

    .line 185
    :cond_c
    move v15, v5

    .line 186
    :goto_7
    invoke-virtual {v6}, Lu/e;->getDimensionRatioSide()I

    .line 187
    .line 188
    .line 189
    move-result v22

    .line 190
    if-eqz v12, :cond_12

    .line 191
    .line 192
    if-eqz v13, :cond_12

    .line 193
    .line 194
    if-eqz v14, :cond_12

    .line 195
    .line 196
    if-eqz v15, :cond_12

    .line 197
    .line 198
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 199
    .line 200
    invoke-virtual {v6}, Lu/e;->getDimensionRatio()F

    .line 201
    .line 202
    .line 203
    move-result v21

    .line 204
    iget-boolean v6, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 205
    .line 206
    sget-object v16, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:[I

    .line 207
    .line 208
    if-eqz v6, :cond_e

    .line 209
    .line 210
    iget-boolean v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 211
    .line 212
    if-eqz v6, :cond_e

    .line 213
    .line 214
    iget-boolean v6, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 215
    .line 216
    if-eqz v6, :cond_27

    .line 217
    .line 218
    iget-boolean v6, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 219
    .line 220
    if-nez v6, :cond_d

    .line 221
    .line 222
    goto/16 :goto_9

    .line 223
    .line 224
    :cond_d
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 231
    .line 232
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 233
    .line 234
    iget v7, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 235
    .line 236
    add-int v17, v6, v7

    .line 237
    .line 238
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 245
    .line 246
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 247
    .line 248
    iget v7, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 249
    .line 250
    sub-int v18, v6, v7

    .line 251
    .line 252
    iget v6, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 253
    .line 254
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 255
    .line 256
    add-int v19, v6, v3

    .line 257
    .line 258
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 259
    .line 260
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 261
    .line 262
    sub-int v20, v3, v2

    .line 263
    .line 264
    invoke-static/range {v16 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/d;->d([IIIIIFI)V

    .line 265
    .line 266
    .line 267
    aget v2, v16, v5

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 273
    .line 274
    iget-object v1, v1, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 275
    .line 276
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 277
    .line 278
    aget v2, v16, v4

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_e
    iget-boolean v6, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 285
    .line 286
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 287
    .line 288
    if-eqz v6, :cond_10

    .line 289
    .line 290
    iget-boolean v6, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 291
    .line 292
    if-eqz v6, :cond_10

    .line 293
    .line 294
    iget-boolean v6, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 295
    .line 296
    if-eqz v6, :cond_27

    .line 297
    .line 298
    iget-boolean v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 299
    .line 300
    if-nez v6, :cond_f

    .line 301
    .line 302
    goto/16 :goto_9

    .line 303
    .line 304
    :cond_f
    iget v6, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 305
    .line 306
    iget v12, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 307
    .line 308
    add-int v17, v6, v12

    .line 309
    .line 310
    iget v6, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 311
    .line 312
    iget v12, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 313
    .line 314
    sub-int v18, v6, v12

    .line 315
    .line 316
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 321
    .line 322
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 323
    .line 324
    iget v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 325
    .line 326
    add-int v19, v6, v12

    .line 327
    .line 328
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 335
    .line 336
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 337
    .line 338
    iget v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 339
    .line 340
    sub-int v20, v6, v12

    .line 341
    .line 342
    invoke-static/range {v16 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/d;->d([IIIIIFI)V

    .line 343
    .line 344
    .line 345
    aget v6, v16, v5

    .line 346
    .line 347
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 348
    .line 349
    .line 350
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 351
    .line 352
    iget-object v6, v6, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 353
    .line 354
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 355
    .line 356
    aget v12, v16, v4

    .line 357
    .line 358
    invoke-virtual {v6, v12}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 359
    .line 360
    .line 361
    :cond_10
    iget-boolean v6, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 362
    .line 363
    if-eqz v6, :cond_27

    .line 364
    .line 365
    iget-boolean v6, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 366
    .line 367
    if-eqz v6, :cond_27

    .line 368
    .line 369
    iget-boolean v6, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 370
    .line 371
    if-eqz v6, :cond_27

    .line 372
    .line 373
    iget-boolean v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 374
    .line 375
    if-nez v6, :cond_11

    .line 376
    .line 377
    goto/16 :goto_9

    .line 378
    .line 379
    :cond_11
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 386
    .line 387
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 388
    .line 389
    iget v12, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 390
    .line 391
    add-int v17, v6, v12

    .line 392
    .line 393
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 400
    .line 401
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 402
    .line 403
    iget v12, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 404
    .line 405
    sub-int v18, v6, v12

    .line 406
    .line 407
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 412
    .line 413
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 414
    .line 415
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 416
    .line 417
    add-int v19, v6, v3

    .line 418
    .line 419
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 420
    .line 421
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 426
    .line 427
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 428
    .line 429
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 430
    .line 431
    sub-int v20, v3, v2

    .line 432
    .line 433
    invoke-static/range {v16 .. v22}, Landroidx/constraintlayout/core/widgets/analyzer/d;->d([IIIIIFI)V

    .line 434
    .line 435
    .line 436
    aget v2, v16, v5

    .line 437
    .line 438
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 439
    .line 440
    .line 441
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 442
    .line 443
    iget-object v2, v2, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 444
    .line 445
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 446
    .line 447
    aget v3, v16, v4

    .line 448
    .line 449
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_8

    .line 453
    .line 454
    :cond_12
    move/from16 v6, v22

    .line 455
    .line 456
    if-eqz v12, :cond_18

    .line 457
    .line 458
    if-eqz v14, :cond_18

    .line 459
    .line 460
    iget-boolean v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 461
    .line 462
    if-eqz v2, :cond_27

    .line 463
    .line 464
    iget-boolean v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 465
    .line 466
    if-nez v2, :cond_13

    .line 467
    .line 468
    goto/16 :goto_9

    .line 469
    .line 470
    :cond_13
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 471
    .line 472
    invoke-virtual {v2}, Lu/e;->getDimensionRatio()F

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 483
    .line 484
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 485
    .line 486
    iget v12, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 487
    .line 488
    add-int/2addr v3, v12

    .line 489
    iget-object v12, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 490
    .line 491
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v12

    .line 495
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 496
    .line 497
    iget v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 498
    .line 499
    iget v13, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 500
    .line 501
    sub-int/2addr v12, v13

    .line 502
    if-eq v6, v11, :cond_16

    .line 503
    .line 504
    if-eqz v6, :cond_16

    .line 505
    .line 506
    if-eq v6, v4, :cond_14

    .line 507
    .line 508
    goto/16 :goto_8

    .line 509
    .line 510
    :cond_14
    sub-int/2addr v12, v3

    .line 511
    invoke-virtual {v0, v12, v5}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    int-to-float v6, v3

    .line 516
    div-float/2addr v6, v2

    .line 517
    add-float/2addr v6, v10

    .line 518
    float-to-int v6, v6

    .line 519
    invoke-virtual {v0, v6, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    if-eq v6, v11, :cond_15

    .line 524
    .line 525
    int-to-float v3, v11

    .line 526
    mul-float/2addr v3, v2

    .line 527
    add-float/2addr v3, v10

    .line 528
    float-to-int v3, v3

    .line 529
    :cond_15
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 530
    .line 531
    .line 532
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 533
    .line 534
    iget-object v2, v2, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 535
    .line 536
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 537
    .line 538
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_8

    .line 542
    .line 543
    :cond_16
    sub-int/2addr v12, v3

    .line 544
    invoke-virtual {v0, v12, v5}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    int-to-float v6, v3

    .line 549
    mul-float/2addr v6, v2

    .line 550
    add-float/2addr v6, v10

    .line 551
    float-to-int v6, v6

    .line 552
    invoke-virtual {v0, v6, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 553
    .line 554
    .line 555
    move-result v11

    .line 556
    if-eq v6, v11, :cond_17

    .line 557
    .line 558
    int-to-float v3, v11

    .line 559
    div-float/2addr v3, v2

    .line 560
    add-float/2addr v3, v10

    .line 561
    float-to-int v3, v3

    .line 562
    :cond_17
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 563
    .line 564
    .line 565
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 566
    .line 567
    iget-object v2, v2, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 568
    .line 569
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 570
    .line 571
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_8

    .line 575
    .line 576
    :cond_18
    if-eqz v13, :cond_1f

    .line 577
    .line 578
    if-eqz v15, :cond_1f

    .line 579
    .line 580
    iget-boolean v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 581
    .line 582
    if-eqz v12, :cond_27

    .line 583
    .line 584
    iget-boolean v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 585
    .line 586
    if-nez v12, :cond_19

    .line 587
    .line 588
    goto/16 :goto_9

    .line 589
    .line 590
    :cond_19
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 591
    .line 592
    invoke-virtual {v12}, Lu/e;->getDimensionRatio()F

    .line 593
    .line 594
    .line 595
    move-result v12

    .line 596
    iget-object v13, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v13

    .line 602
    check-cast v13, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 603
    .line 604
    iget v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 605
    .line 606
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 607
    .line 608
    add-int/2addr v13, v3

    .line 609
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 610
    .line 611
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 616
    .line 617
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 618
    .line 619
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 620
    .line 621
    sub-int/2addr v3, v2

    .line 622
    if-eq v6, v11, :cond_1c

    .line 623
    .line 624
    if-eqz v6, :cond_1a

    .line 625
    .line 626
    if-eq v6, v4, :cond_1c

    .line 627
    .line 628
    goto :goto_8

    .line 629
    :cond_1a
    sub-int/2addr v3, v13

    .line 630
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    int-to-float v3, v2

    .line 635
    mul-float/2addr v3, v12

    .line 636
    add-float/2addr v3, v10

    .line 637
    float-to-int v3, v3

    .line 638
    invoke-virtual {v0, v3, v5}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 639
    .line 640
    .line 641
    move-result v6

    .line 642
    if-eq v3, v6, :cond_1b

    .line 643
    .line 644
    int-to-float v2, v6

    .line 645
    div-float/2addr v2, v12

    .line 646
    add-float/2addr v2, v10

    .line 647
    float-to-int v2, v2

    .line 648
    :cond_1b
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 649
    .line 650
    .line 651
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 652
    .line 653
    iget-object v3, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 654
    .line 655
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 656
    .line 657
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 658
    .line 659
    .line 660
    goto :goto_8

    .line 661
    :cond_1c
    sub-int/2addr v3, v13

    .line 662
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 663
    .line 664
    .line 665
    move-result v2

    .line 666
    int-to-float v3, v2

    .line 667
    div-float/2addr v3, v12

    .line 668
    add-float/2addr v3, v10

    .line 669
    float-to-int v3, v3

    .line 670
    invoke-virtual {v0, v3, v5}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getLimitedDimension(II)I

    .line 671
    .line 672
    .line 673
    move-result v6

    .line 674
    if-eq v3, v6, :cond_1d

    .line 675
    .line 676
    int-to-float v2, v6

    .line 677
    mul-float/2addr v2, v12

    .line 678
    add-float/2addr v2, v10

    .line 679
    float-to-int v2, v2

    .line 680
    :cond_1d
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 681
    .line 682
    .line 683
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 684
    .line 685
    iget-object v3, v3, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 686
    .line 687
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 688
    .line 689
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 690
    .line 691
    .line 692
    goto :goto_8

    .line 693
    :cond_1e
    invoke-virtual {v6}, Lu/e;->getParent()Lu/e;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    if-eqz v2, :cond_1f

    .line 698
    .line 699
    iget-object v2, v2, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 700
    .line 701
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 702
    .line 703
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 704
    .line 705
    if-eqz v3, :cond_1f

    .line 706
    .line 707
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 708
    .line 709
    iget v3, v3, Lu/e;->w:F

    .line 710
    .line 711
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 712
    .line 713
    int-to-float v2, v2

    .line 714
    mul-float/2addr v2, v3

    .line 715
    add-float/2addr v2, v10

    .line 716
    float-to-int v2, v2

    .line 717
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 718
    .line 719
    .line 720
    :cond_1f
    :goto_8
    iget-boolean v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 721
    .line 722
    if-eqz v2, :cond_27

    .line 723
    .line 724
    iget-boolean v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 725
    .line 726
    if-nez v2, :cond_20

    .line 727
    .line 728
    goto/16 :goto_9

    .line 729
    .line 730
    :cond_20
    iget-boolean v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 731
    .line 732
    if-eqz v2, :cond_21

    .line 733
    .line 734
    iget-boolean v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 735
    .line 736
    if-eqz v2, :cond_21

    .line 737
    .line 738
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 739
    .line 740
    if-eqz v2, :cond_21

    .line 741
    .line 742
    goto/16 :goto_9

    .line 743
    .line 744
    :cond_21
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 745
    .line 746
    if-nez v2, :cond_22

    .line 747
    .line 748
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 749
    .line 750
    if-ne v2, v7, :cond_22

    .line 751
    .line 752
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 753
    .line 754
    iget v3, v2, Lu/e;->r:I

    .line 755
    .line 756
    if-nez v3, :cond_22

    .line 757
    .line 758
    invoke-virtual {v2}, Lu/e;->isInHorizontalChain()Z

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    if-nez v2, :cond_22

    .line 763
    .line 764
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 765
    .line 766
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 771
    .line 772
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 773
    .line 774
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v3

    .line 778
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 779
    .line 780
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 781
    .line 782
    iget v4, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 783
    .line 784
    add-int/2addr v2, v4

    .line 785
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 786
    .line 787
    iget v4, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 788
    .line 789
    add-int/2addr v3, v4

    .line 790
    sub-int v4, v3, v2

    .line 791
    .line 792
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v9, v3}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 799
    .line 800
    .line 801
    return-void

    .line 802
    :cond_22
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 803
    .line 804
    if-nez v2, :cond_24

    .line 805
    .line 806
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 807
    .line 808
    if-ne v2, v7, :cond_24

    .line 809
    .line 810
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 811
    .line 812
    if-ne v2, v4, :cond_24

    .line 813
    .line 814
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 815
    .line 816
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    if-lez v2, :cond_24

    .line 821
    .line 822
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 823
    .line 824
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 825
    .line 826
    .line 827
    move-result v2

    .line 828
    if-lez v2, :cond_24

    .line 829
    .line 830
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 831
    .line 832
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 837
    .line 838
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 839
    .line 840
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 845
    .line 846
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 847
    .line 848
    iget v4, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 849
    .line 850
    add-int/2addr v2, v4

    .line 851
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 852
    .line 853
    iget v4, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 854
    .line 855
    add-int/2addr v3, v4

    .line 856
    sub-int/2addr v3, v2

    .line 857
    iget v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 858
    .line 859
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 860
    .line 861
    .line 862
    move-result v2

    .line 863
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 864
    .line 865
    iget v4, v3, Lu/e;->v:I

    .line 866
    .line 867
    iget v3, v3, Lu/e;->u:I

    .line 868
    .line 869
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 870
    .line 871
    .line 872
    move-result v2

    .line 873
    if-lez v4, :cond_23

    .line 874
    .line 875
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 876
    .line 877
    .line 878
    move-result v2

    .line 879
    :cond_23
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 880
    .line 881
    .line 882
    :cond_24
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 883
    .line 884
    if-nez v2, :cond_25

    .line 885
    .line 886
    goto :goto_9

    .line 887
    :cond_25
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 888
    .line 889
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 894
    .line 895
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 896
    .line 897
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 902
    .line 903
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 904
    .line 905
    iget v5, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 906
    .line 907
    add-int/2addr v4, v5

    .line 908
    iget v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 909
    .line 910
    iget v6, v9, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 911
    .line 912
    add-int/2addr v5, v6

    .line 913
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 914
    .line 915
    invoke-virtual {v6}, Lu/e;->getHorizontalBiasPercent()F

    .line 916
    .line 917
    .line 918
    move-result v6

    .line 919
    if-ne v2, v3, :cond_26

    .line 920
    .line 921
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 922
    .line 923
    iget v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 924
    .line 925
    move v6, v10

    .line 926
    :cond_26
    sub-int/2addr v5, v4

    .line 927
    iget v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 928
    .line 929
    sub-int/2addr v5, v2

    .line 930
    int-to-float v2, v4

    .line 931
    add-float/2addr v2, v10

    .line 932
    int-to-float v3, v5

    .line 933
    mul-float/2addr v3, v6

    .line 934
    add-float/2addr v3, v2

    .line 935
    float-to-int v2, v3

    .line 936
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 937
    .line 938
    .line 939
    iget v2, v8, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 940
    .line 941
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 942
    .line 943
    add-int/2addr v2, v1

    .line 944
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 945
    .line 946
    .line 947
    :cond_27
    :goto_9
    return-void
.end method
