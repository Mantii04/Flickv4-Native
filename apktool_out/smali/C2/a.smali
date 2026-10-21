.class public abstract LC2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public A:Z

.field public B:Z

.field public b:I

.field public e:F

.field public f:Ln2/u;

.field public j:Lcom/bumptech/glide/Priority;

.field public m:I

.field public n:Z

.field public p:I

.field public q:I

.field public r:Ll2/m;

.field public s:Z

.field public t:Z

.field public u:Ll2/q;

.field public v:LG2/d;

.field public w:Ljava/lang/Class;

.field public x:Z

.field public y:Landroid/content/res/Resources$Theme;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, LC2/a;->e:F

    .line 7
    .line 8
    sget-object v0, Ln2/u;->d:Ln2/t;

    .line 9
    .line 10
    iput-object v0, p0, LC2/a;->f:Ln2/u;

    .line 11
    .line 12
    sget-object v0, Lcom/bumptech/glide/Priority;->f:Lcom/bumptech/glide/Priority;

    .line 13
    .line 14
    iput-object v0, p0, LC2/a;->j:Lcom/bumptech/glide/Priority;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, LC2/a;->n:Z

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, LC2/a;->p:I

    .line 21
    .line 22
    iput v1, p0, LC2/a;->q:I

    .line 23
    .line 24
    invoke-static {}, LF2/c;->obtain()LF2/c;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, LC2/a;->r:Ll2/m;

    .line 29
    .line 30
    iput-boolean v0, p0, LC2/a;->t:Z

    .line 31
    .line 32
    new-instance v1, Ll2/q;

    .line 33
    .line 34
    invoke-direct {v1}, Ll2/q;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, LC2/a;->u:Ll2/q;

    .line 38
    .line 39
    new-instance v1, LG2/d;

    .line 40
    .line 41
    invoke-direct {v1}, LG2/d;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, LC2/a;->v:LG2/d;

    .line 45
    .line 46
    const-class v1, Ljava/lang/Object;

    .line 47
    .line 48
    iput-object v1, p0, LC2/a;->w:Ljava/lang/Class;

    .line 49
    .line 50
    iput-boolean v0, p0, LC2/a;->A:Z

    .line 51
    .line 52
    return-void
.end method

