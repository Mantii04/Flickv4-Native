.class public final Lh4/e;
.super Lh4/k;
.source "SourceFile"


# instance fields
.field public e:F

.field public f:F

.field public g:F

.field public h:Z


# direct methods
.method public varargs constructor <init>([Lh4/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh4/k;-><init>([Lh4/j;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lh4/e;->h:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public clone()Lh4/e;
    .locals 5

    .line 3
    iget-object v0, p0, Lh4/k;->c:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5
    new-array v2, v1, [Lh4/h;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh4/j;

    invoke-virtual {v4}, Lh4/j;->clone()Lh4/j;

    move-result-object v4

    check-cast v4, Lh4/h;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lh4/e;

    invoke-direct {v0, v2}, Lh4/e;-><init>([Lh4/h;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lh4/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh4/e;->clone()Lh4/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lh4/e;->clone()Lh4/e;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(F)F
    .locals 7

    .line 1
    iget-object v0, p0, Lh4/k;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Lh4/k;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-ne v1, v2, :cond_3

    .line 9
    .line 10
    iget-boolean v1, p0, Lh4/e;->h:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput-boolean v3, p0, Lh4/e;->h:Z

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lh4/h;

    .line 21
    .line 22
    invoke-virtual {v1}, Lh4/h;->getFloatValue()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lh4/e;->e:F

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lh4/h;

    .line 33
    .line 34
    invoke-virtual {v0}, Lh4/h;->getFloatValue()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lh4/e;->f:F

    .line 39
    .line 40
    iget v1, p0, Lh4/e;->e:F

    .line 41
    .line 42
    sub-float/2addr v0, v1

    .line 43
    iput v0, p0, Lh4/e;->g:F

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lh4/k;->b:Landroid/view/animation/Interpolator;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    :cond_1
    iget-object v0, p0, Lh4/k;->d:Lh4/o;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget v0, p0, Lh4/e;->e:F

    .line 58
    .line 59
    iget v1, p0, Lh4/e;->g:F

    .line 60
    .line 61
    mul-float/2addr p1, v1

    .line 62
    add-float/2addr p1, v0

    .line 63
    return p1

    .line 64
    :cond_2
    iget v1, p0, Lh4/e;->e:F

    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget v2, p0, Lh4/e;->f:F

    .line 71
    .line 72
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v0, p1, v1, v2}, Lh4/o;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    return p1

    .line 87
    :cond_3
    const/4 v2, 0x0

    .line 88
    cmpg-float v2, p1, v2

    .line 89
    .line 90
    if-gtz v2, :cond_6

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lh4/h;

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lh4/h;

    .line 103
    .line 104
    invoke-virtual {v1}, Lh4/h;->getFloatValue()F

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v0}, Lh4/h;->getFloatValue()F

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {v1}, Lh4/j;->getFraction()F

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0}, Lh4/j;->getFraction()F

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-virtual {v0}, Lh4/j;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    :cond_4
    sub-float/2addr p1, v1

    .line 131
    sub-float/2addr v4, v1

    .line 132
    div-float/2addr p1, v4

    .line 133
    iget-object v0, p0, Lh4/k;->d:Lh4/o;

    .line 134
    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    invoke-static {v3, v2, p1, v2}, Lb/c;->a(FFFF)F

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    return p1

    .line 142
    :cond_5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-interface {v0, p1, v1, v2}, Lh4/o;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    return p1

    .line 161
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 162
    .line 163
    cmpl-float v2, p1, v2

    .line 164
    .line 165
    if-ltz v2, :cond_9

    .line 166
    .line 167
    add-int/lit8 v2, v1, -0x2

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lh4/h;

    .line 174
    .line 175
    sub-int/2addr v1, v4

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lh4/h;

    .line 181
    .line 182
    invoke-virtual {v2}, Lh4/h;->getFloatValue()F

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-virtual {v0}, Lh4/h;->getFloatValue()F

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    invoke-virtual {v2}, Lh4/j;->getFraction()F

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-virtual {v0}, Lh4/j;->getFraction()F

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    invoke-virtual {v0}, Lh4/j;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    if-eqz v0, :cond_7

    .line 203
    .line 204
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    :cond_7
    sub-float/2addr p1, v2

    .line 209
    sub-float/2addr v4, v2

    .line 210
    div-float/2addr p1, v4

    .line 211
    iget-object v0, p0, Lh4/k;->d:Lh4/o;

    .line 212
    .line 213
    if-nez v0, :cond_8

    .line 214
    .line 215
    invoke-static {v3, v1, p1, v1}, Lb/c;->a(FFFF)F

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    return p1

    .line 220
    :cond_8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-interface {v0, p1, v1, v2}, Lh4/o;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Ljava/lang/Number;

    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    return p1

    .line 239
    :cond_9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    check-cast v2, Lh4/h;

    .line 244
    .line 245
    move v3, v4

    .line 246
    :goto_0
    if-ge v3, v1, :cond_d

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    check-cast v5, Lh4/h;

    .line 253
    .line 254
    invoke-virtual {v5}, Lh4/j;->getFraction()F

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    cmpg-float v6, p1, v6

    .line 259
    .line 260
    if-gez v6, :cond_c

    .line 261
    .line 262
    invoke-virtual {v5}, Lh4/j;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-eqz v0, :cond_a

    .line 267
    .line 268
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    :cond_a
    invoke-virtual {v2}, Lh4/j;->getFraction()F

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    sub-float/2addr p1, v0

    .line 277
    invoke-virtual {v5}, Lh4/j;->getFraction()F

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-virtual {v2}, Lh4/j;->getFraction()F

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    sub-float/2addr v0, v1

    .line 286
    div-float/2addr p1, v0

    .line 287
    invoke-virtual {v2}, Lh4/h;->getFloatValue()F

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    invoke-virtual {v5}, Lh4/h;->getFloatValue()F

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    iget-object v2, p0, Lh4/k;->d:Lh4/o;

    .line 296
    .line 297
    if-nez v2, :cond_b

    .line 298
    .line 299
    invoke-static {v1, v0, p1, v0}, Lb/c;->a(FFFF)F

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    return p1

    .line 304
    :cond_b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-interface {v2, p1, v0, v1}, Lh4/o;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    check-cast p1, Ljava/lang/Number;

    .line 317
    .line 318
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    return p1

    .line 323
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 324
    .line 325
    move-object v2, v5

    .line 326
    goto :goto_0

    .line 327
    :cond_d
    sub-int/2addr v1, v4

    .line 328
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Lh4/j;

    .line 333
    .line 334
    invoke-virtual {p1}, Lh4/j;->getValue()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    check-cast p1, Ljava/lang/Number;

    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    return p1
.end method
