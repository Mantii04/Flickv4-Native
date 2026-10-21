.class public final LG3/E;
.super LG3/C;
.source "SourceFile"


# instance fields
.field public f:Z

.field public g:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LG3/C;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LG3/E;->f:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, LG3/E;->g:F

    .line 9
    .line 10
    invoke-direct {p0, p1}, LG3/E;->d(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, LG3/D;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LG3/D;-><init>(LG3/E;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, LG3/C;->c:LG3/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, LG3/p;->f:LG3/c;

    .line 12
    .line 13
    invoke-interface {v0, v2}, LG3/c;->getCornerSize(Landroid/graphics/RectF;)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v1

    .line 19
    :goto_1
    iput v0, p0, LG3/E;->g:F

    .line 20
    .line 21
    iget-object v0, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, LG3/C;->c:LG3/p;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget-object v3, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 36
    .line 37
    invoke-virtual {v0, v3}, LG3/p;->isRoundRect(Landroid/graphics/RectF;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    :goto_2
    move v0, v2

    .line 43
    :goto_3
    const/4 v3, 0x1

    .line 44
    if-nez v0, :cond_8

    .line 45
    .line 46
    iget-object v0, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_7

    .line 53
    .line 54
    iget-object v0, p0, LG3/C;->c:LG3/p;

    .line 55
    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    iget-boolean v4, p0, LG3/C;->b:Z

    .line 59
    .line 60
    if-eqz v4, :cond_7

    .line 61
    .line 62
    iget-object v4, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 63
    .line 64
    invoke-virtual {v0, v4}, LG3/p;->isRoundRect(Landroid/graphics/RectF;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_7

    .line 69
    .line 70
    iget-object v0, p0, LG3/C;->c:LG3/p;

    .line 71
    .line 72
    invoke-virtual {v0}, LG3/p;->getTopLeftCorner()LG3/d;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    instance-of v4, v4, LG3/m;

    .line 77
    .line 78
    if-eqz v4, :cond_7

    .line 79
    .line 80
    invoke-virtual {v0}, LG3/p;->getTopRightCorner()LG3/d;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    instance-of v4, v4, LG3/m;

    .line 85
    .line 86
    if-eqz v4, :cond_7

    .line 87
    .line 88
    invoke-virtual {v0}, LG3/p;->getBottomLeftCorner()LG3/d;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    instance-of v4, v4, LG3/m;

    .line 93
    .line 94
    if-eqz v4, :cond_7

    .line 95
    .line 96
    invoke-virtual {v0}, LG3/p;->getBottomRightCorner()LG3/d;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    instance-of v0, v0, LG3/m;

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    iget-object v0, p0, LG3/C;->c:LG3/p;

    .line 105
    .line 106
    invoke-virtual {v0}, LG3/p;->getTopLeftCornerSize()LG3/c;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v4, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 111
    .line 112
    invoke-interface {v0, v4}, LG3/c;->getCornerSize(Landroid/graphics/RectF;)F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iget-object v4, p0, LG3/C;->c:LG3/p;

    .line 117
    .line 118
    invoke-virtual {v4}, LG3/p;->getTopRightCornerSize()LG3/c;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iget-object v5, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 123
    .line 124
    invoke-interface {v4, v5}, LG3/c;->getCornerSize(Landroid/graphics/RectF;)F

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    iget-object v5, p0, LG3/C;->c:LG3/p;

    .line 129
    .line 130
    invoke-virtual {v5}, LG3/p;->getBottomLeftCornerSize()LG3/c;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    iget-object v6, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 135
    .line 136
    invoke-interface {v5, v6}, LG3/c;->getCornerSize(Landroid/graphics/RectF;)F

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    iget-object v6, p0, LG3/C;->c:LG3/p;

    .line 141
    .line 142
    invoke-virtual {v6}, LG3/p;->getBottomRightCornerSize()LG3/c;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    iget-object v7, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 147
    .line 148
    invoke-interface {v6, v7}, LG3/c;->getCornerSize(Landroid/graphics/RectF;)F

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    cmpl-float v7, v0, v1

    .line 153
    .line 154
    if-nez v7, :cond_4

    .line 155
    .line 156
    cmpl-float v8, v5, v1

    .line 157
    .line 158
    if-nez v8, :cond_4

    .line 159
    .line 160
    cmpl-float v8, v4, v6

    .line 161
    .line 162
    if-nez v8, :cond_4

    .line 163
    .line 164
    iget-object v0, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 165
    .line 166
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 167
    .line 168
    sub-float/2addr v1, v4

    .line 169
    iget v5, v0, Landroid/graphics/RectF;->top:F

    .line 170
    .line 171
    iget v6, v0, Landroid/graphics/RectF;->right:F

    .line 172
    .line 173
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    .line 174
    .line 175
    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 176
    .line 177
    .line 178
    iput v4, p0, LG3/E;->g:F

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_4
    if-nez v7, :cond_5

    .line 182
    .line 183
    cmpl-float v7, v4, v1

    .line 184
    .line 185
    if-nez v7, :cond_5

    .line 186
    .line 187
    cmpl-float v7, v5, v6

    .line 188
    .line 189
    if-nez v7, :cond_5

    .line 190
    .line 191
    iget-object v0, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 192
    .line 193
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 194
    .line 195
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 196
    .line 197
    sub-float/2addr v4, v5

    .line 198
    iget v6, v0, Landroid/graphics/RectF;->right:F

    .line 199
    .line 200
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    .line 201
    .line 202
    invoke-virtual {v0, v1, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 203
    .line 204
    .line 205
    iput v5, p0, LG3/E;->g:F

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_5
    cmpl-float v7, v4, v1

    .line 209
    .line 210
    if-nez v7, :cond_6

    .line 211
    .line 212
    cmpl-float v7, v6, v1

    .line 213
    .line 214
    if-nez v7, :cond_6

    .line 215
    .line 216
    cmpl-float v7, v0, v5

    .line 217
    .line 218
    if-nez v7, :cond_6

    .line 219
    .line 220
    iget-object v1, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 221
    .line 222
    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 223
    .line 224
    iget v5, v1, Landroid/graphics/RectF;->top:F

    .line 225
    .line 226
    iget v6, v1, Landroid/graphics/RectF;->right:F

    .line 227
    .line 228
    add-float/2addr v6, v0

    .line 229
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    .line 230
    .line 231
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 232
    .line 233
    .line 234
    iput v0, p0, LG3/E;->g:F

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_6
    cmpl-float v5, v5, v1

    .line 238
    .line 239
    if-nez v5, :cond_7

    .line 240
    .line 241
    cmpl-float v1, v6, v1

    .line 242
    .line 243
    if-nez v1, :cond_7

    .line 244
    .line 245
    cmpl-float v1, v0, v4

    .line 246
    .line 247
    if-nez v1, :cond_7

    .line 248
    .line 249
    iget-object v1, p0, LG3/C;->d:Landroid/graphics/RectF;

    .line 250
    .line 251
    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 252
    .line 253
    iget v5, v1, Landroid/graphics/RectF;->top:F

    .line 254
    .line 255
    iget v6, v1, Landroid/graphics/RectF;->right:F

    .line 256
    .line 257
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    .line 258
    .line 259
    add-float/2addr v7, v0

    .line 260
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 261
    .line 262
    .line 263
    iput v0, p0, LG3/E;->g:F

    .line 264
    .line 265
    :goto_4
    move v0, v3

    .line 266
    goto :goto_5

    .line 267
    :cond_7
    move v0, v2

    .line 268
    :goto_5
    if-eqz v0, :cond_9

    .line 269
    .line 270
    :cond_8
    move v2, v3

    .line 271
    :cond_9
    iput-boolean v2, p0, LG3/E;->f:Z

    .line 272
    .line 273
    invoke-virtual {p0}, LG3/E;->b()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    xor-int/2addr v0, v3

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, LG3/E;->b()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_a

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 292
    .line 293
    .line 294
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LG3/E;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, LG3/C;->a:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method
