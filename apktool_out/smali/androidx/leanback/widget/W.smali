.class public abstract Landroidx/leanback/widget/W;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, LE/c;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    array-length v2, p0

    .line 32
    array-length v3, p0

    .line 33
    array-length v4, v1

    .line 34
    add-int/2addr v3, v4

    .line 35
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 v3, 0x0

    .line 40
    array-length v4, v1

    .line 41
    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v0, p0}, LE/c;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v0, p2}, LE/c;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    if-eqz p3, :cond_1

    .line 64
    .line 65
    invoke-static {v0, p3}, LE/c;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eq p0, v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ll/N;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public static b(I)Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_4
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 37
    .line 38
    return-object p0
.end method

.method public static c(Lcom/bumptech/glide/c;Ljava/util/List;LA2/a;)Lcom/bumptech/glide/j;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/c;->getBitmapPool()Lo2/d;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/c;->getArrayPool()Lo2/b;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v4, v0, Lcom/bumptech/glide/c;->f:Lcom/bumptech/glide/h;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v4}, Lcom/bumptech/glide/h;->getExperiments()Lcom/bumptech/glide/i;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v6, Lcom/bumptech/glide/j;

    .line 22
    .line 23
    invoke-direct {v6}, Lcom/bumptech/glide/j;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v7, Lu2/n;

    .line 27
    .line 28
    invoke-direct {v7}, Lu2/n;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/j;->register(Ll2/c;)Lcom/bumptech/glide/j;

    .line 32
    .line 33
    .line 34
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v8, 0x1b

    .line 37
    .line 38
    if-lt v7, v8, :cond_0

    .line 39
    .line 40
    new-instance v8, Lu2/B;

    .line 41
    .line 42
    invoke-direct {v8}, Lu2/B;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v8}, Lcom/bumptech/glide/j;->register(Ll2/c;)Lcom/bumptech/glide/j;

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v6}, Lcom/bumptech/glide/j;->getImageHeaderParsers()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    new-instance v10, Ly2/a;

    .line 57
    .line 58
    invoke-direct {v10, v5, v9, v2, v3}, Ly2/a;-><init>(Landroid/content/Context;Ljava/util/List;Lo2/d;Lo2/b;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/b;->parcel(Lo2/d;)Ll2/r;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    new-instance v12, Lu2/x;

    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/bumptech/glide/j;->getImageHeaderParsers()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    invoke-direct {v12, v13, v14, v2, v3}, Lu2/x;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lo2/d;Lo2/b;)V

    .line 76
    .line 77
    .line 78
    const/16 v13, 0x1c

    .line 79
    .line 80
    if-lt v7, v13, :cond_1

    .line 81
    .line 82
    const-class v14, Lcom/bumptech/glide/e;

    .line 83
    .line 84
    invoke-virtual {v4, v14}, Lcom/bumptech/glide/i;->isEnabled(Ljava/lang/Class;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_1

    .line 89
    .line 90
    new-instance v4, Lu2/I;

    .line 91
    .line 92
    invoke-direct {v4}, Lu2/I;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v14, Lu2/h;

    .line 96
    .line 97
    invoke-direct {v14}, Lu2/h;-><init>()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    new-instance v14, Lu2/g;

    .line 102
    .line 103
    invoke-direct {v14, v12}, Lu2/g;-><init>(Lu2/x;)V

    .line 104
    .line 105
    .line 106
    new-instance v4, Lu2/N;

    .line 107
    .line 108
    invoke-direct {v4, v12, v3}, Lu2/N;-><init>(Lu2/x;Lo2/b;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    const-string v15, "Animation"

    .line 112
    .line 113
    const-class v13, Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    const-class v1, Ljava/io/InputStream;

    .line 118
    .line 119
    move-object/from16 v17, v10

    .line 120
    .line 121
    const/16 v10, 0x1c

    .line 122
    .line 123
    if-lt v7, v10, :cond_2

    .line 124
    .line 125
    invoke-static {v9, v3}, Lw2/d;->streamDecoder(Ljava/util/List;Lo2/b;)Ll2/r;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-virtual {v6, v15, v1, v0, v10}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 130
    .line 131
    .line 132
    invoke-static {v9, v3}, Lw2/d;->byteBufferDecoder(Ljava/util/List;Lo2/b;)Ll2/r;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    invoke-virtual {v6, v15, v13, v0, v10}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 137
    .line 138
    .line 139
    :cond_2
    new-instance v10, Lw2/h;

    .line 140
    .line 141
    invoke-direct {v10, v5}, Lw2/h;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    move/from16 v16, v7

    .line 145
    .line 146
    new-instance v7, Lu2/c;

    .line 147
    .line 148
    invoke-direct {v7, v3}, Lu2/c;-><init>(Lo2/b;)V

    .line 149
    .line 150
    .line 151
    move-object/from16 v18, v5

    .line 152
    .line 153
    new-instance v5, Lz2/a;

    .line 154
    .line 155
    invoke-direct {v5}, Lz2/a;-><init>()V

    .line 156
    .line 157
    .line 158
    move-object/from16 v19, v5

    .line 159
    .line 160
    new-instance v5, Lz2/d;

    .line 161
    .line 162
    invoke-direct {v5}, Lz2/d;-><init>()V

    .line 163
    .line 164
    .line 165
    move-object/from16 v20, v5

    .line 166
    .line 167
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    move-object/from16 v21, v5

    .line 172
    .line 173
    new-instance v5, Lr2/l;

    .line 174
    .line 175
    invoke-direct {v5}, Lr2/l;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v13, v5}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ll2/a;)Lcom/bumptech/glide/j;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    move-object/from16 v22, v0

    .line 183
    .line 184
    new-instance v0, Lr2/n0;

    .line 185
    .line 186
    invoke-direct {v0, v3}, Lr2/n0;-><init>(Lo2/b;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v1, v0}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ll2/a;)Lcom/bumptech/glide/j;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v5, "Bitmap"

    .line 194
    .line 195
    move-object/from16 v23, v10

    .line 196
    .line 197
    const-class v10, Landroid/graphics/Bitmap;

    .line 198
    .line 199
    invoke-virtual {v0, v5, v13, v10, v14}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0, v5, v1, v10, v4}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 204
    .line 205
    .line 206
    invoke-static {}, Lcom/bumptech/glide/load/data/t;->isSupported()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    move/from16 v24, v0

    .line 211
    .line 212
    const-class v0, Landroid/os/ParcelFileDescriptor;

    .line 213
    .line 214
    if-eqz v24, :cond_3

    .line 215
    .line 216
    move-object/from16 v24, v15

    .line 217
    .line 218
    new-instance v15, Lu2/K;

    .line 219
    .line 220
    invoke-direct {v15, v12}, Lu2/K;-><init>(Lu2/x;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v5, v0, v10, v15}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_3
    move-object/from16 v24, v15

    .line 228
    .line 229
    :goto_1
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/b;->asset(Lo2/d;)Ll2/r;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    const-class v15, Landroid/content/res/AssetFileDescriptor;

    .line 234
    .line 235
    invoke-virtual {v6, v5, v15, v10, v12}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v5, v0, v10, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    move-object/from16 v25, v15

    .line 243
    .line 244
    invoke-static {}, Lr2/s0;->getInstance()Lr2/s0;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    invoke-virtual {v12, v10, v10, v15}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 249
    .line 250
    .line 251
    move-result-object v12

    .line 252
    new-instance v15, Lu2/S;

    .line 253
    .line 254
    invoke-direct {v15}, Lu2/S;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v12, v5, v10, v10, v15}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 258
    .line 259
    .line 260
    move-result-object v12

    .line 261
    invoke-virtual {v12, v10, v7}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ll2/s;)Lcom/bumptech/glide/j;

    .line 262
    .line 263
    .line 264
    move-result-object v12

    .line 265
    new-instance v15, Lu2/a;

    .line 266
    .line 267
    invoke-direct {v15, v8, v14}, Lu2/a;-><init>(Landroid/content/res/Resources;Ll2/r;)V

    .line 268
    .line 269
    .line 270
    const-string v14, "BitmapDrawable"

    .line 271
    .line 272
    move-object/from16 v26, v6

    .line 273
    .line 274
    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 275
    .line 276
    invoke-virtual {v12, v14, v13, v6, v15}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    new-instance v15, Lu2/a;

    .line 281
    .line 282
    invoke-direct {v15, v8, v4}, Lu2/a;-><init>(Landroid/content/res/Resources;Ll2/r;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v12, v14, v1, v6, v15}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    new-instance v12, Lu2/a;

    .line 290
    .line 291
    invoke-direct {v12, v8, v11}, Lu2/a;-><init>(Landroid/content/res/Resources;Ll2/r;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v14, v0, v6, v12}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    new-instance v11, Lu2/b;

    .line 299
    .line 300
    invoke-direct {v11, v2, v7}, Lu2/b;-><init>(Lo2/d;Ll2/s;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v6, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ll2/s;)Lcom/bumptech/glide/j;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    new-instance v7, Ly2/n;

    .line 308
    .line 309
    move-object/from16 v11, v17

    .line 310
    .line 311
    invoke-direct {v7, v9, v11, v3}, Ly2/n;-><init>(Ljava/util/List;Ll2/r;Lo2/b;)V

    .line 312
    .line 313
    .line 314
    const-class v9, Ly2/d;

    .line 315
    .line 316
    move-object/from16 v12, v24

    .line 317
    .line 318
    invoke-virtual {v4, v12, v1, v9, v7}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-virtual {v4, v12, v13, v9, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    new-instance v7, Ly2/e;

    .line 327
    .line 328
    invoke-direct {v7}, Ly2/e;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v9, v7}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ll2/s;)Lcom/bumptech/glide/j;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-static {}, Lr2/s0;->getInstance()Lr2/s0;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    const-class v11, Lk2/b;

    .line 340
    .line 341
    invoke-virtual {v4, v11, v11, v7}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    new-instance v7, Ly2/l;

    .line 346
    .line 347
    invoke-direct {v7, v2}, Ly2/l;-><init>(Lo2/d;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v5, v11, v10, v7}, Lcom/bumptech/glide/j;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    const-class v5, Landroid/net/Uri;

    .line 355
    .line 356
    move-object/from16 v7, v22

    .line 357
    .line 358
    move-object/from16 v11, v23

    .line 359
    .line 360
    invoke-virtual {v4, v5, v7, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    new-instance v12, Lu2/L;

    .line 365
    .line 366
    invoke-direct {v12, v11, v2}, Lu2/L;-><init>(Lw2/h;Lo2/d;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4, v5, v10, v12}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    new-instance v11, Lv2/a;

    .line 374
    .line 375
    invoke-direct {v11}, Lv2/a;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v11}, Lcom/bumptech/glide/j;->register(Lcom/bumptech/glide/load/data/f;)Lcom/bumptech/glide/j;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    new-instance v11, Lr2/n;

    .line 383
    .line 384
    invoke-direct {v11}, Lr2/n;-><init>()V

    .line 385
    .line 386
    .line 387
    const-class v12, Ljava/io/File;

    .line 388
    .line 389
    invoke-virtual {v4, v12, v13, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    new-instance v11, Lr2/G;

    .line 394
    .line 395
    invoke-direct {v11}, Lr2/G;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4, v12, v1, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    new-instance v11, Lx2/a;

    .line 403
    .line 404
    invoke-direct {v11}, Lx2/a;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v4, v12, v12, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    new-instance v11, Lr2/C;

    .line 412
    .line 413
    invoke-direct {v11}, Lr2/C;-><init>()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4, v12, v0, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-static {}, Lr2/s0;->getInstance()Lr2/s0;

    .line 421
    .line 422
    .line 423
    move-result-object v11

    .line 424
    invoke-virtual {v4, v12, v12, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    new-instance v11, Lcom/bumptech/glide/load/data/p;

    .line 429
    .line 430
    invoke-direct {v11, v3}, Lcom/bumptech/glide/load/data/p;-><init>(Lo2/b;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4, v11}, Lcom/bumptech/glide/j;->register(Lcom/bumptech/glide/load/data/f;)Lcom/bumptech/glide/j;

    .line 434
    .line 435
    .line 436
    invoke-static {}, Lcom/bumptech/glide/load/data/t;->isSupported()Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-eqz v3, :cond_4

    .line 441
    .line 442
    new-instance v3, Lcom/bumptech/glide/load/data/s;

    .line 443
    .line 444
    invoke-direct {v3}, Lcom/bumptech/glide/load/data/s;-><init>()V

    .line 445
    .line 446
    .line 447
    move-object/from16 v4, v26

    .line 448
    .line 449
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/j;->register(Lcom/bumptech/glide/load/data/f;)Lcom/bumptech/glide/j;

    .line 450
    .line 451
    .line 452
    goto :goto_2

    .line 453
    :cond_4
    move-object/from16 v4, v26

    .line 454
    .line 455
    :goto_2
    invoke-static/range {v18 .. v18}, Lr2/z;->inputStreamFactory(Landroid/content/Context;)Lr2/W;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-static/range {v18 .. v18}, Lr2/z;->assetFileDescriptorFactory(Landroid/content/Context;)Lr2/W;

    .line 460
    .line 461
    .line 462
    move-result-object v11

    .line 463
    invoke-static/range {v18 .. v18}, Lr2/z;->drawableFactory(Landroid/content/Context;)Lr2/W;

    .line 464
    .line 465
    .line 466
    move-result-object v14

    .line 467
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 468
    .line 469
    move-object/from16 v17, v9

    .line 470
    .line 471
    invoke-virtual {v4, v15, v1, v3}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 472
    .line 473
    .line 474
    move-result-object v9

    .line 475
    move-object/from16 v22, v2

    .line 476
    .line 477
    const-class v2, Ljava/lang/Integer;

    .line 478
    .line 479
    invoke-virtual {v9, v2, v1, v3}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    move-object/from16 v9, v25

    .line 484
    .line 485
    invoke-virtual {v3, v15, v9, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    invoke-virtual {v3, v2, v9, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-virtual {v3, v15, v7, v14}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-virtual {v3, v2, v7, v14}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    invoke-static/range {v18 .. v18}, Lr2/m0;->newStreamFactory(Landroid/content/Context;)Lr2/W;

    .line 502
    .line 503
    .line 504
    move-result-object v11

    .line 505
    invoke-virtual {v3, v5, v1, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-static/range {v18 .. v18}, Lr2/m0;->newAssetFileDescriptorFactory(Landroid/content/Context;)Lr2/W;

    .line 510
    .line 511
    .line 512
    move-result-object v11

    .line 513
    invoke-virtual {v3, v5, v9, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 514
    .line 515
    .line 516
    new-instance v3, Lr2/i0;

    .line 517
    .line 518
    invoke-direct {v3, v8}, Lr2/i0;-><init>(Landroid/content/res/Resources;)V

    .line 519
    .line 520
    .line 521
    new-instance v11, Lr2/g0;

    .line 522
    .line 523
    invoke-direct {v11, v8}, Lr2/g0;-><init>(Landroid/content/res/Resources;)V

    .line 524
    .line 525
    .line 526
    new-instance v14, Lr2/h0;

    .line 527
    .line 528
    invoke-direct {v14, v8}, Lr2/h0;-><init>(Landroid/content/res/Resources;)V

    .line 529
    .line 530
    .line 531
    move-object/from16 v23, v6

    .line 532
    .line 533
    invoke-virtual {v4, v2, v5, v3}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 534
    .line 535
    .line 536
    move-result-object v6

    .line 537
    invoke-virtual {v6, v15, v5, v3}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    invoke-virtual {v3, v2, v9, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-virtual {v3, v15, v9, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-virtual {v3, v2, v1, v14}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    invoke-virtual {v2, v15, v1, v14}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 554
    .line 555
    .line 556
    new-instance v2, Lr2/s;

    .line 557
    .line 558
    invoke-direct {v2}, Lr2/s;-><init>()V

    .line 559
    .line 560
    .line 561
    const-class v3, Ljava/lang/String;

    .line 562
    .line 563
    invoke-virtual {v4, v3, v1, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    new-instance v6, Lr2/s;

    .line 568
    .line 569
    invoke-direct {v6}, Lr2/s;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2, v5, v1, v6}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    new-instance v6, Lr2/q0;

    .line 577
    .line 578
    invoke-direct {v6}, Lr2/q0;-><init>()V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2, v3, v1, v6}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    new-instance v6, Lr2/p0;

    .line 586
    .line 587
    invoke-direct {v6}, Lr2/p0;-><init>()V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v2, v3, v0, v6}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    new-instance v6, Lr2/o0;

    .line 595
    .line 596
    invoke-direct {v6}, Lr2/o0;-><init>()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2, v3, v9, v6}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    new-instance v3, Lr2/c;

    .line 604
    .line 605
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 606
    .line 607
    .line 608
    move-result-object v6

    .line 609
    invoke-direct {v3, v6}, Lr2/c;-><init>(Landroid/content/res/AssetManager;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v2, v5, v1, v3}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    new-instance v3, Lr2/b;

    .line 617
    .line 618
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 619
    .line 620
    .line 621
    move-result-object v6

    .line 622
    invoke-direct {v3, v6}, Lr2/b;-><init>(Landroid/content/res/AssetManager;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v2, v5, v9, v3}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    new-instance v3, Ls2/c;

    .line 630
    .line 631
    move-object/from16 v6, v18

    .line 632
    .line 633
    invoke-direct {v3, v6}, Ls2/c;-><init>(Landroid/content/Context;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2, v5, v1, v3}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    new-instance v3, Ls2/e;

    .line 641
    .line 642
    invoke-direct {v3, v6}, Ls2/e;-><init>(Landroid/content/Context;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v2, v5, v1, v3}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 646
    .line 647
    .line 648
    const/16 v2, 0x1d

    .line 649
    .line 650
    move/from16 v3, v16

    .line 651
    .line 652
    if-lt v3, v2, :cond_5

    .line 653
    .line 654
    new-instance v2, Ls2/i;

    .line 655
    .line 656
    invoke-direct {v2, v6}, Ls2/i;-><init>(Landroid/content/Context;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v4, v5, v1, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 660
    .line 661
    .line 662
    new-instance v2, Ls2/h;

    .line 663
    .line 664
    invoke-direct {v2, v6}, Ls2/h;-><init>(Landroid/content/Context;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4, v5, v0, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 668
    .line 669
    .line 670
    :cond_5
    new-instance v2, Lr2/y0;

    .line 671
    .line 672
    move-object/from16 v3, v21

    .line 673
    .line 674
    invoke-direct {v2, v3}, Lr2/y0;-><init>(Landroid/content/ContentResolver;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v4, v5, v1, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    new-instance v11, Lr2/w0;

    .line 682
    .line 683
    invoke-direct {v11, v3}, Lr2/w0;-><init>(Landroid/content/ContentResolver;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v2, v5, v0, v11}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    new-instance v2, Lr2/v0;

    .line 691
    .line 692
    invoke-direct {v2, v3}, Lr2/v0;-><init>(Landroid/content/ContentResolver;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v0, v5, v9, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    new-instance v2, Lr2/A0;

    .line 700
    .line 701
    invoke-direct {v2}, Lr2/A0;-><init>()V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v0, v5, v1, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    new-instance v2, Ls2/l;

    .line 709
    .line 710
    invoke-direct {v2}, Ls2/l;-><init>()V

    .line 711
    .line 712
    .line 713
    const-class v3, Ljava/net/URL;

    .line 714
    .line 715
    invoke-virtual {v0, v3, v1, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    new-instance v2, Lr2/N;

    .line 720
    .line 721
    invoke-direct {v2, v6}, Lr2/N;-><init>(Landroid/content/Context;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0, v5, v12, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    new-instance v2, Ls2/a;

    .line 729
    .line 730
    invoke-direct {v2}, Ls2/a;-><init>()V

    .line 731
    .line 732
    .line 733
    const-class v3, Lr2/I;

    .line 734
    .line 735
    invoke-virtual {v0, v3, v1, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    new-instance v2, Lr2/f;

    .line 740
    .line 741
    invoke-direct {v2}, Lr2/f;-><init>()V

    .line 742
    .line 743
    .line 744
    const-class v3, [B

    .line 745
    .line 746
    invoke-virtual {v0, v3, v13, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    new-instance v2, Lr2/j;

    .line 751
    .line 752
    invoke-direct {v2}, Lr2/j;-><init>()V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v3, v1, v2}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-static {}, Lr2/s0;->getInstance()Lr2/s0;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    invoke-virtual {v0, v5, v5, v1}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    invoke-static {}, Lr2/s0;->getInstance()Lr2/s0;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    invoke-virtual {v0, v7, v7, v1}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Lr2/W;)Lcom/bumptech/glide/j;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    new-instance v1, Lw2/i;

    .line 776
    .line 777
    invoke-direct {v1}, Lw2/i;-><init>()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v0, v7, v7, v1}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    new-instance v1, Lz2/b;

    .line 785
    .line 786
    invoke-direct {v1, v8}, Lz2/b;-><init>(Landroid/content/res/Resources;)V

    .line 787
    .line 788
    .line 789
    move-object/from16 v2, v23

    .line 790
    .line 791
    invoke-virtual {v0, v10, v2, v1}, Lcom/bumptech/glide/j;->register(Ljava/lang/Class;Ljava/lang/Class;Lz2/e;)Lcom/bumptech/glide/j;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    move-object/from16 v1, v19

    .line 796
    .line 797
    invoke-virtual {v0, v10, v3, v1}, Lcom/bumptech/glide/j;->register(Ljava/lang/Class;Ljava/lang/Class;Lz2/e;)Lcom/bumptech/glide/j;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    new-instance v5, Lz2/c;

    .line 802
    .line 803
    move-object/from16 v11, v20

    .line 804
    .line 805
    move-object/from16 v9, v22

    .line 806
    .line 807
    invoke-direct {v5, v9, v1, v11}, Lz2/c;-><init>(Lo2/d;Lz2/e;Lz2/e;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0, v7, v3, v5}, Lcom/bumptech/glide/j;->register(Ljava/lang/Class;Ljava/lang/Class;Lz2/e;)Lcom/bumptech/glide/j;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    move-object/from16 v1, v17

    .line 815
    .line 816
    invoke-virtual {v0, v1, v3, v11}, Lcom/bumptech/glide/j;->register(Ljava/lang/Class;Ljava/lang/Class;Lz2/e;)Lcom/bumptech/glide/j;

    .line 817
    .line 818
    .line 819
    invoke-static {v9}, Lcom/bumptech/glide/load/resource/bitmap/b;->byteBuffer(Lo2/d;)Ll2/r;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-virtual {v4, v13, v10, v0}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 824
    .line 825
    .line 826
    new-instance v1, Lu2/a;

    .line 827
    .line 828
    invoke-direct {v1, v8, v0}, Lu2/a;-><init>(Landroid/content/res/Resources;Ll2/r;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v4, v13, v2, v1}, Lcom/bumptech/glide/j;->append(Ljava/lang/Class;Ljava/lang/Class;Ll2/r;)Lcom/bumptech/glide/j;

    .line 832
    .line 833
    .line 834
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 839
    .line 840
    .line 841
    move-result v1

    .line 842
    if-nez v1, :cond_7

    .line 843
    .line 844
    if-eqz p2, :cond_6

    .line 845
    .line 846
    move-object/from16 v0, p0

    .line 847
    .line 848
    move-object/from16 v1, p2

    .line 849
    .line 850
    invoke-virtual {v1, v6, v0, v4}, LA2/b;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/j;)V

    .line 851
    .line 852
    .line 853
    :cond_6
    return-object v4

    .line 854
    :cond_7
    invoke-static {v0}, Lb/c;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    throw v0
.end method

.method public static d(D)J
    .locals 3

    .line 1
    invoke-static {p0, p1}, Landroidx/leanback/widget/W;->e(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "not a normal value"

    .line 6
    .line 7
    invoke-static {v0, v1}, LP3/v;->checkArgument(ZLjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    const-wide v1, 0xfffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    and-long/2addr p0, v1

    .line 24
    const/16 v1, -0x3ff

    .line 25
    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    shl-long/2addr p0, v0

    .line 30
    return-wide p0

    .line 31
    :cond_0
    const-wide/high16 v0, 0x10000000000000L

    .line 32
    .line 33
    or-long/2addr p0, v0

    .line 34
    return-wide p0
.end method

.method public static e(D)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x3ff

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static f(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    instance-of p1, p0, Landroid/view/View;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static g(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    array-length v2, p0

    .line 29
    array-length v3, p0

    .line 30
    array-length v4, v1

    .line 31
    add-int/2addr v3, v4

    .line 32
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/4 v3, 0x0

    .line 37
    array-length v4, v1

    .line 38
    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-static {v0}, LE/c;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p2, p0}, LE/c;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ll/N;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method public static h(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 1
    invoke-static {p0}, LM/p0;->hasOnClickListeners(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move p1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, v1

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    :cond_1
    move v1, v2

    .line 17
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/4 v2, 0x2

    .line 33
    :goto_1
    invoke-static {p0, v2}, LM/p0;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
