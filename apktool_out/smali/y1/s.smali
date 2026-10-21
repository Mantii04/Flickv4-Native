.class public final Ly1/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:Landroid/graphics/Matrix;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Matrix;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/PathMeasure;

.field public final g:Ly1/p;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/Boolean;

.field public final o:Lp/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly1/s;->p:Landroid/graphics/Matrix;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly1/s;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ly1/s;->h:F

    .line 4
    iput v0, p0, Ly1/s;->i:F

    .line 5
    iput v0, p0, Ly1/s;->j:F

    .line 6
    iput v0, p0, Ly1/s;->k:F

    const/16 v0, 0xff

    .line 7
    iput v0, p0, Ly1/s;->l:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ly1/s;->m:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Ly1/s;->n:Ljava/lang/Boolean;

    .line 10
    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    iput-object v0, p0, Ly1/s;->o:Lp/g;

    .line 11
    new-instance v0, Ly1/p;

    invoke-direct {v0}, Ly1/p;-><init>()V

    iput-object v0, p0, Ly1/s;->g:Ly1/p;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ly1/s;->a:Landroid/graphics/Path;

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ly1/s;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Ly1/s;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly1/s;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Ly1/s;->h:F

    .line 17
    iput v0, p0, Ly1/s;->i:F

    .line 18
    iput v0, p0, Ly1/s;->j:F

    .line 19
    iput v0, p0, Ly1/s;->k:F

    const/16 v0, 0xff

    .line 20
    iput v0, p0, Ly1/s;->l:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Ly1/s;->m:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Ly1/s;->n:Ljava/lang/Boolean;

    .line 23
    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    iput-object v0, p0, Ly1/s;->o:Lp/g;

    .line 24
    new-instance v1, Ly1/p;

    iget-object v2, p1, Ly1/s;->g:Ly1/p;

    invoke-direct {v1, v2, v0}, Ly1/p;-><init>(Ly1/p;Lp/g;)V

    iput-object v1, p0, Ly1/s;->g:Ly1/p;

    .line 25
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Ly1/s;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Ly1/s;->a:Landroid/graphics/Path;

    .line 26
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Ly1/s;->b:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Ly1/s;->b:Landroid/graphics/Path;

    .line 27
    iget v1, p1, Ly1/s;->h:F

    iput v1, p0, Ly1/s;->h:F

    .line 28
    iget v1, p1, Ly1/s;->i:F

    iput v1, p0, Ly1/s;->i:F

    .line 29
    iget v1, p1, Ly1/s;->j:F

    iput v1, p0, Ly1/s;->j:F

    .line 30
    iget v1, p1, Ly1/s;->k:F

    iput v1, p0, Ly1/s;->k:F

    .line 31
    iget v1, p1, Ly1/s;->l:I

    iput v1, p0, Ly1/s;->l:I

    .line 32
    iget-object v1, p1, Ly1/s;->m:Ljava/lang/String;

    iput-object v1, p0, Ly1/s;->m:Ljava/lang/String;

    .line 33
    iget-object v1, p1, Ly1/s;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0, v1, p0}, Lp/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    iget-object p1, p1, Ly1/s;->n:Ljava/lang/Boolean;

    iput-object p1, p0, Ly1/s;->n:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Ly1/p;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 22

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    const/4 v8, 0x1

    .line 4
    iget-object v0, v7, Ly1/p;->a:Landroid/graphics/Matrix;

    .line 5
    .line 6
    move-object/from16 v1, p2

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v7, Ly1/p;->a:Landroid/graphics/Matrix;

    .line 12
    .line 13
    iget-object v0, v7, Ly1/p;->j:Landroid/graphics/Matrix;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 19
    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    move v10, v9

    .line 23
    :goto_0
    iget-object v0, v7, Ly1/p;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ge v10, v1, :cond_13

    .line 30
    .line 31
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ly1/q;

    .line 36
    .line 37
    instance-of v1, v0, Ly1/p;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    check-cast v1, Ly1/p;

    .line 43
    .line 44
    move-object/from16 v0, p0

    .line 45
    .line 46
    move-object/from16 v3, p3

    .line 47
    .line 48
    move/from16 v4, p4

    .line 49
    .line 50
    move/from16 v5, p5

    .line 51
    .line 52
    move-object/from16 v6, p6

    .line 53
    .line 54
    invoke-virtual/range {v0 .. v6}, Ly1/s;->a(Ly1/p;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 55
    .line 56
    .line 57
    move-object v1, v0

    .line 58
    move/from16 v11, p5

    .line 59
    .line 60
    move-object/from16 v19, v2

    .line 61
    .line 62
    move/from16 v17, v8

    .line 63
    .line 64
    move-object/from16 v2, p6

    .line 65
    .line 66
    goto/16 :goto_e

    .line 67
    .line 68
    :cond_0
    move-object/from16 v1, p0

    .line 69
    .line 70
    move-object/from16 v3, p3

    .line 71
    .line 72
    instance-of v4, v0, Ly1/r;

    .line 73
    .line 74
    if-eqz v4, :cond_12

    .line 75
    .line 76
    check-cast v0, Ly1/r;

    .line 77
    .line 78
    move/from16 v4, p4

    .line 79
    .line 80
    int-to-float v5, v4

    .line 81
    iget v11, v1, Ly1/s;->j:F

    .line 82
    .line 83
    div-float/2addr v5, v11

    .line 84
    move/from16 v11, p5

    .line 85
    .line 86
    int-to-float v12, v11

    .line 87
    iget v13, v1, Ly1/s;->k:F

    .line 88
    .line 89
    div-float/2addr v12, v13

    .line 90
    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    iget-object v14, v1, Ly1/s;->c:Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-virtual {v14, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v14, v5, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 100
    .line 101
    .line 102
    const/4 v15, 0x4

    .line 103
    new-array v15, v15, [F

    .line 104
    .line 105
    fill-array-data v15, :array_0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v15}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 109
    .line 110
    .line 111
    const/high16 p2, 0x3f800000    # 1.0f

    .line 112
    .line 113
    aget v12, v15, v9

    .line 114
    .line 115
    const/16 v16, 0x0

    .line 116
    .line 117
    float-to-double v5, v12

    .line 118
    aget v12, v15, v8

    .line 119
    .line 120
    move/from16 v17, v8

    .line 121
    .line 122
    move/from16 v18, v9

    .line 123
    .line 124
    float-to-double v8, v12

    .line 125
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    double-to-float v5, v5

    .line 130
    const/4 v6, 0x2

    .line 131
    aget v8, v15, v6

    .line 132
    .line 133
    float-to-double v8, v8

    .line 134
    const/4 v12, 0x3

    .line 135
    move/from16 v19, v6

    .line 136
    .line 137
    aget v6, v15, v12

    .line 138
    .line 139
    move/from16 v21, v12

    .line 140
    .line 141
    move/from16 v20, v13

    .line 142
    .line 143
    float-to-double v12, v6

    .line 144
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    .line 145
    .line 146
    .line 147
    move-result-wide v8

    .line 148
    double-to-float v6, v8

    .line 149
    aget v8, v15, v18

    .line 150
    .line 151
    aget v9, v15, v17

    .line 152
    .line 153
    aget v12, v15, v19

    .line 154
    .line 155
    aget v13, v15, v21

    .line 156
    .line 157
    mul-float/2addr v8, v13

    .line 158
    mul-float/2addr v9, v12

    .line 159
    sub-float/2addr v8, v9

    .line 160
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    cmpl-float v6, v5, v16

    .line 165
    .line 166
    if-lez v6, :cond_1

    .line 167
    .line 168
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    div-float/2addr v6, v5

    .line 173
    goto :goto_1

    .line 174
    :cond_1
    move/from16 v6, v16

    .line 175
    .line 176
    :goto_1
    cmpl-float v5, v6, v16

    .line 177
    .line 178
    if-nez v5, :cond_2

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_2
    iget-object v5, v1, Ly1/s;->a:Landroid/graphics/Path;

    .line 182
    .line 183
    invoke-virtual {v0, v5}, Ly1/r;->toPath(Landroid/graphics/Path;)V

    .line 184
    .line 185
    .line 186
    iget-object v8, v1, Ly1/s;->b:Landroid/graphics/Path;

    .line 187
    .line 188
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ly1/r;->isClipPath()Z

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    if-eqz v9, :cond_4

    .line 196
    .line 197
    iget v0, v0, Ly1/r;->c:I

    .line 198
    .line 199
    if-nez v0, :cond_3

    .line 200
    .line 201
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_3
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 205
    .line 206
    :goto_2
    invoke-virtual {v8, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v8, v5, v14}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 213
    .line 214
    .line 215
    :goto_3
    move-object/from16 v19, v2

    .line 216
    .line 217
    move-object/from16 v2, p6

    .line 218
    .line 219
    goto/16 :goto_d

    .line 220
    .line 221
    :cond_4
    check-cast v0, Ly1/o;

    .line 222
    .line 223
    iget v9, v0, Ly1/o;->i:F

    .line 224
    .line 225
    cmpl-float v12, v9, v16

    .line 226
    .line 227
    if-nez v12, :cond_6

    .line 228
    .line 229
    iget v12, v0, Ly1/o;->j:F

    .line 230
    .line 231
    cmpl-float v12, v12, p2

    .line 232
    .line 233
    if-eqz v12, :cond_5

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_5
    move-object/from16 v19, v2

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_6
    :goto_4
    iget v12, v0, Ly1/o;->k:F

    .line 240
    .line 241
    add-float/2addr v9, v12

    .line 242
    rem-float v9, v9, p2

    .line 243
    .line 244
    iget v13, v0, Ly1/o;->j:F

    .line 245
    .line 246
    add-float/2addr v13, v12

    .line 247
    rem-float v13, v13, p2

    .line 248
    .line 249
    iget-object v12, v1, Ly1/s;->f:Landroid/graphics/PathMeasure;

    .line 250
    .line 251
    if-nez v12, :cond_7

    .line 252
    .line 253
    new-instance v12, Landroid/graphics/PathMeasure;

    .line 254
    .line 255
    invoke-direct {v12}, Landroid/graphics/PathMeasure;-><init>()V

    .line 256
    .line 257
    .line 258
    iput-object v12, v1, Ly1/s;->f:Landroid/graphics/PathMeasure;

    .line 259
    .line 260
    :cond_7
    iget-object v12, v1, Ly1/s;->f:Landroid/graphics/PathMeasure;

    .line 261
    .line 262
    move/from16 v15, v18

    .line 263
    .line 264
    invoke-virtual {v12, v5, v15}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 265
    .line 266
    .line 267
    iget-object v12, v1, Ly1/s;->f:Landroid/graphics/PathMeasure;

    .line 268
    .line 269
    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    .line 270
    .line 271
    .line 272
    move-result v12

    .line 273
    mul-float/2addr v9, v12

    .line 274
    mul-float/2addr v13, v12

    .line 275
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 276
    .line 277
    .line 278
    cmpl-float v18, v9, v13

    .line 279
    .line 280
    if-lez v18, :cond_8

    .line 281
    .line 282
    iget-object v15, v1, Ly1/s;->f:Landroid/graphics/PathMeasure;

    .line 283
    .line 284
    move-object/from16 v19, v2

    .line 285
    .line 286
    move/from16 v2, v17

    .line 287
    .line 288
    invoke-virtual {v15, v9, v12, v5, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 289
    .line 290
    .line 291
    iget-object v9, v1, Ly1/s;->f:Landroid/graphics/PathMeasure;

    .line 292
    .line 293
    move/from16 v12, v16

    .line 294
    .line 295
    invoke-virtual {v9, v12, v13, v5, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_8
    move-object/from16 v19, v2

    .line 300
    .line 301
    move/from16 v12, v16

    .line 302
    .line 303
    move/from16 v2, v17

    .line 304
    .line 305
    iget-object v15, v1, Ly1/s;->f:Landroid/graphics/PathMeasure;

    .line 306
    .line 307
    invoke-virtual {v15, v9, v13, v5, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 308
    .line 309
    .line 310
    :goto_5
    invoke-virtual {v5, v12, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 311
    .line 312
    .line 313
    :goto_6
    invoke-virtual {v8, v5, v14}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 314
    .line 315
    .line 316
    iget-object v2, v0, Ly1/o;->f:LC/d;

    .line 317
    .line 318
    invoke-virtual {v2}, LC/d;->willDraw()Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    const/16 v9, 0xff

    .line 323
    .line 324
    const/4 v12, 0x0

    .line 325
    const/high16 v13, 0x437f0000    # 255.0f

    .line 326
    .line 327
    if-eqz v2, :cond_c

    .line 328
    .line 329
    iget-object v2, v0, Ly1/o;->f:LC/d;

    .line 330
    .line 331
    iget-object v15, v1, Ly1/s;->e:Landroid/graphics/Paint;

    .line 332
    .line 333
    if-nez v15, :cond_9

    .line 334
    .line 335
    new-instance v15, Landroid/graphics/Paint;

    .line 336
    .line 337
    const p2, 0xffffff

    .line 338
    .line 339
    .line 340
    const/4 v5, 0x1

    .line 341
    invoke-direct {v15, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 342
    .line 343
    .line 344
    iput-object v15, v1, Ly1/s;->e:Landroid/graphics/Paint;

    .line 345
    .line 346
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 347
    .line 348
    invoke-virtual {v15, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_9
    const p2, 0xffffff

    .line 353
    .line 354
    .line 355
    :goto_7
    iget-object v5, v1, Ly1/s;->e:Landroid/graphics/Paint;

    .line 356
    .line 357
    invoke-virtual {v2}, LC/d;->isGradient()Z

    .line 358
    .line 359
    .line 360
    move-result v15

    .line 361
    if-eqz v15, :cond_a

    .line 362
    .line 363
    invoke-virtual {v2}, LC/d;->getShader()Landroid/graphics/Shader;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v2, v14}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 371
    .line 372
    .line 373
    iget v2, v0, Ly1/o;->h:F

    .line 374
    .line 375
    mul-float/2addr v2, v13

    .line 376
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 381
    .line 382
    .line 383
    move/from16 v16, v13

    .line 384
    .line 385
    :goto_8
    move-object/from16 v2, p6

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_a
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2}, LC/d;->getColor()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    iget v15, v0, Ly1/o;->h:F

    .line 399
    .line 400
    sget-object v16, Ly1/v;->s:Landroid/graphics/PorterDuff$Mode;

    .line 401
    .line 402
    move/from16 v16, v13

    .line 403
    .line 404
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 405
    .line 406
    .line 407
    move-result v13

    .line 408
    and-int v2, v2, p2

    .line 409
    .line 410
    int-to-float v13, v13

    .line 411
    mul-float/2addr v13, v15

    .line 412
    float-to-int v13, v13

    .line 413
    shl-int/lit8 v13, v13, 0x18

    .line 414
    .line 415
    or-int/2addr v2, v13

    .line 416
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    .line 418
    .line 419
    goto :goto_8

    .line 420
    :goto_9
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 421
    .line 422
    .line 423
    iget v13, v0, Ly1/r;->c:I

    .line 424
    .line 425
    if-nez v13, :cond_b

    .line 426
    .line 427
    sget-object v13, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 428
    .line 429
    goto :goto_a

    .line 430
    :cond_b
    sget-object v13, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 431
    .line 432
    :goto_a
    invoke-virtual {v8, v13}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3, v8, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 436
    .line 437
    .line 438
    goto :goto_b

    .line 439
    :cond_c
    move-object/from16 v2, p6

    .line 440
    .line 441
    move/from16 v16, v13

    .line 442
    .line 443
    const p2, 0xffffff

    .line 444
    .line 445
    .line 446
    :goto_b
    iget-object v5, v0, Ly1/o;->d:LC/d;

    .line 447
    .line 448
    invoke-virtual {v5}, LC/d;->willDraw()Z

    .line 449
    .line 450
    .line 451
    move-result v5

    .line 452
    if-eqz v5, :cond_11

    .line 453
    .line 454
    iget-object v5, v0, Ly1/o;->d:LC/d;

    .line 455
    .line 456
    iget-object v13, v1, Ly1/s;->d:Landroid/graphics/Paint;

    .line 457
    .line 458
    if-nez v13, :cond_d

    .line 459
    .line 460
    new-instance v13, Landroid/graphics/Paint;

    .line 461
    .line 462
    const/4 v15, 0x1

    .line 463
    invoke-direct {v13, v15}, Landroid/graphics/Paint;-><init>(I)V

    .line 464
    .line 465
    .line 466
    iput-object v13, v1, Ly1/s;->d:Landroid/graphics/Paint;

    .line 467
    .line 468
    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 469
    .line 470
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 471
    .line 472
    .line 473
    :cond_d
    iget-object v13, v1, Ly1/s;->d:Landroid/graphics/Paint;

    .line 474
    .line 475
    iget-object v15, v0, Ly1/o;->m:Landroid/graphics/Paint$Join;

    .line 476
    .line 477
    if-eqz v15, :cond_e

    .line 478
    .line 479
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 480
    .line 481
    .line 482
    :cond_e
    iget-object v15, v0, Ly1/o;->l:Landroid/graphics/Paint$Cap;

    .line 483
    .line 484
    if-eqz v15, :cond_f

    .line 485
    .line 486
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 487
    .line 488
    .line 489
    :cond_f
    iget v15, v0, Ly1/o;->n:F

    .line 490
    .line 491
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5}, LC/d;->isGradient()Z

    .line 495
    .line 496
    .line 497
    move-result v15

    .line 498
    if-eqz v15, :cond_10

    .line 499
    .line 500
    invoke-virtual {v5}, LC/d;->getShader()Landroid/graphics/Shader;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    invoke-virtual {v5, v14}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 508
    .line 509
    .line 510
    iget v5, v0, Ly1/o;->g:F

    .line 511
    .line 512
    mul-float v5, v5, v16

    .line 513
    .line 514
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 519
    .line 520
    .line 521
    goto :goto_c

    .line 522
    :cond_10
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5}, LC/d;->getColor()I

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    iget v9, v0, Ly1/o;->g:F

    .line 533
    .line 534
    sget-object v12, Ly1/v;->s:Landroid/graphics/PorterDuff$Mode;

    .line 535
    .line 536
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    .line 537
    .line 538
    .line 539
    move-result v12

    .line 540
    and-int v5, v5, p2

    .line 541
    .line 542
    int-to-float v12, v12

    .line 543
    mul-float/2addr v12, v9

    .line 544
    float-to-int v9, v12

    .line 545
    shl-int/lit8 v9, v9, 0x18

    .line 546
    .line 547
    or-int/2addr v5, v9

    .line 548
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    .line 550
    .line 551
    :goto_c
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 552
    .line 553
    .line 554
    mul-float v5, v20, v6

    .line 555
    .line 556
    iget v0, v0, Ly1/o;->e:F

    .line 557
    .line 558
    mul-float/2addr v0, v5

    .line 559
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3, v8, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 563
    .line 564
    .line 565
    :cond_11
    :goto_d
    const/16 v17, 0x1

    .line 566
    .line 567
    goto :goto_e

    .line 568
    :cond_12
    move/from16 v4, p4

    .line 569
    .line 570
    move/from16 v11, p5

    .line 571
    .line 572
    move-object/from16 v19, v2

    .line 573
    .line 574
    move-object/from16 v2, p6

    .line 575
    .line 576
    move/from16 v17, v8

    .line 577
    .line 578
    :goto_e
    add-int/lit8 v10, v10, 0x1

    .line 579
    .line 580
    move/from16 v8, v17

    .line 581
    .line 582
    move-object/from16 v2, v19

    .line 583
    .line 584
    const/4 v9, 0x0

    .line 585
    goto/16 :goto_0

    .line 586
    .line 587
    :cond_13
    move-object/from16 v1, p0

    .line 588
    .line 589
    move-object/from16 v3, p3

    .line 590
    .line 591
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 592
    .line 593
    .line 594
    return-void

    .line 595
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7

    .line 1
    sget-object v2, Ly1/s;->p:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/s;->g:Ly1/p;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    move-object v6, p4

    .line 10
    invoke-virtual/range {v0 .. v6}, Ly1/s;->a(Ly1/p;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly1/s;->getRootAlpha()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x437f0000    # 255.0f

    .line 7
    .line 8
    div-float/2addr v0, v1

    .line 9
    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Ly1/s;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/s;->n:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ly1/s;->g:Ly1/p;

    .line 6
    .line 7
    invoke-virtual {v0}, Ly1/p;->isStateful()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ly1/s;->n:Ljava/lang/Boolean;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Ly1/s;->n:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public onStateChanged([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/s;->g:Ly1/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ly1/p;->onStateChanged([I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    invoke-virtual {p0, p1}, Ly1/s;->setRootAlpha(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Ly1/s;->l:I

    .line 2
    .line 3
    return-void
.end method
