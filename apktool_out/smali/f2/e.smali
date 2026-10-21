.class public final Lf2/e;
.super Lf2/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public f:F

.field public j:Z

.field public m:J

.field public n:F

.field public p:I

.field public q:F

.field public r:F

.field public s:LT1/i;

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lf2/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lf2/e;->f:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lf2/e;->j:Z

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    iput-wide v1, p0, Lf2/e;->m:J

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lf2/e;->n:F

    .line 17
    .line 18
    iput v0, p0, Lf2/e;->p:I

    .line 19
    .line 20
    const/high16 v1, -0x31000000

    .line 21
    .line 22
    iput v1, p0, Lf2/e;->q:F

    .line 23
    .line 24
    const/high16 v1, 0x4f000000

    .line 25
    .line 26
    iput v1, p0, Lf2/e;->r:F

    .line 27
    .line 28
    iput-boolean v0, p0, Lf2/e;->t:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf2/e;->getSpeed()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v0, v0, v1

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/a;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 18
    .line 19
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lf2/e;->removeFrameCallback()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public clearComposition()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf2/e;->s:LT1/i;

    .line 3
    .line 4
    const/high16 v0, -0x31000000

    .line 5
    .line 6
    iput v0, p0, Lf2/e;->q:F

    .line 7
    .line 8
    const/high16 v0, 0x4f000000

    .line 9
    .line 10
    iput v0, p0, Lf2/e;->r:F

    .line 11
    .line 12
    return-void
.end method

