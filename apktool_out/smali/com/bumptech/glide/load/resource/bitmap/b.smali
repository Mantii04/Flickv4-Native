.class public final Lcom/bumptech/glide/load/resource/bitmap/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/r;


# static fields
.field public static final d:Ll2/p;

.field public static final e:Ll2/p;

.field public static final f:Lu2/Z;

.field public static final g:Ljava/util/List;


# instance fields
.field public final a:Lu2/Y;

.field public final b:Lo2/d;

.field public final c:Lu2/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lu2/T;

    .line 8
    .line 9
    invoke-direct {v1}, Lu2/T;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Ll2/p;->disk(Ljava/lang/String;Ljava/lang/Object;Ll2/o;)Ll2/p;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/b;->d:Ll2/p;

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lu2/U;

    .line 26
    .line 27
    invoke-direct {v1}, Lu2/U;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    .line 31
    .line 32
    invoke-static {v2, v0, v1}, Ll2/p;->disk(Ljava/lang/String;Ljava/lang/Object;Ll2/o;)Ll2/p;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/b;->e:Ll2/p;

    .line 37
    .line 38
    new-instance v0, Lu2/Z;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/b;->f:Lu2/Z;

    .line 44
    .line 45
    const-string v0, "TP1A"

    .line 46
    .line 47
    const-string v1, "TD1A.220804.031"

    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/b;->g:Ljava/util/List;

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>(Lo2/d;Lu2/Y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->b:Lo2/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->a:Lu2/Y;

    .line 7
    .line 8
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/b;->f:Lu2/Z;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->c:Lu2/Z;

    .line 11
    .line 12
    return-void
.end method

.method public static asset(Lo2/d;)Ll2/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/d;",
            ")",
            "Ll2/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/b;

    .line 2
    .line 3
    new-instance v1, Lu2/V;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lo2/d;Lu2/Y;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static byteBuffer(Lo2/d;)Ll2/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/d;",
            ")",
            "Ll2/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/b;

    .line 2
    .line 3
    new-instance v1, Lu2/X;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lo2/d;Lu2/Y;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static parcel(Lo2/d;)Ll2/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/d;",
            ")",
            "Ll2/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/b;

    .line 2
    .line 3
    new-instance v1, Lu2/a0;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lo2/d;Lu2/Y;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;JIIILu2/u;)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    move-object v1, p2

    .line 2
    move/from16 v2, p6

    .line 3
    .line 4
    move/from16 v3, p7

    .line 5
    .line 6
    move-object/from16 v4, p8

    .line 7
    .line 8
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v7, 0x3

    .line 11
    const/4 v8, 0x0

    .line 12
    const-string v9, "VideoDecoder"

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    const-string v5, ".+_cheets|cheets_.+"

    .line 17
    .line 18
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    const/16 v0, 0xc

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v5, "video/webm"

    .line 31
    .line 32
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_5

    .line 39
    :cond_0
    new-instance v5, Landroid/media/MediaExtractor;

    .line 40
    .line 41
    invoke-direct {v5}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->a:Lu2/Y;

    .line 45
    .line 46
    invoke-interface {v0, v5, p1}, Lu2/Y;->initializeExtractor(Landroid/media/MediaExtractor;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v6, 0x0

    .line 54
    :goto_0
    if-ge v6, v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    const-string v11, "mime"

    .line 61
    .line 62
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    const-string v11, "video/x-vnd.on2.vp8"

    .line 67
    .line 68
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-nez v10, :cond_1

    .line 73
    .line 74
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 78
    .line 79
    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v1, "Cannot decode VP8 video on CrOS."

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 91
    .line 92
    .line 93
    goto :goto_5

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    move-object v5, v8

    .line 96
    :goto_2
    :try_start_2
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_3

    .line 101
    .line 102
    const-string v6, "Exception trying to extract track info for a webm video on CrOS."

    .line 103
    .line 104
    invoke-static {v9, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :catchall_2
    move-exception v0

    .line 109
    goto :goto_4

    .line 110
    :cond_3
    :goto_3
    if-eqz v5, :cond_5

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :goto_4
    if-eqz v5, :cond_4

    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 116
    .line 117
    .line 118
    :cond_4
    throw v0

    .line 119
    :cond_5
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    const/16 v5, 0x1b

    .line 122
    .line 123
    const/16 v10, 0x18

    .line 124
    .line 125
    if-lt v0, v5, :cond_8

    .line 126
    .line 127
    const/high16 v0, -0x80000000

    .line 128
    .line 129
    if-eq v2, v0, :cond_8

    .line 130
    .line 131
    if-eq v3, v0, :cond_8

    .line 132
    .line 133
    sget-object v0, Lu2/u;->d:Lu2/t;

    .line 134
    .line 135
    if-eq v4, v0, :cond_8

    .line 136
    .line 137
    const/16 v0, 0x12

    .line 138
    .line 139
    :try_start_3
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    const/16 v5, 0x13

    .line 148
    .line 149
    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    invoke-virtual {p2, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    const/16 v11, 0x5a

    .line 166
    .line 167
    if-eq v6, v11, :cond_6

    .line 168
    .line 169
    const/16 v11, 0x10e

    .line 170
    .line 171
    if-ne v6, v11, :cond_7

    .line 172
    .line 173
    :cond_6
    move v12, v5

    .line 174
    move v5, v0

    .line 175
    move v0, v12

    .line 176
    :cond_7
    invoke-virtual {v4, v0, v5, v2, v3}, Lu2/u;->getScaleFactor(IIII)F

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    int-to-float v0, v0

    .line 181
    mul-float/2addr v0, v2

    .line 182
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    int-to-float v3, v5

    .line 187
    mul-float/2addr v2, v3

    .line 188
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    move-wide/from16 v2, p3

    .line 193
    .line 194
    move/from16 v4, p5

    .line 195
    .line 196
    move v5, v0

    .line 197
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/dynamite/a;->a(Landroid/media/MediaMetadataRetriever;JIII)Landroid/graphics/Bitmap;

    .line 198
    .line 199
    .line 200
    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 201
    goto :goto_6

    .line 202
    :catchall_3
    move-exception v0

    .line 203
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_8

    .line 208
    .line 209
    const-string v2, "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame"

    .line 210
    .line 211
    invoke-static {v9, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .line 213
    .line 214
    :cond_8
    :goto_6
    if-nez v8, :cond_9

    .line 215
    .line 216
    invoke-virtual/range {p2 .. p5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    :cond_9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 221
    .line 222
    const-string v2, "Pixel"

    .line 223
    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    const/16 v2, 0x21

    .line 229
    .line 230
    if-eqz v0, :cond_b

    .line 231
    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 233
    .line 234
    if-ne v0, v2, :cond_b

    .line 235
    .line 236
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/b;->g:Ljava/util/List;

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_e

    .line 247
    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Ljava/lang/String;

    .line 253
    .line 254
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_a

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 264
    .line 265
    const/16 v3, 0x1e

    .line 266
    .line 267
    if-lt v0, v3, :cond_e

    .line 268
    .line 269
    if-ge v0, v2, :cond_e

    .line 270
    .line 271
    :goto_7
    const/16 v0, 0x24

    .line 272
    .line 273
    :try_start_4
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const/16 v2, 0x23

    .line 278
    .line 279
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    const/4 v3, 0x7

    .line 292
    const/4 v4, 0x6

    .line 293
    if-eq v0, v3, :cond_c

    .line 294
    .line 295
    if-ne v0, v4, :cond_e

    .line 296
    .line 297
    :cond_c
    if-ne v2, v4, :cond_e

    .line 298
    .line 299
    invoke-virtual {p2, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 308
    .line 309
    .line 310
    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 311
    const/16 v1, 0xb4

    .line 312
    .line 313
    if-ne v0, v1, :cond_e

    .line 314
    .line 315
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_d

    .line 320
    .line 321
    const-string v0, "Applying HDR 180 deg thumbnail correction"

    .line 322
    .line 323
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    :cond_d
    new-instance v0, Landroid/graphics/Matrix;

    .line 327
    .line 328
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    int-to-float v1, v1

    .line 336
    const/high16 v2, 0x40000000    # 2.0f

    .line 337
    .line 338
    div-float/2addr v1, v2

    .line 339
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    int-to-float v3, v3

    .line 344
    div-float/2addr v3, v2

    .line 345
    const/high16 v2, 0x43340000    # 180.0f

    .line 346
    .line 347
    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    const/4 v3, 0x0

    .line 359
    const/4 v4, 0x1

    .line 360
    const/4 v5, 0x0

    .line 361
    move-object/from16 p6, v0

    .line 362
    .line 363
    move/from16 p4, v1

    .line 364
    .line 365
    move/from16 p5, v2

    .line 366
    .line 367
    move/from16 p3, v3

    .line 368
    .line 369
    move/from16 p7, v4

    .line 370
    .line 371
    move p2, v5

    .line 372
    move-object p1, v8

    .line 373
    invoke-static/range {p1 .. p7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    goto :goto_8

    .line 378
    :catch_0
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_e

    .line 383
    .line 384
    const-string v0, "Exception trying to extract HDR transfer function or rotation"

    .line 385
    .line 386
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    :cond_e
    :goto_8
    if-eqz v8, :cond_f

    .line 390
    .line 391
    return-object v8

    .line 392
    :cond_f
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException;

    .line 393
    .line 394
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException;-><init>()V

    .line 395
    .line 396
    .line 397
    throw v0
.end method

.method public decode(Ljava/lang/Object;IILl2/q;)Ln2/M;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Ll2/q;",
            ")",
            "Ln2/M;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/b;->d:Ll2/p;

    .line 2
    .line 3
    invoke-virtual {p4, v0}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v0, v4, v0

    .line 16
    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    const-wide/16 v0, -0x1

    .line 20
    .line 21
    cmp-long v0, v4, v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p2, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    .line 29
    .line 30
    invoke-static {p2, v4, v5}, LA/i;->i(Ljava/lang/String;J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/b;->e:Ll2/p;

    .line 39
    .line 40
    invoke-virtual {p4, v0}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Integer;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_2
    sget-object v1, Lu2/u;->f:Ll2/p;

    .line 54
    .line 55
    invoke-virtual {p4, v1}, Ll2/q;->get(Ll2/p;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    check-cast p4, Lu2/u;

    .line 60
    .line 61
    if-nez p4, :cond_3

    .line 62
    .line 63
    sget-object p4, Lu2/u;->e:Lu2/r;

    .line 64
    .line 65
    :cond_3
    move-object v9, p4

    .line 66
    iget-object p4, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->c:Lu2/Z;

    .line 67
    .line 68
    invoke-virtual {p4}, Lu2/Z;->build()Landroid/media/MediaMetadataRetriever;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/16 p4, 0x1d

    .line 73
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->a:Lu2/Y;

    .line 75
    .line 76
    invoke-interface {v1, v3, p1}, Lu2/Y;->initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    move-object v1, p0

    .line 84
    move-object v2, p1

    .line 85
    move v7, p2

    .line 86
    move v8, p3

    .line 87
    :try_start_1
    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/load/resource/bitmap/b;->a(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;JIIILu2/u;)Landroid/graphics/Bitmap;

    .line 88
    .line 89
    .line 90
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    .line 93
    if-lt p2, p4, :cond_4

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 100
    .line 101
    .line 102
    :goto_1
    iget-object p2, v1, Lcom/bumptech/glide/load/resource/bitmap/b;->b:Lo2/d;

    .line 103
    .line 104
    invoke-static {p1, p2}, Lu2/e;->obtain(Landroid/graphics/Bitmap;Lo2/d;)Lu2/e;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    :goto_2
    move-object p1, v0

    .line 111
    goto :goto_3

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    move-object v1, p0

    .line 114
    goto :goto_2

    .line 115
    :goto_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 116
    .line 117
    if-lt p2, p4, :cond_5

    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 124
    .line 125
    .line 126
    :goto_4
    throw p1
.end method

.method public handles(Ljava/lang/Object;Ll2/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll2/q;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method
