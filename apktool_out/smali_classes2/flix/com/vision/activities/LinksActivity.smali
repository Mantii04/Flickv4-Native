.class public Lflix/com/vision/activities/LinksActivity;
.super Lflix/com/vision/activities/base/a;
.source "SourceFile"

# interfaces
.implements LU4/f;
.implements LU4/h;
.implements LU4/g;


# static fields
.field public static final synthetic b0:I


# instance fields
.field public A:Landroid/widget/ImageView;

.field public B:Landroid/widget/ImageView;

.field public C:I

.field public D:I

.field public E:I

.field public F:Ljava/lang/String;

.field public G:Landroid/widget/ImageView;

.field public H:Landroid/widget/ImageView;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/widget/TextView;

.field public K:Landroid/widget/TextView;

.field public L:Lio/reactivex/disposables/Disposable;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Landroid/os/Bundle;

.field public Q:Z

.field public R:Landroid/os/Handler;

.field public S:Ly4/T;

.field public T:Z

.field public U:I

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:I

.field public Y:Landroid/view/Menu;

.field public Z:Ljava/util/ArrayList;

.field public a0:LQ4/d;

.field public b:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field public j:Landroid/widget/RelativeLayout;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Lcom/github/ybq/android/spinkit/SpinKitView;

.field public s:Lh5/j;

.field public t:Landroid/graphics/Typeface;

.field public u:Landroid/graphics/Typeface;

.field public v:Landroidx/recyclerview/widget/RecyclerView;

.field public w:Lflix/com/vision/models/MySourceArrayList;

.field public x:Lflix/com/vision/models/Movie;

.field public y:LC4/j0;

.field public z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lflix/com/vision/activities/base/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lflix/com/vision/activities/LinksActivity;->M:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lflix/com/vision/App;->w:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, p0, Lflix/com/vision/activities/LinksActivity;->O:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lflix/com/vision/activities/LinksActivity;->U:I

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    iput-object v1, p0, Lflix/com/vision/activities/LinksActivity;->W:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lflix/com/vision/activities/LinksActivity;->Z:Ljava/util/ArrayList;

    .line 30
    .line 31
    iput-object v0, p0, Lflix/com/vision/activities/LinksActivity;->a0:LQ4/d;

    .line 32
    .line 33
    return-void
.end method

.method public static PlayExternal(ILflix/com/vision/models/VideoSource;Ljava/lang/String;Lflix/com/vision/models/Movie;Landroid/app/Activity;I)V
    .locals 7

    .line 1
    const/4 v1, 0x1

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-boolean v1, v0, Lflix/com/vision/App;->e:Z

    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 15
    .line 16
    invoke-virtual {v0, p3}, LP4/e;->addtoWatching(Lflix/com/vision/models/Movie;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    move-object p3, v0

    .line 22
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    if-eq p0, v1, :cond_3

    .line 26
    .line 27
    const/4 p3, 0x2

    .line 28
    if-eq p0, p3, :cond_2

    .line 29
    .line 30
    const/4 p2, 0x3

    .line 31
    if-eq p0, p2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    iget-object p1, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p4, p0, p1}, LT4/o;->PlayXPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget-object v3, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    iget-object v5, p1, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 45
    .line 46
    move-object v2, p2

    .line 47
    move-object v1, p4

    .line 48
    move v6, p5

    .line 49
    invoke-static/range {v1 .. v6}, LT4/o;->PlayVLC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move-object v2, p2

    .line 54
    move-object p0, p4

    .line 55
    iget-object p2, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 56
    .line 57
    const/4 p3, 0x0

    .line 58
    iget-object p4, p1, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 59
    .line 60
    move-object p1, v2

    .line 61
    invoke-static/range {p0 .. p5}, LT4/o;->PlayMXPlayer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method public static setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    const-string v1, "480p"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "480p - "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 36
    .line 37
    const/16 v0, 0x1e0

    .line 38
    .line 39
    iput v0, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 43
    .line 44
    const-string v1, "720p"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const-string v1, "720p - "

    .line 51
    .line 52
    const/16 v2, 0x2d0

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iput v2, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 76
    .line 77
    const-string v3, "1080p"

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const-string v3, "1080p - "

    .line 84
    .line 85
    const/16 v4, 0x438

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    iput v4, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 109
    .line 110
    const-string v5, "1440"

    .line 111
    .line 112
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    const/16 v0, 0x5a0

    .line 119
    .line 120
    iput v0, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "1440 - "

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 139
    .line 140
    return-void

    .line 141
    :cond_5
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 142
    .line 143
    const-string v5, "2160p"

    .line 144
    .line 145
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const-string v5, "4K - "

    .line 150
    .line 151
    const/16 v6, 0xfa0

    .line 152
    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    iput v6, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 172
    .line 173
    return-void

    .line 174
    :cond_6
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 175
    .line 176
    const-string v7, "4320p"

    .line 177
    .line 178
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    const/16 v0, 0x1f40

    .line 185
    .line 186
    iput v0, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v1, "8K - "

    .line 191
    .line 192
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 205
    .line 206
    return-void

    .line 207
    :cond_7
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const-string v7, ".sd"

    .line 214
    .line 215
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_8

    .line 220
    .line 221
    iput v2, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 222
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 238
    .line 239
    return-void

    .line 240
    :cond_8
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v1, ".4k"

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_9

    .line 253
    .line 254
    iput v6, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 255
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 271
    .line 272
    return-void

    .line 273
    :cond_9
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    const-string v1, ".hdtv"

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_a

    .line 286
    .line 287
    iput v4, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 288
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 304
    .line 305
    return-void

    .line 306
    :cond_a
    iget-object v0, p0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    const-string v1, ".hd"

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_b

    .line 319
    .line 320
    iput v4, p0, Lflix/com/vision/models/VideoSource;->quality:I

    .line 321
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object v1, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    iput-object v0, p0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 337
    .line 338
    :cond_b
    :goto_0
    return-void
.end method


# virtual methods
.method public OnError()V
    .locals 0

    return-void
.end method

