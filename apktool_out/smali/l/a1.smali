.class public abstract Ll/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final b:F

.field public final e:I

.field public final f:I

.field public final j:Landroid/view/View;

.field public m:Ll/Y0;

.field public n:Ll/Z0;

.field public p:Z

.field public q:I

.field public final r:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Ll/a1;->r:[I

    .line 8
    .line 9
    iput-object p1, p0, Ll/a1;->j:Landroid/view/View;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    int-to-float p1, p1

    .line 31
    iput p1, p0, Ll/a1;->b:F

    .line 32
    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Ll/a1;->e:I

    .line 38
    .line 39
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v1, p1

    .line 44
    div-int/2addr v1, v0

    .line 45
    iput v1, p0, Ll/a1;->f:I

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/a1;->n:Ll/Z0;

    .line 2
    .line 3
    iget-object v1, p0, Ll/a1;->j:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Ll/a1;->m:Ll/Y0;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public abstract getPopup()Lk/I;
.end method

.method public abstract onForwardingStarted()Z
.end method

.method public onForwardingStopped()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ll/a1;->getPopup()Lk/I;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lk/I;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lk/I;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-boolean p1, p0, Ll/a1;->p:Z

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    iget-object v1, p0, Ll/a1;->j:Landroid/view/View;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    invoke-virtual {p0}, Ll/a1;->getPopup()Lk/I;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    if-eqz v4, :cond_3

    .line 15
    .line 16
    invoke-interface {v4}, Lk/I;->isShowing()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {v4}, Lk/I;->getListView()Landroid/widget/ListView;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ll/W0;

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget-object v6, p0, Ll/a1;->r:[I

    .line 43
    .line 44
    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 45
    .line 46
    .line 47
    aget v1, v6, v3

    .line 48
    .line 49
    int-to-float v1, v1

    .line 50
    aget v7, v6, v2

    .line 51
    .line 52
    int-to-float v7, v7

    .line 53
    invoke-virtual {v5, v1, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 57
    .line 58
    .line 59
    aget v1, v6, v3

    .line 60
    .line 61
    neg-int v1, v1

    .line 62
    int-to-float v1, v1

    .line 63
    aget v6, v6, v2

    .line 64
    .line 65
    neg-int v6, v6

    .line 66
    int-to-float v6, v6

    .line 67
    invoke-virtual {v5, v1, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 68
    .line 69
    .line 70
    iget v1, p0, Ll/a1;->q:I

    .line 71
    .line 72
    invoke-virtual {v4, v5, v1}, Ll/W0;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eq p2, v2, :cond_2

    .line 84
    .line 85
    if-eq p2, v0, :cond_2

    .line 86
    .line 87
    move p2, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move p2, v3

    .line 90
    :goto_0
    if-eqz v1, :cond_3

    .line 91
    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ll/a1;->onForwardingStopped()Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-nez p2, :cond_4

    .line 100
    .line 101
    :goto_2
    move p2, v2

    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_4
    move p2, v3

    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_6

    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_a

    .line 120
    .line 121
    if-eq v4, v2, :cond_9

    .line 122
    .line 123
    const/4 v5, 0x2

    .line 124
    if-eq v4, v5, :cond_7

    .line 125
    .line 126
    if-eq v4, v0, :cond_9

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_7
    iget v0, p0, Ll/a1;->q:I

    .line 131
    .line 132
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-ltz v0, :cond_d

    .line 137
    .line 138
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    iget v0, p0, Ll/a1;->b:F

    .line 147
    .line 148
    neg-float v5, v0

    .line 149
    cmpl-float v6, v4, v5

    .line 150
    .line 151
    if-ltz v6, :cond_8

    .line 152
    .line 153
    cmpl-float v5, p2, v5

    .line 154
    .line 155
    if-ltz v5, :cond_8

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    sub-int/2addr v5, v6

    .line 166
    int-to-float v5, v5

    .line 167
    add-float/2addr v5, v0

    .line 168
    cmpg-float v4, v4, v5

    .line 169
    .line 170
    if-gez v4, :cond_8

    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    sub-int/2addr v4, v5

    .line 181
    int-to-float v4, v4

    .line 182
    add-float/2addr v4, v0

    .line 183
    cmpg-float p2, p2, v4

    .line 184
    .line 185
    if-gez p2, :cond_8

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_8
    invoke-virtual {p0}, Ll/a1;->a()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-interface {p2, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Ll/a1;->onForwardingStarted()Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    if-eqz p2, :cond_d

    .line 203
    .line 204
    move p2, v2

    .line 205
    goto :goto_4

    .line 206
    :cond_9
    invoke-virtual {p0}, Ll/a1;->a()V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_a
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    iput p2, p0, Ll/a1;->q:I

    .line 215
    .line 216
    iget-object p2, p0, Ll/a1;->m:Ll/Y0;

    .line 217
    .line 218
    if-nez p2, :cond_b

    .line 219
    .line 220
    new-instance p2, Ll/Y0;

    .line 221
    .line 222
    invoke-direct {p2, p0}, Ll/Y0;-><init>(Ll/a1;)V

    .line 223
    .line 224
    .line 225
    iput-object p2, p0, Ll/a1;->m:Ll/Y0;

    .line 226
    .line 227
    :cond_b
    iget-object p2, p0, Ll/a1;->m:Ll/Y0;

    .line 228
    .line 229
    iget v0, p0, Ll/a1;->e:I

    .line 230
    .line 231
    int-to-long v4, v0

    .line 232
    invoke-virtual {v1, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    .line 234
    .line 235
    iget-object p2, p0, Ll/a1;->n:Ll/Z0;

    .line 236
    .line 237
    if-nez p2, :cond_c

    .line 238
    .line 239
    new-instance p2, Ll/Z0;

    .line 240
    .line 241
    invoke-direct {p2, p0}, Ll/Z0;-><init>(Ll/a1;)V

    .line 242
    .line 243
    .line 244
    iput-object p2, p0, Ll/a1;->n:Ll/Z0;

    .line 245
    .line 246
    :cond_c
    iget-object p2, p0, Ll/a1;->n:Ll/Z0;

    .line 247
    .line 248
    iget v0, p0, Ll/a1;->f:I

    .line 249
    .line 250
    int-to-long v4, v0

    .line 251
    invoke-virtual {v1, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    .line 253
    .line 254
    :cond_d
    :goto_3
    move p2, v3

    .line 255
    :goto_4
    if-eqz p2, :cond_e

    .line 256
    .line 257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 258
    .line 259
    .line 260
    move-result-wide v4

    .line 261
    const/4 v8, 0x3

    .line 262
    const/4 v9, 0x0

    .line 263
    const/4 v10, 0x0

    .line 264
    const/4 v11, 0x0

    .line 265
    move-wide v6, v4

    .line 266
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 274
    .line 275
    .line 276
    :cond_e
    :goto_5
    iput-boolean p2, p0, Ll/a1;->p:Z

    .line 277
    .line 278
    if-nez p2, :cond_10

    .line 279
    .line 280
    if-eqz p1, :cond_f

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_f
    return v3

    .line 284
    :cond_10
    :goto_6
    return v2
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ll/a1;->p:Z

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Ll/a1;->q:I

    .line 6
    .line 7
    iget-object p1, p0, Ll/a1;->m:Ll/Y0;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ll/a1;->j:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
