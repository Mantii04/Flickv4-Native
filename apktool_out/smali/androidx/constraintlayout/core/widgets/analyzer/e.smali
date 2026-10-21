.class public final Landroidx/constraintlayout/core/widgets/analyzer/e;
.super Landroidx/constraintlayout/core/widgets/analyzer/f;
.source "SourceFile"


# instance fields
.field public final k:Landroidx/constraintlayout/core/widgets/analyzer/a;

.field public l:Lv/a;


# direct methods
.method public constructor <init>(Lu/e;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/f;-><init>(Lu/e;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/f;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lv/a;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 15
    .line 16
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->n:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 17
    .line 18
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 21
    .line 22
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->p:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 23
    .line 24
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 25
    .line 26
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->q:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 27
    .line 28
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

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
    invoke-virtual {v0}, Lu/e;->getHeight()I

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
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 21
    .line 22
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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
    invoke-virtual {v0}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 39
    .line 40
    invoke-virtual {v0}, Lu/e;->hasBaseline()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    new-instance v0, Lv/a;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lv/a;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/f;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lv/a;

    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 54
    .line 55
    if-eq v0, v4, :cond_4

    .line 56
    .line 57
    if-ne v0, v1, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 60
    .line 61
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-ne v1, v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0}, Lu/e;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 78
    .line 79
    iget-object v3, v3, Lu/e;->J:Lu/d;

    .line 80
    .line 81
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    sub-int/2addr v1, v3

    .line 86
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 87
    .line 88
    iget-object v3, v3, Lu/e;->L:Lu/d;

    .line 89
    .line 90
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    sub-int/2addr v1, v3

    .line 95
    iget-object v3, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 96
    .line 97
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 98
    .line 99
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 100
    .line 101
    iget-object v4, v4, Lu/e;->J:Lu/d;

    .line 102
    .line 103
    invoke-virtual {v4}, Lu/d;->getMargin()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {p0, v6, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 111
    .line 112
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 113
    .line 114
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 115
    .line 116
    iget-object v3, v3, Lu/e;->L:Lu/d;

    .line 117
    .line 118
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    neg-int v3, v3

    .line 123
    invoke-virtual {p0, v5, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 131
    .line 132
    if-ne v0, v3, :cond_4

    .line 133
    .line 134
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 135
    .line 136
    invoke-virtual {v0}, Lu/e;->getHeight()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 145
    .line 146
    if-ne v0, v1, :cond_4

    .line 147
    .line 148
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 149
    .line 150
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    invoke-virtual {v0}, Lu/e;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-ne v1, v3, :cond_4

    .line 161
    .line 162
    iget-object v1, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 163
    .line 164
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 165
    .line 166
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 167
    .line 168
    iget-object v2, v2, Lu/e;->J:Lu/d;

    .line 169
    .line 170
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {p0, v6, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 178
    .line 179
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 180
    .line 181
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 182
    .line 183
    iget-object v1, v1, Lu/e;->L:Lu/d;

    .line 184
    .line 185
    invoke-virtual {v1}, Lu/d;->getMargin()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    neg-int v1, v1

    .line 190
    invoke-virtual {p0, v5, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_4
    :goto_0
    iget-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 195
    .line 196
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 197
    .line 198
    const/4 v3, 0x0

    .line 199
    const/4 v7, 0x4

    .line 200
    const/4 v8, 0x2

    .line 201
    const/4 v9, 0x1

    .line 202
    const/4 v10, 0x3

    .line 203
    if-eqz v0, :cond_d

    .line 204
    .line 205
    iget-object v11, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 206
    .line 207
    iget-boolean v12, v11, Lu/e;->a:Z

    .line 208
    .line 209
    if-eqz v12, :cond_d

    .line 210
    .line 211
    iget-object v0, v11, Lu/e;->Q:[Lu/d;

    .line 212
    .line 213
    aget-object v4, v0, v8

    .line 214
    .line 215
    iget-object v12, v4, Lu/d;->f:Lu/d;

    .line 216
    .line 217
    if-eqz v12, :cond_8

    .line 218
    .line 219
    aget-object v13, v0, v10

    .line 220
    .line 221
    iget-object v13, v13, Lu/d;->f:Lu/d;

    .line 222
    .line 223
    if-eqz v13, :cond_8

    .line 224
    .line 225
    invoke-virtual {v11}, Lu/e;->isInVerticalChain()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_5

    .line 230
    .line 231
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 232
    .line 233
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 234
    .line 235
    aget-object v0, v0, v8

    .line 236
    .line 237
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    iput v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 242
    .line 243
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 244
    .line 245
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 246
    .line 247
    aget-object v0, v0, v10

    .line 248
    .line 249
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    neg-int v0, v0

    .line 254
    iput v0, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 258
    .line 259
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 260
    .line 261
    aget-object v0, v0, v8

    .line 262
    .line 263
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-eqz v0, :cond_6

    .line 268
    .line 269
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 270
    .line 271
    iget-object v2, v2, Lu/e;->Q:[Lu/d;

    .line 272
    .line 273
    aget-object v2, v2, v8

    .line 274
    .line 275
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    invoke-virtual {p0, v6, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 280
    .line 281
    .line 282
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 283
    .line 284
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 285
    .line 286
    aget-object v0, v0, v10

    .line 287
    .line 288
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    if-eqz v0, :cond_7

    .line 293
    .line 294
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 295
    .line 296
    iget-object v2, v2, Lu/e;->Q:[Lu/d;

    .line 297
    .line 298
    aget-object v2, v2, v10

    .line 299
    .line 300
    invoke-virtual {v2}, Lu/d;->getMargin()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    neg-int v2, v2

    .line 305
    invoke-virtual {p0, v5, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 306
    .line 307
    .line 308
    :cond_7
    iput-boolean v9, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    .line 309
    .line 310
    iput-boolean v9, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    .line 311
    .line 312
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 313
    .line 314
    invoke-virtual {v0}, Lu/e;->hasBaseline()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_1e

    .line 319
    .line 320
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 321
    .line 322
    invoke-virtual {v0}, Lu/e;->getBaselineDistance()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    invoke-virtual {p0, v1, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :cond_8
    if-eqz v12, :cond_9

    .line 331
    .line 332
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-eqz v0, :cond_1e

    .line 337
    .line 338
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 339
    .line 340
    iget-object v3, v3, Lu/e;->Q:[Lu/d;

    .line 341
    .line 342
    aget-object v3, v3, v8

    .line 343
    .line 344
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    invoke-virtual {p0, v6, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 349
    .line 350
    .line 351
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 352
    .line 353
    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 357
    .line 358
    invoke-virtual {v0}, Lu/e;->hasBaseline()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_1e

    .line 363
    .line 364
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 365
    .line 366
    invoke-virtual {v0}, Lu/e;->getBaselineDistance()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    invoke-virtual {p0, v1, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :cond_9
    aget-object v4, v0, v10

    .line 375
    .line 376
    iget-object v8, v4, Lu/d;->f:Lu/d;

    .line 377
    .line 378
    if-eqz v8, :cond_b

    .line 379
    .line 380
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    if-eqz v0, :cond_a

    .line 385
    .line 386
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 387
    .line 388
    iget-object v3, v3, Lu/e;->Q:[Lu/d;

    .line 389
    .line 390
    aget-object v3, v3, v10

    .line 391
    .line 392
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    neg-int v3, v3

    .line 397
    invoke-virtual {p0, v5, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 398
    .line 399
    .line 400
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 401
    .line 402
    neg-int v0, v0

    .line 403
    invoke-virtual {p0, v6, v5, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 404
    .line 405
    .line 406
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 407
    .line 408
    invoke-virtual {v0}, Lu/e;->hasBaseline()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_1e

    .line 413
    .line 414
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 415
    .line 416
    invoke-virtual {v0}, Lu/e;->getBaselineDistance()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-virtual {p0, v1, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :cond_b
    aget-object v0, v0, v7

    .line 425
    .line 426
    iget-object v4, v0, Lu/d;->f:Lu/d;

    .line 427
    .line 428
    if-eqz v4, :cond_c

    .line 429
    .line 430
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    if-eqz v0, :cond_1e

    .line 435
    .line 436
    invoke-virtual {p0, v1, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 437
    .line 438
    .line 439
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 440
    .line 441
    invoke-virtual {v0}, Lu/e;->getBaselineDistance()I

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    neg-int v0, v0

    .line 446
    invoke-virtual {p0, v6, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 447
    .line 448
    .line 449
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 450
    .line 451
    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :cond_c
    instance-of v0, v11, Lu/j;

    .line 456
    .line 457
    if-nez v0, :cond_1e

    .line 458
    .line 459
    invoke-virtual {v11}, Lu/e;->getParent()Lu/e;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    if-eqz v0, :cond_1e

    .line 464
    .line 465
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 466
    .line 467
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->n:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 468
    .line 469
    invoke-virtual {v0, v3}, Lu/e;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lu/d;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    iget-object v0, v0, Lu/d;->f:Lu/d;

    .line 474
    .line 475
    if-nez v0, :cond_1e

    .line 476
    .line 477
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 478
    .line 479
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 484
    .line 485
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 486
    .line 487
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 488
    .line 489
    invoke-virtual {v3}, Lu/e;->getY()I

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    invoke-virtual {p0, v6, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 494
    .line 495
    .line 496
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 497
    .line 498
    invoke-virtual {p0, v5, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 499
    .line 500
    .line 501
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 502
    .line 503
    invoke-virtual {v0}, Lu/e;->hasBaseline()Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-eqz v0, :cond_1e

    .line 508
    .line 509
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 510
    .line 511
    invoke-virtual {v0}, Lu/e;->getBaselineDistance()I

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    invoke-virtual {p0, v1, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :cond_d
    if-nez v0, :cond_12

    .line 520
    .line 521
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 522
    .line 523
    if-ne v0, v4, :cond_12

    .line 524
    .line 525
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 526
    .line 527
    iget v11, v0, Lu/e;->s:I

    .line 528
    .line 529
    if-eq v11, v8, :cond_10

    .line 530
    .line 531
    if-eq v11, v10, :cond_e

    .line 532
    .line 533
    goto :goto_2

    .line 534
    :cond_e
    invoke-virtual {v0}, Lu/e;->isInVerticalChain()Z

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    if-nez v0, :cond_13

    .line 539
    .line 540
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 541
    .line 542
    iget v11, v0, Lu/e;->r:I

    .line 543
    .line 544
    if-ne v11, v10, :cond_f

    .line 545
    .line 546
    goto :goto_2

    .line 547
    :cond_f
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 548
    .line 549
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 550
    .line 551
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    .line 562
    .line 563
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    goto :goto_2

    .line 574
    :cond_10
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    if-nez v0, :cond_11

    .line 579
    .line 580
    goto :goto_2

    .line 581
    :cond_11
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 582
    .line 583
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 584
    .line 585
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 586
    .line 587
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 591
    .line 592
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    .line 596
    .line 597
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 603
    .line 604
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    goto :goto_2

    .line 608
    :cond_12
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->addDependency(Lv/f;)V

    .line 609
    .line 610
    .line 611
    :cond_13
    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 612
    .line 613
    iget-object v11, v0, Lu/e;->Q:[Lu/d;

    .line 614
    .line 615
    aget-object v12, v11, v8

    .line 616
    .line 617
    iget-object v13, v12, Lu/d;->f:Lu/d;

    .line 618
    .line 619
    if-eqz v13, :cond_17

    .line 620
    .line 621
    aget-object v14, v11, v10

    .line 622
    .line 623
    iget-object v14, v14, Lu/d;->f:Lu/d;

    .line 624
    .line 625
    if-eqz v14, :cond_17

    .line 626
    .line 627
    invoke-virtual {v0}, Lu/e;->isInVerticalChain()Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-eqz v0, :cond_14

    .line 632
    .line 633
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 634
    .line 635
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 636
    .line 637
    aget-object v0, v0, v8

    .line 638
    .line 639
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    iput v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 644
    .line 645
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 646
    .line 647
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 648
    .line 649
    aget-object v0, v0, v10

    .line 650
    .line 651
    invoke-virtual {v0}, Lu/d;->getMargin()I

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    neg-int v0, v0

    .line 656
    iput v0, v5, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 657
    .line 658
    goto :goto_3

    .line 659
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 660
    .line 661
    iget-object v0, v0, Lu/e;->Q:[Lu/d;

    .line 662
    .line 663
    aget-object v0, v0, v8

    .line 664
    .line 665
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 670
    .line 671
    iget-object v3, v3, Lu/e;->Q:[Lu/d;

    .line 672
    .line 673
    aget-object v3, v3, v10

    .line 674
    .line 675
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    if-eqz v0, :cond_15

    .line 680
    .line 681
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->addDependency(Lv/f;)V

    .line 682
    .line 683
    .line 684
    :cond_15
    if-eqz v3, :cond_16

    .line 685
    .line 686
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->addDependency(Lv/f;)V

    .line 687
    .line 688
    .line 689
    :cond_16
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->e:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 690
    .line 691
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 692
    .line 693
    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 694
    .line 695
    invoke-virtual {v0}, Lu/e;->hasBaseline()Z

    .line 696
    .line 697
    .line 698
    move-result v0

    .line 699
    if-eqz v0, :cond_1d

    .line 700
    .line 701
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lv/a;

    .line 702
    .line 703
    invoke-virtual {p0, v1, v6, v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_4

    .line 707
    .line 708
    :cond_17
    const/4 v14, 0x0

    .line 709
    if-eqz v13, :cond_19

    .line 710
    .line 711
    invoke-virtual {p0, v12}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    if-eqz v0, :cond_1d

    .line 716
    .line 717
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 718
    .line 719
    iget-object v3, v3, Lu/e;->Q:[Lu/d;

    .line 720
    .line 721
    aget-object v3, v3, v8

    .line 722
    .line 723
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    invoke-virtual {p0, v6, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {p0, v5, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 731
    .line 732
    .line 733
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 734
    .line 735
    invoke-virtual {v0}, Lu/e;->hasBaseline()Z

    .line 736
    .line 737
    .line 738
    move-result v0

    .line 739
    if-eqz v0, :cond_18

    .line 740
    .line 741
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lv/a;

    .line 742
    .line 743
    invoke-virtual {p0, v1, v6, v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 744
    .line 745
    .line 746
    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 747
    .line 748
    if-ne v0, v4, :cond_1d

    .line 749
    .line 750
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 751
    .line 752
    invoke-virtual {v0}, Lu/e;->getDimensionRatio()F

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    cmpl-float v0, v0, v14

    .line 757
    .line 758
    if-lez v0, :cond_1d

    .line 759
    .line 760
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 761
    .line 762
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 763
    .line 764
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 765
    .line 766
    if-ne v1, v4, :cond_1d

    .line 767
    .line 768
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 769
    .line 770
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 771
    .line 772
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 776
    .line 777
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 778
    .line 779
    iget-object v1, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 780
    .line 781
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 782
    .line 783
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    iput-object p0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 787
    .line 788
    goto/16 :goto_4

    .line 789
    .line 790
    :cond_19
    aget-object v8, v11, v10

    .line 791
    .line 792
    iget-object v12, v8, Lu/d;->f:Lu/d;

    .line 793
    .line 794
    const/4 v13, -0x1

    .line 795
    if-eqz v12, :cond_1a

    .line 796
    .line 797
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    if-eqz v0, :cond_1d

    .line 802
    .line 803
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 804
    .line 805
    iget-object v3, v3, Lu/e;->Q:[Lu/d;

    .line 806
    .line 807
    aget-object v3, v3, v10

    .line 808
    .line 809
    invoke-virtual {v3}, Lu/d;->getMargin()I

    .line 810
    .line 811
    .line 812
    move-result v3

    .line 813
    neg-int v3, v3

    .line 814
    invoke-virtual {p0, v5, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {p0, v6, v5, v13, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 818
    .line 819
    .line 820
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 821
    .line 822
    invoke-virtual {v0}, Lu/e;->hasBaseline()Z

    .line 823
    .line 824
    .line 825
    move-result v0

    .line 826
    if-eqz v0, :cond_1d

    .line 827
    .line 828
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lv/a;

    .line 829
    .line 830
    invoke-virtual {p0, v1, v6, v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 831
    .line 832
    .line 833
    goto :goto_4

    .line 834
    :cond_1a
    aget-object v7, v11, v7

    .line 835
    .line 836
    iget-object v8, v7, Lu/d;->f:Lu/d;

    .line 837
    .line 838
    if-eqz v8, :cond_1b

    .line 839
    .line 840
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/analyzer/f;->getTarget(Lu/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    if-eqz v0, :cond_1d

    .line 845
    .line 846
    invoke-virtual {p0, v1, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 847
    .line 848
    .line 849
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lv/a;

    .line 850
    .line 851
    invoke-virtual {p0, v6, v1, v13, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {p0, v5, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 855
    .line 856
    .line 857
    goto :goto_4

    .line 858
    :cond_1b
    instance-of v3, v0, Lu/j;

    .line 859
    .line 860
    if-nez v3, :cond_1d

    .line 861
    .line 862
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    if-eqz v0, :cond_1d

    .line 867
    .line 868
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 869
    .line 870
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 875
    .line 876
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 877
    .line 878
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 879
    .line 880
    invoke-virtual {v3}, Lu/e;->getY()I

    .line 881
    .line 882
    .line 883
    move-result v3

    .line 884
    invoke-virtual {p0, v6, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {p0, v5, v6, v9, v2}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 888
    .line 889
    .line 890
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 891
    .line 892
    invoke-virtual {v0}, Lu/e;->hasBaseline()Z

    .line 893
    .line 894
    .line 895
    move-result v0

    .line 896
    if-eqz v0, :cond_1c

    .line 897
    .line 898
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lv/a;

    .line 899
    .line 900
    invoke-virtual {p0, v1, v6, v9, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->addTarget(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    .line 901
    .line 902
    .line 903
    :cond_1c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 904
    .line 905
    if-ne v0, v4, :cond_1d

    .line 906
    .line 907
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 908
    .line 909
    invoke-virtual {v0}, Lu/e;->getDimensionRatio()F

    .line 910
    .line 911
    .line 912
    move-result v0

    .line 913
    cmpl-float v0, v0, v14

    .line 914
    .line 915
    if-lez v0, :cond_1d

    .line 916
    .line 917
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 918
    .line 919
    iget-object v0, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 920
    .line 921
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 922
    .line 923
    if-ne v1, v4, :cond_1d

    .line 924
    .line 925
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 926
    .line 927
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/ArrayList;

    .line 928
    .line 929
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 933
    .line 934
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 935
    .line 936
    iget-object v1, v1, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 937
    .line 938
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 939
    .line 940
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    iput-object p0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    .line 944
    .line 945
    :cond_1d
    :goto_4
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 946
    .line 947
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 948
    .line 949
    .line 950
    move-result v0

    .line 951
    if-nez v0, :cond_1e

    .line 952
    .line 953
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 954
    .line 955
    :cond_1e
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
    invoke-virtual {v1, v0}, Lu/e;->setY(I)V

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
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->clear()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    .line 26
    .line 27
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
    iget v0, v0, Lu/e;->s:I

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

.method public final d()V
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
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->clear()V

    .line 21
    .line 22
    .line 23
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 26
    .line 27
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 28
    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VerticalRun "

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
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v3, :cond_2

    .line 11
    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 18
    .line 19
    iget-object v1, v0, Lu/e;->J:Lu/d;

    .line 20
    .line 21
    iget-object v0, v0, Lu/e;->L:Lu/d;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v1, v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->updateRunCenter(Lv/f;Lu/d;Lu/d;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->updateRunEnd(Lv/f;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->updateRunStart(Lv/f;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 35
    .line 36
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 37
    .line 38
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 39
    .line 40
    const/high16 v5, 0x3f000000    # 0.5f

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    if-eqz v0, :cond_8

    .line 44
    .line 45
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 46
    .line 47
    if-nez v0, :cond_8

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 50
    .line 51
    if-ne v0, v4, :cond_8

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 54
    .line 55
    iget v7, v0, Lu/e;->s:I

    .line 56
    .line 57
    if-eq v7, v2, :cond_7

    .line 58
    .line 59
    if-eq v7, v1, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    iget-object v1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 63
    .line 64
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 65
    .line 66
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 67
    .line 68
    if-eqz v1, :cond_8

    .line 69
    .line 70
    invoke-virtual {v0}, Lu/e;->getDimensionRatioSide()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/4 v1, -0x1

    .line 75
    if-eq v0, v1, :cond_6

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    if-eq v0, v3, :cond_4

    .line 80
    .line 81
    move v0, v6

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 84
    .line 85
    iget-object v1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 86
    .line 87
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 88
    .line 89
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 90
    .line 91
    int-to-float v1, v1

    .line 92
    invoke-virtual {v0}, Lu/e;->getDimensionRatio()F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    :goto_1
    div-float/2addr v1, v0

    .line 97
    add-float/2addr v1, v5

    .line 98
    float-to-int v0, v1

    .line 99
    goto :goto_2

    .line 100
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 101
    .line 102
    iget-object v1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 103
    .line 104
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 105
    .line 106
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 107
    .line 108
    int-to-float v1, v1

    .line 109
    invoke-virtual {v0}, Lu/e;->getDimensionRatio()F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    mul-float/2addr v0, v1

    .line 114
    add-float/2addr v0, v5

    .line 115
    float-to-int v0, v0

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 118
    .line 119
    iget-object v1, v0, Lu/e;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 120
    .line 121
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 122
    .line 123
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 124
    .line 125
    int-to-float v1, v1

    .line 126
    invoke-virtual {v0}, Lu/e;->getDimensionRatio()F

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    goto :goto_1

    .line 131
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_7
    invoke-virtual {v0}, Lu/e;->getParent()Lu/e;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    iget-object v0, v0, Lu/e;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    .line 142
    .line 143
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 144
    .line 145
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 146
    .line 147
    if-eqz v1, :cond_8

    .line 148
    .line 149
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 150
    .line 151
    iget v1, v1, Lu/e;->z:F

    .line 152
    .line 153
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 154
    .line 155
    int-to-float v0, v0

    .line 156
    mul-float/2addr v0, v1

    .line 157
    add-float/2addr v0, v5

    .line 158
    float-to-int v0, v0

    .line 159
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 160
    .line 161
    .line 162
    :cond_8
    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 163
    .line 164
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 165
    .line 166
    if-eqz v1, :cond_10

    .line 167
    .line 168
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 169
    .line 170
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    .line 171
    .line 172
    if-nez v2, :cond_9

    .line 173
    .line 174
    goto/16 :goto_5

    .line 175
    .line 176
    :cond_9
    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 177
    .line 178
    if-eqz v2, :cond_a

    .line 179
    .line 180
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 181
    .line 182
    if-eqz v2, :cond_a

    .line 183
    .line 184
    iget-boolean v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 185
    .line 186
    if-eqz v2, :cond_a

    .line 187
    .line 188
    goto/16 :goto_5

    .line 189
    .line 190
    :cond_a
    iget-boolean v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 191
    .line 192
    if-nez v2, :cond_b

    .line 193
    .line 194
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 195
    .line 196
    if-ne v2, v4, :cond_b

    .line 197
    .line 198
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 199
    .line 200
    iget v7, v2, Lu/e;->r:I

    .line 201
    .line 202
    if-nez v7, :cond_b

    .line 203
    .line 204
    invoke-virtual {v2}, Lu/e;->isInVerticalChain()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_b

    .line 209
    .line 210
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 217
    .line 218
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 225
    .line 226
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 227
    .line 228
    iget v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 229
    .line 230
    add-int/2addr v2, v4

    .line 231
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 232
    .line 233
    iget v4, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 234
    .line 235
    add-int/2addr v3, v4

    .line 236
    sub-int v4, v3, v2

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_b
    iget-boolean v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 249
    .line 250
    if-nez v2, :cond_d

    .line 251
    .line 252
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 253
    .line 254
    if-ne v2, v4, :cond_d

    .line 255
    .line 256
    iget v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    .line 257
    .line 258
    if-ne v2, v3, :cond_d

    .line 259
    .line 260
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-lez v2, :cond_d

    .line 267
    .line 268
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-lez v2, :cond_d

    .line 275
    .line 276
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 283
    .line 284
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 291
    .line 292
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 293
    .line 294
    iget v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 295
    .line 296
    add-int/2addr v2, v4

    .line 297
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 298
    .line 299
    iget v4, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 300
    .line 301
    add-int/2addr v3, v4

    .line 302
    sub-int/2addr v3, v2

    .line 303
    iget v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    .line 304
    .line 305
    if-ge v3, v2, :cond_c

    .line 306
    .line 307
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_c
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/b;->resolve(I)V

    .line 312
    .line 313
    .line 314
    :cond_d
    :goto_4
    iget-boolean v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    .line 315
    .line 316
    if-nez v2, :cond_e

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_e
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-lez v2, :cond_10

    .line 326
    .line 327
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-lez v2, :cond_10

    .line 334
    .line 335
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 342
    .line 343
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 350
    .line 351
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 352
    .line 353
    iget v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 354
    .line 355
    add-int/2addr v4, v6

    .line 356
    iget v6, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 357
    .line 358
    iget v7, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    .line 359
    .line 360
    add-int/2addr v6, v7

    .line 361
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lu/e;

    .line 362
    .line 363
    invoke-virtual {v7}, Lu/e;->getVerticalBiasPercent()F

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    if-ne v2, v3, :cond_f

    .line 368
    .line 369
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 370
    .line 371
    iget v6, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 372
    .line 373
    move v7, v5

    .line 374
    :cond_f
    sub-int/2addr v6, v4

    .line 375
    iget v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 376
    .line 377
    sub-int/2addr v6, v2

    .line 378
    int-to-float v2, v4

    .line 379
    add-float/2addr v2, v5

    .line 380
    int-to-float v3, v6

    .line 381
    mul-float/2addr v3, v7

    .line 382
    add-float/2addr v3, v2

    .line 383
    float-to-int v2, v3

    .line 384
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 385
    .line 386
    .line 387
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 388
    .line 389
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    .line 390
    .line 391
    add-int/2addr v0, p1

    .line 392
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->resolve(I)V

    .line 393
    .line 394
    .line 395
    :cond_10
    :goto_5
    return-void
.end method
