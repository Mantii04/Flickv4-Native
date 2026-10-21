.class public final LI3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, LI3/t;

    .line 14
    .line 15
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 16
    .line 17
    iget-object v4, v1, LI3/t;->t:Landroid/view/accessibility/AccessibilityManager;

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-eqz v4, :cond_4

    .line 27
    .line 28
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_4

    .line 33
    .line 34
    :goto_0
    iget-object v4, v1, LI3/t;->i:LI3/s;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_4

    .line 41
    .line 42
    invoke-virtual {v4}, LI3/s;->getAnimationMode()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-ne v5, v2, :cond_2

    .line 47
    .line 48
    new-array v0, v0, [F

    .line 49
    .line 50
    fill-array-data v0, :array_0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v3, v1, LI3/t;->d:Landroid/animation/TimeInterpolator;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    .line 61
    .line 62
    new-instance v3, LI3/b;

    .line 63
    .line 64
    invoke-direct {v3, v1}, LI3/b;-><init>(LI3/t;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    .line 69
    .line 70
    iget v3, v1, LI3/t;->b:I

    .line 71
    .line 72
    int-to-long v3, v3

    .line 73
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    .line 76
    new-instance v3, LI3/a;

    .line 77
    .line 78
    invoke-direct {v3, v1, p1}, LI3/a;-><init>(LI3/t;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :cond_2
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    instance-of v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 102
    .line 103
    if-eqz v6, :cond_3

    .line 104
    .line 105
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 106
    .line 107
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 108
    .line 109
    add-int/2addr v5, v4

    .line 110
    :cond_3
    filled-new-array {v3, v5}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v1, LI3/t;->e:Landroid/animation/TimeInterpolator;

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    .line 121
    .line 122
    iget v3, v1, LI3/t;->c:I

    .line 123
    .line 124
    int-to-long v3, v3

    .line 125
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 126
    .line 127
    .line 128
    new-instance v3, LI3/f;

    .line 129
    .line 130
    invoke-direct {v3, v1, p1}, LI3/f;-><init>(LI3/t;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    .line 135
    .line 136
    new-instance p1, LI3/g;

    .line 137
    .line 138
    invoke-direct {p1, v1}, LI3/g;-><init>(LI3/t;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 145
    .line 146
    .line 147
    return v2

    .line 148
    :cond_4
    invoke-virtual {v1}, LI3/t;->a()V

    .line 149
    .line 150
    .line 151
    return v2

    .line 152
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p1, LI3/t;

    .line 155
    .line 156
    iget-object v1, p1, LI3/t;->i:LI3/s;

    .line 157
    .line 158
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-nez v4, :cond_9

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    instance-of v5, v4, Ly/f;

    .line 169
    .line 170
    if-eqz v5, :cond_7

    .line 171
    .line 172
    check-cast v4, Ly/f;

    .line 173
    .line 174
    invoke-virtual {p1}, LI3/t;->getNewBehavior()Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    instance-of v6, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 179
    .line 180
    if-eqz v6, :cond_6

    .line 181
    .line 182
    move-object v6, v5

    .line 183
    check-cast v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 184
    .line 185
    iget-object v6, v6, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->s:LI3/q;

    .line 186
    .line 187
    invoke-virtual {v6, p1}, LI3/q;->setBaseTransientBottomBar(LI3/t;)V

    .line 188
    .line 189
    .line 190
    :cond_6
    new-instance v6, LI3/n;

    .line 191
    .line 192
    invoke-direct {v6, p1}, LI3/n;-><init>(LI3/t;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v6}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->setListener(Lj3/d;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v5}, Ly/f;->setBehavior(Ly/c;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, LI3/t;->getAnchorView()Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    if-nez v5, :cond_7

    .line 206
    .line 207
    const/16 v5, 0x50

    .line 208
    .line 209
    iput v5, v4, Ly/f;->g:I

    .line 210
    .line 211
    :cond_7
    iput-boolean v2, v1, LI3/s;->t:Z

    .line 212
    .line 213
    iget-object v4, p1, LI3/t;->g:Landroid/view/ViewGroup;

    .line 214
    .line 215
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    .line 217
    .line 218
    iput-boolean v3, v1, LI3/s;->t:Z

    .line 219
    .line 220
    invoke-virtual {p1}, LI3/t;->getAnchorView()Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    if-nez v5, :cond_8

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_8
    new-array v3, v0, [I

    .line 228
    .line 229
    invoke-virtual {p1}, LI3/t;->getAnchorView()Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 234
    .line 235
    .line 236
    aget v3, v3, v2

    .line 237
    .line 238
    new-array v0, v0, [I

    .line 239
    .line 240
    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 241
    .line 242
    .line 243
    aget v0, v0, v2

    .line 244
    .line 245
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    add-int/2addr v4, v0

    .line 250
    sub-int v3, v4, v3

    .line 251
    .line 252
    :goto_1
    iput v3, p1, LI3/t;->p:I

    .line 253
    .line 254
    invoke-virtual {p1}, LI3/t;->c()V

    .line 255
    .line 256
    .line 257
    const/4 v0, 0x4

    .line 258
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    :cond_9
    invoke-static {v1}, LM/p0;->isLaidOut(Landroid/view/View;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_a

    .line 266
    .line 267
    invoke-virtual {p1}, LI3/t;->b()V

    .line 268
    .line 269
    .line 270
    return v2

    .line 271
    :cond_a
    iput-boolean v2, p1, LI3/t;->s:Z

    .line 272
    .line 273
    return v2

    .line 274
    nop

    .line 275
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