.method public static a(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method


# virtual methods
.method public apply(LC2/a;)LC2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC2/a;",
            ")",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, LC2/a;->apply(LC2/a;)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget v0, p1, LC2/a;->b:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-static {v0, v1}, LC2/a;->a(II)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v0, p1, LC2/a;->e:F

    .line 24
    .line 25
    iput v0, p0, LC2/a;->e:F

    .line 26
    .line 27
    :cond_1
    iget v0, p1, LC2/a;->b:I

    .line 28
    .line 29
    const/high16 v1, 0x100000

    .line 30
    .line 31
    invoke-static {v0, v1}, LC2/a;->a(II)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-boolean v0, p1, LC2/a;->B:Z

    .line 38
    .line 39
    iput-boolean v0, p0, LC2/a;->B:Z

    .line 40
    .line 41
    :cond_2
    iget v0, p1, LC2/a;->b:I

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    invoke-static {v0, v1}, LC2/a;->a(II)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p1, LC2/a;->f:Ln2/u;

    .line 51
    .line 52
    iput-object v0, p0, LC2/a;->f:Ln2/u;

    .line 53
    .line 54
    :cond_3
    iget v0, p1, LC2/a;->b:I

    .line 55
    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    invoke-static {v0, v1}, LC2/a;->a(II)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, p1, LC2/a;->j:Lcom/bumptech/glide/Priority;

    .line 65
    .line 66
    iput-object v0, p0, LC2/a;->j:Lcom/bumptech/glide/Priority;

    .line 67
    .line 68
    :cond_4
    iget v0, p1, LC2/a;->b:I

    .line 69
    .line 70
    const/16 v1, 0x10

    .line 71
    .line 72
    invoke-static {v0, v1}, LC2/a;->a(II)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iput v1, p0, LC2/a;->m:I

    .line 80
    .line 81
    iget v0, p0, LC2/a;->b:I

    .line 82
    .line 83
    and-int/lit8 v0, v0, -0x21

    .line 84
    .line 85
    iput v0, p0, LC2/a;->b:I

    .line 86
    .line 87
    :cond_5
    iget v0, p1, LC2/a;->b:I

    .line 88
    .line 89
    const/16 v2, 0x20

    .line 90
    .line 91
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    iget v0, p1, LC2/a;->m:I

    .line 98
    .line 99
    iput v0, p0, LC2/a;->m:I

    .line 100
    .line 101
    iget v0, p0, LC2/a;->b:I

    .line 102
    .line 103
    and-int/lit8 v0, v0, -0x11

    .line 104
    .line 105
    iput v0, p0, LC2/a;->b:I

    .line 106
    .line 107
    :cond_6
    iget v0, p1, LC2/a;->b:I

    .line 108
    .line 109
    const/16 v2, 0x40

    .line 110
    .line 111
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    iget v0, p0, LC2/a;->b:I

    .line 118
    .line 119
    and-int/lit16 v0, v0, -0x81

    .line 120
    .line 121
    iput v0, p0, LC2/a;->b:I

    .line 122
    .line 123
    :cond_7
    iget v0, p1, LC2/a;->b:I

    .line 124
    .line 125
    const/16 v2, 0x80

    .line 126
    .line 127
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    iget v0, p0, LC2/a;->b:I

    .line 134
    .line 135
    and-int/lit8 v0, v0, -0x41

    .line 136
    .line 137
    iput v0, p0, LC2/a;->b:I

    .line 138
    .line 139
    :cond_8
    iget v0, p1, LC2/a;->b:I

    .line 140
    .line 141
    const/16 v2, 0x100

    .line 142
    .line 143
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    iget-boolean v0, p1, LC2/a;->n:Z

    .line 150
    .line 151
    iput-boolean v0, p0, LC2/a;->n:Z

    .line 152
    .line 153
    :cond_9
    iget v0, p1, LC2/a;->b:I

    .line 154
    .line 155
    const/16 v2, 0x200

    .line 156
    .line 157
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    iget v0, p1, LC2/a;->q:I

    .line 164
    .line 165
    iput v0, p0, LC2/a;->q:I

    .line 166
    .line 167
    iget v0, p1, LC2/a;->p:I

    .line 168
    .line 169
    iput v0, p0, LC2/a;->p:I

    .line 170
    .line 171
    :cond_a
    iget v0, p1, LC2/a;->b:I

    .line 172
    .line 173
    const/16 v2, 0x400

    .line 174
    .line 175
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_b

    .line 180
    .line 181
    iget-object v0, p1, LC2/a;->r:Ll2/m;

    .line 182
    .line 183
    iput-object v0, p0, LC2/a;->r:Ll2/m;

    .line 184
    .line 185
    :cond_b
    iget v0, p1, LC2/a;->b:I

    .line 186
    .line 187
    const/16 v2, 0x1000

    .line 188
    .line 189
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_c

    .line 194
    .line 195
    iget-object v0, p1, LC2/a;->w:Ljava/lang/Class;

    .line 196
    .line 197
    iput-object v0, p0, LC2/a;->w:Ljava/lang/Class;

    .line 198
    .line 199
    :cond_c
    iget v0, p1, LC2/a;->b:I

    .line 200
    .line 201
    const/16 v2, 0x2000

    .line 202
    .line 203
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_d

    .line 208
    .line 209
    iget v0, p0, LC2/a;->b:I

    .line 210
    .line 211
    and-int/lit16 v0, v0, -0x4001

    .line 212
    .line 213
    iput v0, p0, LC2/a;->b:I

    .line 214
    .line 215
    :cond_d
    iget v0, p1, LC2/a;->b:I

    .line 216
    .line 217
    const/16 v2, 0x4000

    .line 218
    .line 219
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_e

    .line 224
    .line 225
    iget v0, p0, LC2/a;->b:I

    .line 226
    .line 227
    and-int/lit16 v0, v0, -0x2001

    .line 228
    .line 229
    iput v0, p0, LC2/a;->b:I

    .line 230
    .line 231
    :cond_e
    iget v0, p1, LC2/a;->b:I

    .line 232
    .line 233
    const v2, 0x8000

    .line 234
    .line 235
    .line 236
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_f

    .line 241
    .line 242
    iget-object v0, p1, LC2/a;->y:Landroid/content/res/Resources$Theme;

    .line 243
    .line 244
    iput-object v0, p0, LC2/a;->y:Landroid/content/res/Resources$Theme;

    .line 245
    .line 246
    :cond_f
    iget v0, p1, LC2/a;->b:I

    .line 247
    .line 248
    const/high16 v2, 0x10000

    .line 249
    .line 250
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_10

    .line 255
    .line 256
    iget-boolean v0, p1, LC2/a;->t:Z

    .line 257
    .line 258
    iput-boolean v0, p0, LC2/a;->t:Z

    .line 259
    .line 260
    :cond_10
    iget v0, p1, LC2/a;->b:I

    .line 261
    .line 262
    const/high16 v2, 0x20000

    .line 263
    .line 264
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_11

    .line 269
    .line 270
    iget-boolean v0, p1, LC2/a;->s:Z

    .line 271
    .line 272
    iput-boolean v0, p0, LC2/a;->s:Z

    .line 273
    .line 274
    :cond_11
    iget v0, p1, LC2/a;->b:I

    .line 275
    .line 276
    const/16 v2, 0x800

    .line 277
    .line 278
    invoke-static {v0, v2}, LC2/a;->a(II)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_12

    .line 283
    .line 284
    iget-object v0, p0, LC2/a;->v:LG2/d;

    .line 285
    .line 286
    iget-object v2, p1, LC2/a;->v:LG2/d;

    .line 287
    .line 288
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 289
    .line 290
    .line 291
    iget-boolean v0, p1, LC2/a;->A:Z

    .line 292
    .line 293
    iput-boolean v0, p0, LC2/a;->A:Z

    .line 294
    .line 295
    :cond_12
    iget-boolean v0, p0, LC2/a;->t:Z

    .line 296
    .line 297
    if-nez v0, :cond_13

    .line 298
    .line 299
    iget-object v0, p0, LC2/a;->v:LG2/d;

    .line 300
    .line 301
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 302
    .line 303
    .line 304
    iget v0, p0, LC2/a;->b:I

    .line 305
    .line 306
    iput-boolean v1, p0, LC2/a;->s:Z

    .line 307
    .line 308
    const v1, -0x20801

    .line 309
    .line 310
    .line 311
    and-int/2addr v0, v1

    .line 312
    iput v0, p0, LC2/a;->b:I

    .line 313
    .line 314
    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, LC2/a;->A:Z

    .line 316
    .line 317
    :cond_13
    iget v0, p0, LC2/a;->b:I

    .line 318
    .line 319
    iget v1, p1, LC2/a;->b:I

    .line 320
    .line 321
    or-int/2addr v0, v1

    .line 322
    iput v0, p0, LC2/a;->b:I

    .line 323
    .line 324
    iget-object v0, p0, LC2/a;->u:Ll2/q;

    .line 325
    .line 326
    iget-object p1, p1, LC2/a;->u:Ll2/q;

    .line 327
    .line 328
    invoke-virtual {v0, p1}, Ll2/q;->putAll(Ll2/q;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    return-object p1
.end method

.method public autoClone()LC2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, LC2/a;->z:Z

    .line 20
    .line 21
    invoke-virtual {p0}, LC2/a;->lock()LC2/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final b(Lu2/u;Lu2/f;)LC2/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, LC2/a;->b(Lu2/u;Lu2/f;)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, LC2/a;->downsample(Lu2/u;)LC2/a;

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p2, p1}, LC2/a;->f(Ll2/t;Z)LC2/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final c(Ll2/p;)LC2/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, LC2/a;->c(Ll2/p;)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, LC2/a;->u:Ll2/q;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ll2/q;->remove(Ll2/p;)Ll2/q;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public centerCrop()LC2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC2/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu2/u;->c:Lu2/r;

    .line 2
    .line 3
    new-instance v1, Lu2/i;

    .line 4
    .line 5
    invoke-direct {v1}, Lu2/i;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, LC2/a;->g(Lu2/u;Lu2/f;)LC2/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public centerInside()LC2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC2/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu2/u;->b:Lu2/q;

    .line 2
    .line 3
    new-instance v1, Lu2/j;

    .line 4
    .line 5
    invoke-direct {v1}, Lu2/j;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v0, v1, v2}, LC2/a;->d(Lu2/u;Lu2/f;Z)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public clone()LC2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC2/a;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC2/a;

    .line 3
    new-instance v1, Ll2/q;

    invoke-direct {v1}, Ll2/q;-><init>()V

    iput-object v1, v0, LC2/a;->u:Ll2/q;

    .line 4
    iget-object v2, p0, LC2/a;->u:Ll2/q;

    invoke-virtual {v1, v2}, Ll2/q;->putAll(Ll2/q;)V

    .line 5
    new-instance v1, LG2/d;

    invoke-direct {v1}, LG2/d;-><init>()V

    iput-object v1, v0, LC2/a;->v:LG2/d;

    .line 6
    iget-object v2, p0, LC2/a;->v:LG2/d;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, LC2/a;->x:Z

    .line 8
    iput-boolean v1, v0, LC2/a;->z:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lu2/u;Lu2/f;Z)LC2/a;
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, LC2/a;->g(Lu2/u;Lu2/f;)LC2/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, LC2/a;->b(Lu2/u;Lu2/f;)LC2/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p1, LC2/a;->A:Z

    .line 14
    .line 15
    return-object p1
