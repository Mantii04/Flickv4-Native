.class public final Ll3/f;
.super LW/k;
.source "SourceFile"


# instance fields
.field public a:J

.field public final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll3/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    invoke-direct {p0}, LW/k;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 1
    iget-object p3, p0, Ll3/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    invoke-virtual {p0, p1}, Ll3/f;->getViewVerticalDragRange(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p2, p3, p1}, LG/a;->clamp(III)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    .line 1
    sget p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o0:I

    .line 2
    .line 3
    iget-object p1, p0, Ll3/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideableWhenDragging()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c0:I

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:I

    .line 21
    .line 22
    return p1
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Ll3/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    iget-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Ll3/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p3, v0

    .line 3
    .line 4
    const/4 v2, 0x6

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x4

    .line 7
    iget-object v5, p0, Ll3/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 8
    .line 9
    if-gez v1, :cond_3

    .line 10
    .line 11
    iget-boolean p2, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:Z

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    :cond_0
    :goto_0
    move v2, v3

    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-wide v6, p0, Ll3/f;->a:J

    .line 27
    .line 28
    sub-long/2addr v0, v6

    .line 29
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    int-to-float p2, p2

    .line 36
    const/high16 p3, 0x42c80000    # 100.0f

    .line 37
    .line 38
    mul-float/2addr p2, p3

    .line 39
    iget p3, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c0:I

    .line 40
    .line 41
    int-to-float p3, p3

    .line 42
    div-float/2addr p2, p3

    .line 43
    invoke-virtual {v5, v0, v1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldExpandOnUpwardDrag(JF)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_a

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget p3, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I

    .line 51
    .line 52
    if-le p2, p3, :cond_0

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_3
    iget-boolean v1, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->R:Z

    .line 57
    .line 58
    if-eqz v1, :cond_8

    .line 59
    .line 60
    invoke-virtual {v5, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j(Landroid/view/View;F)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_8

    .line 65
    .line 66
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    cmpg-float p2, p2, v0

    .line 75
    .line 76
    if-gez p2, :cond_4

    .line 77
    .line 78
    iget p2, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:I

    .line 79
    .line 80
    int-to-float p2, p2

    .line 81
    cmpl-float p2, p3, p2

    .line 82
    .line 83
    if-gtz p2, :cond_5

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    iget p3, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c0:I

    .line 90
    .line 91
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    add-int/2addr v0, p3

    .line 96
    div-int/lit8 v0, v0, 0x2

    .line 97
    .line 98
    if-le p2, v0, :cond_6

    .line 99
    .line 100
    :cond_5
    const/4 v2, 0x5

    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_6
    iget-boolean p2, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:Z

    .line 104
    .line 105
    if-eqz p2, :cond_7

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    sub-int/2addr p2, p3

    .line 117
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    iget v0, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I

    .line 126
    .line 127
    sub-int/2addr p3, v0

    .line 128
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    if-ge p2, p3, :cond_10

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_8
    cmpl-float v0, p3, v0

    .line 136
    .line 137
    if-eqz v0, :cond_c

    .line 138
    .line 139
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    cmpl-float p2, p2, p3

    .line 148
    .line 149
    if-lez p2, :cond_9

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_9
    iget-boolean p2, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:Z

    .line 153
    .line 154
    if-eqz p2, :cond_b

    .line 155
    .line 156
    :cond_a
    :goto_1
    move v2, v4

    .line 157
    goto :goto_3

    .line 158
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    iget p3, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I

    .line 163
    .line 164
    sub-int p3, p2, p3

    .line 165
    .line 166
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    iget v0, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:I

    .line 171
    .line 172
    sub-int/2addr p2, v0

    .line 173
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-ge p3, p2, :cond_a

    .line 178
    .line 179
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-eqz p2, :cond_10

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_c
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    iget-boolean p3, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:Z

    .line 191
    .line 192
    if-eqz p3, :cond_d

    .line 193
    .line 194
    iget p3, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:I

    .line 195
    .line 196
    sub-int p3, p2, p3

    .line 197
    .line 198
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 199
    .line 200
    .line 201
    move-result p3

    .line 202
    iget v0, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:I

    .line 203
    .line 204
    sub-int/2addr p2, v0

    .line 205
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    if-ge p3, p2, :cond_a

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_d
    iget p3, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:I

    .line 214
    .line 215
    if-ge p2, p3, :cond_f

    .line 216
    .line 217
    iget p3, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:I

    .line 218
    .line 219
    sub-int p3, p2, p3

    .line 220
    .line 221
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 222
    .line 223
    .line 224
    move-result p3

    .line 225
    if-ge p2, p3, :cond_e

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_e
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-eqz p2, :cond_10

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_f
    sub-int p3, p2, p3

    .line 237
    .line 238
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    iget v0, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:I

    .line 243
    .line 244
    sub-int/2addr p2, v0

    .line 245
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    if-ge p3, p2, :cond_a

    .line 250
    .line 251
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-eqz p2, :cond_10

    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_10
    :goto_3
    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipSmoothAnimation()Z

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    invoke-virtual {v5, p1, p2, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k(Landroid/view/View;ZI)V

    .line 263
    .line 264
    .line 265
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ll3/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-boolean v3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k0:Z

    .line 10
    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 v3, 0x3

    .line 15
    if-ne v1, v3, :cond_3

    .line 16
    .line 17
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i0:I

    .line 18
    .line 19
    if-ne v1, p2, :cond_3

    .line 20
    .line 21
    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e0:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/view/View;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p2, 0x0

    .line 33
    :goto_0
    if-eqz p2, :cond_3

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    invoke-virtual {p2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    iput-wide v3, p0, Ll3/f;->a:J

    .line 48
    .line 49
    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d0:Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-ne p2, p1, :cond_4

    .line 58
    .line 59
    return v2

    .line 60
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 61
    return p1
.end method
