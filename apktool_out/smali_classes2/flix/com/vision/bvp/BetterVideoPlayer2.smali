.class public Lflix/com/vision/bvp/BetterVideoPlayer2;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public A:Landroid/view/Surface;

.field public B:Landroid/widget/SeekBar;

.field public C:Landroid/widget/ProgressBar;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/ImageButton;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:I

.field public K:I

.field public L:Landroid/os/Handler;

.field public M:I

.field public N:Landroid/net/Uri;

.field public O:Ljava/util/Map;

.field public P:LK4/a;

.field public final Q:Landroid/graphics/drawable/Drawable;

.field public final R:Landroid/graphics/drawable/Drawable;

.field public final S:Landroid/graphics/drawable/Drawable;

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public final a0:Z

.field public b:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public final b0:Z

.field public c0:Z

.field public d0:Z

.field public e:Landroid/widget/TextView;

.field public e0:I

.field public f:Landroid/widget/TextView;

.field public f0:I

.field public final g0:LK4/v;

.field public final h0:Lflix/com/vision/bvp/b;

.field public final i0:LK4/w;

.field public j:Landroid/widget/TextView;

.field public m:Lflix/com/vision/bvp/subtitle/CaptionsView2;

.field public n:Landroid/media/AudioManager;

.field public p:Landroidx/appcompat/widget/Toolbar;

.field public final q:Ljava/lang/String;

.field public final r:I

.field public final s:I

.field public final t:Landroid/content/Context;

.field public u:Landroid/view/View;

.field public v:Landroid/view/View;

.field public w:Landroid/widget/FrameLayout;

.field public x:Landroid/view/View;

.field public y:Landroid/media/MediaPlayer;

