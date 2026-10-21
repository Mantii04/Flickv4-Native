.class public abstract Ld2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static b:Lp/r;

.field public static final c:Le2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld2/q;->a:Landroid/view/animation/LinearInterpolator;

    .line 7
    .line 8
    const-string v5, "i"

    .line 9
    .line 10
    const-string v6, "h"

    .line 11
    .line 12
    const-string v1, "t"

    .line 13
    .line 14
    const-string v2, "s"

    .line 15
    .line 16
    const-string v3, "e"

    .line 17
    .line 18
    const-string v4, "o"

    .line 19
    .line 20
    const-string v7, "to"

    .line 21
    .line 22
    const-string v8, "ti"

    .line 23
    .line 24
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Le2/a;->of([Ljava/lang/String;)Le2/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Ld2/q;->c:Le2/a;

    .line 33
    .line 34
    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/a;LT1/i;FLd2/H;Z)Lg2/a;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    if-eqz p4, :cond_9

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->beginObject()V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v7, v3

    .line 16
    move-object v8, v7

    .line 17
    move-object v9, v8

    .line 18
    move-object v10, v9

    .line 19
    move-object v11, v10

    .line 20
    move-object v15, v11

    .line 21
    move v13, v4

    .line 22
    :cond_0
    move v6, v5

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v12

    .line 27
    if-eqz v12, :cond_1

    .line 28
    .line 29
    sget-object v12, Ld2/q;->c:Le2/a;

    .line 30
    .line 31
    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/a;->selectName(Le2/a;)I

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    packed-switch v12, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->skipValue()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_0
    invoke-static {v0, v1}, Ld2/p;->b(Lcom/airbnb/lottie/parser/moshi/a;F)Landroid/graphics/PointF;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    goto :goto_0

    .line 47
    :pswitch_1
    invoke-static {v0, v1}, Ld2/p;->b(Lcom/airbnb/lottie/parser/moshi/a;F)Landroid/graphics/PointF;

    .line 48
    .line 49
    .line 50
    move-result-object v15

    .line 51
    goto :goto_0

    .line 52
    :pswitch_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextInt()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v12, 0x1

    .line 57
    if-ne v6, v12, :cond_0

    .line 58
    .line 59
    move v6, v12

    .line 60
    goto :goto_0

    .line 61
    :pswitch_3
    invoke-static {v0, v1}, Ld2/p;->b(Lcom/airbnb/lottie/parser/moshi/a;F)Landroid/graphics/PointF;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    goto :goto_0

    .line 66
    :pswitch_4
    invoke-static {v0, v1}, Ld2/p;->b(Lcom/airbnb/lottie/parser/moshi/a;F)Landroid/graphics/PointF;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    goto :goto_0

    .line 71
    :pswitch_5
    invoke-interface {v2, v0, v1}, Ld2/H;->parse(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    goto :goto_0

    .line 76
    :pswitch_6
    invoke-interface {v2, v0, v1}, Ld2/H;->parse(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    goto :goto_0

    .line 81
    :pswitch_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->nextDouble()D

    .line 82
    .line 83
    .line 84
    move-result-wide v12

    .line 85
    double-to-float v13, v12

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/a;->endObject()V

    .line 88
    .line 89
    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    sget-object v0, Ld2/q;->a:Landroid/view/animation/LinearInterpolator;

    .line 93
    .line 94
    move-object v12, v0

    .line 95
    move-object v9, v10

    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_2
    if-eqz v7, :cond_8

    .line 99
    .line 100
    if-eqz v8, :cond_8

    .line 101
    .line 102
    iget v0, v7, Landroid/graphics/PointF;->x:F

    .line 103
    .line 104
    neg-float v2, v1

    .line 105
    invoke-static {v0, v2, v1}, Lf2/g;->clamp(FFF)F

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, v7, Landroid/graphics/PointF;->x:F

    .line 110
    .line 111
    iget v0, v7, Landroid/graphics/PointF;->y:F

    .line 112
    .line 113
    const/high16 v5, -0x3d380000    # -100.0f

    .line 114
    .line 115
    const/high16 v6, 0x42c80000    # 100.0f

    .line 116
    .line 117
    invoke-static {v0, v5, v6}, Lf2/g;->clamp(FFF)F

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iput v0, v7, Landroid/graphics/PointF;->y:F

    .line 122
    .line 123
    iget v0, v8, Landroid/graphics/PointF;->x:F

    .line 124
    .line 125
    invoke-static {v0, v2, v1}, Lf2/g;->clamp(FFF)F

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 130
    .line 131
    iget v0, v8, Landroid/graphics/PointF;->y:F

    .line 132
    .line 133
    invoke-static {v0, v5, v6}, Lf2/g;->clamp(FFF)F

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iput v0, v8, Landroid/graphics/PointF;->y:F

    .line 138
    .line 139
    iget v2, v7, Landroid/graphics/PointF;->x:F

    .line 140
    .line 141
    iget v5, v7, Landroid/graphics/PointF;->y:F

    .line 142
    .line 143
    iget v6, v8, Landroid/graphics/PointF;->x:F

    .line 144
    .line 145
    invoke-static {v2, v5, v6, v0}, Lf2/h;->hashFor(FFFF)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const-class v5, Ld2/q;

    .line 150
    .line 151
    monitor-enter v5

    .line 152
    :try_start_0
    sget-object v0, Ld2/q;->b:Lp/r;

    .line 153
    .line 154
    if-nez v0, :cond_3

    .line 155
    .line 156
    new-instance v0, Lp/r;

    .line 157
    .line 158
    invoke-direct {v0}, Lp/r;-><init>()V

    .line 159
    .line 160
    .line 161
    sput-object v0, Ld2/q;->b:Lp/r;

    .line 162
    .line 163
    :cond_3
    sget-object v0, Ld2/q;->b:Lp/r;

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Lp/r;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 170
    .line 171
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Landroid/view/animation/Interpolator;

    .line 179
    .line 180
    :cond_4
    if-eqz v0, :cond_6

    .line 181
    .line 182
    if-nez v3, :cond_5

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_5
    move-object v0, v3

    .line 186
    goto :goto_3

    .line 187
    :cond_6
    :goto_1
    iget v0, v7, Landroid/graphics/PointF;->x:F

    .line 188
    .line 189
    div-float/2addr v0, v1

    .line 190
    iput v0, v7, Landroid/graphics/PointF;->x:F

    .line 191
    .line 192
    iget v0, v7, Landroid/graphics/PointF;->y:F

    .line 193
    .line 194
    div-float/2addr v0, v1

    .line 195
    iput v0, v7, Landroid/graphics/PointF;->y:F

    .line 196
    .line 197
    iget v0, v8, Landroid/graphics/PointF;->x:F

    .line 198
    .line 199
    div-float/2addr v0, v1

    .line 200
    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 201
    .line 202
    iget v3, v8, Landroid/graphics/PointF;->y:F

    .line 203
    .line 204
    div-float/2addr v3, v1

    .line 205
    iput v3, v8, Landroid/graphics/PointF;->y:F

    .line 206
    .line 207
    :try_start_1
    iget v1, v7, Landroid/graphics/PointF;->x:F

    .line 208
    .line 209
    iget v5, v7, Landroid/graphics/PointF;->y:F

    .line 210
    .line 211
    invoke-static {v1, v5, v0, v3}, LO/b;->create(FFFF)Landroid/view/animation/Interpolator;

    .line 212
    .line 213
    .line 214
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    goto :goto_2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const-string v1, "The Path cannot loop back on itself."

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_7

    .line 228
    .line 229
    iget v0, v7, Landroid/graphics/PointF;->x:F

    .line 230
    .line 231
    const/high16 v1, 0x3f800000    # 1.0f

    .line 232
    .line 233
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    iget v1, v7, Landroid/graphics/PointF;->y:F

    .line 238
    .line 239
    iget v3, v8, Landroid/graphics/PointF;->x:F

    .line 240
    .line 241
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    iget v4, v8, Landroid/graphics/PointF;->y:F

    .line 246
    .line 247
    invoke-static {v0, v1, v3, v4}, LO/b;->create(FFFF)Landroid/view/animation/Interpolator;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    goto :goto_2

    .line 252
    :cond_7
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 253
    .line 254
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 255
    .line 256
    .line 257
    :goto_2
    :try_start_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 258
    .line 259
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v2, v1}, Ld2/q;->b(ILjava/lang/ref/WeakReference;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 263
    .line 264
    .line 265
    :catch_1
    :goto_3
    move-object v12, v0

    .line 266
    goto :goto_4

    .line 267
    :catchall_0
    move-exception v0

    .line 268
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    throw v0

    .line 270
    :cond_8
    sget-object v0, Ld2/q;->a:Landroid/view/animation/LinearInterpolator;

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :goto_4
    new-instance v8, Lg2/a;

    .line 274
    .line 275
    const/4 v14, 0x0

    .line 276
    move-object v3, v11

    .line 277
    move-object v11, v9

    .line 278
    move-object/from16 v9, p1

    .line 279
    .line 280
    invoke-direct/range {v8 .. v14}, Lg2/a;-><init>(LT1/i;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 281
    .line 282
    .line 283
    iput-object v15, v8, Lg2/a;->m:Landroid/graphics/PointF;

    .line 284
    .line 285
    iput-object v3, v8, Lg2/a;->n:Landroid/graphics/PointF;

    .line 286
    .line 287
    return-object v8

    .line 288
    :cond_9
    invoke-interface {v2, v0, v1}, Ld2/H;->parse(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    new-instance v1, Lg2/a;

    .line 293
    .line 294
    invoke-direct {v1, v0}, Lg2/a;-><init>(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    return-object v1

    .line 298
    nop

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
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

.method public static b(ILjava/lang/ref/WeakReference;)V
    .locals 2

    .line 1
    const-class v0, Ld2/q;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld2/q;->b:Lp/r;

    .line 5
    .line 6
    invoke-virtual {v1, p0, p1}, Lp/r;->put(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
