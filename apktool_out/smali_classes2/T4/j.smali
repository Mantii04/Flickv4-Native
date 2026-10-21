.class public final LT4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, LT4/j;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getDirectionPressed(Landroid/view/InputEvent;)I
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    check-cast p1, Landroid/view/MotionEvent;

    .line 10
    .line 11
    const/16 v0, 0xf

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v5, 0x10

    .line 18
    .line 19
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/high16 v5, -0x40800000    # -1.0f

    .line 24
    .line 25
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_0

    .line 30
    .line 31
    iput v4, p0, LT4/j;->a:I

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    .line 37
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iput v3, p0, LT4/j;->a:I

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_1
    invoke-static {p1, v5}, Ljava/lang/Float;->compare(FF)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iput v2, p0, LT4/j;->a:I

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_2
    invoke-static {p1, v4}, Ljava/lang/Float;->compare(FF)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_10

    .line 62
    .line 63
    iput v1, p0, LT4/j;->a:I

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_3
    instance-of v0, p1, Landroid/view/KeyEvent;

    .line 68
    .line 69
    if-eqz v0, :cond_10

    .line 70
    .line 71
    check-cast p1, Landroid/view/KeyEvent;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/16 v5, 0x15

    .line 78
    .line 79
    if-ne v0, v5, :cond_4

    .line 80
    .line 81
    iput v4, p0, LT4/j;->a:I

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/16 v4, 0x16

    .line 90
    .line 91
    if-ne v0, v4, :cond_5

    .line 92
    .line 93
    iput v3, p0, LT4/j;->a:I

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/16 v3, 0x13

    .line 102
    .line 103
    if-ne v0, v3, :cond_6

    .line 104
    .line 105
    iput v2, p0, LT4/j;->a:I

    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/16 v2, 0x14

    .line 114
    .line 115
    if-ne v0, v2, :cond_7

    .line 116
    .line 117
    iput v1, p0, LT4/j;->a:I

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    const/16 v1, 0x17

    .line 126
    .line 127
    const/4 v2, 0x4

    .line 128
    if-ne v0, v1, :cond_8

    .line 129
    .line 130
    iput v2, p0, LT4/j;->a:I

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const/16 v1, 0xe7

    .line 138
    .line 139
    if-ne v0, v1, :cond_9

    .line 140
    .line 141
    iput v1, p0, LT4/j;->a:I

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    const/16 v1, 0x55

    .line 149
    .line 150
    if-ne v0, v1, :cond_a

    .line 151
    .line 152
    const/4 p1, 0x5

    .line 153
    iput p1, p0, LT4/j;->a:I

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    const/16 v1, 0x5a

    .line 161
    .line 162
    if-ne v0, v1, :cond_b

    .line 163
    .line 164
    const/4 p1, 0x6

    .line 165
    iput p1, p0, LT4/j;->a:I

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    const/16 v1, 0x59

    .line 173
    .line 174
    if-ne v0, v1, :cond_c

    .line 175
    .line 176
    const/4 p1, 0x7

    .line 177
    iput p1, p0, LT4/j;->a:I

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    const/16 v1, 0x7e

    .line 185
    .line 186
    if-ne v0, v1, :cond_d

    .line 187
    .line 188
    const/16 p1, 0x8

    .line 189
    .line 190
    iput p1, p0, LT4/j;->a:I

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    const/16 v1, 0x7f

    .line 198
    .line 199
    if-ne v0, v1, :cond_e

    .line 200
    .line 201
    const/16 p1, 0x9

    .line 202
    .line 203
    iput p1, p0, LT4/j;->a:I

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-ne v0, v2, :cond_f

    .line 211
    .line 212
    const/16 p1, 0xa

    .line 213
    .line 214
    iput p1, p0, LT4/j;->a:I

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    const/16 v0, 0x52

    .line 222
    .line 223
    if-ne p1, v0, :cond_10

    .line 224
    .line 225
    const/16 p1, 0xb

    .line 226
    .line 227
    iput p1, p0, LT4/j;->a:I

    .line 228
    .line 229
    :cond_10
    :goto_0
    iget p1, p0, LT4/j;->a:I

    .line 230
    .line 231
    return p1
.end method
