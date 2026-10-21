.class public final Lflix/com/vision/bvp/b;
.super Lflix/com/vision/bvp/c;
.source "SourceFile"


# instance fields
.field public n:F

.field public p:F

.field public q:I

.field public r:I

.field public final synthetic s:Lflix/com/vision/bvp/BetterVideoPlayer2;


# direct methods
.method public constructor <init>(Lflix/com/vision/bvp/BetterVideoPlayer2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/bvp/b;->s:Lflix/com/vision/bvp/BetterVideoPlayer2;

    .line 5
    .line 6
    const/high16 p1, -0x40800000    # -1.0f

    .line 7
    .line 8
    iput p1, p0, Lflix/com/vision/bvp/b;->n:F

    .line 9
    .line 10
    iput p1, p0, Lflix/com/vision/bvp/b;->p:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAfterMove()V
    .locals 3

    .line 1
    iget v0, p0, Lflix/com/vision/bvp/b;->p:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    iget-object v2, p0, Lflix/com/vision/bvp/b;->s:Lflix/com/vision/bvp/BetterVideoPlayer2;

    .line 7
    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    iget-boolean v1, v2, Lflix/com/vision/bvp/BetterVideoPlayer2;->b0:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    float-to-int v0, v0

    .line 15
    invoke-virtual {v2, v0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->seekTo(I)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer2;->I:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, v2, Lflix/com/vision/bvp/BetterVideoPlayer2;->e:Landroid/widget/TextView;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onBeforeMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/b;->s:Lflix/com/vision/bvp/BetterVideoPlayer2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->b0:Z

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
    if-eq p1, v1, :cond_2

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
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->n:Landroid/media/AudioManager;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lflix/com/vision/bvp/b;->r:I

    .line 26
    .line 27
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->n:Landroid/media/AudioManager;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lflix/com/vision/bvp/b;->q:I

    .line 34
    .line 35
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->e:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->isPlaying()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput-boolean p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->I:Z

    .line 46
    .line 47
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 50
    .line 51
    .line 52
    iget-object p1, v0, Lflix/com/vision/bvp/BetterVideoPlayer2;->e:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/b;->s:Lflix/com/vision/bvp/BetterVideoPlayer2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->toggleControls()V

    .line 4
    .line 5
    .line 6
    new-instance v0, LR4/e;

    .line 7
    .line 8
    invoke-direct {v0}, LR4/e;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lflix/com/vision/events/SystemEvent$ACTION;->b:Lflix/com/vision/events/SystemEvent$ACTION;

    .line 12
    .line 13
    iput-object v1, v0, LR4/e;->a:Lflix/com/vision/events/SystemEvent$ACTION;

    .line 14
    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onMove(Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;F)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lflix/com/vision/bvp/b;->s:Lflix/com/vision/bvp/BetterVideoPlayer2;

    .line 3
    .line 4
    iget-boolean v2, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->b0:Z

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v2, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->b:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 10
    .line 11
    const/high16 v3, -0x40800000    # -1.0f

    .line 12
    .line 13
    if-eq p1, v2, :cond_6

    .line 14
    .line 15
    sget-object v4, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->e:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 16
    .line 17
    if-ne p1, v4, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iput v3, p0, Lflix/com/vision/bvp/b;->p:F

    .line 21
    .line 22
    iget v2, p0, Lflix/com/vision/bvp/c;->e:F

    .line 23
    .line 24
    iget v3, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->J:I

    .line 25
    .line 26
    div-int/lit8 v3, v3, 0x2

    .line 27
    .line 28
    int-to-float v3, v3

    .line 29
    cmpl-float v2, v2, v3

    .line 30
    .line 31
    if-gez v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :cond_2
    iget v2, p0, Lflix/com/vision/bvp/b;->r:I

    .line 37
    .line 38
    int-to-float v3, v2

    .line 39
    mul-float/2addr v3, p2

    .line 40
    iget p2, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->K:I

    .line 41
    .line 42
    int-to-float p2, p2

    .line 43
    const/high16 v4, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr p2, v4

    .line 46
    div-float/2addr v3, p2

    .line 47
    sget-object p2, Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;->j:Lflix/com/vision/bvp/OnSwipeTouchListener$Direction;

    .line 48
    .line 49
    if-ne p1, p2, :cond_3

    .line 50
    .line 51
    neg-float v3, v3

    .line 52
    :cond_3
    iget p1, p0, Lflix/com/vision/bvp/b;->q:I

    .line 53
    .line 54
    float-to-int p2, v3

    .line 55
    add-int/2addr p1, p2

    .line 56
    if-gez p1, :cond_4

    .line 57
    .line 58
    move v2, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    if-le p1, v2, :cond_5

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    move v2, p1

    .line 64
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget p2, Lflix/com/vision/R$string;->volume:I

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    const/4 v3, 0x1

    .line 79
    new-array v3, v3, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object p2, v3, v0

    .line 82
    .line 83
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p2, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->e:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->n:Landroid/media/AudioManager;

    .line 93
    .line 94
    const/4 p2, 0x3

    .line 95
    invoke-virtual {p1, p2, v2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_6
    :goto_1
    iget-object v4, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    const/16 v5, 0x3c

    .line 106
    .line 107
    if-gt v4, v5, :cond_7

    .line 108
    .line 109
    iget-object v4, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    int-to-float v4, v4

    .line 116
    mul-float/2addr v4, p2

    .line 117
    iget p2, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->J:I

    .line 118
    .line 119
    int-to-float p2, p2

    .line 120
    div-float/2addr v4, p2

    .line 121
    iput v4, p0, Lflix/com/vision/bvp/b;->n:F

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    const v4, 0x476a6000    # 60000.0f

    .line 125
    .line 126
    .line 127
    mul-float/2addr p2, v4

    .line 128
    iget v4, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->J:I

    .line 129
    .line 130
    int-to-float v4, v4

    .line 131
    div-float/2addr p2, v4

    .line 132
    iput p2, p0, Lflix/com/vision/bvp/b;->n:F

    .line 133
    .line 134
    :goto_2
    if-ne p1, v2, :cond_8

    .line 135
    .line 136
    iget p2, p0, Lflix/com/vision/bvp/b;->n:F

    .line 137
    .line 138
    mul-float/2addr p2, v3

    .line 139
    iput p2, p0, Lflix/com/vision/bvp/b;->n:F

    .line 140
    .line 141
    :cond_8
    iget-object p2, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    int-to-float p2, p2

    .line 148
    iget v3, p0, Lflix/com/vision/bvp/b;->n:F

    .line 149
    .line 150
    add-float/2addr p2, v3

    .line 151
    iput p2, p0, Lflix/com/vision/bvp/b;->p:F

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    cmpg-float v4, p2, v3

    .line 155
    .line 156
    if-gez v4, :cond_9

    .line 157
    .line 158
    iput v3, p0, Lflix/com/vision/bvp/b;->p:F

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    iget-object v3, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    int-to-float v3, v3

    .line 168
    cmpl-float p2, p2, v3

    .line 169
    .line 170
    if-lez p2, :cond_a

    .line 171
    .line 172
    iget-object p2, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getDuration()I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    int-to-float p2, p2

    .line 179
    iput p2, p0, Lflix/com/vision/bvp/b;->p:F

    .line 180
    .line 181
    :cond_a
    :goto_3
    iget p2, p0, Lflix/com/vision/bvp/b;->p:F

    .line 182
    .line 183
    iget-object v3, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 184
    .line 185
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    int-to-float v3, v3

    .line 190
    sub-float/2addr p2, v3

    .line 191
    iput p2, p0, Lflix/com/vision/bvp/b;->n:F

    .line 192
    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    iget v3, p0, Lflix/com/vision/bvp/b;->p:F

    .line 199
    .line 200
    float-to-long v3, v3

    .line 201
    invoke-static {v3, v4, v0}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v3, " ["

    .line 209
    .line 210
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    if-ne p1, v2, :cond_b

    .line 214
    .line 215
    const-string p1, "-"

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_b
    const-string p1, "+"

    .line 219
    .line 220
    :goto_4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget p1, p0, Lflix/com/vision/bvp/b;->n:F

    .line 224
    .line 225
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    float-to-long v2, p1

    .line 230
    invoke-static {v2, v3, v0}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string p1, "]"

    .line 238
    .line 239
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iget-object p2, v1, Lflix/com/vision/bvp/BetterVideoPlayer2;->e:Landroid/widget/TextView;

    .line 247
    .line 248
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    return-void
.end method