.end method

.method public decode(Ljava/lang/Class;)LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, LC2/a;->decode(Ljava/lang/Class;)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Class;

    .line 19
    .line 20
    iput-object p1, p0, LC2/a;->w:Ljava/lang/Class;

    .line 21
    .line 22
    iget p1, p0, LC2/a;->b:I

    .line 23
    .line 24
    or-int/lit16 p1, p1, 0x1000

    .line 25
    .line 26
    iput p1, p0, LC2/a;->b:I

    .line 27
    .line 28
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public diskCacheStrategy(Ln2/u;)LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/u;",
            ")",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, LC2/a;->diskCacheStrategy(Ln2/u;)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ln2/u;

    .line 19
    .line 20
    iput-object p1, p0, LC2/a;->f:Ln2/u;

    .line 21
    .line 22
    iget p1, p0, LC2/a;->b:I

    .line 23
    .line 24
    or-int/lit8 p1, p1, 0x4

    .line 25
    .line 26
    iput p1, p0, LC2/a;->b:I

    .line 27
    .line 28
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public downsample(Lu2/u;)LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/u;",
            ")",
            "LC2/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu2/u;->f:Ll2/p;

    .line 2
    .line 3
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, LC2/a;->set(Ll2/p;Ljava/lang/Object;)LC2/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final e(Ljava/lang/Class;Ll2/t;Z)LC2/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2, p3}, LC2/a;->e(Ljava/lang/Class;Ll2/t;Z)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, LC2/a;->v:LG2/d;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget p1, p0, LC2/a;->b:I

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, LC2/a;->t:Z

    .line 29
    .line 30
    const v0, 0x10800

    .line 31
    .line 32
    .line 33
    or-int/2addr v0, p1

    .line 34
    iput v0, p0, LC2/a;->b:I

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, LC2/a;->A:Z

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    const p3, 0x30800

    .line 42
    .line 43
    .line 44
    or-int/2addr p1, p3

    .line 45
    iput p1, p0, LC2/a;->b:I

    .line 46
    .line 47
    iput-boolean p2, p0, LC2/a;->s:Z

    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LC2/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LC2/a;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, LC2/a;->isEquivalentTo(LC2/a;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public error(I)LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, LC2/a;->error(I)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput p1, p0, LC2/a;->m:I

    .line 15
    .line 16
    iget p1, p0, LC2/a;->b:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x20

    .line 19
    .line 20
    and-int/lit8 p1, p1, -0x11

    .line 21
    .line 22
    iput p1, p0, LC2/a;->b:I

    .line 23
    .line 24
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final f(Ll2/t;Z)LC2/a;
    .locals 2

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, LC2/a;->f(Ll2/t;Z)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Lu2/A;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Lu2/A;-><init>(Ll2/t;Z)V

    .line 17
    .line 18
    .line 19
    const-class v1, Landroid/graphics/Bitmap;

    .line 20
    .line 21
    invoke-virtual {p0, v1, p1, p2}, LC2/a;->e(Ljava/lang/Class;Ll2/t;Z)LC2/a;

    .line 22
    .line 23
    .line 24
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0, p2}, LC2/a;->e(Ljava/lang/Class;Ll2/t;Z)LC2/a;

    .line 27
    .line 28
    .line 29
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    .line 31
    invoke-virtual {v0}, Lu2/A;->asBitmapDrawable()Ll2/t;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v1, v0, p2}, LC2/a;->e(Ljava/lang/Class;Ll2/t;Z)LC2/a;

    .line 36
    .line 37
    .line 38
    new-instance v0, Ly2/g;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Ly2/g;-><init>(Ll2/t;)V

    .line 41
    .line 42
    .line 43
    const-class p1, Ly2/d;

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0, p2}, LC2/a;->e(Ljava/lang/Class;Ll2/t;Z)LC2/a;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method public final g(Lu2/u;Lu2/f;)LC2/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, LC2/a;->g(Lu2/u;Lu2/f;)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, LC2/a;->downsample(Lu2/u;)LC2/a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, LC2/a;->transform(Ll2/t;)LC2/a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final getDiskCacheStrategy()Ln2/u;
    .locals 1

    .line 1
    iget-object v0, p0, LC2/a;->f:Ln2/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorId()I
    .locals 1

    .line 1
    iget v0, p0, LC2/a;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getFallbackId()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getOnlyRetrieveFromCache()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getOptions()Ll2/q;
    .locals 1

    .line 1
    iget-object v0, p0, LC2/a;->u:Ll2/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOverrideHeight()I
    .locals 1

    .line 1
    iget v0, p0, LC2/a;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOverrideWidth()I
    .locals 1

    .line 1
    iget v0, p0, LC2/a;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getPlaceholderId()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getPriority()Lcom/bumptech/glide/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, LC2/a;->j:Lcom/bumptech/glide/Priority;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LC2/a;->w:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSignature()Ll2/m;
    .locals 1

    .line 1
    iget-object v0, p0, LC2/a;->r:Ll2/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSizeMultiplier()F
    .locals 1

    .line 1
    iget v0, p0, LC2/a;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 1
    iget-object v0, p0, LC2/a;->y:Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTransformations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ll2/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LC2/a;->v:LG2/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUseAnimationPool()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LC2/a;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUseUnlimitedSourceGeneratorsPool()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, LC2/a;->e:F

    .line 2
    .line 3
    invoke-static {v0}, LG2/t;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, LC2/a;->m:I

    .line 8
    .line 9
    invoke-static {v1, v0}, LG2/t;->hashCode(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v2, v0}, LG2/t;->hashCode(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v2, v0}, LG2/t;->hashCode(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-boolean v1, p0, LC2/a;->n:Z

    .line 36
    .line 37
    invoke-static {v1, v0}, LG2/t;->hashCode(ZI)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget v1, p0, LC2/a;->p:I

    .line 42
    .line 43
    invoke-static {v1, v0}, LG2/t;->hashCode(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget v1, p0, LC2/a;->q:I

    .line 48
    .line 49
    invoke-static {v1, v0}, LG2/t;->hashCode(II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-boolean v1, p0, LC2/a;->s:Z

    .line 54
    .line 55
    invoke-static {v1, v0}, LG2/t;->hashCode(ZI)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-boolean v1, p0, LC2/a;->t:Z

    .line 60
    .line 61
    invoke-static {v1, v0}, LG2/t;->hashCode(ZI)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v2, v0}, LG2/t;->hashCode(ZI)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v2, v0}, LG2/t;->hashCode(ZI)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object v1, p0, LC2/a;->f:Ln2/u;

    .line 74
    .line 75
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-object v1, p0, LC2/a;->j:Lcom/bumptech/glide/Priority;

    .line 80
    .line 81
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-object v1, p0, LC2/a;->u:Ll2/q;

    .line 86
    .line 87
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget-object v1, p0, LC2/a;->v:LG2/d;

    .line 92
    .line 93
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v1, p0, LC2/a;->w:Ljava/lang/Class;

    .line 98
    .line 99
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object v1, p0, LC2/a;->r:Ll2/m;

    .line 104
    .line 105
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget-object v1, p0, LC2/a;->y:Landroid/content/res/Resources$Theme;

    .line 110
    .line 111
    invoke-static {v1, v0}, LG2/t;->hashCode(Ljava/lang/Object;I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    return v0
.end method

.method public final isAutoCloneEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isEquivalentTo(LC2/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC2/a;",
            ")Z"
        }
    .end annotation

    .line 1
    iget v0, p1, LC2/a;->e:F

    .line 2
    .line 3
    iget v1, p0, LC2/a;->e:F

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, LC2/a;->m:I

    .line 12
    .line 13
    iget v1, p1, LC2/a;->m:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {v0, v0}, LG2/t;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {v0, v0}, LG2/t;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-static {v0, v0}, LG2/t;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-boolean v0, p0, LC2/a;->n:Z

    .line 37
    .line 38
    iget-boolean v1, p1, LC2/a;->n:Z

    .line 39
    .line 40
    if-ne v0, v1, :cond_0

    .line 41
    .line 42
    iget v0, p0, LC2/a;->p:I

    .line 43
    .line 44
    iget v1, p1, LC2/a;->p:I

    .line 45
    .line 46
    if-ne v0, v1, :cond_0

    .line 47
    .line 48
    iget v0, p0, LC2/a;->q:I

    .line 49
    .line 50
    iget v1, p1, LC2/a;->q:I

    .line 51
    .line 52
    if-ne v0, v1, :cond_0

    .line 53
    .line 54
    iget-boolean v0, p0, LC2/a;->s:Z

    .line 55
    .line 56
    iget-boolean v1, p1, LC2/a;->s:Z

    .line 57
    .line 58
    if-ne v0, v1, :cond_0

    .line 59
    .line 60
    iget-boolean v0, p0, LC2/a;->t:Z

    .line 61
    .line 62
    iget-boolean v1, p1, LC2/a;->t:Z

    .line 63
    .line 64
    if-ne v0, v1, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, LC2/a;->f:Ln2/u;

    .line 67
    .line 68
    iget-object v1, p1, LC2/a;->f:Ln2/u;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    iget-object v0, p0, LC2/a;->j:Lcom/bumptech/glide/Priority;

    .line 77
    .line 78
    iget-object v1, p1, LC2/a;->j:Lcom/bumptech/glide/Priority;

    .line 79
    .line 80
    if-ne v0, v1, :cond_0

    .line 81
    .line 82
    iget-object v0, p0, LC2/a;->u:Ll2/q;

    .line 83
    .line 84
    iget-object v1, p1, LC2/a;->u:Ll2/q;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ll2/q;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    .line 92
    iget-object v0, p0, LC2/a;->v:LG2/d;

    .line 93
    .line 94
    iget-object v1, p1, LC2/a;->v:LG2/d;

    .line 95
    .line 96
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    .line 102
    iget-object v0, p0, LC2/a;->w:Ljava/lang/Class;

    .line 103
    .line 104
    iget-object v1, p1, LC2/a;->w:Ljava/lang/Class;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    iget-object v0, p0, LC2/a;->r:Ll2/m;

    .line 113
    .line 114
    iget-object v1, p1, LC2/a;->r:Ll2/m;

    .line 115
    .line 116
    invoke-static {v0, v1}, LG2/t;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    .line 122
    iget-object v0, p0, LC2/a;->y:Landroid/content/res/Resources$Theme;

    .line 123
    .line 124
    iget-object p1, p1, LC2/a;->y:Landroid/content/res/Resources$Theme;

    .line 125
    .line 126
    invoke-static {v0, p1}, LG2/t;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_0

    .line 131
    .line 132
    const/4 p1, 0x1

    .line 133
    return p1

    .line 134
    :cond_0
    const/4 p1, 0x0

    .line 135
    return p1
.end method

.method public final isMemoryCacheable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LC2/a;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPrioritySet()Z
    .locals 2

    .line 1
    iget v0, p0, LC2/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, LC2/a;->a(II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final isTransformationAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LC2/a;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isTransformationRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LC2/a;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isTransformationSet()Z
    .locals 2

    .line 1
    iget v0, p0, LC2/a;->b:I

    .line 2
    .line 3
    const/16 v1, 0x800

    .line 4
    .line 5
    invoke-static {v0, v1}, LC2/a;->a(II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final isValidOverride()Z
    .locals 2

    .line 1
    iget v0, p0, LC2/a;->q:I

    .line 2
    .line 3
    iget v1, p0, LC2/a;->p:I

    .line 4
    .line 5
    invoke-static {v0, v1}, LG2/t;->isValidDimensions(II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public lock()LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC2/a;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LC2/a;->x:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public optionalCenterCrop()LC2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC2/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu2/u;->c:Lu2/r;

    .line 2
    .line 3
    new-instance v1, Lu2/i;

    .line 4
    .line 5
    invoke-direct {v1}, Lu2/i;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, LC2/a;->b(Lu2/u;Lu2/f;)LC2/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public optionalCenterInside()LC2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC2/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu2/u;->b:Lu2/q;

    .line 2
    .line 3
    new-instance v1, Lu2/j;

    .line 4
    .line 5
    invoke-direct {v1}, Lu2/j;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v0, v1, v2}, LC2/a;->d(Lu2/u;Lu2/f;Z)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public optionalFitCenter()LC2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC2/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lu2/u;->a:Lu2/s;

    .line 2
    .line 3
    new-instance v1, Lu2/C;

    .line 4
    .line 5
    invoke-direct {v1}, Lu2/C;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v0, v1, v2}, LC2/a;->d(Lu2/u;Lu2/f;Z)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public override(II)LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, LC2/a;->override(II)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput p1, p0, LC2/a;->q:I

    .line 15
    .line 16
    iput p2, p0, LC2/a;->p:I

    .line 17
    .line 18
    iget p1, p0, LC2/a;->b:I

    .line 19
    .line 20
    or-int/lit16 p1, p1, 0x200

    .line 21
    .line 22
    iput p1, p0, LC2/a;->b:I

    .line 23
    .line 24
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public priority(Lcom/bumptech/glide/Priority;)LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, LC2/a;->priority(Lcom/bumptech/glide/Priority;)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/bumptech/glide/Priority;

    .line 19
    .line 20
    iput-object p1, p0, LC2/a;->j:Lcom/bumptech/glide/Priority;

    .line 21
    .line 22
    iget p1, p0, LC2/a;->b:I

    .line 23
    .line 24
    or-int/lit8 p1, p1, 0x8

    .line 25
    .line 26
    iput p1, p0, LC2/a;->b:I

    .line 27
    .line 28
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public final selfOrThrowIfLocked()LC2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "You cannot modify locked T, consider clone()"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public set(Ll2/p;Ljava/lang/Object;)LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ll2/p;",
            "TY;)",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, LC2/a;->set(Ll2/p;Ljava/lang/Object;)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, LC2/a;->u:Ll2/q;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Ll2/q;->set(Ll2/p;Ljava/lang/Object;)Ll2/q;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public signature(Ll2/m;)LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/m;",
            ")",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, LC2/a;->signature(Ll2/m;)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, LG2/r;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ll2/m;

    .line 19
    .line 20
    iput-object p1, p0, LC2/a;->r:Ll2/m;

    .line 21
    .line 22
    iget p1, p0, LC2/a;->b:I

    .line 23
    .line 24
    or-int/lit16 p1, p1, 0x400

    .line 25
    .line 26
    iput p1, p0, LC2/a;->b:I

    .line 27
    .line 28
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public skipMemoryCache(Z)LC2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, v1}, LC2/a;->skipMemoryCache(Z)LC2/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    xor-int/2addr p1, v1

    .line 16
    iput-boolean p1, p0, LC2/a;->n:Z

    .line 17
    .line 18
    iget p1, p0, LC2/a;->b:I

    .line 19
    .line 20
    or-int/lit16 p1, p1, 0x100

    .line 21
    .line 22
    iput p1, p0, LC2/a;->b:I

    .line 23
    .line 24
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public theme(Landroid/content/res/Resources$Theme;)LC2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, LC2/a;->theme(Landroid/content/res/Resources$Theme;)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, LC2/a;->y:Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget v0, p0, LC2/a;->b:I

    .line 19
    .line 20
    const v1, 0x8000

    .line 21
    .line 22
    .line 23
    or-int/2addr v0, v1

    .line 24
    iput v0, p0, LC2/a;->b:I

    .line 25
    .line 26
    sget-object v0, Lw2/h;->b:Ll2/p;

    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, LC2/a;->set(Ll2/p;Ljava/lang/Object;)LC2/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_1
    iget p1, p0, LC2/a;->b:I

    .line 34
    .line 35
    const v0, -0x8001

    .line 36
    .line 37
    .line 38
    and-int/2addr p1, v0

    .line 39
    iput p1, p0, LC2/a;->b:I

    .line 40
    .line 41
    sget-object p1, Lw2/h;->b:Ll2/p;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, LC2/a;->c(Ll2/p;)LC2/a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public transform(Ll2/t;)LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/t;",
            ")",
            "LC2/a;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, LC2/a;->f(Ll2/t;Z)LC2/a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public useAnimationPool(Z)LC2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LC2/a;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, LC2/a;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, LC2/a;->clone()LC2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, LC2/a;->useAnimationPool(Z)LC2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-boolean p1, p0, LC2/a;->B:Z

    .line 15
    .line 16
    iget p1, p0, LC2/a;->b:I

    .line 17
    .line 18
    const/high16 v0, 0x100000

    .line 19
    .line 20
    or-int/2addr p1, v0

    .line 21
    iput p1, p0, LC2/a;->b:I

    .line 22
    .line 23
    invoke-virtual {p0}, LC2/a;->selfOrThrowIfLocked()LC2/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
