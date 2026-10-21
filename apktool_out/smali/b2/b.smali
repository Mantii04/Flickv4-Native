.class public abstract Lb2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV1/f;
.implements LW1/a;
.implements LY1/f;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Matrix;

.field public final c:LU1/a;

.field public final d:LU1/a;

.field public final e:LU1/a;

.field public final f:LU1/a;

.field public final g:LU1/a;

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/RectF;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Ljava/lang/String;

.field public final m:Landroid/graphics/Matrix;

.field public final n:LT1/G;

.field public final o:Lb2/e;

.field public final p:LW1/l;

.field public final q:LW1/h;

.field public r:Lb2/b;

.field public s:Lb2/b;

.field public t:Ljava/util/List;

.field public final u:Ljava/util/ArrayList;

.field public final v:LW1/t;

.field public w:Z


# direct methods
.method public constructor <init>(LT1/G;Lb2/e;)V
    .locals 6

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
    iput-object v0, p0, Lb2/b;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lb2/b;->b:Landroid/graphics/Matrix;

    .line 17
    .line 18
    new-instance v0, LU1/a;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, LU1/a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lb2/b;->c:LU1/a;

    .line 25
    .line 26
    new-instance v0, LU1/a;

    .line 27
    .line 28
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, LU1/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lb2/b;->d:LU1/a;

    .line 34
    .line 35
    new-instance v0, LU1/a;

    .line 36
    .line 37
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 38
    .line 39
    invoke-direct {v0, v1, v3}, LU1/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lb2/b;->e:LU1/a;

    .line 43
    .line 44
    new-instance v0, LU1/a;

    .line 45
    .line 46
    invoke-direct {v0, v1}, LU1/a;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lb2/b;->f:LU1/a;

    .line 50
    .line 51
    new-instance v4, LU1/a;

    .line 52
    .line 53
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 54
    .line 55
    invoke-direct {v4, v5}, LU1/a;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 56
    .line 57
    .line 58
    iput-object v4, p0, Lb2/b;->g:LU1/a;

    .line 59
    .line 60
    new-instance v4, Landroid/graphics/RectF;

    .line 61
    .line 62
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v4, p0, Lb2/b;->h:Landroid/graphics/RectF;

    .line 66
    .line 67
    new-instance v4, Landroid/graphics/RectF;

    .line 68
    .line 69
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v4, p0, Lb2/b;->i:Landroid/graphics/RectF;

    .line 73
    .line 74
    new-instance v4, Landroid/graphics/RectF;

    .line 75
    .line 76
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v4, p0, Lb2/b;->j:Landroid/graphics/RectF;

    .line 80
    .line 81
    new-instance v4, Landroid/graphics/RectF;

    .line 82
    .line 83
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v4, p0, Lb2/b;->k:Landroid/graphics/RectF;

    .line 87
    .line 88
    new-instance v4, Landroid/graphics/Matrix;

    .line 89
    .line 90
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v4, p0, Lb2/b;->m:Landroid/graphics/Matrix;

    .line 94
    .line 95
    new-instance v4, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v4, p0, Lb2/b;->u:Ljava/util/ArrayList;

    .line 101
    .line 102
    iput-boolean v1, p0, Lb2/b;->w:Z

    .line 103
    .line 104
    iput-object p1, p0, Lb2/b;->n:LT1/G;

    .line 105
    .line 106
    iput-object p2, p0, Lb2/b;->o:Lb2/e;

    .line 107
    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v4, p2, Lb2/e;->c:Ljava/lang/String;

    .line 114
    .line 115
    const-string v5, "#draw"

    .line 116
    .line 117
    invoke-static {p1, v4, v5}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, p0, Lb2/b;->l:Ljava/lang/String;

    .line 122
    .line 123
    sget-object p1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->e:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 124
    .line 125
    iget-object v4, p2, Lb2/e;->u:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 126
    .line 127
    if-ne v4, p1, :cond_0

    .line 128
    .line 129
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 130
    .line 131
    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 139
    .line 140
    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 144
    .line 145
    .line 146
    :goto_0
    iget-object p1, p2, Lb2/e;->i:LZ1/l;

    .line 147
    .line 148
    invoke-virtual {p1}, LZ1/l;->createAnimation()LW1/t;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Lb2/b;->v:LW1/t;

    .line 153
    .line 154
    invoke-virtual {p1, p0}, LW1/t;->addListener(LW1/a;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p2, Lb2/e;->h:Ljava/util/List;

    .line 158
    .line 159
    if-eqz p1, :cond_2

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-nez p2, :cond_2

    .line 166
    .line 167
    new-instance p2, LW1/l;

    .line 168
    .line 169
    invoke-direct {p2, p1}, LW1/l;-><init>(Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    iput-object p2, p0, Lb2/b;->p:LW1/l;

    .line 173
    .line 174
    invoke-virtual {p2}, LW1/l;->getMaskAnimations()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-eqz p2, :cond_1

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, LW1/f;

    .line 193
    .line 194
    invoke-virtual {p2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_1
    iget-object p1, p0, Lb2/b;->p:LW1/l;

    .line 199
    .line 200
    invoke-virtual {p1}, LW1/l;->getOpacityAnimations()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_2

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    check-cast p2, LW1/f;

    .line 219
    .line 220
    invoke-virtual {p0, p2}, Lb2/b;->addAnimation(LW1/f;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, p0}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_2
    iget-object p1, p0, Lb2/b;->o:Lb2/e;

    .line 228
    .line 229
    iget-object p2, p1, Lb2/e;->t:Ljava/util/List;

    .line 230
    .line 231
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    if-nez p2, :cond_5

    .line 236
    .line 237
    new-instance p2, LW1/h;

    .line 238
    .line 239
    iget-object p1, p1, Lb2/e;->t:Ljava/util/List;

    .line 240
    .line 241
    invoke-direct {p2, p1}, LW1/h;-><init>(Ljava/util/List;)V

    .line 242
    .line 243
    .line 244
    iput-object p2, p0, Lb2/b;->q:LW1/h;

    .line 245
    .line 246
    invoke-virtual {p2}, LW1/f;->setIsDiscrete()V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lb2/b;->q:LW1/h;

    .line 250
    .line 251
    new-instance p2, Lb2/a;

    .line 252
    .line 253
    invoke-direct {p2, p0}, Lb2/a;-><init>(Lb2/b;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2}, LW1/f;->addUpdateListener(LW1/a;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lb2/b;->q:LW1/h;

    .line 260
    .line 261
    invoke-virtual {p1}, LW1/f;->getValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Ljava/lang/Float;

    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    const/high16 p2, 0x3f800000    # 1.0f

    .line 272
    .line 273
    cmpl-float p1, p1, p2

    .line 274
    .line 275
    if-nez p1, :cond_3

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_3
    const/4 v1, 0x0

    .line 279
    :goto_3
    iget-boolean p1, p0, Lb2/b;->w:Z

    .line 280
    .line 281
    if-eq v1, p1, :cond_4

    .line 282
    .line 283
    iput-boolean v1, p0, Lb2/b;->w:Z

    .line 284
    .line 285
    iget-object p1, p0, Lb2/b;->n:LT1/G;

    .line 286
    .line 287
    invoke-virtual {p1}, LT1/G;->invalidateSelf()V

    .line 288
    .line 289
    .line 290
    :cond_4
    iget-object p1, p0, Lb2/b;->q:LW1/h;

    .line 291
    .line 292
    invoke-virtual {p0, p1}, Lb2/b;->addAnimation(LW1/f;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_5
    iget-boolean p1, p0, Lb2/b;->w:Z

    .line 297
    .line 298
    if-eq v1, p1, :cond_6

    .line 299
    .line 300
    iput-boolean v1, p0, Lb2/b;->w:Z

    .line 301
    .line 302
    iget-object p1, p0, Lb2/b;->n:LT1/G;

    .line 303
    .line 304
    invoke-virtual {p1}, LT1/G;->invalidateSelf()V

    .line 305
    .line 306
    .line 307
    :cond_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb2/b;->t:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lb2/b;->s:Lb2/b;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    iput-object v0, p0, Lb2/b;->t:Ljava/util/List;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lb2/b;->t:Ljava/util/List;

    .line 21
    .line 22
    iget-object v0, p0, Lb2/b;->s:Lb2/b;

    .line 23
    .line 24
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lb2/b;->t:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lb2/b;->s:Lb2/b;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    return-void
.end method

.method public addAnimation(LW1/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW1/f;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lb2/b;->u:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

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
    iget-object v0, p0, Lb2/b;->v:LW1/t;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LW1/t;->applyValueCallback(Ljava/lang/Object;Lg2/c;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    const-string v0, "Layer#clearLayer"

    .line 2
    .line 3
    invoke-static {v0}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lb2/b;->h:Landroid/graphics/RectF;

    .line 7
    .line 8
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 9
    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    sub-float v5, v2, v3

    .line 13
    .line 14
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 15
    .line 16
    sub-float v6, v2, v3

    .line 17
    .line 18
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 19
    .line 20
    add-float v7, v2, v3

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 23
    .line 24
    add-float v8, v1, v3

    .line 25
    .line 26
    iget-object v9, p0, Lb2/b;->g:LU1/a;

    .line 27
    .line 28
    move-object v4, p1

    .line 29
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 24

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
    iget-object v3, v0, Lb2/b;->l:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v3}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v4, v0, Lb2/b;->w:Z

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    iget-object v4, v0, Lb2/b;->o:Lb2/e;

    .line 17
    .line 18
    invoke-virtual {v4}, Lb2/e;->isHidden()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    :cond_0
    move-object/from16 v16, v3

    .line 25
    .line 26
    goto/16 :goto_15

    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Lb2/b;->a()V

    .line 29
    .line 30
    .line 31
    const-string v5, "Layer#parentMatrix"

    .line 32
    .line 33
    invoke-static {v5}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v6, v0, Lb2/b;->b:Landroid/graphics/Matrix;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 42
    .line 43
    .line 44
    iget-object v7, v0, Lb2/b;->t:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const/4 v8, 0x1

    .line 51
    sub-int/2addr v7, v8

    .line 52
    :goto_0
    if-ltz v7, :cond_2

    .line 53
    .line 54
    iget-object v9, v0, Lb2/b;->t:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    check-cast v9, Lb2/b;

    .line 61
    .line 62
    iget-object v9, v9, Lb2/b;->v:LW1/t;

    .line 63
    .line 64
    invoke-virtual {v9}, LW1/t;->getMatrix()Landroid/graphics/Matrix;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v7, v7, -0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-static {v5}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 75
    .line 76
    .line 77
    iget-object v5, v0, Lb2/b;->v:LW1/t;

    .line 78
    .line 79
    invoke-virtual {v5}, LW1/t;->getOpacity()LW1/f;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    if-nez v7, :cond_3

    .line 84
    .line 85
    const/16 v7, 0x64

    .line 86
    .line 87
    :goto_1
    move/from16 v9, p3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {v5}, LW1/t;->getOpacity()LW1/f;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v7}, LW1/f;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    goto :goto_1

    .line 105
    :goto_2
    int-to-float v9, v9

    .line 106
    const/high16 v10, 0x437f0000    # 255.0f

    .line 107
    .line 108
    div-float/2addr v9, v10

    .line 109
    int-to-float v7, v7

    .line 110
    mul-float/2addr v9, v7

    .line 111
    const/high16 v7, 0x42c80000    # 100.0f

    .line 112
    .line 113
    div-float/2addr v9, v7

    .line 114
    mul-float/2addr v9, v10

    .line 115
    float-to-int v7, v9

    .line 116
    iget-object v9, v0, Lb2/b;->r:Lb2/b;

    .line 117
    .line 118
    const/4 v10, 0x0

    .line 119
    if-eqz v9, :cond_4

    .line 120
    .line 121
    move v9, v8

    .line 122
    goto :goto_3

    .line 123
    :cond_4
    move v9, v10

    .line 124
    :goto_3
    iget-object v11, v0, Lb2/b;->n:LT1/G;

    .line 125
    .line 126
    const-string v12, "Layer#drawLayer"

    .line 127
    .line 128
    if-nez v9, :cond_6

    .line 129
    .line 130
    iget-object v9, v0, Lb2/b;->p:LW1/l;

    .line 131
    .line 132
    if-eqz v9, :cond_5

    .line 133
    .line 134
    invoke-virtual {v9}, LW1/l;->getMaskAnimations()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-nez v9, :cond_5

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_5
    invoke-virtual {v5}, LW1/t;->getMatrix()Landroid/graphics/Matrix;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 150
    .line 151
    .line 152
    invoke-static {v12}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1, v6, v7}, Lb2/b;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v12}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 159
    .line 160
    .line 161
    invoke-static {v3}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {v11}, LT1/G;->getComposition()LT1/i;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, LT1/i;->getPerformanceTracker()LT1/P;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iget-object v3, v4, Lb2/e;->c:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v2, v3, v1}, LT1/P;->recordRenderTime(Ljava/lang/String;F)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_6
    :goto_4
    const-string v9, "Layer#computeBounds"

    .line 180
    .line 181
    invoke-static {v9}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v13, v0, Lb2/b;->h:Landroid/graphics/RectF;

    .line 185
    .line 186
    invoke-virtual {v0, v13, v6, v10}, Lb2/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 187
    .line 188
    .line 189
    iget-object v14, v0, Lb2/b;->r:Lb2/b;

    .line 190
    .line 191
    if-eqz v14, :cond_7

    .line 192
    .line 193
    move v14, v8

    .line 194
    goto :goto_5

    .line 195
    :cond_7
    move v14, v10

    .line 196
    :goto_5
    const/4 v15, 0x0

    .line 197
    if-nez v14, :cond_8

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_8
    sget-object v14, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->e:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 201
    .line 202
    iget-object v10, v4, Lb2/e;->u:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 203
    .line 204
    if-ne v10, v14, :cond_9

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_9
    iget-object v10, v0, Lb2/b;->j:Landroid/graphics/RectF;

    .line 208
    .line 209
    invoke-virtual {v10, v15, v15, v15, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 210
    .line 211
    .line 212
    iget-object v14, v0, Lb2/b;->r:Lb2/b;

    .line 213
    .line 214
    invoke-virtual {v14, v10, v2, v8}, Lb2/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v10}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-nez v10, :cond_a

    .line 222
    .line 223
    invoke-virtual {v13, v15, v15, v15, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 224
    .line 225
    .line 226
    :cond_a
    :goto_6
    invoke-virtual {v5}, LW1/t;->getMatrix()Landroid/graphics/Matrix;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 231
    .line 232
    .line 233
    iget-object v5, v0, Lb2/b;->i:Landroid/graphics/RectF;

    .line 234
    .line 235
    invoke-virtual {v5, v15, v15, v15, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 236
    .line 237
    .line 238
    iget-object v10, v0, Lb2/b;->p:LW1/l;

    .line 239
    .line 240
    if-eqz v10, :cond_b

    .line 241
    .line 242
    invoke-virtual {v10}, LW1/l;->getMaskAnimations()Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    if-nez v10, :cond_b

    .line 251
    .line 252
    move v10, v8

    .line 253
    goto :goto_7

    .line 254
    :cond_b
    const/4 v10, 0x0

    .line 255
    :goto_7
    iget-object v14, v0, Lb2/b;->a:Landroid/graphics/Path;

    .line 256
    .line 257
    iget-object v15, v0, Lb2/b;->p:LW1/l;

    .line 258
    .line 259
    if-nez v10, :cond_e

    .line 260
    .line 261
    move-object/from16 v16, v3

    .line 262
    .line 263
    :cond_c
    :goto_8
    move-object/from16 v17, v9

    .line 264
    .line 265
    move-object/from16 v20, v11

    .line 266
    .line 267
    :cond_d
    const/4 v3, 0x0

    .line 268
    goto/16 :goto_c

    .line 269
    .line 270
    :cond_e
    invoke-virtual {v15}, LW1/l;->getMasks()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v10

    .line 278
    const/4 v8, 0x0

    .line 279
    :goto_9
    if-ge v8, v10, :cond_12

    .line 280
    .line 281
    move-object/from16 v16, v3

    .line 282
    .line 283
    invoke-virtual {v15}, LW1/l;->getMasks()Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    check-cast v3, La2/f;

    .line 292
    .line 293
    move-object/from16 v17, v3

    .line 294
    .line 295
    invoke-virtual {v15}, LW1/l;->getMaskAnimations()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, LW1/f;

    .line 304
    .line 305
    invoke-virtual {v3}, LW1/f;->getValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    check-cast v3, Landroid/graphics/Path;

    .line 310
    .line 311
    invoke-virtual {v14, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {v17 .. v17}, La2/f;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    move/from16 v18, v8

    .line 326
    .line 327
    if-eqz v3, :cond_f

    .line 328
    .line 329
    const/4 v8, 0x1

    .line 330
    if-eq v3, v8, :cond_c

    .line 331
    .line 332
    const/4 v8, 0x2

    .line 333
    if-eq v3, v8, :cond_f

    .line 334
    .line 335
    const/4 v8, 0x3

    .line 336
    if-eq v3, v8, :cond_c

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_f
    invoke-virtual/range {v17 .. v17}, La2/f;->isInverted()Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_10

    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_10
    :goto_a
    iget-object v3, v0, Lb2/b;->k:Landroid/graphics/RectF;

    .line 347
    .line 348
    const/4 v8, 0x0

    .line 349
    invoke-virtual {v14, v3, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 350
    .line 351
    .line 352
    if-nez v18, :cond_11

    .line 353
    .line 354
    invoke-virtual {v5, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 355
    .line 356
    .line 357
    move-object/from16 v17, v9

    .line 358
    .line 359
    move/from16 v19, v10

    .line 360
    .line 361
    move-object/from16 v20, v11

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_11
    iget v8, v5, Landroid/graphics/RectF;->left:F

    .line 365
    .line 366
    move-object/from16 v17, v9

    .line 367
    .line 368
    iget v9, v3, Landroid/graphics/RectF;->left:F

    .line 369
    .line 370
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    iget v9, v5, Landroid/graphics/RectF;->top:F

    .line 375
    .line 376
    move/from16 v19, v10

    .line 377
    .line 378
    iget v10, v3, Landroid/graphics/RectF;->top:F

    .line 379
    .line 380
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    iget v10, v5, Landroid/graphics/RectF;->right:F

    .line 385
    .line 386
    move-object/from16 v20, v11

    .line 387
    .line 388
    iget v11, v3, Landroid/graphics/RectF;->right:F

    .line 389
    .line 390
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    .line 391
    .line 392
    .line 393
    move-result v10

    .line 394
    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    .line 395
    .line 396
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 397
    .line 398
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    invoke-virtual {v5, v8, v9, v10, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 403
    .line 404
    .line 405
    :goto_b
    add-int/lit8 v8, v18, 0x1

    .line 406
    .line 407
    move-object/from16 v3, v16

    .line 408
    .line 409
    move-object/from16 v9, v17

    .line 410
    .line 411
    move/from16 v10, v19

    .line 412
    .line 413
    move-object/from16 v11, v20

    .line 414
    .line 415
    goto/16 :goto_9

    .line 416
    .line 417
    :cond_12
    move-object/from16 v16, v3

    .line 418
    .line 419
    move-object/from16 v17, v9

    .line 420
    .line 421
    move-object/from16 v20, v11

    .line 422
    .line 423
    invoke-virtual {v13, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-nez v3, :cond_d

    .line 428
    .line 429
    const/4 v3, 0x0

    .line 430
    invoke-virtual {v13, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 431
    .line 432
    .line 433
    :goto_c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    int-to-float v5, v5

    .line 438
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    int-to-float v8, v8

    .line 443
    invoke-virtual {v13, v3, v3, v5, v8}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    if-nez v5, :cond_13

    .line 448
    .line 449
    invoke-virtual {v13, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 450
    .line 451
    .line 452
    :cond_13
    invoke-static/range {v17 .. v17}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 453
    .line 454
    .line 455
    invoke-virtual {v13}, Landroid/graphics/RectF;->isEmpty()Z

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    if-nez v3, :cond_24

    .line 460
    .line 461
    const-string v3, "Layer#saveLayer"

    .line 462
    .line 463
    invoke-static {v3}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget-object v5, v0, Lb2/b;->c:LU1/a;

    .line 467
    .line 468
    const/16 v8, 0xff

    .line 469
    .line 470
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 471
    .line 472
    .line 473
    invoke-static {v1, v13, v5}, Lf2/h;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 474
    .line 475
    .line 476
    invoke-static {v3}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 477
    .line 478
    .line 479
    invoke-virtual/range {p0 .. p1}, Lb2/b;->b(Landroid/graphics/Canvas;)V

    .line 480
    .line 481
    .line 482
    invoke-static {v12}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v1, v6, v7}, Lb2/b;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 486
    .line 487
    .line 488
    invoke-static {v12}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 489
    .line 490
    .line 491
    iget-object v9, v0, Lb2/b;->p:LW1/l;

    .line 492
    .line 493
    if-eqz v9, :cond_14

    .line 494
    .line 495
    invoke-virtual {v9}, LW1/l;->getMaskAnimations()Ljava/util/List;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 500
    .line 501
    .line 502
    move-result v9

    .line 503
    if-nez v9, :cond_14

    .line 504
    .line 505
    const/4 v9, 0x1

    .line 506
    goto :goto_d

    .line 507
    :cond_14
    const/4 v9, 0x0

    .line 508
    :goto_d
    const/16 v10, 0x13

    .line 509
    .line 510
    const-string v11, "Layer#restoreLayer"

    .line 511
    .line 512
    if-eqz v9, :cond_22

    .line 513
    .line 514
    invoke-static {v3}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    iget-object v9, v0, Lb2/b;->d:LU1/a;

    .line 518
    .line 519
    invoke-static {v1, v13, v9, v10}, Lf2/h;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 520
    .line 521
    .line 522
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 523
    .line 524
    const/16 v10, 0x1c

    .line 525
    .line 526
    if-ge v12, v10, :cond_15

    .line 527
    .line 528
    invoke-virtual/range {p0 .. p1}, Lb2/b;->b(Landroid/graphics/Canvas;)V

    .line 529
    .line 530
    .line 531
    :cond_15
    invoke-static {v3}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 532
    .line 533
    .line 534
    const/4 v10, 0x0

    .line 535
    :goto_e
    invoke-virtual {v15}, LW1/l;->getMasks()Ljava/util/List;

    .line 536
    .line 537
    .line 538
    move-result-object v12

    .line 539
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 540
    .line 541
    .line 542
    move-result v12

    .line 543
    if-ge v10, v12, :cond_21

    .line 544
    .line 545
    invoke-virtual {v15}, LW1/l;->getMasks()Ljava/util/List;

    .line 546
    .line 547
    .line 548
    move-result-object v12

    .line 549
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v12

    .line 553
    check-cast v12, La2/f;

    .line 554
    .line 555
    invoke-virtual {v15}, LW1/l;->getMaskAnimations()Ljava/util/List;

    .line 556
    .line 557
    .line 558
    move-result-object v8

    .line 559
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v8

    .line 563
    check-cast v8, LW1/f;

    .line 564
    .line 565
    move-object/from16 v18, v3

    .line 566
    .line 567
    invoke-virtual {v15}, LW1/l;->getOpacityAnimations()Ljava/util/List;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    check-cast v3, LW1/f;

    .line 576
    .line 577
    invoke-virtual {v12}, La2/f;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 578
    .line 579
    .line 580
    move-result-object v19

    .line 581
    move-object/from16 v21, v3

    .line 582
    .line 583
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    move-object/from16 v19, v8

    .line 588
    .line 589
    iget-object v8, v0, Lb2/b;->e:LU1/a;

    .line 590
    .line 591
    const v22, 0x40233333    # 2.55f

    .line 592
    .line 593
    .line 594
    if-eqz v3, :cond_1f

    .line 595
    .line 596
    move/from16 v23, v10

    .line 597
    .line 598
    const/4 v10, 0x1

    .line 599
    if-eq v3, v10, :cond_1c

    .line 600
    .line 601
    const/4 v10, 0x2

    .line 602
    if-eq v3, v10, :cond_1a

    .line 603
    .line 604
    const/4 v10, 0x3

    .line 605
    if-eq v3, v10, :cond_16

    .line 606
    .line 607
    :goto_f
    const/16 v3, 0xff

    .line 608
    .line 609
    goto/16 :goto_13

    .line 610
    .line 611
    :cond_16
    invoke-virtual {v15}, LW1/l;->getMaskAnimations()Ljava/util/List;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 616
    .line 617
    .line 618
    move-result v3

    .line 619
    if-eqz v3, :cond_17

    .line 620
    .line 621
    goto :goto_11

    .line 622
    :cond_17
    const/4 v3, 0x0

    .line 623
    :goto_10
    invoke-virtual {v15}, LW1/l;->getMasks()Ljava/util/List;

    .line 624
    .line 625
    .line 626
    move-result-object v8

    .line 627
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 628
    .line 629
    .line 630
    move-result v8

    .line 631
    if-ge v3, v8, :cond_19

    .line 632
    .line 633
    invoke-virtual {v15}, LW1/l;->getMasks()Ljava/util/List;

    .line 634
    .line 635
    .line 636
    move-result-object v8

    .line 637
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v8

    .line 641
    check-cast v8, La2/f;

    .line 642
    .line 643
    invoke-virtual {v8}, La2/f;->getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 644
    .line 645
    .line 646
    move-result-object v8

    .line 647
    sget-object v12, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->j:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 648
    .line 649
    if-eq v8, v12, :cond_18

    .line 650
    .line 651
    :goto_11
    goto :goto_f

    .line 652
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 653
    .line 654
    goto :goto_10

    .line 655
    :cond_19
    const/16 v3, 0xff

    .line 656
    .line 657
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 661
    .line 662
    .line 663
    goto :goto_f

    .line 664
    :cond_1a
    const/4 v10, 0x3

    .line 665
    invoke-virtual {v12}, La2/f;->isInverted()Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-eqz v3, :cond_1b

    .line 670
    .line 671
    invoke-static {v1, v13, v9}, Lf2/h;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual/range {v21 .. v21}, LW1/f;->getValue()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    check-cast v3, Ljava/lang/Integer;

    .line 682
    .line 683
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 684
    .line 685
    .line 686
    move-result v3

    .line 687
    int-to-float v3, v3

    .line 688
    mul-float v3, v3, v22

    .line 689
    .line 690
    float-to-int v3, v3

    .line 691
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual/range {v19 .. v19}, LW1/f;->getValue()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    check-cast v3, Landroid/graphics/Path;

    .line 699
    .line 700
    invoke-virtual {v14, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v1, v14, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 710
    .line 711
    .line 712
    goto :goto_f

    .line 713
    :cond_1b
    invoke-static {v1, v13, v9}, Lf2/h;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 714
    .line 715
    .line 716
    invoke-virtual/range {v19 .. v19}, LW1/f;->getValue()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    check-cast v3, Landroid/graphics/Path;

    .line 721
    .line 722
    invoke-virtual {v14, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual/range {v21 .. v21}, LW1/f;->getValue()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    check-cast v3, Ljava/lang/Integer;

    .line 733
    .line 734
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    int-to-float v3, v3

    .line 739
    mul-float v3, v3, v22

    .line 740
    .line 741
    float-to-int v3, v3

    .line 742
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1, v14, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 749
    .line 750
    .line 751
    goto/16 :goto_f

    .line 752
    .line 753
    :cond_1c
    const/4 v10, 0x3

    .line 754
    if-nez v23, :cond_1d

    .line 755
    .line 756
    const/high16 v3, -0x1000000

    .line 757
    .line 758
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 759
    .line 760
    .line 761
    const/16 v3, 0xff

    .line 762
    .line 763
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 767
    .line 768
    .line 769
    goto :goto_12

    .line 770
    :cond_1d
    const/16 v3, 0xff

    .line 771
    .line 772
    :goto_12
    invoke-virtual {v12}, La2/f;->isInverted()Z

    .line 773
    .line 774
    .line 775
    move-result v12

    .line 776
    if-eqz v12, :cond_1e

    .line 777
    .line 778
    invoke-static {v1, v13, v8}, Lf2/h;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual/range {v21 .. v21}, LW1/f;->getValue()Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v12

    .line 788
    check-cast v12, Ljava/lang/Integer;

    .line 789
    .line 790
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 791
    .line 792
    .line 793
    move-result v12

    .line 794
    int-to-float v12, v12

    .line 795
    mul-float v12, v12, v22

    .line 796
    .line 797
    float-to-int v12, v12

    .line 798
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 799
    .line 800
    .line 801
    invoke-virtual/range {v19 .. v19}, LW1/f;->getValue()Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v12

    .line 805
    check-cast v12, Landroid/graphics/Path;

    .line 806
    .line 807
    invoke-virtual {v14, v12}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v1, v14, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 817
    .line 818
    .line 819
    goto :goto_13

    .line 820
    :cond_1e
    invoke-virtual/range {v19 .. v19}, LW1/f;->getValue()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v12

    .line 824
    check-cast v12, Landroid/graphics/Path;

    .line 825
    .line 826
    invoke-virtual {v14, v12}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v1, v14, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 833
    .line 834
    .line 835
    goto :goto_13

    .line 836
    :cond_1f
    move/from16 v23, v10

    .line 837
    .line 838
    const/16 v3, 0xff

    .line 839
    .line 840
    const/4 v10, 0x3

    .line 841
    invoke-virtual {v12}, La2/f;->isInverted()Z

    .line 842
    .line 843
    .line 844
    move-result v12

    .line 845
    if-eqz v12, :cond_20

    .line 846
    .line 847
    invoke-static {v1, v13, v5}, Lf2/h;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v1, v13, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual/range {v19 .. v19}, LW1/f;->getValue()Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v12

    .line 857
    check-cast v12, Landroid/graphics/Path;

    .line 858
    .line 859
    invoke-virtual {v14, v12}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual/range {v21 .. v21}, LW1/f;->getValue()Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v12

    .line 869
    check-cast v12, Ljava/lang/Integer;

    .line 870
    .line 871
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 872
    .line 873
    .line 874
    move-result v12

    .line 875
    int-to-float v12, v12

    .line 876
    mul-float v12, v12, v22

    .line 877
    .line 878
    float-to-int v12, v12

    .line 879
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v1, v14, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 886
    .line 887
    .line 888
    goto :goto_13

    .line 889
    :cond_20
    invoke-virtual/range {v19 .. v19}, LW1/f;->getValue()Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v8

    .line 893
    check-cast v8, Landroid/graphics/Path;

    .line 894
    .line 895
    invoke-virtual {v14, v8}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v14, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual/range {v21 .. v21}, LW1/f;->getValue()Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v8

    .line 905
    check-cast v8, Ljava/lang/Integer;

    .line 906
    .line 907
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 908
    .line 909
    .line 910
    move-result v8

    .line 911
    int-to-float v8, v8

    .line 912
    mul-float v8, v8, v22

    .line 913
    .line 914
    float-to-int v8, v8

    .line 915
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v1, v14, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 919
    .line 920
    .line 921
    :goto_13
    add-int/lit8 v8, v23, 0x1

    .line 922
    .line 923
    move v10, v8

    .line 924
    move v8, v3

    .line 925
    move-object/from16 v3, v18

    .line 926
    .line 927
    goto/16 :goto_e

    .line 928
    .line 929
    :cond_21
    move-object/from16 v18, v3

    .line 930
    .line 931
    invoke-static {v11}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 935
    .line 936
    .line 937
    invoke-static {v11}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 938
    .line 939
    .line 940
    goto :goto_14

    .line 941
    :cond_22
    move-object/from16 v18, v3

    .line 942
    .line 943
    :goto_14
    iget-object v3, v0, Lb2/b;->r:Lb2/b;

    .line 944
    .line 945
    if-eqz v3, :cond_23

    .line 946
    .line 947
    const-string v3, "Layer#drawMatte"

    .line 948
    .line 949
    invoke-static {v3}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    invoke-static/range {v18 .. v18}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    iget-object v5, v0, Lb2/b;->f:LU1/a;

    .line 956
    .line 957
    const/16 v6, 0x13

    .line 958
    .line 959
    invoke-static {v1, v13, v5, v6}, Lf2/h;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 960
    .line 961
    .line 962
    invoke-static/range {v18 .. v18}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 963
    .line 964
    .line 965
    invoke-virtual/range {p0 .. p1}, Lb2/b;->b(Landroid/graphics/Canvas;)V

    .line 966
    .line 967
    .line 968
    iget-object v5, v0, Lb2/b;->r:Lb2/b;

    .line 969
    .line 970
    invoke-virtual {v5, v1, v2, v7}, Lb2/b;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 971
    .line 972
    .line 973
    invoke-static {v11}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 977
    .line 978
    .line 979
    invoke-static {v11}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 980
    .line 981
    .line 982
    invoke-static {v3}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 983
    .line 984
    .line 985
    :cond_23
    invoke-static {v11}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 989
    .line 990
    .line 991
    invoke-static {v11}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 992
    .line 993
    .line 994
    :cond_24
    invoke-static/range {v16 .. v16}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 995
    .line 996
    .line 997
    move-result v1

    .line 998
    invoke-virtual/range {v20 .. v20}, LT1/G;->getComposition()LT1/i;

    .line 999
    .line 1000
    .line 1001
    move-result-object v2

    .line 1002
    invoke-virtual {v2}, LT1/i;->getPerformanceTracker()LT1/P;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    iget-object v3, v4, Lb2/e;->c:Ljava/lang/String;

    .line 1007
    .line 1008
    invoke-virtual {v2, v3, v1}, LT1/P;->recordRenderTime(Ljava/lang/String;F)V

    .line 1009
    .line 1010
    .line 1011
    return-void

    .line 1012
    :goto_15
    invoke-static/range {v16 .. v16}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 1013
    .line 1014
    .line 1015
    return-void
.end method

.method public abstract drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb2/b;->h:Landroid/graphics/RectF;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lb2/b;->a()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lb2/b;->m:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 13
    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lb2/b;->t:Ljava/util/List;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    add-int/lit8 p2, p2, -0x1

    .line 26
    .line 27
    :goto_0
    if-ltz p2, :cond_1

    .line 28
    .line 29
    iget-object p3, p0, Lb2/b;->t:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    check-cast p3, Lb2/b;

    .line 36
    .line 37
    iget-object p3, p3, Lb2/b;->v:LW1/t;

    .line 38
    .line 39
    invoke-virtual {p3}, LW1/t;->getMatrix()Landroid/graphics/Matrix;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 p2, p2, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p2, p0, Lb2/b;->s:Lb2/b;

    .line 50
    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    iget-object p2, p2, Lb2/b;->v:LW1/t;

    .line 54
    .line 55
    invoke-virtual {p2}, LW1/t;->getMatrix()Landroid/graphics/Matrix;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p2, p0, Lb2/b;->v:LW1/t;

    .line 63
    .line 64
    invoke-virtual {p2}, LW1/t;->getMatrix()Landroid/graphics/Matrix;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/b;->o:Lb2/e;

    .line 2
    .line 3
    iget-object v0, v0, Lb2/e;->c:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/b;->n:LT1/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LT1/G;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeAnimation(LW1/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW1/f;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/b;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveChildKeyPath(LY1/e;ILjava/util/List;LY1/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public resolveKeyPath(LY1/e;ILjava/util/List;LY1/e;)V
    .locals 2
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
    invoke-virtual {p0}, Lb2/b;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0, p2}, LY1/e;->matches(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "__container"

    .line 13
    .line 14
    invoke-virtual {p0}, Lb2/b;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lb2/b;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p4, v0}, LY1/e;->addKey(Ljava/lang/String;)LY1/e;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p0}, Lb2/b;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0, p2}, LY1/e;->fullyResolvesTo(Ljava/lang/String;I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p4, p0}, LY1/e;->resolve(LY1/f;)LY1/e;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lb2/b;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0, p2}, LY1/e;->propagateToChildren(Ljava/lang/String;I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lb2/b;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0, p2}, LY1/e;->incrementDepthBy(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v0, p2

    .line 68
    invoke-virtual {p0, p1, v0, p3, p4}, Lb2/b;->resolveChildKeyPath(LY1/e;ILjava/util/List;LY1/e;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb2/b;->v:LW1/t;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LW1/t;->setProgress(F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb2/b;->p:LW1/l;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v2, v1

    .line 12
    :goto_0
    invoke-virtual {v0}, LW1/l;->getMaskAnimations()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v2, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, LW1/l;->getMaskAnimations()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, LW1/f;

    .line 31
    .line 32
    invoke-virtual {v3, p1}, LW1/f;->setProgress(F)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lb2/b;->o:Lb2/e;

    .line 39
    .line 40
    iget v0, v0, Lb2/e;->m:F

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    cmpl-float v2, v0, v2

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    div-float/2addr p1, v0

    .line 48
    :cond_1
    iget-object v2, p0, Lb2/b;->q:LW1/h;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    div-float v0, p1, v0

    .line 53
    .line 54
    invoke-virtual {v2, v0}, LW1/f;->setProgress(F)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lb2/b;->r:Lb2/b;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v2, v0, Lb2/b;->o:Lb2/e;

    .line 62
    .line 63
    iget v2, v2, Lb2/e;->m:F

    .line 64
    .line 65
    mul-float/2addr v2, p1

    .line 66
    invoke-virtual {v0, v2}, Lb2/b;->setProgress(F)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    iget-object v0, p0, Lb2/b;->u:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-ge v1, v2, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, LW1/f;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, LW1/f;->setProgress(F)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    return-void
.end method
