.class public final Landroidx/leanback/widget/T;
.super Landroidx/leanback/widget/V;
.source "SourceFile"


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/V;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/leanback/widget/T;->e:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAlignmentPosition(Landroid/view/View;)I
    .locals 9

    .line 1
    sget-object v0, Landroidx/leanback/widget/X;->a:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/leanback/widget/J;

    .line 8
    .line 9
    iget v1, p0, Landroidx/leanback/widget/V;->a:I

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    :cond_0
    move-object v1, p1

    .line 20
    :cond_1
    iget v2, p0, Landroidx/leanback/widget/V;->b:I

    .line 21
    .line 22
    sget-object v3, Landroidx/leanback/widget/X;->a:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget v4, p0, Landroidx/leanback/widget/T;->e:I

    .line 25
    .line 26
    const/high16 v5, -0x40800000    # -1.0f

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const/high16 v7, 0x42c80000    # 100.0f

    .line 30
    .line 31
    if-nez v4, :cond_e

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v8, 0x1

    .line 38
    if-ne v4, v8, :cond_8

    .line 39
    .line 40
    if-ne v1, p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget v8, v0, Landroidx/leanback/widget/J;->e:I

    .line 50
    .line 51
    sub-int/2addr v4, v8

    .line 52
    iget v8, v0, Landroidx/leanback/widget/J;->g:I

    .line 53
    .line 54
    sub-int/2addr v4, v8

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    :goto_0
    sub-int/2addr v4, v2

    .line 61
    iget-boolean v2, p0, Landroidx/leanback/widget/V;->d:Z

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    iget v2, p0, Landroidx/leanback/widget/V;->c:F

    .line 66
    .line 67
    cmpl-float v6, v2, v6

    .line 68
    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    sub-int/2addr v4, v2

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    cmpl-float v2, v2, v7

    .line 78
    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    add-int/2addr v4, v2

    .line 86
    :cond_4
    :goto_1
    iget v2, p0, Landroidx/leanback/widget/V;->c:F

    .line 87
    .line 88
    cmpl-float v2, v2, v5

    .line 89
    .line 90
    if-eqz v2, :cond_6

    .line 91
    .line 92
    if-ne v1, p1, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iget v5, v0, Landroidx/leanback/widget/J;->e:I

    .line 102
    .line 103
    sub-int/2addr v2, v5

    .line 104
    iget v5, v0, Landroidx/leanback/widget/J;->g:I

    .line 105
    .line 106
    sub-int/2addr v2, v5

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    :goto_2
    int-to-float v2, v2

    .line 113
    iget v5, p0, Landroidx/leanback/widget/V;->c:F

    .line 114
    .line 115
    mul-float/2addr v2, v5

    .line 116
    div-float/2addr v2, v7

    .line 117
    float-to-int v2, v2

    .line 118
    sub-int/2addr v4, v2

    .line 119
    :cond_6
    if-eq p1, v1, :cond_7

    .line 120
    .line 121
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 122
    .line 123
    check-cast p1, Landroid/view/ViewGroup;

    .line 124
    .line 125
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 126
    .line 127
    .line 128
    iget p1, v3, Landroid/graphics/Rect;->right:I

    .line 129
    .line 130
    iget v0, v0, Landroidx/leanback/widget/J;->g:I

    .line 131
    .line 132
    add-int/2addr p1, v0

    .line 133
    return p1

    .line 134
    :cond_7
    return v4

    .line 135
    :cond_8
    iget-boolean v4, p0, Landroidx/leanback/widget/V;->d:Z

    .line 136
    .line 137
    if-eqz v4, :cond_a

    .line 138
    .line 139
    iget v4, p0, Landroidx/leanback/widget/V;->c:F

    .line 140
    .line 141
    cmpl-float v6, v4, v6

    .line 142
    .line 143
    if-nez v6, :cond_9

    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    add-int/2addr v2, v4

    .line 150
    goto :goto_3

    .line 151
    :cond_9
    cmpl-float v4, v4, v7

    .line 152
    .line 153
    if-nez v4, :cond_a

    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    sub-int/2addr v2, v4

    .line 160
    :cond_a
    :goto_3
    iget v4, p0, Landroidx/leanback/widget/V;->c:F

    .line 161
    .line 162
    cmpl-float v4, v4, v5

    .line 163
    .line 164
    if-eqz v4, :cond_c

    .line 165
    .line 166
    if-ne v1, p1, :cond_b

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    iget v5, v0, Landroidx/leanback/widget/J;->e:I

    .line 176
    .line 177
    sub-int/2addr v4, v5

    .line 178
    iget v5, v0, Landroidx/leanback/widget/J;->g:I

    .line 179
    .line 180
    sub-int/2addr v4, v5

    .line 181
    goto :goto_4

    .line 182
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    :goto_4
    int-to-float v4, v4

    .line 187
    iget v5, p0, Landroidx/leanback/widget/V;->c:F

    .line 188
    .line 189
    mul-float/2addr v4, v5

    .line 190
    div-float/2addr v4, v7

    .line 191
    float-to-int v4, v4

    .line 192
    add-int/2addr v2, v4

    .line 193
    :cond_c
    if-eq p1, v1, :cond_d

    .line 194
    .line 195
    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 196
    .line 197
    check-cast p1, Landroid/view/ViewGroup;

    .line 198
    .line 199
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 200
    .line 201
    .line 202
    iget p1, v3, Landroid/graphics/Rect;->left:I

    .line 203
    .line 204
    iget v0, v0, Landroidx/leanback/widget/J;->e:I

    .line 205
    .line 206
    sub-int/2addr p1, v0

    .line 207
    return p1

    .line 208
    :cond_d
    return v2

    .line 209
    :cond_e
    iget-boolean v4, p0, Landroidx/leanback/widget/V;->d:Z

    .line 210
    .line 211
    if-eqz v4, :cond_10

    .line 212
    .line 213
    iget v4, p0, Landroidx/leanback/widget/V;->c:F

    .line 214
    .line 215
    cmpl-float v6, v4, v6

    .line 216
    .line 217
    if-nez v6, :cond_f

    .line 218
    .line 219
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    add-int/2addr v2, v4

    .line 224
    goto :goto_5

    .line 225
    :cond_f
    cmpl-float v4, v4, v7

    .line 226
    .line 227
    if-nez v4, :cond_10

    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    sub-int/2addr v2, v4

    .line 234
    :cond_10
    :goto_5
    iget v4, p0, Landroidx/leanback/widget/V;->c:F

    .line 235
    .line 236
    cmpl-float v4, v4, v5

    .line 237
    .line 238
    if-eqz v4, :cond_12

    .line 239
    .line 240
    if-ne v1, p1, :cond_11

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    iget v5, v0, Landroidx/leanback/widget/J;->f:I

    .line 250
    .line 251
    sub-int/2addr v4, v5

    .line 252
    iget v5, v0, Landroidx/leanback/widget/J;->h:I

    .line 253
    .line 254
    sub-int/2addr v4, v5

    .line 255
    goto :goto_6

    .line 256
    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    :goto_6
    int-to-float v4, v4

    .line 261
    iget v5, p0, Landroidx/leanback/widget/V;->c:F

    .line 262
    .line 263
    mul-float/2addr v4, v5

    .line 264
    div-float/2addr v4, v7

    .line 265
    float-to-int v4, v4

    .line 266
    add-int/2addr v2, v4

    .line 267
    :cond_12
    if-eq p1, v1, :cond_13

    .line 268
    .line 269
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 270
    .line 271
    check-cast p1, Landroid/view/ViewGroup;

    .line 272
    .line 273
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 274
    .line 275
    .line 276
    iget p1, v3, Landroid/graphics/Rect;->top:I

    .line 277
    .line 278
    iget v0, v0, Landroidx/leanback/widget/J;->f:I

    .line 279
    .line 280
    sub-int v2, p1, v0

    .line 281
    .line 282
    :cond_13
    invoke-virtual {p0}, Landroidx/leanback/widget/V;->isAlignedToTextViewBaseLine()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_14

    .line 287
    .line 288
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    add-int/2addr p1, v2

    .line 293
    return p1

    .line 294
    :cond_14
    return v2
.end method
