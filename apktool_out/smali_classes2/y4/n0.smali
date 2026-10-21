.class public final synthetic Ly4/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lflix/com/vision/activities/base/a;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/base/a;II)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/n0;->a:I

    iput-object p1, p0, Ly4/n0;->c:Lflix/com/vision/activities/base/a;

    iput p2, p0, Ly4/n0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 5

    .line 1
    iget v0, p0, Ly4/n0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly4/n0;->c:Lflix/com/vision/activities/base/a;

    .line 7
    .line 8
    check-cast v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;

    .line 9
    .line 10
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->R:Landroid/widget/ScrollView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, p0, Ly4/n0;->b:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x4

    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    iget-boolean v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->Z0:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p0:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, v4, :cond_5

    .line 33
    .line 34
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p0:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->z:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    sget-boolean v2, Lflix/com/vision/App;->I:Z

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p0:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    iget-object v2, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->O:Landroid/view/animation/Animation;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    iget-boolean v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->Y0:Z

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    new-instance v1, Landroid/os/Handler;

    .line 66
    .line 67
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v2, Ly4/v0;

    .line 71
    .line 72
    const/4 v3, 0x3

    .line 73
    invoke-direct {v2, v0, v3}, Ly4/v0;-><init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v3, 0x1f4

    .line 77
    .line 78
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p0:Landroid/widget/RelativeLayout;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    sget-boolean v1, Lflix/com/vision/App;->I:Z

    .line 91
    .line 92
    if-nez v1, :cond_2

    .line 93
    .line 94
    iget-boolean v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->L0:Z

    .line 95
    .line 96
    if-nez v1, :cond_2

    .line 97
    .line 98
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p0:Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    iget-object v2, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->P:Landroid/view/animation/Animation;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->p0:Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->v:Landroid/widget/ImageView;

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    :cond_3
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->z:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    sget-boolean v2, Lflix/com/vision/App;->I:Z

    .line 122
    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    :cond_4
    iput-boolean v3, v0, Lflix/com/vision/activities/MovieDetailActivityLeanBack;->Z0:Z

    .line 129
    .line 130
    new-instance v1, Landroid/os/Handler;

    .line 131
    .line 132
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 133
    .line 134
    .line 135
    new-instance v2, Ly4/v0;

    .line 136
    .line 137
    const/4 v3, 0x4

    .line 138
    invoke-direct {v2, v0, v3}, Ly4/v0;-><init>(Lflix/com/vision/activities/MovieDetailActivityLeanBack;I)V

    .line 139
    .line 140
    .line 141
    const-wide/16 v3, 0x3e8

    .line 142
    .line 143
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Ly4/n0;->c:Lflix/com/vision/activities/base/a;

    .line 148
    .line 149
    check-cast v0, Lflix/com/vision/activities/MovieDetailActivity;

    .line 150
    .line 151
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->J:Landroid/widget/ScrollView;

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iget v2, p0, Ly4/n0;->b:I

    .line 158
    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v4, 0x4

    .line 161
    if-ge v1, v2, :cond_7

    .line 162
    .line 163
    iget-boolean v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->R0:Z

    .line 164
    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->h0:Landroid/widget/RelativeLayout;

    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-ne v1, v4, :cond_b

    .line 174
    .line 175
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->h0:Landroid/widget/RelativeLayout;

    .line 176
    .line 177
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->s:Landroid/widget/LinearLayout;

    .line 181
    .line 182
    if-eqz v1, :cond_6

    .line 183
    .line 184
    sget-boolean v2, Lflix/com/vision/App;->I:Z

    .line 185
    .line 186
    if-eqz v2, :cond_6

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    :cond_6
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->h0:Landroid/widget/RelativeLayout;

    .line 192
    .line 193
    iget-object v2, v0, Lflix/com/vision/activities/MovieDetailActivity;->H:Landroid/view/animation/Animation;

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->m:Landroid/widget/ImageView;

    .line 199
    .line 200
    if-eqz v1, :cond_b

    .line 201
    .line 202
    new-instance v1, Landroid/os/Handler;

    .line 203
    .line 204
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 205
    .line 206
    .line 207
    new-instance v2, Ly4/k0;

    .line 208
    .line 209
    const/4 v3, 0x4

    .line 210
    invoke-direct {v2, v0, v3}, Ly4/k0;-><init>(Lflix/com/vision/activities/MovieDetailActivity;I)V

    .line 211
    .line 212
    .line 213
    const-wide/16 v3, 0x1f4

    .line 214
    .line 215
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_7
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->h0:Landroid/widget/RelativeLayout;

    .line 220
    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_b

    .line 226
    .line 227
    sget-boolean v1, Lflix/com/vision/App;->I:Z

    .line 228
    .line 229
    if-nez v1, :cond_8

    .line 230
    .line 231
    iget-boolean v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->D0:Z

    .line 232
    .line 233
    if-nez v1, :cond_8

    .line 234
    .line 235
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->h0:Landroid/widget/RelativeLayout;

    .line 236
    .line 237
    iget-object v2, v0, Lflix/com/vision/activities/MovieDetailActivity;->I:Landroid/view/animation/Animation;

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    .line 241
    .line 242
    :cond_8
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->h0:Landroid/widget/RelativeLayout;

    .line 243
    .line 244
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->m:Landroid/widget/ImageView;

    .line 248
    .line 249
    if-eqz v1, :cond_9

    .line 250
    .line 251
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    :cond_9
    iget-object v1, v0, Lflix/com/vision/activities/MovieDetailActivity;->s:Landroid/widget/LinearLayout;

    .line 255
    .line 256
    if-eqz v1, :cond_a

    .line 257
    .line 258
    sget-boolean v2, Lflix/com/vision/App;->I:Z

    .line 259
    .line 260
    if-eqz v2, :cond_a

    .line 261
    .line 262
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    :cond_a
    iput-boolean v3, v0, Lflix/com/vision/activities/MovieDetailActivity;->R0:Z

    .line 266
    .line 267
    new-instance v1, Landroid/os/Handler;

    .line 268
    .line 269
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 270
    .line 271
    .line 272
    new-instance v2, Ly4/k0;

    .line 273
    .line 274
    const/4 v3, 0x5

    .line 275
    invoke-direct {v2, v0, v3}, Ly4/k0;-><init>(Lflix/com/vision/activities/MovieDetailActivity;I)V

    .line 276
    .line 277
    .line 278
    const-wide/16 v3, 0x3e8

    .line 279
    .line 280
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    .line 282
    .line 283
    :cond_b
    :goto_1
    return-void

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