.field public z:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->T:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->U:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->V:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->W:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->a0:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->b0:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->c0:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    iput v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->e0:I

    .line 24
    .line 25
    const/16 v2, 0x7d0

    .line 26
    .line 27
    iput v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->f0:I

    .line 28
    .line 29
    new-instance v2, LK4/v;

    .line 30
    .line 31
    invoke-direct {v2, p0}, LK4/v;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer2;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->g0:LK4/v;

    .line 35
    .line 36
    new-instance v2, Lflix/com/vision/bvp/b;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lflix/com/vision/bvp/b;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer2;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->h0:Lflix/com/vision/bvp/b;

    .line 42
    .line 43
    new-instance v2, LK4/w;

    .line 44
    .line 45
    invoke-direct {v2, p0}, LK4/w;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer2;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->i0:LK4/w;

    .line 49
    .line 50
    const-string v2, "Exception "

    .line 51
    .line 52
    const/high16 v3, -0x1000000

    .line 53
    .line 54
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->t:Landroid/content/Context;

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    sget-object v4, Lflix/com/vision/R$styleable;->BetterVideoPlayer:[I

    .line 66
    .line 67
    invoke-virtual {v3, p2, v4, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    :try_start_0
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_source:I

    .line 72
    .line 73
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_0

    .line 88
    .line 89
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->N:Landroid/net/Uri;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :catch_0
    move-exception v1

    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_0
    :goto_0
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_title:I

    .line 103
    .line 104
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_1

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_1

    .line 119
    .line 120
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->q:Ljava/lang/String;

    .line 121
    .line 122
    :cond_1
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_playDrawable:I

    .line 123
    .line 124
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->Q:Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_pauseDrawable:I

    .line 131
    .line 132
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->R:Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_restartDrawable:I

    .line 139
    .line 140
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iput-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->S:Landroid/graphics/drawable/Drawable;

    .line 145
    .line 146
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_hideControlsDuration:I

    .line 147
    .line 148
    iget v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->f0:I

    .line 149
    .line 150
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    iput v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->f0:I

    .line 155
    .line 156
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_hideControlsOnPlay:I

    .line 157
    .line 158
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->U:Z

    .line 163
    .line 164
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_autoPlay:I

    .line 165
    .line 166
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->c0:Z

    .line 171
    .line 172
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_loop:I

    .line 173
    .line 174
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->T:Z

    .line 179
    .line 180
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_showTotalDuration:I

    .line 181
    .line 182
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->V:Z

    .line 187
    .line 188
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_showBottomProgressBar:I

    .line 189
    .line 190
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->W:Z

    .line 195
    .line 196
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_swipeGesturesEnabled:I

    .line 197
    .line 198
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iput-boolean v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->b0:Z

    .line 203
    .line 204
    sget v3, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_showToolbar:I

    .line 205
    .line 206
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    iput-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->a0:Z

    .line 211
    .line 212
    sget v1, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_disableControls:I

    .line 213
    .line 214
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    iput-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 219
    .line 220
    sget v1, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_captionSize:I

    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    sget v4, Lflix/com/vision/R$dimen;->bvp_subtitle_size:I

    .line 227
    .line 228
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    iput v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->r:I

    .line 237
    .line 238
    sget v1, Lflix/com/vision/R$styleable;->BetterVideoPlayer_bvp_captionColor:I

    .line 239
    .line 240
    sget v3, Lflix/com/vision/R$color;->bvp_subtitle_color:I

    .line 241
    .line 242
    invoke-static {p1, v3}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    iput v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .line 252
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :goto_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    new-array v0, v0, [Ljava/lang/Object;

    .line 273
    .line 274
    invoke-static {v2, v0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    .line 279
    .line 280
    goto :goto_1

    .line 281
    :goto_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    .line 283
    .line 284
    throw p1

    .line 285
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    sget v0, Lflix/com/vision/R$dimen;->bvp_subtitle_size:I

    .line 290
    .line 291
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    iput p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->r:I

    .line 296
    .line 297
    sget p2, Lflix/com/vision/R$color;->bvp_subtitle_color:I

    .line 298
    .line 299
    invoke-static {p1, p2}, LA/h;->getColor(Landroid/content/Context;I)I

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    iput p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->s:I

    .line 304
    .line 305
    :goto_4
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->Q:Landroid/graphics/drawable/Drawable;

    .line 306
    .line 307
    if-nez p2, :cond_3

    .line 308
    .line 309
    sget p2, Lflix/com/vision/R$drawable;->bvp_action_play:I

    .line 310
    .line 311
    invoke-static {p1, p2}, LA/h;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    iput-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->Q:Landroid/graphics/drawable/Drawable;

    .line 316
    .line 317
    :cond_3
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->R:Landroid/graphics/drawable/Drawable;

    .line 318
    .line 319
    if-nez p2, :cond_4

    .line 320
    .line 321
    sget p2, Lflix/com/vision/R$drawable;->bvp_action_pause:I

    .line 322
    .line 323
    invoke-static {p1, p2}, LA/h;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 324
    .line 325
    .line 326
    move-result-object p2

    .line 327
    iput-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->R:Landroid/graphics/drawable/Drawable;

    .line 328
    .line 329
    :cond_4
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->S:Landroid/graphics/drawable/Drawable;

    .line 330
    .line 331
    if-nez p2, :cond_5

    .line 332
    .line 333
    sget p2, Lflix/com/vision/R$drawable;->bvp_action_restart:I

    .line 334
    .line 335
    invoke-static {p1, p2}, LA/h;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->S:Landroid/graphics/drawable/Drawable;

    .line 340
    .line 341
    :cond_5
    new-instance p1, LM4/a;

    .line 342
    .line 343
    invoke-direct {p1}, LM4/a;-><init>()V

    .line 344
    .line 345
    .line 346
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 347
    .line 348
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :cond_0
    const-string p1, "BetterVideoPlayer2"

    .line 9
    .line 10
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static b(Lflix/com/vision/bvp/BetterVideoPlayer2;Landroid/view/View;I)V
    .locals 1

    .line 1
    if-lez p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x4

    .line 6
    :goto_0
    iput v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->M:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    int-to-float p2, p2

    .line 13
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, LK4/r;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, LK4/r;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer2;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private setControlsEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->F:Landroid/widget/ImageButton;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->F:Landroid/widget/ImageButton;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->w:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    .line 1
    const-string v0, "Loading web URI: "

    .line 2
    .line 3
    const-string v1, "Loading local URI: "

    .line 4
    .line 5
    iget-boolean v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->G:Z

    .line 6
    .line 7
    if-eqz v2, :cond_4

    .line 8
    .line 9
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->N:Landroid/net/Uri;

    .line 10
    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    iget-boolean v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->H:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->hideControls()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 27
    .line 28
    check-cast v2, LM4/a;

    .line 29
    .line 30
    invoke-virtual {v2}, LM4/a;->onPreparing()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 34
    .line 35
    iget-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->A:Landroid/view/Surface;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->N:Landroid/net/Uri;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "http"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->N:Landroid/net/Uri;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v4, "https"

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->N:Landroid/net/Uri;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-array v1, v3, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->N:Landroid/net/Uri;

    .line 100
    .line 101
    iget-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->O:Ljava/util/Map;

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->N:Landroid/net/Uri;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-array v1, v3, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {v0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->N:Landroid/net/Uri;

    .line 139
    .line 140
    iget-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->O:Ljava/util/Map;

    .line 141
    .line 142
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 143
    .line 144
    .line 145
    :goto_1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :goto_2
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 152
    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    check-cast v1, LM4/a;

    .line 156
    .line 157
    invoke-virtual {v1}, LM4/a;->onError()V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 162
    .line 163
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    throw v1

    .line 167
    :cond_4
    :goto_3
    return-void
.end method

.method public disableControls()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->w:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->w:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public enableControls()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 3
    .line 4
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->w:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->w:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->h0:Lflix/com/vision/bvp/b;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getHideControlsDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->f0:I

    .line 2
    .line 3
    return v0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->p:Landroidx/appcompat/widget/Toolbar;

    .line 2
    .line 3
    return-object v0
.end method

.method public hideControls()V
    .locals 6

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 2
    .line 3
    check-cast v0, LM4/a;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, LM4/a;->onToggleControls(Z)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->isControlsShown()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 35
    .line 36
    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    int-to-float v4, v4

    .line 69
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    .line 74
    .line 75
    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v4, LK4/s;

    .line 83
    .line 84
    invoke-direct {v4, p0}, LK4/s;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer2;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->m:Lflix/com/vision/bvp/subtitle/CaptionsView2;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iget-object v5, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    int-to-float v5, v5

    .line 120
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .line 125
    .line 126
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    new-instance v5, LK4/t;

    .line 134
    .line 135
    invoke-direct {v5, v0}, LK4/t;-><init>(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 143
    .line 144
    .line 145
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->W:Z

    .line 146
    .line 147
    if-eqz v0, :cond_1

    .line 148
    .line 149
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 174
    .line 175
    .line 176
    :cond_1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_2

    .line 183
    .line 184
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 185
    .line 186
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 214
    .line 215
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v1, LK4/u;

    .line 223
    .line 224
    invoke-direct {v1, p0}, LK4/u;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer2;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 232
    .line 233
    .line 234
    :cond_2
    :goto_0
    return-void
.end method

.method public isControlsShown()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/high16 v1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    cmpl-float v0, v0, v1

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string v2, "Attached to window"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "mPlayer not null on attach"

    .line 17
    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    const-string p1, "Buffering: %d%%"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    check-cast p1, LM4/a;

    .line 21
    .line 22
    invoke-virtual {p1}, LM4/a;->onBuffering()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const/16 v0, 0x64

    .line 30
    .line 31
    if-ne p2, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    int-to-float p2, p2

    .line 43
    const/high16 v0, 0x42c80000    # 100.0f

    .line 44
    .line 45
    div-float/2addr p2, v0

    .line 46
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    int-to-float p1, p1

    .line 51
    mul-float/2addr p1, p2

    .line 52
    float-to-int p1, p1

    .line 53
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lflix/com/vision/R$id;->btnPlayPause:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->pause()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->U:Z

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 30
    .line 31
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->g0:LK4/v;

    .line 32
    .line 33
    const-wide/16 v1, 0x1f4

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->start()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    sget v0, Lflix/com/vision/R$id;->duration:I

    .line 47
    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->V:Z

    .line 51
    .line 52
    xor-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->V:Z

    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v0, "onCompletion()"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->F:Landroid/widget/ImageButton;

    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->S:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->i0:LK4/w;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 39
    .line 40
    .line 41
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->T:Z

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->showControls()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->start()V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    check-cast p1, LM4/a;

    .line 57
    .line 58
    invoke-virtual {p1, p0}, LM4/a;->onCompletion(Lflix/com/vision/bvp/BetterVideoPlayer2;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-string v1, "Detached from window"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->release()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 17
    .line 18
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->D:Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->E:Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->F:Landroid/widget/ImageButton;

    .line 23
    .line 24
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 25
    .line 26
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->w:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->v:Landroid/view/View;

    .line 29
    .line 30
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->i0:LK4/w;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    const/16 p1, -0x26

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    if-ne p2, p1, :cond_0

    .line 5
    .line 6
    return p3

    .line 7
    :cond_0
    const-string p1, "Preparation/playback error ("

    .line 8
    .line 9
    const-string v0, "): "

    .line 10
    .line 11
    invoke-static {p2, p1, v0}, LA/i;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 v0, -0x3f2

    .line 16
    .line 17
    if-eq p2, v0, :cond_6

    .line 18
    .line 19
    const/16 v0, -0x3ef

    .line 20
    .line 21
    if-eq p2, v0, :cond_5

    .line 22
    .line 23
    const/16 v0, -0x3ec

    .line 24
    .line 25
    if-eq p2, v0, :cond_4

    .line 26
    .line 27
    const/16 v0, -0x6e

    .line 28
    .line 29
    if-eq p2, v0, :cond_3

    .line 30
    .line 31
    const/16 v0, 0x64

    .line 32
    .line 33
    if-eq p2, v0, :cond_2

    .line 34
    .line 35
    const/16 v0, 0xc8

    .line 36
    .line 37
    if-eq p2, v0, :cond_1

    .line 38
    .line 39
    const-string p2, "Unknown error"

    .line 40
    .line 41
    invoke-static {p1, p2}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p2, "Not valid for progressive playback"

    .line 47
    .line 48
    invoke-static {p1, p2}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string p2, "Server died"

    .line 54
    .line 55
    invoke-static {p1, p2}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string p2, "Timed out"

    .line 61
    .line 62
    invoke-static {p1, p2}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const-string p2, "I/O error"

    .line 68
    .line 69
    invoke-static {p1, p2}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const-string p2, "Malformed"

    .line 75
    .line 76
    invoke-static {p1, p2}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_0

    .line 81
    :cond_6
    const-string p2, "Unsupported"

    .line 82
    .line 83
    invoke-static {p1, p2}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_0
    new-instance p2, Ljava/lang/Exception;

    .line 88
    .line 89
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 93
    .line 94
    if-eqz p1, :cond_7

    .line 95
    .line 96
    check-cast p1, LM4/a;

    .line 97
    .line 98
    invoke-virtual {p1}, LM4/a;->onError()V

    .line 99
    .line 100
    .line 101
    return p3

    .line 102
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 103
    .line 104
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public onFinishInflate()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v1, Landroid/media/MediaPlayer;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "audio"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/media/AudioManager;

    .line 62
    .line 63
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->n:Landroid/media/AudioManager;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sget v2, Lflix/com/vision/R$layout;->bvp_include_surface2:I

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    sget v4, Lflix/com/vision/R$id;->textureview:I

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/view/TextureView;

    .line 90
    .line 91
    iput-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->z:Landroid/view/TextureView;

    .line 92
    .line 93
    invoke-virtual {v4, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 94
    .line 95
    .line 96
    sget v4, Lflix/com/vision/R$id;->view_forward:I

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->f:Landroid/widget/TextView;

    .line 105
    .line 106
    sget v4, Lflix/com/vision/R$id;->view_backward:I

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->j:Landroid/widget/TextView;

    .line 115
    .line 116
    sget v2, Lflix/com/vision/R$layout;->bvp_include_progress:I

    .line 117
    .line 118
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->v:Landroid/view/View;

    .line 123
    .line 124
    sget v4, Lflix/com/vision/R$id;->spin_kit:I

    .line 125
    .line 126
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 131
    .line 132
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 133
    .line 134
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->v:Landroid/view/View;

    .line 135
    .line 136
    sget v4, Lflix/com/vision/R$id;->progressBarBottom:I

    .line 137
    .line 138
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Landroid/widget/ProgressBar;

    .line 143
    .line 144
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 145
    .line 146
    new-instance v2, Landroid/util/TypedValue;

    .line 147
    .line 148
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    sget v5, Lflix/com/vision/R$color;->accent:I

    .line 160
    .line 161
    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 162
    .line 163
    .line 164
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 165
    .line 166
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 167
    .line 168
    invoke-virtual {v4, v2}, Lcom/github/ybq/android/spinkit/SpinKitView;->setColor(I)V

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->v:Landroid/view/View;

    .line 172
    .line 173
    sget v4, Lflix/com/vision/R$id;->position_textview:I

    .line 174
    .line 175
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Landroid/widget/TextView;

    .line 180
    .line 181
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->e:Landroid/widget/TextView;

    .line 182
    .line 183
    const/high16 v4, 0x40400000    # 3.0f

    .line 184
    .line 185
    const/high16 v5, -0x1000000

    .line 186
    .line 187
    invoke-virtual {v2, v4, v4, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 188
    .line 189
    .line 190
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->v:Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    new-instance v2, Landroid/widget/FrameLayout;

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->w:Landroid/widget/FrameLayout;

    .line 205
    .line 206
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    const/4 v5, -0x1

    .line 209
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    .line 214
    .line 215
    sget v2, Lflix/com/vision/R$layout;->bvp_include_controls:I

    .line 216
    .line 217
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 222
    .line 223
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    .line 225
    const/4 v4, -0x2

    .line 226
    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    .line 228
    .line 229
    const/16 v6, 0xc

    .line 230
    .line 231
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    .line 233
    .line 234
    iget-object v6, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 235
    .line 236
    invoke-virtual {p0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    .line 238
    .line 239
    sget v2, Lflix/com/vision/R$layout;->bvp_include_topbar:I

    .line 240
    .line 241
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 246
    .line 247
    sget v6, Lflix/com/vision/R$id;->toolbar:I

    .line 248
    .line 249
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 254
    .line 255
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->p:Landroidx/appcompat/widget/Toolbar;

    .line 256
    .line 257
    iget-object v6, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->q:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    .line 261
    .line 262
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 263
    .line 264
    iget-boolean v6, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->a0:Z

    .line 265
    .line 266
    if-eqz v6, :cond_0

    .line 267
    .line 268
    move v6, v3

    .line 269
    goto :goto_0

    .line 270
    :cond_0
    const/16 v6, 0x8

    .line 271
    .line 272
    :goto_0
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 276
    .line 277
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 278
    .line 279
    .line 280
    sget v2, Lflix/com/vision/R$layout;->bvp_include_subtitle2:I

    .line 281
    .line 282
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 287
    .line 288
    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    .line 290
    .line 291
    const/4 v4, 0x2

    .line 292
    sget v5, Lflix/com/vision/R$id;->bvp_include_relativelayout:I

    .line 293
    .line 294
    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 295
    .line 296
    .line 297
    iput-boolean v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 298
    .line 299
    sget v4, Lflix/com/vision/R$id;->subs_box:I

    .line 300
    .line 301
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Lflix/com/vision/bvp/subtitle/CaptionsView2;

    .line 306
    .line 307
    iput-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->m:Lflix/com/vision/bvp/subtitle/CaptionsView2;

    .line 308
    .line 309
    iget-object v5, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 310
    .line 311
    invoke-virtual {v4, v5}, Lflix/com/vision/bvp/subtitle/CaptionsView2;->setPlayer(Landroid/media/MediaPlayer;)V

    .line 312
    .line 313
    .line 314
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->m:Lflix/com/vision/bvp/subtitle/CaptionsView2;

    .line 315
    .line 316
    iget v5, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->r:I

    .line 317
    .line 318
    int-to-float v5, v5

    .line 319
    invoke-virtual {v4, v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 320
    .line 321
    .line 322
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->m:Lflix/com/vision/bvp/subtitle/CaptionsView2;

    .line 323
    .line 324
    iget v5, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->s:I

    .line 325
    .line 326
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    .line 331
    .line 332
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 333
    .line 334
    sget v2, Lflix/com/vision/R$id;->seeker:I

    .line 335
    .line 336
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    check-cast v1, Landroid/widget/SeekBar;

    .line 341
    .line 342
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 343
    .line 344
    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 345
    .line 346
    .line 347
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 348
    .line 349
    sget v2, Lflix/com/vision/R$id;->position:I

    .line 350
    .line 351
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    check-cast v1, Landroid/widget/TextView;

    .line 356
    .line 357
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->D:Landroid/widget/TextView;

    .line 358
    .line 359
    const-wide/16 v4, 0x0

    .line 360
    .line 361
    invoke-static {v4, v5, v3}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 369
    .line 370
    sget v2, Lflix/com/vision/R$id;->duration:I

    .line 371
    .line 372
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    check-cast v1, Landroid/widget/TextView;

    .line 377
    .line 378
    iput-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->E:Landroid/widget/TextView;

    .line 379
    .line 380
    invoke-static {v4, v5, v0}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->E:Landroid/widget/TextView;

    .line 388
    .line 389
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 393
    .line 394
    sget v1, Lflix/com/vision/R$id;->btnPlayPause:I

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Landroid/widget/ImageButton;

    .line 401
    .line 402
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->F:Landroid/widget/ImageButton;

    .line 403
    .line 404
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    .line 406
    .line 407
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->F:Landroid/widget/ImageButton;

    .line 408
    .line 409
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->Q:Landroid/graphics/drawable/Drawable;

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    .line 413
    .line 414
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 415
    .line 416
    if-eqz v0, :cond_1

    .line 417
    .line 418
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->disableControls()V

    .line 419
    .line 420
    .line 421
    goto :goto_1

    .line 422
    :cond_1
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->enableControls()V

    .line 423
    .line 424
    .line 425
    :goto_1
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->W:Z

    .line 426
    .line 427
    invoke-virtual {p0, v0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->setBottomProgressBarVisibility(Z)V

    .line 428
    .line 429
    .line 430
    invoke-direct {p0, v3}, Lflix/com/vision/bvp/BetterVideoPlayer2;->setControlsEnabled(Z)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->c()V

    .line 434
    .line 435
    .line 436
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "onPrepared()"

    .line 5
    .line 6
    invoke-static {v2, v1}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->showControls()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->H:Z

    .line 20
    .line 21
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v2, LM4/a;

    .line 26
    .line 27
    invoke-virtual {v2, p0}, LM4/a;->onPrepared(Lflix/com/vision/bvp/BetterVideoPlayer2;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->D:Landroid/widget/TextView;

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    invoke-static {v3, v4, v0}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->E:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-long v3, v3

    .line 48
    invoke-static {v3, v4, v0}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v1}, Lflix/com/vision/bvp/BetterVideoPlayer2;->setControlsEnabled(Z)V

    .line 70
    .line 71
    .line 72
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->c0:Z

    .line 73
    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 77
    .line 78
    if-nez p1, :cond_1

    .line 79
    .line 80
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->U:Z

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 85
    .line 86
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->g0:LK4/v;

    .line 87
    .line 88
    const-wide/16 v1, 0x1f4

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->start()V

    .line 94
    .line 95
    .line 96
    iget p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->e0:I

    .line 97
    .line 98
    if-lez p1, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lflix/com/vision/bvp/BetterVideoPlayer2;->seekTo(I)V

    .line 101
    .line 102
    .line 103
    const/4 p1, -0x1

    .line 104
    iput p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->e0:I

    .line 105
    .line 106
    :cond_2
    return-void

    .line 107
    :cond_3
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lflix/com/vision/bvp/BetterVideoPlayer2;->seekTo(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->e:Landroid/widget/TextView;

    .line 7
    .line 8
    int-to-long p2, p2

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p2, p3, v0}, LM4/c;->getDurationString(JZ)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->isPlaying()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->I:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->e:Landroid/widget/TextView;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->I:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->e:Landroid/widget/TextView;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aput-object v1, v2, v0

    .line 17
    .line 18
    const-string v1, "Surface texture available: %dx%d"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->J:I

    .line 24
    .line 25
    iput p3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->K:I

    .line 26
    .line 27
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->G:Z

    .line 28
    .line 29
    new-instance p2, Landroid/view/Surface;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->A:Landroid/view/Surface;

    .line 35
    .line 36
    iget-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->H:Z

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    new-array p1, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string p2, "Surface texture available and media player is prepared"

    .line 43
    .line 44
    invoke-static {p2, p1}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 48
    .line 49
    iget-object p2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->A:Landroid/view/Surface;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->c()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "Surface texture destroyed"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->G:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->A:Landroid/view/Surface;

    .line 13
    .line 14
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p1, v2, v3

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object v0, v2, p1

    .line 17
    .line 18
    const-string p1, "Surface texture changed: %dx%d"

    .line 19
    .line 20
    invoke-static {p1, v2}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    int-to-double v2, v0

    .line 36
    int-to-double v4, p1

    .line 37
    div-double/2addr v2, v4

    .line 38
    int-to-double v4, p2

    .line 39
    mul-double/2addr v4, v2

    .line 40
    double-to-int p1, v4

    .line 41
    if-le p3, p1, :cond_0

    .line 42
    .line 43
    move v0, p1

    .line 44
    move p1, p2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    int-to-double v4, p3

    .line 47
    div-double/2addr v4, v2

    .line 48
    double-to-int p1, v4

    .line 49
    move v0, p3

    .line 50
    :goto_0
    sub-int v2, p2, p1

    .line 51
    .line 52
    div-int/2addr v2, v1

    .line 53
    sub-int v3, p3, v0

    .line 54
    .line 55
    div-int/2addr v3, v1

    .line 56
    new-instance v1, Landroid/graphics/Matrix;

    .line 57
    .line 58
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->z:Landroid/view/TextureView;

    .line 62
    .line 63
    invoke-virtual {v4, v1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 64
    .line 65
    .line 66
    int-to-float p1, p1

    .line 67
    int-to-float p2, p2

    .line 68
    div-float/2addr p1, p2

    .line 69
    int-to-float p2, v0

    .line 70
    int-to-float p3, p3

    .line 71
    div-float/2addr p2, p3

    .line 72
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 73
    .line 74
    .line 75
    int-to-float p1, v2

    .line 76
    int-to-float p2, v3

    .line 77
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->z:Landroid/view/TextureView;

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :catch_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x2

    .line 10
    new-array p3, p3, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    aput-object p1, p3, v0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aput-object p2, p3, p1

    .line 17
    .line 18
    const-string p1, "Video size changed: %dx%d"

    .line 19
    .line 20
    invoke-static {p1, p3}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 18
    .line 19
    check-cast v0, LM4/a;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, LM4/a;->onPaused(Lflix/com/vision/bvp/BetterVideoPlayer2;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->g0:LK4/v;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 35
    .line 36
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->i0:LK4/w;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->F:Landroid/widget/ImageButton;

    .line 42
    .line 43
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->Q:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->H:Z

    .line 3
    .line 4
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->i0:LK4/w;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 24
    .line 25
    :cond_1
    const-string v1, "Released player and Handler"

    .line 26
    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v1, v0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->c0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBottomProgressBarVisibility(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->W:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setCallback(LK4/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 2
    .line 3
    return-void
.end method

.method public setCaptionLoadListener(LL4/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->m:Lflix/com/vision/bvp/subtitle/CaptionsView2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lflix/com/vision/bvp/subtitle/CaptionsView2;->setCaptionsViewLoadListener(LL4/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDoubleTap(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->w:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    new-instance v1, LK4/q;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, LK4/q;-><init>(Lflix/com/vision/bvp/BetterVideoPlayer2;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->O:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setHideControlsDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->f0:I

    .line 2
    .line 3
    return-void
.end method

.method public setHideControlsOnPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->U:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInitialPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->e0:I

    .line 2
    .line 3
    return-void
.end method

.method public setLoadingStyle(I)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance p1, LO2/t;

    .line 5
    .line 6
    invoke-direct {p1}, LO2/t;-><init>()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    new-instance p1, LO2/q;

    .line 11
    .line 12
    invoke-direct {p1}, LO2/q;-><init>()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_1
    new-instance p1, LO2/j;

    .line 17
    .line 18
    invoke-direct {p1}, LO2/j;-><init>()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_2
    new-instance p1, LO2/f;

    .line 23
    .line 24
    invoke-direct {p1}, LO2/f;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_3
    new-instance p1, LO2/d;

    .line 29
    .line 30
    invoke-direct {p1}, LO2/d;-><init>()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_4
    new-instance p1, LO2/t;

    .line 35
    .line 36
    invoke-direct {p1}, LO2/t;-><init>()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_5
    new-instance p1, LO2/b;

    .line 41
    .line 42
    invoke-direct {p1}, LO2/b;-><init>()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_6
    new-instance p1, LO2/o;

    .line 47
    .line 48
    invoke-direct {p1}, LO2/o;-><init>()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_7
    new-instance p1, LO2/v;

    .line 53
    .line 54
    invoke-direct {p1}, LO2/v;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_8
    new-instance p1, LO2/x;

    .line 59
    .line 60
    invoke-direct {p1}, LO2/x;-><init>()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_9
    new-instance p1, LO2/r;

    .line 65
    .line 66
    invoke-direct {p1}, LO2/r;-><init>()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_a
    new-instance p1, LO2/h;

    .line 71
    .line 72
    invoke-direct {p1}, LO2/h;-><init>()V

    .line 73
    .line 74
    .line 75
    :goto_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->b:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lcom/github/ybq/android/spinkit/SpinKitView;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLoop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->T:Z

    .line 2
    .line 3
    return-void
.end method

.method public setProgressCallback(LK4/x;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSource(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->N:Landroid/net/Uri;

    .line 2
    .line 3
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setTVMode(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->D:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->E:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lflix/com/vision/bvp/BetterVideoPlayer2;->setLoop(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public showControls()V
    .locals 6

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    check-cast v0, LM4/a;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, LM4/a;->onToggleControls(Z)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->isControlsShown()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->B:Landroid/widget/SeekBar;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/high16 v3, 0x3f800000    # 1.0f

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .line 68
    .line 69
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->m:Lflix/com/vision/bvp/subtitle/CaptionsView2;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 92
    .line 93
    .line 94
    iget-object v5, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->u:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    int-to-float v5, v5

    .line 101
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .line 113
    .line 114
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 122
    .line 123
    .line 124
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->W:Z

    .line 125
    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->C:Landroid/widget/ProgressBar;

    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 153
    .line 154
    .line 155
    :cond_1
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->a0:Z

    .line 156
    .line 157
    if-eqz v0, :cond_2

    .line 158
    .line 159
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->x:Landroid/view/View;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 193
    .line 194
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 202
    .line 203
    .line 204
    :cond_2
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->y:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->P:LK4/a;

    .line 10
    .line 11
    check-cast v0, LM4/a;

    .line 12
    .line 13
    invoke-virtual {v0}, LM4/a;->onStarted()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->i0:LK4/w;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->F:Landroid/widget/ImageButton;

    .line 35
    .line 36
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->R:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public toggleControls()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->d0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->isControlsShown()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->hideControls()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->f0:I

    .line 17
    .line 18
    if-ltz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v1, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->g0:LK4/v;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->L:Landroid/os/Handler;

    .line 28
    .line 29
    iget v2, p0, Lflix/com/vision/bvp/BetterVideoPlayer2;->f0:I

    .line 30
    .line 31
    int-to-long v2, v2

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Lflix/com/vision/bvp/BetterVideoPlayer2;->showControls()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