.method public doFrame(J)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lf2/e;->postFrameCallback()V

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lf2/e;->s:LT1/i;

    .line 7
    .line 8
    if-eqz v2, :cond_c

    .line 9
    .line 10
    invoke-virtual {p0}, Lf2/e;->isRunning()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_8

    .line 17
    .line 18
    :cond_0
    const-string v2, "LottieValueAnimator#doFrame"

    .line 19
    .line 20
    invoke-static {v2}, LT1/c;->beginSection(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-wide v3, p0, Lf2/e;->m:J

    .line 24
    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    cmp-long v7, v3, v5

    .line 28
    .line 29
    if-nez v7, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sub-long v5, p1, v3

    .line 33
    .line 34
    :goto_0
    iget-object v3, p0, Lf2/e;->s:LT1/i;

    .line 35
    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const v4, 0x4e6e6b28    # 1.0E9f

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, LT1/i;->getFrameRate()F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    div-float/2addr v4, v3

    .line 50
    iget v3, p0, Lf2/e;->f:F

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    div-float v3, v4, v3

    .line 57
    .line 58
    :goto_1
    long-to-float v4, v5

    .line 59
    div-float/2addr v4, v3

    .line 60
    iget v3, p0, Lf2/e;->n:F

    .line 61
    .line 62
    invoke-virtual {p0}, Lf2/e;->c()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    neg-float v4, v4

    .line 69
    :cond_3
    add-float/2addr v3, v4

    .line 70
    iput v3, p0, Lf2/e;->n:F

    .line 71
    .line 72
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-static {v3, v4, v5}, Lf2/g;->contains(FFF)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iget v4, p0, Lf2/e;->n:F

    .line 85
    .line 86
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-static {v4, v5, v6}, Lf2/g;->clamp(FFF)F

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    iput v4, p0, Lf2/e;->n:F

    .line 99
    .line 100
    iput-wide p1, p0, Lf2/e;->m:J

    .line 101
    .line 102
    invoke-virtual {p0}, Lf2/a;->b()V

    .line 103
    .line 104
    .line 105
    if-nez v3, :cond_9

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const/4 v4, -0x1

    .line 112
    if-eq v3, v4, :cond_5

    .line 113
    .line 114
    iget v3, p0, Lf2/e;->p:I

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-lt v3, v4, :cond_5

    .line 121
    .line 122
    iget p1, p0, Lf2/e;->f:F

    .line 123
    .line 124
    const/4 p2, 0x0

    .line 125
    cmpg-float p1, p1, p2

    .line 126
    .line 127
    if-gez p1, :cond_4

    .line 128
    .line 129
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    :goto_2
    iput p1, p0, Lf2/e;->n:F

    .line 139
    .line 140
    invoke-virtual {p0}, Lf2/e;->removeFrameCallback()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lf2/e;->c()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-virtual {p0, p1}, Lf2/a;->a(Z)V

    .line 148
    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_5
    iget-object v3, p0, Lf2/a;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_6

    .line 162
    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    .line 168
    .line 169
    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    iget v3, p0, Lf2/e;->p:I

    .line 174
    .line 175
    add-int/2addr v3, v1

    .line 176
    iput v3, p0, Lf2/e;->p:I

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v3, v0, :cond_7

    .line 183
    .line 184
    iget-boolean v3, p0, Lf2/e;->j:Z

    .line 185
    .line 186
    xor-int/2addr v3, v1

    .line 187
    iput-boolean v3, p0, Lf2/e;->j:Z

    .line 188
    .line 189
    invoke-virtual {p0}, Lf2/e;->reverseAnimationSpeed()V

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_7
    invoke-virtual {p0}, Lf2/e;->c()Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_8

    .line 198
    .line 199
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    goto :goto_4

    .line 204
    :cond_8
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    :goto_4
    iput v3, p0, Lf2/e;->n:F

    .line 209
    .line 210
    :goto_5
    iput-wide p1, p0, Lf2/e;->m:J

    .line 211
    .line 212
    :cond_9
    :goto_6
    iget-object p1, p0, Lf2/e;->s:LT1/i;

    .line 213
    .line 214
    if-nez p1, :cond_a

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_a
    iget p1, p0, Lf2/e;->n:F

    .line 218
    .line 219
    iget p2, p0, Lf2/e;->q:F

    .line 220
    .line 221
    cmpg-float p2, p1, p2

    .line 222
    .line 223
    if-ltz p2, :cond_b

    .line 224
    .line 225
    iget p2, p0, Lf2/e;->r:F

    .line 226
    .line 227
    cmpl-float p1, p1, p2

    .line 228
    .line 229
    if-gtz p1, :cond_b

    .line 230
    .line 231
    :goto_7
    invoke-static {v2}, LT1/c;->endSection(Ljava/lang/String;)F

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    iget p2, p0, Lf2/e;->q:F

    .line 238
    .line 239
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    iget v2, p0, Lf2/e;->r:F

    .line 244
    .line 245
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    iget v3, p0, Lf2/e;->n:F

    .line 250
    .line 251
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    const/4 v4, 0x3

    .line 256
    new-array v4, v4, [Ljava/lang/Object;

    .line 257
    .line 258
    const/4 v5, 0x0

    .line 259
    aput-object p2, v4, v5

    .line 260
    .line 261
    aput-object v2, v4, v1

    .line 262
    .line 263
    aput-object v3, v4, v0

    .line 264
    .line 265
    const-string p2, "Frame must be [%f,%f]. It is %f"

    .line 266
    .line 267
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p1

    .line 275
    :cond_c
    :goto_8
    return-void
.end method

.method public endAnimation()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf2/e;->removeFrameCallback()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lf2/e;->c()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lf2/a;->a(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/e;->s:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lf2/e;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lf2/e;->n:F

    .line 18
    .line 19
    sub-float/2addr v0, v1

    .line 20
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    :goto_0
    sub-float/2addr v1, v2

    .line 29
    div-float/2addr v0, v1

    .line 30
    return v0

    .line 31
    :cond_1
    iget v0, p0, Lf2/e;->n:F

    .line 32
    .line 33
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sub-float/2addr v0, v1

    .line 38
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf2/e;->getAnimatedValueAbsolute()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getAnimatedValueAbsolute()F
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/e;->s:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lf2/e;->n:F

    .line 8
    .line 9
    invoke-virtual {v0}, LT1/i;->getStartFrame()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sub-float/2addr v1, v0

    .line 14
    iget-object v0, p0, Lf2/e;->s:LT1/i;

    .line 15
    .line 16
    invoke-virtual {v0}, LT1/i;->getEndFrame()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Lf2/e;->s:LT1/i;

    .line 21
    .line 22
    invoke-virtual {v2}, LT1/i;->getStartFrame()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-float/2addr v0, v2

    .line 27
    div-float/2addr v1, v0

    .line 28
    return v1
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/e;->s:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {v0}, LT1/i;->getDuration()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    float-to-long v0, v0

    .line 13
    return-wide v0
.end method

.method public getFrame()F
    .locals 1

    .line 1
    iget v0, p0, Lf2/e;->n:F

    .line 2
    .line 3
    return v0
.end method

.method public getMaxFrame()F
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/e;->s:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lf2/e;->r:F

    .line 8
    .line 9
    const/high16 v2, 0x4f000000

    .line 10
    .line 11
    cmpl-float v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, LT1/i;->getEndFrame()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    return v1
.end method

.method public getMinFrame()F
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/e;->s:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget v1, p0, Lf2/e;->q:F

    .line 8
    .line 9
    const/high16 v2, -0x31000000

    .line 10
    .line 11
    cmpl-float v2, v1, v2

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, LT1/i;->getStartFrame()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    return v1
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lf2/e;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf2/e;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public pauseAnimation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/e;->removeFrameCallback()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public playAnimation()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf2/e;->t:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lf2/e;->c()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lf2/a;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 25
    .line 26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v4, 0x1a

    .line 29
    .line 30
    if-lt v3, v4, :cond_0

    .line 31
    .line 32
    invoke-static {v2, p0, v0}, Le/P;->s(Landroid/animation/Animator$AnimatorListener;Lf2/e;Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lf2/e;->c()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :goto_1
    float-to-int v0, v0

    .line 56
    int-to-float v0, v0

    .line 57
    invoke-virtual {p0, v0}, Lf2/e;->setFrame(F)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    iput-wide v0, p0, Lf2/e;->m:J

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lf2/e;->p:I

    .line 66
    .line 67
    invoke-virtual {p0}, Lf2/e;->postFrameCallback()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public postFrameCallback()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf2/e;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lf2/e;->removeFrameCallback(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public removeFrameCallback()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lf2/e;->removeFrameCallback(Z)V

    return-void
.end method

.method public removeFrameCallback(Z)V
    .locals 1

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lf2/e;->t:Z

    :cond_0
    return-void
.end method

.method public resumeAnimation()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf2/e;->t:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lf2/e;->postFrameCallback()V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lf2/e;->m:J

    .line 10
    .line 11
    invoke-virtual {p0}, Lf2/e;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lf2/e;->getFrame()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    cmpl-float v0, v0, v1

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lf2/e;->n:F

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lf2/e;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lf2/e;->getFrame()F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    cmpl-float v0, v0, v1

    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lf2/e;->n:F

    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf2/e;->getSpeed()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    neg-float v0, v0

    .line 6
    invoke-virtual {p0, v0}, Lf2/e;->setSpeed(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setComposition(LT1/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/e;->s:LT1/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-object p1, p0, Lf2/e;->s:LT1/i;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lf2/e;->q:F

    .line 13
    .line 14
    invoke-virtual {p1}, LT1/i;->getStartFrame()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    float-to-int v0, v0

    .line 23
    int-to-float v0, v0

    .line 24
    iget v1, p0, Lf2/e;->r:F

    .line 25
    .line 26
    invoke-virtual {p1}, LT1/i;->getEndFrame()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    float-to-int p1, p1

    .line 35
    int-to-float p1, p1

    .line 36
    invoke-virtual {p0, v0, p1}, Lf2/e;->setMinAndMaxFrames(FF)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p1}, LT1/i;->getStartFrame()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    float-to-int v0, v0

    .line 45
    int-to-float v0, v0

    .line 46
    invoke-virtual {p1}, LT1/i;->getEndFrame()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    float-to-int p1, p1

    .line 51
    int-to-float p1, p1

    .line 52
    invoke-virtual {p0, v0, p1}, Lf2/e;->setMinAndMaxFrames(FF)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget p1, p0, Lf2/e;->n:F

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lf2/e;->n:F

    .line 59
    .line 60
    float-to-int p1, p1

    .line 61
    int-to-float p1, p1

    .line 62
    invoke-virtual {p0, p1}, Lf2/e;->setFrame(F)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lf2/a;->b()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setFrame(F)V
    .locals 2

    .line 1
    iget v0, p0, Lf2/e;->n:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lf2/e;->getMinFrame()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lf2/e;->getMaxFrame()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p1, v0, v1}, Lf2/g;->clamp(FFF)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lf2/e;->n:F

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Lf2/e;->m:J

    .line 25
    .line 26
    invoke-virtual {p0}, Lf2/a;->b()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setMaxFrame(F)V
    .locals 1

    .line 1
    iget v0, p0, Lf2/e;->q:F

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lf2/e;->setMinAndMaxFrames(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMinAndMaxFrames(FF)V
    .locals 3

    .line 1
    cmpl-float v0, p1, p2

    .line 2
    .line 3
    if-gtz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lf2/e;->s:LT1/i;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, -0x800001

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, LT1/i;->getStartFrame()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    iget-object v1, p0, Lf2/e;->s:LT1/i;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v1}, LT1/i;->getEndFrame()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_1
    invoke-static {p1, v0, v1}, Lf2/g;->clamp(FFF)F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, p0, Lf2/e;->q:F

    .line 34
    .line 35
    invoke-static {p2, v0, v1}, Lf2/g;->clamp(FFF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lf2/e;->r:F

    .line 40
    .line 41
    iget v0, p0, Lf2/e;->n:F

    .line 42
    .line 43
    invoke-static {v0, p1, p2}, Lf2/g;->clamp(FFF)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    float-to-int p1, p1

    .line 48
    int-to-float p1, p1

    .line 49
    invoke-virtual {p0, p1}, Lf2/e;->setFrame(F)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "minFrame ("

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, ") must be <= maxFrame ("

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, ")"

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public setMinFrame(I)V
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget v0, p0, Lf2/e;->r:F

    .line 3
    .line 4
    float-to-int v0, v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lf2/e;->setMinAndMaxFrames(FF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lf2/e;->j:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lf2/e;->j:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lf2/e;->reverseAnimationSpeed()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lf2/e;->f:F

    .line 2
    .line 3
    return-void
.end method