.method public OnM3USuccess(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/VideoSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->a0:LQ4/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    iput-object p1, p0, Lflix/com/vision/activities/LinksActivity;->Z:Ljava/util/ArrayList;

    .line 9
    .line 10
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lflix/com/vision/models/VideoSource;

    .line 27
    .line 28
    iget-object v2, v2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 29
    .line 30
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, [Ljava/lang/CharSequence;

    .line 53
    .line 54
    new-instance v1, Le/r;

    .line 55
    .line 56
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 57
    .line 58
    sget v3, Lflix/com/vision/R$style;->AlertDialogNoHeader:I

    .line 59
    .line 60
    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v2}, Le/r;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, LB4/b;

    .line 67
    .line 68
    const/4 v3, 0x3

    .line 69
    invoke-direct {v2, v3, p0, p1}, LB4/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const/4 p1, -0x1

    .line 73
    invoke-virtual {v1, v0, p1, v2}, Le/r;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Le/r;

    .line 74
    .line 75
    .line 76
    new-instance p1, LB4/c;

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    invoke-direct {p1, v0}, LB4/c;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Le/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Le/r;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Le/r;->show()Le/s;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .line 87
    .line 88
    :catch_1
    return-void
.end method

.method public OnSuccess(Lflix/com/vision/models/VideoSource;)V
    .locals 5

    .line 20
    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->streamable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 21
    iget v0, p0, Lflix/com/vision/activities/LinksActivity;->U:I

    add-int/2addr v0, v1

    iput v0, p0, Lflix/com/vision/activities/LinksActivity;->U:I

    .line 22
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lflix/com/vision/models/MySourceArrayList;->add(ILflix/com/vision/models/VideoSource;)V

    .line 23
    sget-object v0, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_0
    iget-boolean v2, p1, Lflix/com/vision/models/VideoSource;->isPremiumSupported:Z

    if-eqz v2, :cond_3

    .line 25
    sget-boolean v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    if-eqz v0, :cond_2

    .line 26
    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->rd_checked:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    invoke-static {v0}, Lflix/com/vision/App;->isRdSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    sget-object v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->f:Ljava/lang/String;

    sget-object v3, Lflix/com/vision/api/realdebrid/RealDebridCommon;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, LD4/a;->getLinkRealDebrid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 28
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Ly4/S;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Ly4/S;-><init>(Lflix/com/vision/activities/LinksActivity;Lflix/com/vision/models/VideoSource;I)V

    new-instance v3, LB4/w;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, LB4/w;-><init>(ILflix/com/vision/models/VideoSource;)V

    .line 29
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 30
    :cond_2
    :goto_0
    sget-boolean v0, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    if-eqz v0, :cond_5

    .line 31
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/LinksActivity;->unlockLinkAllRebrid(Lflix/com/vision/models/VideoSource;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 32
    iget v0, p0, Lflix/com/vision/activities/LinksActivity;->U:I

    add-int/2addr v0, v1

    iput v0, p0, Lflix/com/vision/activities/LinksActivity;->U:I

    .line 33
    :cond_4
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v0, p1}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 34
    sget-object v0, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_5
    :goto_1
    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->isPremiumize:Z

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->isRealDebrid:Z

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->isAllDebrid:Z

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->isTorbox:Z

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->isOffCloud:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-boolean p1, p1, Lflix/com/vision/models/VideoSource;->streamable:Z

    if-eqz p1, :cond_7

    .line 36
    iput-boolean v1, p0, Lflix/com/vision/activities/LinksActivity;->T:Z

    :cond_7
    return-void
.end method

.method public OnSuccess(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/VideoSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflix/com/vision/models/VideoSource;

    .line 3
    iget-object v1, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    const-string v2, "google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 4
    iput-boolean v2, v0, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 5
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "720p -  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "1080p -  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 8
    :cond_2
    :goto_1
    iget-object v1, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    const-string v3, "loadvid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    const-string v3, "vidcloud"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    const-string v3, "vcstream"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 10
    :cond_4
    iget-object v1, v0, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    const-string v3, "HLS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v1, v0}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 12
    sget-object v1, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_5
    iget-boolean v1, v0, Lflix/com/vision/models/VideoSource;->streamable:Z

    if-eqz v1, :cond_6

    .line 14
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lflix/com/vision/models/MySourceArrayList;->add(ILflix/com/vision/models/VideoSource;)V

    .line 15
    sget-object v1, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_6
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v1, v0}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 17
    sget-object v1, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :goto_2
    iget-boolean v0, v0, Lflix/com/vision/models/VideoSource;->streamable:Z

    if-eqz v0, :cond_0

    .line 19
    iget v0, p0, Lflix/com/vision/activities/LinksActivity;->U:I

    add-int/2addr v0, v2

    iput v0, p0, Lflix/com/vision/activities/LinksActivity;->U:I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final e(Lflix/com/vision/models/VideoSource;)V
    .locals 10

    .line 1
    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->requireMXPlayer:Z

    .line 2
    .line 3
    const-string v1, "CANCEL"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0, v3}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "Play With MX Player"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "This File Format can only be played with MX Player. \nPlease make sure MX Player is installed"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v4, LA4/q;

    .line 29
    .line 30
    const/4 v5, 0x6

    .line 31
    invoke-direct {v4, v5}, LA4/q;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Ly4/U;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-direct {v1, p0, p1, v4}, Ly4/U;-><init>(Lflix/com/vision/activities/LinksActivity;Lflix/com/vision/models/VideoSource;I)V

    .line 41
    .line 42
    .line 43
    const-string p1, "PLAY WITH MX Player"

    .line 44
    .line 45
    invoke-virtual {v3, p1, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v3, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    move-object p1, v0

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_0
    move-object v8, p0

    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_0
    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->requireVLC:Z

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p0, v3}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v4, "Play With VLC"

    .line 73
    .line 74
    invoke-virtual {v3, v4}, LQ4/d;->setTitle(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v4, "This File Format can only be played with VLC. \nPlease make sure VLC is installed"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, LQ4/d;->setMessage(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, LA4/q;

    .line 83
    .line 84
    const/4 v5, 0x6

    .line 85
    invoke-direct {v4, v5}, LA4/q;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v1, v4}, LQ4/d;->setButton1(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Ly4/U;

    .line 92
    .line 93
    const/4 v4, 0x1

    .line 94
    invoke-direct {v1, p0, p1, v4}, Ly4/U;-><init>(Lflix/com/vision/activities/LinksActivity;Lflix/com/vision/models/VideoSource;I)V

    .line 95
    .line 96
    .line 97
    const-string p1, "PLAY WITH VLC"

    .line 98
    .line 99
    invoke-virtual {v3, p1, v1}, LQ4/d;->setButton2(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    :try_start_1
    invoke-virtual {v3, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_1
    move-exception v0

    .line 107
    move-object p1, v0

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->isSplitted:Z

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    if-nez v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {p1}, Lflix/com/vision/models/VideoSource;->isSplitable()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 128
    .line 129
    const-string v4, "pref_adult_zone_always_play_best"

    .line 130
    .line 131
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_2

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {p0, v1}, LQ4/d;->newInstance(Landroid/app/Activity;Z)LQ4/d;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iput-object v1, p0, Lflix/com/vision/activities/LinksActivity;->a0:LQ4/d;

    .line 146
    .line 147
    invoke-virtual {v1}, LQ4/d;->setloading()V

    .line 148
    .line 149
    .line 150
    :try_start_2
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->a0:LQ4/d;

    .line 151
    .line 152
    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :catch_2
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :goto_1
    new-instance v0, LY4/c;

    .line 161
    .line 162
    invoke-direct {v0, p0, p0}, LY4/c;-><init>(Landroid/content/Context;LU4/f;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p0}, LY4/c;->setHindiM3uSpliCallBack(LU4/g;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p1, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, p1, v1}, LY4/c;->process(Lflix/com/vision/models/VideoSource;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 179
    .line 180
    const-string v2, "player_index"

    .line 181
    .line 182
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    const/4 v0, 0x4

    .line 187
    if-lez v4, :cond_4

    .line 188
    .line 189
    if-ge v4, v0, :cond_4

    .line 190
    .line 191
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 192
    .line 193
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 198
    .line 199
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_3

    .line 204
    .line 205
    const-string v1, " - S"

    .line 206
    .line 207
    invoke-static {v0, v1}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget v1, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, "E"

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget v1, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, " - "

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->W:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    :cond_3
    move-object v6, v0

    .line 241
    :try_start_3
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 246
    .line 247
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 248
    .line 249
    const/4 v2, -0x1

    .line 250
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    iget-object v7, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 255
    .line 256
    move-object v8, p0

    .line 257
    move-object v5, p1

    .line 258
    :try_start_4
    invoke-static/range {v4 .. v9}, Lflix/com/vision/activities/LinksActivity;->PlayExternal(ILflix/com/vision/models/VideoSource;Ljava/lang/String;Lflix/com/vision/models/Movie;Landroid/app/Activity;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :catch_3
    move-object v8, p0

    .line 263
    move-object v5, p1

    .line 264
    :catch_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    const-string v0, "Failed to load external Player, Make sure it is installed"

    .line 269
    .line 270
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v5}, Lflix/com/vision/activities/LinksActivity;->f(Lflix/com/vision/models/VideoSource;)V

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_4
    move-object v8, p0

    .line 282
    move-object v5, p1

    .line 283
    if-ne v4, v0, :cond_5

    .line 284
    .line 285
    :try_start_5
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    iput-boolean v3, p1, Lflix/com/vision/App;->e:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 290
    .line 291
    :try_start_6
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 296
    .line 297
    iget-object v0, v8, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 298
    .line 299
    invoke-virtual {p1, v0}, LP4/e;->addtoWatching(Lflix/com/vision/models/Movie;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :catch_5
    move-exception v0

    .line 304
    move-object p1, v0

    .line 305
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 306
    .line 307
    .line 308
    :goto_2
    new-instance p1, Landroid/content/Intent;

    .line 309
    .line 310
    const-string v0, "android.intent.action.VIEW"

    .line 311
    .line 312
    iget-object v2, v5, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, v5, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 322
    .line 323
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    const-string v2, "video/mp4"

    .line 328
    .line 329
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :catch_6
    move-exception v0

    .line 337
    move-object p1, v0

    .line 338
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-static {p0, p1, v1}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 343
    .line 344
    .line 345
    :goto_3
    return-void

    .line 346
    :cond_5
    invoke-virtual {p0, v5}, Lflix/com/vision/activities/LinksActivity;->f(Lflix/com/vision/models/VideoSource;)V

    .line 347
    .line 348
    .line 349
    return-void
.end method

.method public final f(Lflix/com/vision/models/VideoSource;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 8
    .line 9
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, " \u00b7 S"

    .line 16
    .line 17
    invoke-static {v0, v1}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "E"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x1

    .line 45
    iput-boolean v2, v1, Lflix/com/vision/App;->e:Z

    .line 46
    .line 47
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v1, v1, Lflix/com/vision/App;->r:LP4/e;

    .line 52
    .line 53
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, LP4/e;->addtoWatching(Lflix/com/vision/models/Movie;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 64
    .line 65
    const-class v2, Lflix/com/vision/activities/player/SimpleVideoPlayer;

    .line 66
    .line 67
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    const/high16 v2, 0x14000000

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    iget-object v2, p1, Lflix/com/vision/models/VideoSource;->mimeType:Ljava/lang/String;

    .line 76
    .line 77
    const-string v3, "mimeType"

    .line 78
    .line 79
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string v2, "season_year"

    .line 83
    .line 84
    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->F:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string v2, "movie"

    .line 90
    .line 91
    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 92
    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    const-string v2, "title"

    .line 97
    .line 98
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    const-string v0, "language"

    .line 102
    .line 103
    iget-object v2, p1, Lflix/com/vision/models/VideoSource;->language:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-boolean v2, p1, Lflix/com/vision/models/VideoSource;->isHindiDirect:Z

    .line 114
    .line 115
    if-eqz v2, :cond_4

    .line 116
    .line 117
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_2

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Lflix/com/vision/models/VideoSource;

    .line 134
    .line 135
    iget-boolean v4, v3, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 136
    .line 137
    if-eqz v4, :cond_1

    .line 138
    .line 139
    iget-boolean v4, v3, Lflix/com/vision/models/VideoSource;->isHindiDirect:Z

    .line 140
    .line 141
    if-eqz v4, :cond_1

    .line 142
    .line 143
    iget-boolean v4, v3, Lflix/com/vision/models/VideoSource;->isSplitted:Z

    .line 144
    .line 145
    if-eqz v4, :cond_1

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->Z:Ljava/util/ArrayList;

    .line 152
    .line 153
    if-eqz v2, :cond_6

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_6

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Lflix/com/vision/models/VideoSource;

    .line 170
    .line 171
    iget-boolean v4, v3, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 172
    .line 173
    if-eqz v4, :cond_3

    .line 174
    .line 175
    iget-boolean v4, v3, Lflix/com/vision/models/VideoSource;->isHindiDirect:Z

    .line 176
    .line 177
    if-eqz v4, :cond_3

    .line 178
    .line 179
    iget-boolean v4, v3, Lflix/com/vision/models/VideoSource;->isSplitted:Z

    .line 180
    .line 181
    if-eqz v4, :cond_3

    .line 182
    .line 183
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_6

    .line 198
    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    check-cast v3, Lflix/com/vision/models/VideoSource;

    .line 204
    .line 205
    iget-boolean v4, v3, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 206
    .line 207
    if-eqz v4, :cond_5

    .line 208
    .line 209
    iget-boolean v4, v3, Lflix/com/vision/models/VideoSource;->requireVLC:Z

    .line 210
    .line 211
    if-nez v4, :cond_5

    .line 212
    .line 213
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_6
    const-string v2, "current_index"

    .line 218
    .line 219
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    const-string v2, "sources"

    .line 227
    .line 228
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 232
    .line 233
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_7

    .line 238
    .line 239
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 240
    .line 241
    iget-boolean v0, v0, Lflix/com/vision/models/Movie;->drama:Z

    .line 242
    .line 243
    if-eqz v0, :cond_8

    .line 244
    .line 245
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v2, "Episode "

    .line 248
    .line 249
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 253
    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iput-object v0, p0, Lflix/com/vision/activities/LinksActivity;->V:Ljava/lang/String;

    .line 262
    .line 263
    :cond_8
    const-string v0, "title_episode"

    .line 264
    .line 265
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->V:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    .line 269
    .line 270
    const-string v0, "season_number"

    .line 271
    .line 272
    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 273
    .line 274
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    const-string v0, "episode_number"

    .line 278
    .line 279
    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 280
    .line 281
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    .line 283
    .line 284
    const-string v0, "episode_count"

    .line 285
    .line 286
    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->E:I

    .line 287
    .line 288
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    const-string v0, "episode"

    .line 292
    .line 293
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->W:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    .line 297
    .line 298
    iget v0, p0, Lflix/com/vision/activities/LinksActivity;->X:I

    .line 299
    .line 300
    if-lez v0, :cond_9

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_9
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 304
    .line 305
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    :goto_4
    const-string v2, "runtime"

    .line 310
    .line 311
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    const-string v0, "streamUrl"

    .line 315
    .line 316
    iget-object v2, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    .line 320
    .line 321
    const-string v0, "movie_id"

    .line 322
    .line 323
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    .line 327
    .line 328
    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {v0}, Lh5/n;->notNull(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_a

    .line 335
    .line 336
    const-string v0, "referer"

    .line 337
    .line 338
    iget-object p1, p1, Lflix/com/vision/models/VideoSource;->referer:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    .line 342
    .line 343
    :cond_a
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 344
    .line 345
    iget-object p1, p1, Lflix/com/vision/models/Movie;->certification:Ljava/lang/String;

    .line 346
    .line 347
    if-eqz p1, :cond_b

    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-nez p1, :cond_b

    .line 354
    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 361
    .line 362
    iget-object v0, v0, Lflix/com/vision/models/Movie;->certification:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v0, ""

    .line 368
    .line 369
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    const-string v0, "movie_rating"

    .line 377
    .line 378
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    .line 380
    .line 381
    :cond_b
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 382
    .line 383
    .line 384
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lflix/com/vision/activities/LinksActivity;->V:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->H:Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->I:Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 12
    .line 13
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->getType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lm4/J;->fit()Lm4/J;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lm4/J;->centerCrop()Lm4/J;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->H:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-lez p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->I:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-lez p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->J:Landroid/widget/TextView;

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v0, "S"

    .line 74
    .line 75
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, "E"

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v0, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, " \u00b7 "

    .line 94
    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    if-eqz p4, :cond_3

    .line 109
    .line 110
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-lez p1, :cond_3

    .line 115
    .line 116
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->K:Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void
.end method

.method public linkClicked(Lflix/com/vision/models/VideoSource;Z)V
    .locals 6

    .line 1
    iget-object p2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 2
    .line 3
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 8
    .line 9
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, " \u00b7 S"

    .line 16
    .line 17
    invoke-static {p2, v0}, LA/i;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget v0, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "E"

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :cond_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lflix/com/vision/activities/LinksActivity;->e(Lflix/com/vision/models/VideoSource;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 56
    .line 57
    const-class v1, Lflix/com/vision/activities/player/WebPlayerActivity;

    .line 58
    .line 59
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p1, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 63
    .line 64
    const-string v2, "FLIXVISION1"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    new-instance v0, Landroid/content/Intent;

    .line 73
    .line 74
    const-class v1, Lflix/com/vision/activities/player/WebPlayerActivitySuper;

    .line 75
    .line 76
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 80
    .line 81
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getType()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, 0x2

    .line 86
    if-le v1, v2, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 89
    .line 90
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 96
    .line 97
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :goto_0
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    if-ne v2, v3, :cond_5

    .line 113
    .line 114
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 115
    .line 116
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 123
    .line 124
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v2, "w185"

    .line 129
    .line 130
    const-string v4, "w500"

    .line 131
    .line 132
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v2, "w342"

    .line 137
    .line 138
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 144
    .line 145
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    :cond_5
    :goto_1
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 150
    .line 151
    iget-boolean v4, v2, Lflix/com/vision/models/Movie;->is_title_logo_available:Z

    .line 152
    .line 153
    if-eqz v4, :cond_6

    .line 154
    .line 155
    const-string v4, "title_logo"

    .line 156
    .line 157
    iget-object v2, v2, Lflix/com/vision/models/Movie;->logoUrl:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    :cond_6
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 163
    .line 164
    iget-object v2, v2, Lflix/com/vision/models/Movie;->certification:Ljava/lang/String;

    .line 165
    .line 166
    const-string v4, ""

    .line 167
    .line 168
    if-eqz v2, :cond_7

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-nez v2, :cond_7

    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    iget-object v5, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 182
    .line 183
    iget-object v5, v5, Lflix/com/vision/models/Movie;->certification:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    const-string v5, "movie_rating"

    .line 196
    .line 197
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    .line 199
    .line 200
    :cond_7
    const-string v2, "url"

    .line 201
    .line 202
    iget-object v5, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    const-string v2, "move_clock"

    .line 208
    .line 209
    iget-boolean p1, p1, Lflix/com/vision/models/VideoSource;->move_clock_right:Z

    .line 210
    .line 211
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    const-string p1, "poster"

    .line 215
    .line 216
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    const-string p1, "episode_number"

    .line 220
    .line 221
    iget v1, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 222
    .line 223
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    const-string p1, "season_number"

    .line 227
    .line 228
    iget v1, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 229
    .line 230
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    const-string p1, "title"

    .line 234
    .line 235
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 239
    .line 240
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isAnime()Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-nez p1, :cond_8

    .line 245
    .line 246
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 247
    .line 248
    iget-boolean p1, p1, Lflix/com/vision/models/Movie;->drama:Z

    .line 249
    .line 250
    if-eqz p1, :cond_9

    .line 251
    .line 252
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string p2, "Episode "

    .line 255
    .line 256
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget p2, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 260
    .line 261
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iput-object p1, p0, Lflix/com/vision/activities/LinksActivity;->V:Ljava/lang/String;

    .line 269
    .line 270
    :cond_9
    const-string p1, "title_episode"

    .line 271
    .line 272
    iget-object p2, p0, Lflix/com/vision/activities/LinksActivity;->V:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 278
    .line 279
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getUrl()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    const-string p2, "movie_url"

    .line 284
    .line 285
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    const-string p1, "movie"

    .line 289
    .line 290
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 291
    .line 292
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 296
    .line 297
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    const-string v1, "title_simple"

    .line 302
    .line 303
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    .line 305
    .line 306
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 307
    .line 308
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    const-string v1, "img_url"

    .line 313
    .line 314
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    .line 316
    .line 317
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 318
    .line 319
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getUrl()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    .line 325
    .line 326
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    iput-boolean v3, p1, Lflix/com/vision/App;->e:Z

    .line 331
    .line 332
    :try_start_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 337
    .line 338
    iget-object p2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 339
    .line 340
    invoke-virtual {p1, p2}, LP4/e;->addtoWatching(Lflix/com/vision/models/Movie;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .line 342
    .line 343
    goto :goto_2

    .line 344
    :catch_0
    move-exception p1

    .line 345
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 346
    .line 347
    .line 348
    :goto_2
    iget p1, p0, Lflix/com/vision/activities/LinksActivity;->X:I

    .line 349
    .line 350
    if-lez p1, :cond_a

    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_a
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 354
    .line 355
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    :goto_3
    const-string p2, "runtime"

    .line 360
    .line 361
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    .line 363
    .line 364
    const-string p1, "BIG_POSTER_URL"

    .line 365
    .line 366
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 370
    .line 371
    .line 372
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/H;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1875

    .line 5
    .line 6
    const/16 v1, 0x5f

    .line 7
    .line 8
    const-wide/16 v2, 0x64

    .line 9
    .line 10
    const v4, 0xea60

    .line 11
    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    const-wide/16 v7, -0x1

    .line 16
    .line 17
    const/4 v9, -0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    if-ne p2, v9, :cond_a

    .line 22
    .line 23
    if-eqz p3, :cond_a

    .line 24
    .line 25
    const-string p1, "end_by"

    .line 26
    .line 27
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_a

    .line 32
    .line 33
    const-string p2, "user"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    const-string p1, "position"

    .line 42
    .line 43
    invoke-virtual {p3, p1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    cmp-long p3, p1, v5

    .line 48
    .line 49
    if-lez p3, :cond_a

    .line 50
    .line 51
    iget-object p3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 52
    .line 53
    invoke-virtual {p3}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    mul-int/2addr p3, v4

    .line 58
    mul-long/2addr v2, p1

    .line 59
    long-to-float v0, v2

    .line 60
    int-to-float p3, p3

    .line 61
    div-float/2addr v0, p3

    .line 62
    float-to-double v2, v0

    .line 63
    double-to-int p3, v2

    .line 64
    if-le p3, v1, :cond_0

    .line 65
    .line 66
    iget-object p3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 67
    .line 68
    invoke-virtual {p3}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-nez p3, :cond_0

    .line 73
    .line 74
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 79
    .line 80
    iget-object p2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, LP4/e;->markAsWatched(Lflix/com/vision/models/Movie;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 90
    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p2, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 96
    .line 97
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_0
    iget-object p3, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz p3, :cond_a

    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-nez p3, :cond_a

    .line 114
    .line 115
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    iget-object p3, p3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 120
    .line 121
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 126
    .line 127
    long-to-int p1, p1

    .line 128
    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_1
    const-string p2, "playback_completion"

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_a

    .line 143
    .line 144
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 145
    .line 146
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_a

    .line 151
    .line 152
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 157
    .line 158
    iget-object p2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 159
    .line 160
    invoke-virtual {p1, p2}, LP4/e;->markAsWatched(Lflix/com/vision/models/Movie;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 168
    .line 169
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object p2, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 174
    .line 175
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    .line 181
    .line 182
    const-string p1, "Playback completed. Marking as Watched"

    .line 183
    .line 184
    invoke-static {p0, p1, v10}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_2
    const/16 v0, 0x19a5

    .line 189
    .line 190
    if-ne p1, v0, :cond_a

    .line 191
    .line 192
    if-ne p2, v9, :cond_4

    .line 193
    .line 194
    if-eqz p3, :cond_a

    .line 195
    .line 196
    const-string p1, "extra_position"

    .line 197
    .line 198
    invoke-virtual {p3, p1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 199
    .line 200
    .line 201
    move-result-wide p1

    .line 202
    cmp-long p3, p1, v5

    .line 203
    .line 204
    if-lez p3, :cond_a

    .line 205
    .line 206
    iget-object p3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 207
    .line 208
    invoke-virtual {p3}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 209
    .line 210
    .line 211
    move-result p3

    .line 212
    mul-int/2addr p3, v4

    .line 213
    mul-long/2addr v2, p1

    .line 214
    long-to-float v0, v2

    .line 215
    int-to-float p3, p3

    .line 216
    div-float/2addr v0, p3

    .line 217
    float-to-double v2, v0

    .line 218
    double-to-int p3, v2

    .line 219
    if-le p3, v1, :cond_3

    .line 220
    .line 221
    iget-object p3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 222
    .line 223
    invoke-virtual {p3}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 224
    .line 225
    .line 226
    move-result p3

    .line 227
    if-nez p3, :cond_3

    .line 228
    .line 229
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object p1, p1, Lflix/com/vision/App;->r:LP4/e;

    .line 234
    .line 235
    iget-object p2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 236
    .line 237
    invoke-virtual {p1, p2}, LP4/e;->markAsWatched(Lflix/com/vision/models/Movie;)V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 245
    .line 246
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iget-object p2, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 251
    .line 252
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_3
    iget-object p3, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 261
    .line 262
    if-eqz p3, :cond_a

    .line 263
    .line 264
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result p3

    .line 268
    if-nez p3, :cond_a

    .line 269
    .line 270
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 271
    .line 272
    .line 273
    move-result-object p3

    .line 274
    iget-object p3, p3, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 275
    .line 276
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 277
    .line 278
    .line 279
    move-result-object p3

    .line 280
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 281
    .line 282
    long-to-int p1, p1

    .line 283
    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_4
    if-eqz p2, :cond_9

    .line 292
    .line 293
    const/4 p1, 0x2

    .line 294
    if-eq p2, p1, :cond_8

    .line 295
    .line 296
    const/4 p1, 0x3

    .line 297
    if-eq p2, p1, :cond_7

    .line 298
    .line 299
    const/4 p1, 0x4

    .line 300
    if-eq p2, p1, :cond_6

    .line 301
    .line 302
    const/4 p1, 0x5

    .line 303
    if-eq p2, p1, :cond_5

    .line 304
    .line 305
    goto :goto_0

    .line 306
    :cond_5
    const-string p1, "VLC continues playback, but for audio track only. (Audio file detected or user chose to)"

    .line 307
    .line 308
    invoke-static {p0, p1, v10}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :cond_6
    const-string p1, "VLC is not able to play this file, it could be incorrect path/uri, not supported codec or broken file"

    .line 313
    .line 314
    invoke-static {p0, p1, v10}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :cond_7
    const-string p1, "Error with hardware acceleration, user refused to switch to software decoding"

    .line 319
    .line 320
    invoke-static {p0, p1, v10}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_8
    const-string p1, "Connection failed to audio service"

    .line 325
    .line 326
    invoke-static {p0, p1, v10}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :cond_9
    const-string p1, "No compatible cpu, incorrect VLC abi variant installed"

    .line 331
    .line 332
    invoke-static {p0, p1, v10}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 333
    .line 334
    .line 335
    :cond_a
    :goto_0
    return-void
.end method

.method public onAdded()V
    .locals 2

    .line 1
    new-instance v0, LR4/e;

    .line 2
    .line 3
    invoke-direct {v0}, LR4/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lflix/com/vision/events/SystemEvent$ACTION;->f:Lflix/com/vision/events/SystemEvent$ACTION;

    .line 7
    .line 8
    iput-object v1, v0, LR4/e;->a:Lflix/com/vision/events/SystemEvent$ACTION;

    .line 9
    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onBackPressed()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, LT4/e;

    .line 9
    .line 10
    invoke-direct {v1}, LT4/e;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-boolean v0, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lflix/com/vision/api/alldebrid/AllDebridCommon;->b:Ljava/util/HashSet;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lflix/com/vision/App;->deleteAllMagnetsAllDebrid()V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-boolean v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    sget-object v0, Lflix/com/vision/api/realdebrid/RealDebridCommon;->j:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-lez v0, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lflix/com/vision/App;->deleteTorrentsRealDebridNew()V

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-boolean v0, LJ4/b;->a:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    sget-object v0, LJ4/b;->c:Ljava/util/HashSet;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-lez v0, :cond_3

    .line 67
    .line 68
    sget-object v0, LJ4/b;->c:Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1}, LD4/a;->deleteTorboxTorrent(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v2, Lx4/d;

    .line 107
    .line 108
    const/4 v3, 0x6

    .line 109
    invoke-direct {v2, v3}, Lx4/d;-><init>(I)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Lx4/d;

    .line 113
    .line 114
    const/4 v4, 0x7

    .line 115
    invoke-direct {v3, v4}, Lx4/d;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    sget-object v0, LJ4/b;->c:Ljava/util/HashSet;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 125
    .line 126
    .line 127
    :cond_3
    sget-boolean v0, LG4/b;->a:Z

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    sget-object v0, LG4/b;->c:Ljava/util/HashSet;

    .line 132
    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-lez v0, :cond_4

    .line 140
    .line 141
    sget-object v0, LG4/b;->c:Ljava/util/HashSet;

    .line 142
    .line 143
    invoke-static {v0}, LD4/a;->deleteOffcloudDownloads(Ljava/util/Set;)Lio/reactivex/Observable;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-instance v1, Lx4/d;

    .line 164
    .line 165
    const/16 v2, 0x8

    .line 166
    .line 167
    invoke-direct {v1, v2}, Lx4/d;-><init>(I)V

    .line 168
    .line 169
    .line 170
    new-instance v2, Lx4/d;

    .line 171
    .line 172
    const/4 v3, 0x7

    .line 173
    invoke-direct {v2, v3}, Lx4/d;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 177
    .line 178
    .line 179
    sget-object v0, LG4/b;->c:Ljava/util/HashSet;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 182
    .line 183
    .line 184
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1
    invoke-super {p0, p1}, Lflix/com/vision/activities/base/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iput-object p1, p0, Lflix/com/vision/activities/LinksActivity;->P:Landroid/os/Bundle;

    .line 3
    const-string v2, "IS_RD_LOGGED_IN"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_3

    .line 4
    sget-object v6, Lflix/com/vision/App;->H:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lflix/com/vision/App;->H:Ljava/util/ArrayList;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 7
    :goto_0
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v6

    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v6

    invoke-virtual {v6}, Lflix/com/vision/App;->refreshTokenRD()V

    .line 9
    :cond_1
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v6

    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v7, "PREM_LOGGED_IN"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    sput-boolean v4, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    .line 11
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v6

    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    sget-object v7, LT4/f;->a:Ljava/lang/String;

    const-string v7, "prem_apikey"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lflix/com/vision/api/premiumize/PremiumizeCommon;->e:Ljava/lang/String;

    .line 12
    :cond_2
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v6

    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v7, "ALL_DEBRID_LOGGED_IN"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    sput-boolean v4, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    .line 14
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v6

    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    sget-object v7, LT4/f;->a:Ljava/lang/String;

    const-string v7, "all_debrid_apikey"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lflix/com/vision/api/alldebrid/AllDebridCommon;->j:Ljava/lang/String;

    .line 15
    :cond_3
    sget-object v6, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 16
    sget-object v6, LT4/f;->a:Ljava/lang/String;

    iput-object v6, p0, Lflix/com/vision/activities/LinksActivity;->O:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "movie"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lflix/com/vision/models/Movie;

    iput-object v6, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 18
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v6

    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    sget-object v7, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    const-string v7, "autoembed_url"

    const-string v8, "https://autoembed.co"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lflix/com/vision/activities/LinksActivity;->M:Ljava/lang/String;

    .line 19
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v6

    iget-object v6, v6, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    .line 20
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isSeries()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    sget v2, Lflix/com/vision/R$layout;->activity_links:I

    invoke-virtual {p0, v2}, Le/v;->setContentView(I)V

    goto :goto_1

    .line 22
    :cond_4
    sget v2, Lflix/com/vision/R$layout;->activity_links_movies:I

    invoke-virtual {p0, v2}, Le/v;->setContentView(I)V

    .line 23
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->R:Landroid/os/Handler;

    .line 24
    new-instance v2, Ly4/T;

    const/4 v6, 0x4

    invoke-direct {v2, p0, v6}, Ly4/T;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->S:Ly4/T;

    .line 25
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v2

    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v6, "mouse_toggle_mode"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v6, "fonts/pproduct_sans_rregular.ttf"

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->t:Landroid/graphics/Typeface;

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v6, "fonts/product_sans_bold.ttf"

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->u:Landroid/graphics/Typeface;

    .line 28
    new-instance v2, Lh5/j;

    invoke-direct {v2}, Lh5/j;-><init>()V

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->s:Lh5/j;

    .line 29
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 30
    sget v2, Lflix/com/vision/R$id;->settings_image_view:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->B:Landroid/widget/ImageView;

    .line 31
    sget v2, Lflix/com/vision/R$id;->settings_button_movies_page:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->b:Landroid/widget/LinearLayout;

    .line 32
    sget v2, Lflix/com/vision/R$id;->stop_rd_fetch_button:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->j:Landroid/widget/RelativeLayout;

    .line 33
    sget v2, Lflix/com/vision/R$id;->listview_links:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    sget v2, Lflix/com/vision/R$id;->links_act_page_title_rd:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->q:Landroid/widget/TextView;

    .line 35
    sget v2, Lflix/com/vision/R$id;->mini_poster:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->H:Landroid/widget/ImageView;

    .line 36
    sget v2, Lflix/com/vision/R$id;->refresh_button_imageview:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->z:Landroid/widget/ImageView;

    .line 37
    sget v2, Lflix/com/vision/R$id;->links_act_page_title:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->n:Landroid/widget/TextView;

    .line 38
    sget v2, Lflix/com/vision/R$id;->links_act_reload_text:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->p:Landroid/widget/TextView;

    .line 39
    sget v2, Lflix/com/vision/R$id;->settings_button_imageview:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->A:Landroid/widget/ImageView;

    .line 40
    sget v2, Lflix/com/vision/R$id;->settings_button_links_act:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->e:Landroid/widget/RelativeLayout;

    .line 41
    sget v2, Lflix/com/vision/R$id;->links_act__settings_text:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->m:Landroid/widget/TextView;

    .line 42
    sget v2, Lflix/com/vision/R$id;->plot_text:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->I:Landroid/widget/TextView;

    .line 43
    sget v2, Lflix/com/vision/R$id;->reload_button_links_act:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->f:Landroid/widget/RelativeLayout;

    .line 44
    sget v2, Lflix/com/vision/R$id;->spin_kit_2:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/ybq/android/spinkit/SpinKitView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->r:Lcom/github/ybq/android/spinkit/SpinKitView;

    .line 45
    sget v2, Lflix/com/vision/R$id;->left_panel:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 46
    sget v2, Lflix/com/vision/R$id;->episode_title:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->J:Landroid/widget/TextView;

    .line 47
    sget v2, Lflix/com/vision/R$id;->aired_on:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->K:Landroid/widget/TextView;

    .line 48
    new-instance v2, Lflix/com/vision/models/MySourceArrayList;

    invoke-direct {v2, p0}, Lflix/com/vision/models/MySourceArrayList;-><init>(LU4/h;)V

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    .line 49
    sget v2, Lflix/com/vision/R$id;->background_image:I

    invoke-virtual {p0, v2}, Le/v;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->G:Landroid/widget/ImageView;

    const/16 v2, 0x8

    if-eqz p1, :cond_5

    .line 50
    iget-object v6, p0, Lflix/com/vision/activities/LinksActivity;->r:Lcom/github/ybq/android/spinkit/SpinKitView;

    if-eqz v6, :cond_5

    .line 51
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v6, p0, Lflix/com/vision/activities/LinksActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_5
    new-instance v6, LC4/j0;

    iget-object v7, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-direct {v6, p0, v7}, LC4/j0;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lflix/com/vision/activities/LinksActivity;->y:LC4/j0;

    .line 54
    invoke-virtual {v6, v4}, Lm1/V;->setHasStableIds(Z)V

    .line 55
    iget-object v6, p0, Lflix/com/vision/activities/LinksActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lflix/com/vision/activities/LinksActivity;->y:LC4/j0;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lm1/V;)V

    .line 56
    iget-object v6, p0, Lflix/com/vision/activities/LinksActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lflix/com/vision/helpers/CenterLayoutManager;

    invoke-direct {v7, p0, v4, v5}, Lflix/com/vision/helpers/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lm1/i0;)V

    .line 57
    iget-object v6, p0, Lflix/com/vision/activities/LinksActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    invoke-static {v6, v2}, Lb/c;->s(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 59
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->B:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 60
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->b:Landroid/widget/LinearLayout;

    new-instance v6, Ly4/V;

    invoke-direct {v6, p0, v5}, Ly4/V;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 61
    :cond_6
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->b:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_7

    .line 62
    new-instance v6, Ly4/Q;

    invoke-direct {v6, p0, v1}, Ly4/Q;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_7
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    if-nez v2, :cond_8

    goto/16 :goto_a

    .line 64
    :cond_8
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getType()I

    move-result v2

    if-le v2, v1, :cond_9

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getCover()Ljava/lang/String;

    move-result-object v2

    .line 65
    :goto_2
    invoke-virtual {p0}, Le/v;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_a

    iget-object v6, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 66
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImage_url()Ljava/lang/String;

    move-result-object v2

    const-string v6, "w185"

    const-string v7, "w500"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "w342"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 67
    :cond_a
    :try_start_0
    invoke-static {}, Lm4/D;->get()Lm4/D;

    move-result-object v6

    .line 68
    invoke-virtual {v6, v2}, Lm4/D;->load(Ljava/lang/String;)Lm4/J;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lm4/J;->fit()Lm4/J;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lm4/J;->centerCrop()Lm4/J;

    move-result-object v2

    iget-object v6, p0, Lflix/com/vision/activities/LinksActivity;->G:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v2, v6}, Lm4/J;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    :goto_3
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isSeries()Z

    move-result v2

    const-string v6, "season"

    const-string v7, ""

    if-eqz v2, :cond_c

    .line 74
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->L:Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_b

    .line 75
    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 76
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "episode_id"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v9}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 78
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 79
    invoke-static {p0, v8, v9, v2}, LD4/a;->getEpisode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v2

    .line 80
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v8

    invoke-virtual {v2, v8}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    .line 81
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v8

    invoke-virtual {v2, v8}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v8, LE4/c;

    const/16 v9, 0xc

    invoke-direct {v8, p0, v9}, LE4/c;-><init>(Ljava/lang/Object;I)V

    new-instance v9, Lx4/d;

    const/4 v10, 0x7

    invoke-direct {v9, v10}, Lx4/d;-><init>(I)V

    .line 82
    invoke-virtual {v2, v8, v9}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->L:Lio/reactivex/disposables/Disposable;

    .line 83
    :cond_c
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isSeries()Z

    move-result v2

    const-string v8, "episode_number"

    if-nez v2, :cond_d

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->isAnime()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    iget-boolean v2, v2, Lflix/com/vision/models/Movie;->drama:Z

    if-eqz v2, :cond_e

    .line 84
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "season_year"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lflix/com/vision/activities/LinksActivity;->F:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "episode_count"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lflix/com/vision/activities/LinksActivity;->E:I

    .line 88
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 89
    invoke-static {v6, v9, v7}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    iput-object v6, v2, Lflix/com/vision/models/Movie;->season:Ljava/lang/String;

    :cond_e
    if-nez p1, :cond_28

    .line 91
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getType()I

    move-result p1

    const-string v2, "url"

    if-ne p1, v0, :cond_10

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 93
    const-string v2, "www9.gogoanime.io"

    const-string v3, "gogoanime.pe"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "gogoanime.io"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    if-eqz p1, :cond_29

    .line 95
    new-instance v2, Lflix/com/vision/processors/english/b;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {v2, p0, p0, v3}, Lflix/com/vision/processors/english/b;-><init>(Landroid/content/Context;LU4/f;Lflix/com/vision/models/Movie;)V

    invoke-virtual {v2, p1}, Lflix/com/vision/processors/english/b;->Process(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 96
    :cond_10
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isDrama()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v2, Lb5/b;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {v2, p0, v3, p0}, Lb5/b;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {v2, p1}, Lb5/b;->process(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 99
    :cond_11
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object p1

    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v2, "pref_show_debrid_links_only"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 100
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    move-result p1

    const-string v2, "pref_ml_host"

    if-eqz p1, :cond_14

    .line 101
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_12

    .line 102
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object p1

    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    sget-object v3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    sget v3, Lflix/com/vision/R$string;->ml_host:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance v2, Ld5/l;

    invoke-direct {v2, p0, p0, p1}, Ld5/l;-><init>(Landroid/content/Context;LU4/f;Ljava/lang/String;)V

    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v6, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {v2, p1, v3, v6}, Ld5/l;->process(Ljava/lang/String;II)V

    .line 104
    :cond_12
    sget-boolean p1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    if-nez p1, :cond_13

    sget-boolean p1, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    if-nez p1, :cond_13

    sget-boolean p1, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    if-nez p1, :cond_13

    sget-boolean p1, LJ4/b;->a:Z

    if-nez p1, :cond_13

    sget-boolean p1, LG4/b;->a:Z

    if-eqz p1, :cond_29

    .line 105
    :cond_13
    new-instance p1, LZ4/D;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/D;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3, v4}, LZ4/D;->process(III)V

    .line 106
    new-instance p1, La5/x;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/x;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3, v4}, La5/x;->process(III)V

    .line 107
    new-instance p1, La5/p;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/p;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3, v4}, La5/p;->process(III)V

    .line 108
    new-instance p1, La5/h;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/h;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3, v4}, La5/h;->process(III)V

    .line 109
    new-instance p1, LZ4/t;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/t;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3}, LZ4/t;->process(II)V

    .line 110
    new-instance p1, LZ4/j;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/j;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3}, LZ4/j;->process(II)V

    goto/16 :goto_7

    .line 111
    :cond_14
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object p1

    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    sget-object v3, Lflix/com/vision/tv/Constant;->b:Ljava/lang/String;

    sget v3, Lflix/com/vision/R$string;->ml_host:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance v2, Ld5/f;

    invoke-direct {v2, p0, p0, p1}, Ld5/f;-><init>(Landroid/content/Context;LU4/f;Ljava/lang/String;)V

    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ld5/f;->process(Ljava/lang/String;)V

    .line 113
    sget-boolean p1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    if-nez p1, :cond_15

    sget-boolean p1, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    if-nez p1, :cond_15

    sget-boolean p1, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    if-nez p1, :cond_15

    sget-boolean p1, LJ4/b;->a:Z

    if-nez p1, :cond_15

    sget-boolean p1, LG4/b;->a:Z

    if-eqz p1, :cond_29

    .line 114
    :cond_15
    new-instance p1, LZ4/y;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/y;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, LZ4/y;->process(I)V

    .line 115
    new-instance p1, La5/t;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/t;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, La5/t;->process(I)V

    .line 116
    new-instance p1, La5/l;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/l;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, La5/l;->process(I)V

    .line 117
    new-instance p1, La5/d;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/d;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, La5/d;->process(I)V

    .line 118
    new-instance p1, LZ4/o;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/o;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, LZ4/o;->process(I)V

    .line 119
    new-instance p1, LZ4/e;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/e;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, LZ4/e;->process(I)V

    goto/16 :goto_7

    .line 120
    :cond_16
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object p1

    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v2, "hindi_include_english"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 121
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getType()I

    move-result v2

    const-wide/16 v8, 0x7d0

    const-wide/16 v10, 0x0

    if-nez v2, :cond_1f

    .line 122
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v12

    cmp-long v2, v12, v10

    if-gtz v2, :cond_17

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 123
    :cond_17
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 124
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 125
    :cond_18
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 126
    :goto_4
    new-instance v6, Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-direct {v6, p0, p0}, Lflix/com/vision/extractors/CloudnestraExtractor;-><init>(Landroid/content/Context;LU4/f;)V

    .line 127
    iget-object v12, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v12}, Lflix/com/vision/models/Movie;->isSeries()Z

    move-result v12

    xor-int/2addr v12, v4

    invoke-virtual {v6, v2, v3, v3, v12}, Lflix/com/vision/extractors/CloudnestraExtractor;->fetchLinks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    :cond_19
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 129
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ly4/T;

    invoke-direct {v3, p0, v5}, Ly4/T;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://vidsrc-embed.ru/embed/movie/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v6}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    new-instance v6, Lflix/com/vision/models/VideoSource;

    invoke-direct {v6}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 132
    iput-object v2, v6, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 133
    const-string v2, "1080p - 720p - 480p -[FLIXVISION]"

    iput-object v2, v6, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 134
    iput-boolean v4, v6, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 135
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v2, v6}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    new-instance v3, Lflix/com/vision/models/VideoSource;

    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 138
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 139
    const-string v2, "1080p - 720p - 480p - [FLIXVISION1-1]"

    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 140
    iput-boolean v4, v3, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 141
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v2, v3}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://vixsrc.to/movie/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v3, Lflix/com/vision/models/VideoSource;

    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 144
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 145
    const-string v2, "1080p - 720p - 480p - [FLIXVISION1-11]"

    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 146
    iput-boolean v4, v3, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 147
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v2, v3}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://cinesrc.st/embed/movie/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "?autoplay=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    new-instance v3, Lflix/com/vision/models/VideoSource;

    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 150
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 151
    const-string v2, "1080p - 720p - 480p - [FLIXVISION1-12]"

    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 152
    iput-boolean v4, v3, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 153
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v2, v3}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->O:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/se_player.php?video_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    new-instance v3, Lflix/com/vision/models/VideoSource;

    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 156
    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 157
    const-string v2, "1080p - 720p - 480p - [FLIXVISION1]"

    iput-object v2, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 158
    iput-boolean v4, v3, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 159
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v2, v5, v3}, Lflix/com/vision/models/MySourceArrayList;->add(ILflix/com/vision/models/VideoSource;)V

    .line 160
    :cond_1a
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_1b

    if-eqz p1, :cond_1b

    .line 161
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ly4/T;

    invoke-direct {v3, p0, v4}, Ly4/T;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_1b
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    move-result-object v2

    iget-object v2, v2, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    const-string v3, "pref_show_hindi_dubbed"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 163
    new-instance v2, Le5/f;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {v2, p0, v3, p0}, Le5/f;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {v2}, Le5/f;->process()V

    .line 164
    new-instance v2, Le5/h;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {v2, p0, v3, p0}, Le5/h;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {v2}, Le5/h;->process()V

    .line 165
    new-instance v2, Le5/b;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {v2, p0, v3, p0}, Le5/b;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {v2}, Le5/b;->process()V

    .line 166
    new-instance v2, Le5/d;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {v2, p0, v3, p0}, Le5/d;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {v2}, Le5/d;->process()V

    :cond_1c
    if-eqz p1, :cond_29

    .line 167
    sget-boolean p1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    if-nez p1, :cond_1d

    sget-boolean p1, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    if-nez p1, :cond_1d

    sget-boolean p1, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    if-nez p1, :cond_1d

    sget-boolean p1, LJ4/b;->a:Z

    if-nez p1, :cond_1d

    sget-boolean p1, LG4/b;->a:Z

    if-eqz p1, :cond_1e

    .line 168
    :cond_1d
    new-instance p1, LZ4/y;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/y;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, LZ4/y;->process(I)V

    .line 169
    new-instance p1, La5/t;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/t;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, La5/t;->process(I)V

    .line 170
    new-instance p1, La5/l;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/l;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, La5/l;->process(I)V

    .line 171
    new-instance p1, La5/d;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/d;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, La5/d;->process(I)V

    .line 172
    new-instance p1, LZ4/o;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/o;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, LZ4/o;->process(I)V

    .line 173
    new-instance p1, LZ4/e;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/e;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1, v4}, LZ4/e;->process(I)V

    .line 174
    :cond_1e
    new-instance p1, Lb5/d;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, Lb5/d;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1}, Lb5/d;->process()V

    .line 175
    new-instance p1, Lflix/com/vision/processors/english/s;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, Lflix/com/vision/processors/english/s;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1}, Lflix/com/vision/processors/english/s;->process()V

    .line 176
    new-instance p1, Lflix/com/vision/processors/english/y;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, Lflix/com/vision/processors/english/y;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    invoke-virtual {p1}, Lflix/com/vision/processors/english/y;->process()V

    .line 177
    new-instance p1, Lflix/com/vision/extractors/VixSrcExtractor;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, p0, v2}, Lflix/com/vision/extractors/VixSrcExtractor;-><init>(Landroid/content/Context;LU4/f;Lflix/com/vision/models/Movie;)V

    invoke-virtual {p1}, Lflix/com/vision/extractors/VixSrcExtractor;->extract()V

    goto/16 :goto_7

    .line 178
    :cond_1f
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v2

    cmp-long p1, v2, v10

    if-gtz p1, :cond_20

    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 179
    :cond_20
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_21

    .line 180
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 181
    :cond_21
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 182
    :goto_5
    new-instance v2, Lflix/com/vision/extractors/CloudnestraExtractor;

    invoke-direct {v2, p0, p0}, Lflix/com/vision/extractors/CloudnestraExtractor;-><init>(Landroid/content/Context;LU4/f;)V

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    .line 184
    invoke-static {v3, v6, v7}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 186
    invoke-static {v6, v12, v7}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    iget-object v12, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v12}, Lflix/com/vision/models/Movie;->isSeries()Z

    move-result v12

    xor-int/2addr v12, v4

    invoke-virtual {v2, p1, v3, v6, v12}, Lflix/com/vision/extractors/CloudnestraExtractor;->fetchLinks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    :cond_22
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_23

    .line 189
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Ly4/T;

    invoke-direct {v2, p0, v1}, Ly4/T;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    invoke-virtual {p1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    :cond_23
    sget-boolean p1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    if-nez p1, :cond_24

    sget-boolean p1, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    if-nez p1, :cond_24

    sget-boolean p1, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    if-nez p1, :cond_24

    sget-boolean p1, LJ4/b;->a:Z

    if-nez p1, :cond_24

    sget-boolean p1, LG4/b;->a:Z

    if-eqz p1, :cond_25

    .line 191
    :cond_24
    new-instance p1, LZ4/D;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/D;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v4, v2, v3}, LZ4/D;->process(III)V

    .line 192
    new-instance p1, La5/x;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/x;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3, v4}, La5/x;->process(III)V

    .line 193
    new-instance p1, La5/p;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/p;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3, v4}, La5/p;->process(III)V

    .line 194
    new-instance p1, La5/h;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, La5/h;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3, v4}, La5/h;->process(III)V

    .line 195
    new-instance p1, LZ4/t;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/t;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3}, LZ4/t;->process(II)V

    .line 196
    new-instance p1, LZ4/j;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, LZ4/j;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3}, LZ4/j;->process(II)V

    .line 197
    :cond_25
    new-instance p1, Lflix/com/vision/processors/english/q;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, Lflix/com/vision/processors/english/q;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3}, Lflix/com/vision/processors/english/q;->process(II)V

    .line 198
    new-instance p1, Lc5/b;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, Lc5/b;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3}, Lc5/b;->process(II)V

    .line 199
    new-instance p1, Lflix/com/vision/processors/english/v;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, v2, p0}, Lflix/com/vision/processors/english/v;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3}, Lflix/com/vision/processors/english/v;->process(II)V

    .line 200
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    iget-object v2, p1, Lflix/com/vision/models/Movie;->seasons:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    .line 201
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getSeason_count()I

    move-result p1

    goto :goto_6

    :cond_26
    move p1, v5

    .line 202
    :goto_6
    new-instance v2, Lflix/com/vision/processors/english/B;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {v2, p0, v3, p0}, Lflix/com/vision/processors/english/B;-><init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v6, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    iget-object v12, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    iget-object v12, v12, Lflix/com/vision/models/Movie;->last_air_date:Ljava/lang/String;

    invoke-virtual {v2, v3, v6, p1, v12}, Lflix/com/vision/processors/english/B;->process(IIILjava/lang/String;)V

    .line 203
    new-instance p1, Lflix/com/vision/extractors/VixSrcExtractor;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-direct {p1, p0, p0, v2}, Lflix/com/vision/extractors/VixSrcExtractor;-><init>(Landroid/content/Context;LU4/f;Lflix/com/vision/models/Movie;)V

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2, v3}, Lflix/com/vision/extractors/VixSrcExtractor;->extractEpisode(II)V

    .line 204
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v2

    cmp-long p1, v2, v10

    if-lez p1, :cond_27

    .line 205
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Ly4/T;

    invoke-direct {v2, p0, v0}, Ly4/T;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    invoke-virtual {p1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_27
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_29

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "https://vidsrc.sh/embed/tv/"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    .line 208
    invoke-static {p1, v3, v2}, LA/i;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    new-instance v3, Lflix/com/vision/models/VideoSource;

    invoke-direct {v3}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 210
    iput-object p1, v3, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 211
    const-string p1, "1080p - 720p - 480p [FLIXVISION5-1]"

    iput-object p1, v3, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 212
    iput-boolean v4, v3, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 213
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {p1, v3}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "https://vidsrc-embed.ru/embed/tv/"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v3}, Lflix/com/vision/models/Movie;->getImdbID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v2, Lflix/com/vision/models/VideoSource;

    invoke-direct {v2}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 216
    iput-object p1, v2, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 217
    const-string p1, "1080p - 720p - 480p [FLIXVISION]"

    iput-object p1, v2, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 218
    iput-boolean v4, v2, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 219
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {p1, v5, v2}, Lflix/com/vision/models/MySourceArrayList;->add(ILflix/com/vision/models/VideoSource;)V

    goto :goto_7

    .line 220
    :cond_28
    :try_start_1
    const-string v2, "sources"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 221
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v2, p1}, Lflix/com/vision/models/MySourceArrayList;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->y:LC4/j0;

    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 223
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lm1/b0;)V

    .line 224
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->Y:Landroid/view/Menu;

    if-eqz p1, :cond_29

    .line 225
    sget v2, Lflix/com/vision/R$id;->action_count:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    :catch_1
    :cond_29
    :goto_7
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    if-eqz p1, :cond_2b

    .line 228
    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isSeries()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    goto :goto_8

    .line 230
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->C:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lflix/com/vision/activities/LinksActivity;->D:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 231
    :cond_2b
    :goto_8
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 232
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_2c

    .line 233
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->s:Lh5/j;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->t:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 234
    :cond_2c
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_2d

    .line 235
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->s:Lh5/j;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->t:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 236
    :cond_2d
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_2e

    .line 237
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->s:Lh5/j;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->t:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 238
    :cond_2e
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->s:Lh5/j;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->I:Landroid/widget/TextView;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->t:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 239
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->s:Lh5/j;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->J:Landroid/widget/TextView;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->u:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 240
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->s:Lh5/j;

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->K:Landroid/widget/TextView;

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->t:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2, v3}, Lh5/j;->applyFontToView(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 241
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->e:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2f

    .line 242
    new-instance v2, Ly4/Q;

    invoke-direct {v2, p0, v0}, Ly4/Q;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_2f
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->f:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_30

    .line 244
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ly4/T;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Ly4/T;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->f:Landroid/widget/RelativeLayout;

    new-instance v0, Ly4/V;

    invoke-direct {v0, p0, v4}, Ly4/V;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 246
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->e:Landroid/widget/RelativeLayout;

    new-instance v0, Ly4/V;

    invoke-direct {v0, p0, v1}, Ly4/V;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 247
    :cond_30
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->j:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_31

    .line 248
    new-instance v0, Ly4/Q;

    invoke-direct {v0, p0, v5}, Ly4/Q;-><init>(Lflix/com/vision/activities/LinksActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    :cond_31
    sget-boolean p1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    if-nez p1, :cond_33

    sget-boolean p1, Lflix/com/vision/api/alldebrid/AllDebridCommon;->f:Z

    if-nez p1, :cond_33

    sget-boolean p1, Lflix/com/vision/api/premiumize/PremiumizeCommon;->b:Z

    if-nez p1, :cond_33

    sget-boolean p1, LJ4/b;->a:Z

    if-nez p1, :cond_33

    sget-boolean p1, LG4/b;->a:Z

    if-eqz p1, :cond_32

    goto :goto_9

    :cond_32
    move v4, v5

    :cond_33
    :goto_9
    iput-boolean v4, p0, Lflix/com/vision/activities/LinksActivity;->Q:Z

    if-eqz v4, :cond_34

    .line 250
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isAnime()Z

    move-result p1

    if-nez p1, :cond_34

    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    invoke-virtual {p1}, Lflix/com/vision/models/Movie;->isDrama()Z

    move-result p1

    if-nez p1, :cond_34

    .line 251
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->j:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_34

    .line 252
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_34
    :goto_a
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/v;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lflix/com/vision/R$menu;->links:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lflix/com/vision/activities/LinksActivity;->Y:Landroid/view/Menu;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public onMessageEvent(LR4/c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public onMessageEvent(LR4/e;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p1, LR4/e;->a:Lflix/com/vision/events/SystemEvent$ACTION;

    sget-object v0, Lflix/com/vision/events/SystemEvent$ACTION;->e:Lflix/com/vision/events/SystemEvent$ACTION;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    sget-object v0, Lflix/com/vision/events/SystemEvent$ACTION;->f:Lflix/com/vision/events/SystemEvent$ACTION;

    if-ne p1, v0, :cond_5

    .line 2
    :cond_0
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->y:LC4/j0;

    invoke-virtual {p1}, Lm1/V;->notifyDataSetChanged()V

    .line 3
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lm1/b0;)V

    .line 4
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->r:Lcom/github/ybq/android/spinkit/SpinKitView;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_1
    sget-boolean p1, Lflix/com/vision/api/realdebrid/RealDebridCommon;->m:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->j:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->R:Landroid/os/Handler;

    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->S:Ly4/T;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->R:Landroid/os/Handler;

    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->S:Ly4/T;

    iget-boolean v2, p0, Lflix/com/vision/activities/LinksActivity;->Q:Z

    if-eqz v2, :cond_3

    const-wide/32 v2, 0x88b8

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x2ee0

    :goto_0
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->n:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p1, :cond_4

    .line 11
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lflix/com/vision/activities/LinksActivity;->U:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_4
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    iget v2, v2, Lflix/com/vision/models/MySourceArrayList;->premium_link_count:I

    if-lez v2, :cond_5

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    iget v3, v3, Lflix/com/vision/models/MySourceArrayList;->premium_link_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_5
    iget-boolean p1, p0, Lflix/com/vision/activities/LinksActivity;->T:Z

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lflix/com/vision/activities/LinksActivity;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method public onMessageEvent(Lflix/com/vision/models/VideoSource;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 18
    iget-boolean v0, p1, Lflix/com/vision/models/VideoSource;->streamable:Z

    if-eqz v0, :cond_0

    .line 19
    iget v0, p0, Lflix/com/vision/activities/LinksActivity;->U:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lflix/com/vision/activities/LinksActivity;->U:I

    .line 20
    :cond_0
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    invoke-virtual {v0, p1}, Lflix/com/vision/models/MySourceArrayList;->add(Lflix/com/vision/models/VideoSource;)Z

    .line 21
    sget-object v0, Lflix/com/vision/App;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x102002c

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->P:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v0, v0, Lflix/com/vision/App;->e:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 25
    .line 26
    invoke-virtual {v2}, Lflix/com/vision/models/Movie;->getMovieId()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ""

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, -0x1

    .line 43
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 48
    .line 49
    invoke-virtual {v1}, Lflix/com/vision/models/Movie;->getDuration()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const v2, 0xea60

    .line 54
    .line 55
    .line 56
    mul-int/2addr v1, v2

    .line 57
    mul-int/lit8 v0, v0, 0x64

    .line 58
    .line 59
    int-to-float v0, v0

    .line 60
    int-to-float v1, v1

    .line 61
    div-float/2addr v0, v1

    .line 62
    float-to-double v0, v0

    .line 63
    double-to-int v0, v0

    .line 64
    const/16 v1, 0x5f

    .line 65
    .line 66
    if-le v0, v1, :cond_0

    .line 67
    .line 68
    iget-object v0, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 69
    .line 70
    invoke-virtual {v0}, Lflix/com/vision/models/Movie;->isSeries()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lflix/com/vision/App;->r:LP4/e;

    .line 81
    .line 82
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->x:Lflix/com/vision/models/Movie;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, LP4/e;->markAsWatched(Lflix/com/vision/models/Movie;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 92
    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->N:Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    .line 105
    .line 106
    :cond_0
    invoke-super {p0}, Lflix/com/vision/activities/base/a;->onResume()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "sources"

    .line 5
    .line 6
    iget-object v1, p0, Lflix/com/vision/activities/LinksActivity;->w:Lflix/com/vision/models/MySourceArrayList;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public unlockLinkAllRebrid(Lflix/com/vision/models/VideoSource;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lflix/com/vision/App;->isADSupported(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "rapidgator.net"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, LD4/a;->unlockLinkAllDebrid(Ljava/lang/String;)Lio/reactivex/Observable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ly4/S;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, p0, p1, v2}, Ly4/S;-><init>(Lflix/com/vision/activities/LinksActivity;Lflix/com/vision/models/VideoSource;I)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lx4/d;

    .line 46
    .line 47
    const/4 v2, 0x7

    .line 48
    invoke-direct {p1, v2}, Lx4/d;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 52
    .line 53
    .line 54
    return-void
.end method
