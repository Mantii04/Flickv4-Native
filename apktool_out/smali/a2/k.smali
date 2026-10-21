.class public final La2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Landroid/graphics/PointF;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2/k;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List<",
            "LY1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La2/k;->b:Landroid/graphics/PointF;

    .line 3
    iput-boolean p2, p0, La2/k;->c:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, La2/k;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCurves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LY1/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La2/k;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInitialPoint()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, La2/k;->b:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public interpolateBetween(La2/k;La2/k;F)V
    .locals 11

    .line 1
    iget-object v0, p0, La2/k;->b:Landroid/graphics/PointF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/PointF;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, La2/k;->b:Landroid/graphics/PointF;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, La2/k;->isClosed()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2}, La2/k;->isClosed()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    move v0, v1

    .line 29
    :goto_1
    iput-boolean v0, p0, La2/k;->c:Z

    .line 30
    .line 31
    invoke-virtual {p1}, La2/k;->getCurves()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p2}, La2/k;->getCurves()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eq v0, v2, :cond_3

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "Curves must have the same number of control points. Shape 1: "

    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, La2/k;->getCurves()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, "\tShape 2: "

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, La2/k;->getCurves()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lf2/d;->warning(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p1}, La2/k;->getCurves()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p2}, La2/k;->getCurves()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget-object v2, p0, La2/k;->a:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-ge v3, v0, :cond_4

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    :goto_2
    if-ge v3, v0, :cond_5

    .line 123
    .line 124
    new-instance v4, LY1/a;

    .line 125
    .line 126
    invoke-direct {v4}, LY1/a;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-le v3, v0, :cond_5

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    sub-int/2addr v3, v1

    .line 146
    :goto_3
    if-lt v3, v0, :cond_5

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    sub-int/2addr v4, v1

    .line 153
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    add-int/lit8 v3, v3, -0x1

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_5
    invoke-virtual {p1}, La2/k;->getInitialPoint()Landroid/graphics/PointF;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p2}, La2/k;->getInitialPoint()Landroid/graphics/PointF;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 168
    .line 169
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 170
    .line 171
    invoke-static {v4, v5, p3}, Lf2/g;->lerp(FFF)F

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 176
    .line 177
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 178
    .line 179
    invoke-static {v0, v3, p3}, Lf2/g;->lerp(FFF)F

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    iget-object v3, p0, La2/k;->b:Landroid/graphics/PointF;

    .line 184
    .line 185
    if-nez v3, :cond_6

    .line 186
    .line 187
    new-instance v3, Landroid/graphics/PointF;

    .line 188
    .line 189
    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 190
    .line 191
    .line 192
    iput-object v3, p0, La2/k;->b:Landroid/graphics/PointF;

    .line 193
    .line 194
    :cond_6
    iget-object v3, p0, La2/k;->b:Landroid/graphics/PointF;

    .line 195
    .line 196
    invoke-virtual {v3, v4, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    sub-int/2addr v0, v1

    .line 204
    :goto_4
    if-ltz v0, :cond_7

    .line 205
    .line 206
    invoke-virtual {p1}, La2/k;->getCurves()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, LY1/a;

    .line 215
    .line 216
    invoke-virtual {p2}, La2/k;->getCurves()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, LY1/a;

    .line 225
    .line 226
    invoke-virtual {v1}, LY1/a;->getControlPoint1()Landroid/graphics/PointF;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v1}, LY1/a;->getControlPoint2()Landroid/graphics/PointF;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v1}, LY1/a;->getVertex()Landroid/graphics/PointF;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v3}, LY1/a;->getControlPoint1()Landroid/graphics/PointF;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v3}, LY1/a;->getControlPoint2()Landroid/graphics/PointF;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v3}, LY1/a;->getVertex()Landroid/graphics/PointF;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    check-cast v8, LY1/a;

    .line 255
    .line 256
    iget v9, v4, Landroid/graphics/PointF;->x:F

    .line 257
    .line 258
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 259
    .line 260
    invoke-static {v9, v10, p3}, Lf2/g;->lerp(FFF)F

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 265
    .line 266
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 267
    .line 268
    invoke-static {v4, v6, p3}, Lf2/g;->lerp(FFF)F

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    invoke-virtual {v8, v9, v4}, LY1/a;->setControlPoint1(FF)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    check-cast v4, LY1/a;

    .line 280
    .line 281
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 282
    .line 283
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 284
    .line 285
    invoke-static {v6, v8, p3}, Lf2/g;->lerp(FFF)F

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 290
    .line 291
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 292
    .line 293
    invoke-static {v5, v7, p3}, Lf2/g;->lerp(FFF)F

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    invoke-virtual {v4, v6, v5}, LY1/a;->setControlPoint2(FF)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    check-cast v4, LY1/a;

    .line 305
    .line 306
    iget v5, v1, Landroid/graphics/PointF;->x:F

    .line 307
    .line 308
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 309
    .line 310
    invoke-static {v5, v6, p3}, Lf2/g;->lerp(FFF)F

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 315
    .line 316
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 317
    .line 318
    invoke-static {v1, v3, p3}, Lf2/g;->lerp(FFF)F

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-virtual {v4, v5, v1}, LY1/a;->setVertex(FF)V

    .line 323
    .line 324
    .line 325
    add-int/lit8 v0, v0, -0x1

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_7
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/k;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ShapeData{numCurves="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, La2/k;->a:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "closed="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, La2/k;->c:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x7d

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
