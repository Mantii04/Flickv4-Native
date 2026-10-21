.class public abstract Lflix/com/vision/bvp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public b:I

.field public e:F

.field public f:F

.field public j:F

.field public m:F


# virtual methods
.method public abstract onAfterMove()V
.end method

.method public abstract onBeforeMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;)V
.end method

.method public abstract onClick()V
.end method

.method public abstract onMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;F)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p1, :cond_c

    .line 8
    .line 9
    if-eq p1, v1, :cond_a

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    iget p1, p0, Lflix/com/vision/bvp/c;->b:I

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget v2, p0, Lflix/com/vision/bvp/c;->e:F

    .line 25
    .line 26
    sub-float/2addr p1, v2

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget v3, p0, Lflix/com/vision/bvp/c;->f:F

    .line 32
    .line 33
    :goto_0
    sub-float/2addr v2, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget v2, p0, Lflix/com/vision/bvp/c;->j:F

    .line 40
    .line 41
    sub-float/2addr p1, v2

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget v3, p0, Lflix/com/vision/bvp/c;->m:F

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    iget v3, p0, Lflix/com/vision/bvp/c;->b:I

    .line 50
    .line 51
    sget-object v4, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->f:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 52
    .line 53
    sget-object v5, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->j:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 54
    .line 55
    sget-object v6, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->b:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 56
    .line 57
    sget-object v7, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->e:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 58
    .line 59
    const/high16 v8, 0x42c80000    # 100.0f

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    cmpl-float v3, v3, v8

    .line 69
    .line 70
    if-lez v3, :cond_3

    .line 71
    .line 72
    iput v1, p0, Lflix/com/vision/bvp/c;->b:I

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iput v3, p0, Lflix/com/vision/bvp/c;->j:F

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    iput p2, p0, Lflix/com/vision/bvp/c;->m:F

    .line 85
    .line 86
    cmpl-float p2, p1, v9

    .line 87
    .line 88
    if-lez p2, :cond_2

    .line 89
    .line 90
    invoke-virtual {p0, v7}, Lflix/com/vision/bvp/c;->onBeforeMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual {p0, v6}, Lflix/com/vision/bvp/c;->onBeforeMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    iget v3, p0, Lflix/com/vision/bvp/c;->b:I

    .line 99
    .line 100
    if-nez v3, :cond_5

    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    cmpl-float v3, v3, v8

    .line 107
    .line 108
    if-lez v3, :cond_5

    .line 109
    .line 110
    iput v0, p0, Lflix/com/vision/bvp/c;->b:I

    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    iput v3, p0, Lflix/com/vision/bvp/c;->j:F

    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    iput p2, p0, Lflix/com/vision/bvp/c;->m:F

    .line 123
    .line 124
    cmpl-float p2, v2, v9

    .line 125
    .line 126
    if-lez p2, :cond_4

    .line 127
    .line 128
    invoke-virtual {p0, v5}, Lflix/com/vision/bvp/c;->onBeforeMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    invoke-virtual {p0, v4}, Lflix/com/vision/bvp/c;->onBeforeMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_2
    iget p2, p0, Lflix/com/vision/bvp/c;->b:I

    .line 136
    .line 137
    if-ne p2, v1, :cond_7

    .line 138
    .line 139
    cmpl-float p2, p1, v9

    .line 140
    .line 141
    if-lez p2, :cond_6

    .line 142
    .line 143
    invoke-virtual {p0, v7, p1}, Lflix/com/vision/bvp/c;->onMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;F)V

    .line 144
    .line 145
    .line 146
    return v1

    .line 147
    :cond_6
    neg-float p1, p1

    .line 148
    invoke-virtual {p0, v6, p1}, Lflix/com/vision/bvp/c;->onMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;F)V

    .line 149
    .line 150
    .line 151
    return v1

    .line 152
    :cond_7
    if-ne p2, v0, :cond_9

    .line 153
    .line 154
    cmpl-float p1, v2, v9

    .line 155
    .line 156
    if-lez p1, :cond_8

    .line 157
    .line 158
    invoke-virtual {p0, v5, v2}, Lflix/com/vision/bvp/c;->onMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;F)V

    .line 159
    .line 160
    .line 161
    return v1

    .line 162
    :cond_8
    neg-float p1, v2

    .line 163
    invoke-virtual {p0, v4, p1}, Lflix/com/vision/bvp/c;->onMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;F)V

    .line 164
    .line 165
    .line 166
    :cond_9
    :goto_3
    return v1

    .line 167
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 171
    .line 172
    .line 173
    iget p1, p0, Lflix/com/vision/bvp/c;->b:I

    .line 174
    .line 175
    if-nez p1, :cond_b

    .line 176
    .line 177
    invoke-virtual {p0}, Lflix/com/vision/bvp/c;->onClick()V

    .line 178
    .line 179
    .line 180
    return v1

    .line 181
    :cond_b
    invoke-virtual {p0}, Lflix/com/vision/bvp/c;->onAfterMove()V

    .line 182
    .line 183
    .line 184
    iput v0, p0, Lflix/com/vision/bvp/c;->b:I

    .line 185
    .line 186
    return v1

    .line 187
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    iput p1, p0, Lflix/com/vision/bvp/c;->e:F

    .line 192
    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iput p1, p0, Lflix/com/vision/bvp/c;->f:F

    .line 198
    .line 199
    iput v0, p0, Lflix/com/vision/bvp/c;->b:I

    .line 200
    .line 201
    return v1
.end method
