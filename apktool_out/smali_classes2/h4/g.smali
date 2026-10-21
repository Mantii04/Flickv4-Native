.class public final Lh4/g;
.super Lh4/k;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public varargs constructor <init>([Lh4/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh4/k;-><init>([Lh4/j;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lh4/g;->h:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public clone()Lh4/g;
    .locals 5

    .line 3
    iget-object v0, p0, Lh4/k;->c:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5
    new-array v2, v1, [Lh4/i;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh4/j;

    invoke-virtual {v4}, Lh4/j;->clone()Lh4/j;

    move-result-object v4

    check-cast v4, Lh4/i;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lh4/g;

    invoke-direct {v0, v2}, Lh4/g;-><init>([Lh4/i;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lh4/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh4/g;->clone()Lh4/g;

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
    invoke-virtual {p0}, Lh4/g;->clone()Lh4/g;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue(F)I
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
    iget-boolean v1, p0, Lh4/g;->h:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput-boolean v3, p0, Lh4/g;->h:Z

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lh4/i;

    .line 21
    .line 22
    invoke-virtual {v1}, Lh4/i;->getIntValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lh4/g;->e:I

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lh4/i;

    .line 33
    .line 34
    invoke-virtual {v0}, Lh4/i;->getIntValue()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lh4/g;->f:I

    .line 39
    .line 40
    iget v1, p0, Lh4/g;->e:I

    .line 41
    .line 42
    sub-int/2addr v0, v1

    .line 43
    iput v0, p0, Lh4/g;->g:I

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
    iget v0, p0, Lh4/g;->e:I

    .line 58
    .line 59
    iget v1, p0, Lh4/g;->g:I

    .line 60
    .line 61
    :goto_0
    int-to-float v1, v1

    .line 62
    mul-float/2addr p1, v1

    .line 63
    float-to-int p1, p1

    .line 64
    add-int/2addr v0, p1

    .line 65
    return v0

    .line 66
    :cond_2
    iget v1, p0, Lh4/g;->e:I

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget v2, p0, Lh4/g;->f:I

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v0, p1, v1, v2}, Lh4/o;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    return p1

    .line 89
    :cond_3
    const/4 v2, 0x0

    .line 90
    cmpg-float v2, p1, v2

    .line 91
    .line 92
    if-gtz v2, :cond_6

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lh4/i;

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lh4/i;

    .line 105
    .line 106
    invoke-virtual {v1}, Lh4/i;->getIntValue()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v0}, Lh4/i;->getIntValue()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v1}, Lh4/j;->getFraction()F

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {v0}, Lh4/j;->getFraction()F

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-virtual {v0}, Lh4/j;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    :cond_4
    sub-float/2addr p1, v1

    .line 133
    sub-float/2addr v4, v1

    .line 134
    div-float/2addr p1, v4

    .line 135
    iget-object v0, p0, Lh4/k;->d:Lh4/o;

    .line 136
    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    sub-int/2addr v3, v2

    .line 140
    int-to-float v0, v3

    .line 141
    mul-float/2addr p1, v0

    .line 142
    float-to-int p1, p1

    .line 143
    add-int/2addr v2, p1

    .line 144
    return v2

    .line 145
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-interface {v0, p1, v1, v2}, Lh4/o;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Ljava/lang/Number;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    return p1

    .line 164
    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 165
    .line 166
    cmpl-float v2, p1, v2

    .line 167
    .line 168
    if-ltz v2, :cond_9

    .line 169
    .line 170
    add-int/lit8 v2, v1, -0x2

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Lh4/i;

    .line 177
    .line 178
    sub-int/2addr v1, v4

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lh4/i;

    .line 184
    .line 185
    invoke-virtual {v2}, Lh4/i;->getIntValue()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-virtual {v0}, Lh4/i;->getIntValue()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-virtual {v2}, Lh4/j;->getFraction()F

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {v0}, Lh4/j;->getFraction()F

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    invoke-virtual {v0}, Lh4/j;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_7

    .line 206
    .line 207
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    :cond_7
    sub-float/2addr p1, v2

    .line 212
    sub-float/2addr v4, v2

    .line 213
    div-float/2addr p1, v4

    .line 214
    iget-object v0, p0, Lh4/k;->d:Lh4/o;

    .line 215
    .line 216
    if-nez v0, :cond_8

    .line 217
    .line 218
    sub-int/2addr v3, v1

    .line 219
    int-to-float v0, v3

    .line 220
    mul-float/2addr p1, v0

    .line 221
    float-to-int p1, p1

    .line 222
    add-int/2addr v1, p1

    .line 223
    return v1

    .line 224
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-interface {v0, p1, v1, v2}, Lh4/o;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Ljava/lang/Number;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    return p1

    .line 243
    :cond_9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Lh4/i;

    .line 248
    .line 249
    move v3, v4

    .line 250
    :goto_1
    if-ge v3, v1, :cond_d

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Lh4/i;

    .line 257
    .line 258
    invoke-virtual {v5}, Lh4/j;->getFraction()F

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    cmpg-float v6, p1, v6

    .line 263
    .line 264
    if-gez v6, :cond_c

    .line 265
    .line 266
    invoke-virtual {v5}, Lh4/j;->getInterpolator()Landroid/view/animation/Interpolator;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-eqz v0, :cond_a

    .line 271
    .line 272
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    :cond_a
    invoke-virtual {v2}, Lh4/j;->getFraction()F

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    sub-float/2addr p1, v0

    .line 281
    invoke-virtual {v5}, Lh4/j;->getFraction()F

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    invoke-virtual {v2}, Lh4/j;->getFraction()F

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    sub-float/2addr v0, v1

    .line 290
    div-float/2addr p1, v0

    .line 291
    invoke-virtual {v2}, Lh4/i;->getIntValue()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-virtual {v5}, Lh4/i;->getIntValue()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    iget-object v2, p0, Lh4/k;->d:Lh4/o;

    .line 300
    .line 301
    if-nez v2, :cond_b

    .line 302
    .line 303
    sub-int/2addr v1, v0

    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-interface {v2, p1, v0, v1}, Lh4/o;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    check-cast p1, Ljava/lang/Number;

    .line 319
    .line 320
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    return p1

    .line 325
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 326
    .line 327
    move-object v2, v5

    .line 328
    goto :goto_1

    .line 329
    :cond_d
    sub-int/2addr v1, v4

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    check-cast p1, Lh4/j;

    .line 335
    .line 336
    invoke-virtual {p1}, Lh4/j;->getValue()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    check-cast p1, Ljava/lang/Number;

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    return p1
.end method
