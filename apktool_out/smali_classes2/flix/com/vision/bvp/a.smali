.class public final Lflix/com/vision/bvp/a;
.super Lflix/com/vision/bvp/c;
.source "SourceFile"


# instance fields
.field public n:F

.field public p:F

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public final synthetic u:Lflix/com/vision/bvp/BetterVideoPlayer;


# direct methods
.method public constructor <init>(Lflix/com/vision/bvp/BetterVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/bvp/a;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 5
    .line 6
    const/high16 p1, -0x40800000    # -1.0f

    .line 7
    .line 8
    iput p1, p0, Lflix/com/vision/bvp/a;->n:F

    .line 9
    .line 10
    iput p1, p0, Lflix/com/vision/bvp/a;->p:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAfterMove()V
    .locals 3

    .line 1
    iget v0, p0, Lflix/com/vision/bvp/a;->p:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    iget-object v2, p0, Lflix/com/vision/bvp/a;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 7
    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    iget-boolean v1, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->b0:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    float-to-int v0, v0

    .line 15
    int-to-long v0, v0

    .line 16
    invoke-virtual {v2, v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer;->seekTo(J)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->I:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/media3/common/Player;->play()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->e:Landroid/widget/TextView;

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onBeforeMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/a;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    iget-boolean v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->b0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->b:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq p1, v1, :cond_3

    .line 12
    .line 13
    sget-object v1, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->e:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 14
    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 p1, 0x64

    .line 19
    .line 20
    iput p1, p0, Lflix/com/vision/bvp/a;->t:I

    .line 21
    .line 22
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->u:Landroid/view/Window;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 31
    .line 32
    const/high16 v1, 0x42c80000    # 100.0f

    .line 33
    .line 34
    mul-float/2addr p1, v1

    .line 35
    float-to-int p1, p1

    .line 36
    iput p1, p0, Lflix/com/vision/bvp/a;->s:I

    .line 37
    .line 38
    :cond_2
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->n:Landroid/media/AudioManager;

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lflix/com/vision/bvp/a;->r:I

    .line 46
    .line 47
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->n:Landroid/media/AudioManager;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lflix/com/vision/bvp/a;->q:I

    .line 54
    .line 55
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->e:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->isPlaying()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput-boolean p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->I:Z

    .line 66
    .line 67
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 68
    .line 69
    invoke-interface {p1}, Landroidx/media3/common/Player;->pause()V

    .line 70
    .line 71
    .line 72
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->e:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/a;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer;->toggleControls()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->n0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, LR4/e;

    .line 11
    .line 12
    invoke-direct {v0}, LR4/e;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lflix/com/vision/events/SystemEvent$ACTION;->b:Lflix/com/vision/events/SystemEvent$ACTION;

    .line 16
    .line 17
    iput-object v1, v0, LR4/e;->a:Lflix/com/vision/events/SystemEvent$ACTION;

    .line 18
    .line 19
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;F)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lflix/com/vision/bvp/a;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 4
    .line 5
    iget-boolean v3, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->b0:Z

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    sget-object v3, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->b:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 12
    .line 13
    const/high16 v4, -0x40800000    # -1.0f

    .line 14
    .line 15
    if-eq p1, v3, :cond_a

    .line 16
    .line 17
    sget-object v5, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->e:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 18
    .line 19
    if-ne p1, v5, :cond_1

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_1
    iput v4, p0, Lflix/com/vision/bvp/a;->p:F

    .line 24
    .line 25
    iget-object v3, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->t:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v3}, LM4/c;->getScreenWidth(Landroid/content/Context;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    div-int/lit8 v3, v3, 0x2

    .line 32
    .line 33
    iget v4, p0, Lflix/com/vision/bvp/c;->e:F

    .line 34
    .line 35
    int-to-float v3, v3

    .line 36
    cmpl-float v3, v4, v3

    .line 37
    .line 38
    sget-object v5, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->j:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 39
    .line 40
    const/high16 v6, 0x40000000    # 2.0f

    .line 41
    .line 42
    if-lez v3, :cond_5

    .line 43
    .line 44
    iget v3, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->J:I

    .line 45
    .line 46
    div-int/lit8 v3, v3, 0x2

    .line 47
    .line 48
    int-to-float v3, v3

    .line 49
    cmpl-float v3, v4, v3

    .line 50
    .line 51
    if-ltz v3, :cond_9

    .line 52
    .line 53
    iget v3, p0, Lflix/com/vision/bvp/a;->r:I

    .line 54
    .line 55
    int-to-float v4, v3

    .line 56
    mul-float/2addr v4, p2

    .line 57
    iget p2, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->K:I

    .line 58
    .line 59
    int-to-float p2, p2

    .line 60
    div-float/2addr p2, v6

    .line 61
    div-float/2addr v4, p2

    .line 62
    if-ne p1, v5, :cond_2

    .line 63
    .line 64
    neg-float v4, v4

    .line 65
    :cond_2
    iget p1, p0, Lflix/com/vision/bvp/a;->q:I

    .line 66
    .line 67
    float-to-int p2, v4

    .line 68
    add-int/2addr p1, p2

    .line 69
    if-gez p1, :cond_3

    .line 70
    .line 71
    move v3, v1

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    if-le p1, v3, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    move v3, p1

    .line 77
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget p2, Lflix/com/vision/R$string;->volume:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object p2, v0, v1

    .line 94
    .line 95
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p2, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->e:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->n:Landroid/media/AudioManager;

    .line 105
    .line 106
    const/4 p2, 0x3

    .line 107
    invoke-virtual {p1, p2, v3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_5
    iget v3, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->J:I

    .line 112
    .line 113
    div-int/lit8 v3, v3, 0x2

    .line 114
    .line 115
    int-to-float v3, v3

    .line 116
    cmpg-float v3, v4, v3

    .line 117
    .line 118
    if-gez v3, :cond_9

    .line 119
    .line 120
    iget-object v3, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->u:Landroid/view/Window;

    .line 121
    .line 122
    if-eqz v3, :cond_9

    .line 123
    .line 124
    iget v3, p0, Lflix/com/vision/bvp/a;->t:I

    .line 125
    .line 126
    int-to-float v4, v3

    .line 127
    mul-float/2addr v4, p2

    .line 128
    iget p2, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->K:I

    .line 129
    .line 130
    int-to-float p2, p2

    .line 131
    div-float/2addr p2, v6

    .line 132
    div-float/2addr v4, p2

    .line 133
    if-ne p1, v5, :cond_6

    .line 134
    .line 135
    neg-float v4, v4

    .line 136
    :cond_6
    iget p1, p0, Lflix/com/vision/bvp/a;->s:I

    .line 137
    .line 138
    float-to-int p2, v4

    .line 139
    add-int/2addr p1, p2

    .line 140
    if-gez p1, :cond_7

    .line 141
    .line 142
    move v3, v1

    .line 143
    goto :goto_1

    .line 144
    :cond_7
    if-le p1, v3, :cond_8

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_8
    move v3, p1

    .line 148
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    sget p2, Lflix/com/vision/R$string;->brightness:I

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    new-array v0, v0, [Ljava/lang/Object;

    .line 163
    .line 164
    aput-object p2, v0, v1

    .line 165
    .line 166
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p2, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->e:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->u:Landroid/view/Window;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    int-to-float p2, v3

    .line 182
    const/high16 v0, 0x42c80000    # 100.0f

    .line 183
    .line 184
    div-float/2addr p2, v0

    .line 185
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 186
    .line 187
    iget-object p2, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->u:Landroid/view/Window;

    .line 188
    .line 189
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {p1}, Lh1/d;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    const-string p2, "BETTER_VIDEO_PLAYER_BRIGHTNESS"

    .line 205
    .line 206
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    .line 212
    .line 213
    :cond_9
    :goto_2
    return-void

    .line 214
    :cond_a
    :goto_3
    iget-object v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 215
    .line 216
    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    .line 217
    .line 218
    .line 219
    move-result-wide v5

    .line 220
    const-wide/16 v7, 0x3c

    .line 221
    .line 222
    cmp-long v0, v5, v7

    .line 223
    .line 224
    if-gtz v0, :cond_b

    .line 225
    .line 226
    iget-object v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 227
    .line 228
    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    .line 229
    .line 230
    .line 231
    move-result-wide v5

    .line 232
    long-to-float v0, v5

    .line 233
    mul-float/2addr v0, p2

    .line 234
    iget p2, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->J:I

    .line 235
    .line 236
    int-to-float p2, p2

    .line 237
    div-float/2addr v0, p2

    .line 238
    iput v0, p0, Lflix/com/vision/bvp/a;->n:F

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_b
    const v0, 0x476a6000    # 60000.0f

    .line 242
    .line 243
    .line 244
    mul-float/2addr p2, v0

    .line 245
    iget v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->J:I

    .line 246
    .line 247
    int-to-float v0, v0

    .line 248
    div-float/2addr p2, v0

    .line 249
    iput p2, p0, Lflix/com/vision/bvp/a;->n:F

    .line 250
    .line 251
    :goto_4
    if-ne p1, v3, :cond_c

    .line 252
    .line 253
    iget p2, p0, Lflix/com/vision/bvp/a;->n:F

    .line 254
    .line 255
    mul-float/2addr p2, v4

    .line 256
    iput p2, p0, Lflix/com/vision/bvp/a;->n:F

    .line 257
    .line 258
    :cond_c
    iget-object p2, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 259
    .line 260
    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 261
    .line 262
    .line 263
    move-result-wide v4

    .line 264
    long-to-float p2, v4

    .line 265
    iget v0, p0, Lflix/com/vision/bvp/a;->n:F

    .line 266
    .line 267
    add-float/2addr p2, v0

    .line 268
    iput p2, p0, Lflix/com/vision/bvp/a;->p:F

    .line 269
    .line 270
    const/4 v0, 0x0

    .line 271
    cmpg-float v4, p2, v0

    .line 272
    .line 273
    if-gez v4, :cond_d

    .line 274
    .line 275
    iput v0, p0, Lflix/com/vision/bvp/a;->p:F

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_d
    iget-object v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 279
    .line 280
    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    .line 281
    .line 282
    .line 283
    move-result-wide v4

    .line 284
    long-to-float v0, v4

    .line 285
    cmpl-float p2, p2, v0

    .line 286
    .line 287
    if-lez p2, :cond_e

    .line 288
    .line 289
    iget-object p2, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 290
    .line 291
    invoke-interface {p2}, Landroidx/media3/common/Player;->getDuration()J

    .line 292
    .line 293
    .line 294
    move-result-wide v4

    .line 295
    long-to-float p2, v4

    .line 296
    iput p2, p0, Lflix/com/vision/bvp/a;->p:F

    .line 297
    .line 298
    :cond_e
    :goto_5
    iget p2, p0, Lflix/com/vision/bvp/a;->p:F

    .line 299
    .line 300
    iget-object v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->z:Landroidx/media3/exoplayer/ExoPlayer;

    .line 301
    .line 302
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 303
    .line 304
    .line 305
    move-result-wide v4

    .line 306
    long-to-float v0, v4

    .line 307
    sub-float/2addr p2, v0

    .line 308
    iput p2, p0, Lflix/com/vision/bvp/a;->n:F

    .line 309
    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    iget v0, p0, Lflix/com/vision/bvp/a;->p:F

    .line 316
    .line 317
    float-to-long v4, v0

    .line 318
    invoke-static {v4, v5, v1}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v0, " ["

    .line 326
    .line 327
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    if-ne p1, v3, :cond_f

    .line 331
    .line 332
    const-string p1, "-"

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_f
    const-string p1, "+"

    .line 336
    .line 337
    :goto_6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    iget p1, p0, Lflix/com/vision/bvp/a;->n:F

    .line 341
    .line 342
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    float-to-long v3, p1

    .line 347
    invoke-static {v3, v4, v1}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string p1, "]"

    .line 355
    .line 356
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    iget-object p2, v2, Lflix/com/vision/bvp/BetterVideoPlayer;->e:Landroid/widget/TextView;

    .line 364
    .line 365
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/a;->u:Lflix/com/vision/bvp/BetterVideoPlayer;

    .line 2
    .line 3
    iget-object v0, v0, Lflix/com/vision/bvp/BetterVideoPlayer;->i0:Landroid/view/GestureDetector;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lflix/com/vision/bvp/c;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
