.class public final LM/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final a:LM/J0;

.field public b:LM/h1;


# direct methods
.method public constructor <init>(Landroid/view/View;LM/J0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LM/N0;->a:LM/J0;

    .line 5
    .line 6
    invoke-static {p1}, LM/p0;->getRootWindowInsets(Landroid/view/View;)LM/h1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p2, LM/U0;

    .line 13
    .line 14
    invoke-direct {p2, p1}, LM/U0;-><init>(LM/h1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, LM/U0;->build()LM/h1;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput-object p1, p0, LM/N0;->b:LM/h1;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v6}, Landroid/view/View;->isLaidOut()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-static {v7, v6}, LM/h1;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)LM/h1;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, LM/N0;->b:LM/h1;

    .line 19
    .line 20
    invoke-static/range {p1 .. p2}, LM/O0;->e(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    return-object v1

    .line 25
    :cond_0
    invoke-static {v7, v6}, LM/h1;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)LM/h1;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v2, v0, LM/N0;->b:LM/h1;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-static {v6}, LM/p0;->getRootWindowInsets(Landroid/view/View;)LM/h1;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, v0, LM/N0;->b:LM/h1;

    .line 38
    .line 39
    :cond_1
    iget-object v2, v0, LM/N0;->b:LM/h1;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    iput-object v3, v0, LM/N0;->b:LM/h1;

    .line 44
    .line 45
    invoke-static/range {p1 .. p2}, LM/O0;->e(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    return-object v1

    .line 50
    :cond_2
    invoke-static {v6}, LM/O0;->f(Landroid/view/View;)LM/J0;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget-object v2, v2, LM/J0;->a:Landroid/view/WindowInsets;

    .line 57
    .line 58
    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-static/range {p1 .. p2}, LM/O0;->e(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    return-object v1

    .line 69
    :cond_3
    iget-object v2, v0, LM/N0;->b:LM/h1;

    .line 70
    .line 71
    move v5, v1

    .line 72
    const/4 v8, 0x0

    .line 73
    :goto_0
    const/16 v9, 0x100

    .line 74
    .line 75
    if-gt v5, v9, :cond_5

    .line 76
    .line 77
    invoke-virtual {v3, v5}, LM/h1;->getInsets(I)LD/c;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v2, v5}, LM/h1;->getInsets(I)LD/c;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-virtual {v9, v10}, LD/c;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-nez v9, :cond_4

    .line 90
    .line 91
    or-int/2addr v8, v5

    .line 92
    :cond_4
    shl-int/2addr v5, v1

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    if-nez v8, :cond_6

    .line 95
    .line 96
    invoke-static/range {p1 .. p2}, LM/O0;->e(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    return-object v1

    .line 101
    :cond_6
    iget-object v1, v0, LM/N0;->b:LM/h1;

    .line 102
    .line 103
    and-int/lit8 v2, v8, 0x8

    .line 104
    .line 105
    if-eqz v2, :cond_8

    .line 106
    .line 107
    invoke-static {}, LM/f1;->ime()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v3, v2}, LM/h1;->getInsets(I)LD/c;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iget v2, v2, LD/c;->d:I

    .line 116
    .line 117
    invoke-static {}, LM/f1;->ime()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-virtual {v1, v5}, LM/h1;->getInsets(I)LD/c;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    iget v5, v5, LD/c;->d:I

    .line 126
    .line 127
    if-le v2, v5, :cond_7

    .line 128
    .line 129
    sget-object v2, LM/O0;->e:Landroid/view/animation/PathInterpolator;

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    sget-object v2, LM/O0;->f:Lh0/a;

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_8
    sget-object v2, LM/O0;->g:Landroid/view/animation/DecelerateInterpolator;

    .line 136
    .line 137
    :goto_1
    new-instance v5, LM/S0;

    .line 138
    .line 139
    const-wide/16 v9, 0xa0

    .line 140
    .line 141
    invoke-direct {v5, v8, v2, v9, v10}, LM/S0;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 142
    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    invoke-virtual {v5, v2}, LM/S0;->setFraction(F)V

    .line 146
    .line 147
    .line 148
    const/4 v2, 0x2

    .line 149
    new-array v2, v2, [F

    .line 150
    .line 151
    fill-array-data v2, :array_0

    .line 152
    .line 153
    .line 154
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v5}, LM/S0;->getDurationMillis()J

    .line 159
    .line 160
    .line 161
    move-result-wide v9

    .line 162
    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-virtual {v3, v8}, LM/h1;->getInsets(I)LD/c;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v8}, LM/h1;->getInsets(I)LD/c;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    iget v11, v2, LD/c;->a:I

    .line 175
    .line 176
    iget v12, v10, LD/c;->a:I

    .line 177
    .line 178
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    iget v12, v2, LD/c;->b:I

    .line 183
    .line 184
    iget v13, v10, LD/c;->b:I

    .line 185
    .line 186
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 187
    .line 188
    .line 189
    move-result v14

    .line 190
    iget v15, v2, LD/c;->c:I

    .line 191
    .line 192
    iget v4, v10, LD/c;->c:I

    .line 193
    .line 194
    move-object/from16 v16, v1

    .line 195
    .line 196
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    move-object/from16 v17, v3

    .line 201
    .line 202
    iget v3, v2, LD/c;->d:I

    .line 203
    .line 204
    move/from16 v18, v8

    .line 205
    .line 206
    iget v8, v10, LD/c;->d:I

    .line 207
    .line 208
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    invoke-static {v11, v14, v1, v0}, LD/c;->of(IIII)LD/c;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iget v1, v2, LD/c;->a:I

    .line 217
    .line 218
    iget v2, v10, LD/c;->a:I

    .line 219
    .line 220
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    invoke-static {v1, v2, v4, v3}, LD/c;->of(IIII)LD/c;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    new-instance v8, LM/I0;

    .line 241
    .line 242
    invoke-direct {v8, v0, v1}, LM/I0;-><init>(LD/c;LD/c;)V

    .line 243
    .line 244
    .line 245
    const/4 v0, 0x0

    .line 246
    invoke-static {v6, v5, v7, v0}, LM/O0;->b(Landroid/view/View;LM/S0;Landroid/view/WindowInsets;Z)V

    .line 247
    .line 248
    .line 249
    new-instance v1, LM/K0;

    .line 250
    .line 251
    move-object v2, v5

    .line 252
    move-object/from16 v4, v16

    .line 253
    .line 254
    move-object/from16 v3, v17

    .line 255
    .line 256
    move/from16 v5, v18

    .line 257
    .line 258
    invoke-direct/range {v1 .. v6}, LM/K0;-><init>(LM/S0;LM/h1;LM/h1;ILandroid/view/View;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    .line 263
    .line 264
    new-instance v0, LM/L0;

    .line 265
    .line 266
    invoke-direct {v0, v2, v6}, LM/L0;-><init>(LM/S0;Landroid/view/View;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v9, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    .line 271
    .line 272
    new-instance v0, LM/M0;

    .line 273
    .line 274
    invoke-direct {v0, v6, v2, v8, v9}, LM/M0;-><init>(Landroid/view/View;LM/S0;LM/I0;Landroid/animation/ValueAnimator;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v6, v0}, LM/O;->add(Landroid/view/View;Ljava/lang/Runnable;)LM/O;

    .line 278
    .line 279
    .line 280
    move-object/from16 v0, p0

    .line 281
    .line 282
    iput-object v3, v0, LM/N0;->b:LM/h1;

    .line 283
    .line 284
    invoke-static/range {p1 .. p2}, LM/O0;->e(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    return-object v1

    .line 289
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
