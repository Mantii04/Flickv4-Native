.class public final Ll/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Ll/c2;

.field public c:Ll/c2;

.field public d:Ll/c2;

.field public e:Ll/c2;

.field public f:Ll/c2;

.field public g:Ll/c2;

.field public h:Ll/c2;

.field public final i:Ll/I0;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ll/y0;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Ll/y0;->k:I

    .line 9
    .line 10
    iput-object p1, p0, Ll/y0;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Ll/I0;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ll/I0;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ll/y0;->i:Ll/I0;

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Ll/I;I)Ll/c2;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Ll/I;->a:Ll/D1;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Ll/D1;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Ll/c2;

    .line 12
    .line 13
    invoke-direct {p1}, Ll/c2;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Ll/c2;->d:Z

    .line 18
    .line 19
    iput-object p0, p1, Ll/c2;->a:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Ll/c2;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll/y0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Ll/I;->a(Landroid/graphics/drawable/Drawable;Ll/c2;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Ll/y0;->b:Ll/c2;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Ll/y0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ll/y0;->c:Ll/c2;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Ll/y0;->d:Ll/c2;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Ll/y0;->e:Ll/c2;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Ll/y0;->b:Ll/c2;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Ll/y0;->a(Landroid/graphics/drawable/Drawable;Ll/c2;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Ll/y0;->c:Ll/c2;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Ll/y0;->a(Landroid/graphics/drawable/Drawable;Ll/c2;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Ll/y0;->d:Ll/c2;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Ll/y0;->a(Landroid/graphics/drawable/Drawable;Ll/c2;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Ll/y0;->e:Ll/c2;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Ll/y0;->a(Landroid/graphics/drawable/Drawable;Ll/c2;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Ll/y0;->f:Ll/c2;

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Ll/y0;->g:Ll/c2;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void

    .line 65
    :cond_3
    :goto_0
    invoke-static {v3}, Ll/t0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 70
    .line 71
    iget-object v3, p0, Ll/y0;->f:Ll/c2;

    .line 72
    .line 73
    invoke-virtual {p0, v2, v3}, Ll/y0;->a(Landroid/graphics/drawable/Drawable;Ll/c2;)V

    .line 74
    .line 75
    .line 76
    aget-object v0, v0, v1

    .line 77
    .line 78
    iget-object v1, p0, Ll/y0;->g:Ll/c2;

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Ll/y0;->a(Landroid/graphics/drawable/Drawable;Ll/c2;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/y0;->h:Ll/c2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Ll/c2;->a:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/y0;->h:Ll/c2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Ll/c2;->b:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move/from16 v6, p2

    .line 6
    .line 7
    iget-object v1, v0, Ll/y0;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    invoke-static {}, Ll/I;->get()Ll/I;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    invoke-static {v8, v4, v2, v6, v10}, Ll/e2;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Ll/e2;

    .line 21
    .line 22
    .line 23
    move-result-object v11

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 29
    .line 30
    invoke-virtual {v11}, Ll/e2;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-static/range {v1 .. v7}, LM/p0;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 36
    .line 37
    .line 38
    move-object v12, v1

    .line 39
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    .line 40
    .line 41
    const/4 v13, -0x1

    .line 42
    invoke-virtual {v11, v1, v13}, Ll/e2;->getResourceId(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 47
    .line 48
    invoke-virtual {v11, v2}, Ll/e2;->hasValue(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 55
    .line 56
    invoke-virtual {v11, v2, v10}, Ll/e2;->getResourceId(II)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v8, v9, v2}, Ll/y0;->c(Landroid/content/Context;Ll/I;I)Ll/c2;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput-object v2, v0, Ll/y0;->b:Ll/c2;

    .line 65
    .line 66
    :cond_0
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 67
    .line 68
    invoke-virtual {v11, v2}, Ll/e2;->hasValue(I)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 75
    .line 76
    invoke-virtual {v11, v2, v10}, Ll/e2;->getResourceId(II)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {v8, v9, v2}, Ll/y0;->c(Landroid/content/Context;Ll/I;I)Ll/c2;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, v0, Ll/y0;->c:Ll/c2;

    .line 85
    .line 86
    :cond_1
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 87
    .line 88
    invoke-virtual {v11, v2}, Ll/e2;->hasValue(I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 95
    .line 96
    invoke-virtual {v11, v2, v10}, Ll/e2;->getResourceId(II)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-static {v8, v9, v2}, Ll/y0;->c(Landroid/content/Context;Ll/I;I)Ll/c2;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iput-object v2, v0, Ll/y0;->d:Ll/c2;

    .line 105
    .line 106
    :cond_2
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 107
    .line 108
    invoke-virtual {v11, v2}, Ll/e2;->hasValue(I)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 115
    .line 116
    invoke-virtual {v11, v2, v10}, Ll/e2;->getResourceId(II)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-static {v8, v9, v2}, Ll/y0;->c(Landroid/content/Context;Ll/I;I)Ll/c2;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iput-object v2, v0, Ll/y0;->e:Ll/c2;

    .line 125
    .line 126
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 127
    .line 128
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 129
    .line 130
    invoke-virtual {v11, v3}, Ll/e2;->hasValue(I)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 137
    .line 138
    invoke-virtual {v11, v3, v10}, Ll/e2;->getResourceId(II)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-static {v8, v9, v3}, Ll/y0;->c(Landroid/content/Context;Ll/I;I)Ll/c2;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    iput-object v3, v0, Ll/y0;->f:Ll/c2;

    .line 147
    .line 148
    :cond_4
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 149
    .line 150
    invoke-virtual {v11, v3}, Ll/e2;->hasValue(I)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_5

    .line 155
    .line 156
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 157
    .line 158
    invoke-virtual {v11, v3, v10}, Ll/e2;->getResourceId(II)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-static {v8, v9, v3}, Ll/y0;->c(Landroid/content/Context;Ll/I;I)Ll/c2;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iput-object v3, v0, Ll/y0;->g:Ll/c2;

    .line 167
    .line 168
    :cond_5
    invoke-virtual {v11}, Ll/e2;->recycle()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v12}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    instance-of v3, v3, Landroid/text/method/PasswordTransformationMethod;

    .line 176
    .line 177
    const/16 v5, 0x1a

    .line 178
    .line 179
    if-eq v1, v13, :cond_9

    .line 180
    .line 181
    sget-object v7, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 182
    .line 183
    invoke-static {v8, v1, v7}, Ll/e2;->obtainStyledAttributes(Landroid/content/Context;I[I)Ll/e2;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-nez v3, :cond_6

    .line 188
    .line 189
    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 190
    .line 191
    invoke-virtual {v1, v7}, Ll/e2;->hasValue(I)Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_6

    .line 196
    .line 197
    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 198
    .line 199
    invoke-virtual {v1, v7, v10}, Ll/e2;->getBoolean(IZ)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    const/4 v15, 0x1

    .line 204
    goto :goto_0

    .line 205
    :cond_6
    move v7, v10

    .line 206
    move v15, v7

    .line 207
    :goto_0
    invoke-virtual {v0, v8, v1}, Ll/y0;->m(Landroid/content/Context;Ll/e2;)V

    .line 208
    .line 209
    .line 210
    sget v14, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    .line 211
    .line 212
    invoke-virtual {v1, v14}, Ll/e2;->hasValue(I)Z

    .line 213
    .line 214
    .line 215
    move-result v14

    .line 216
    if-eqz v14, :cond_7

    .line 217
    .line 218
    sget v14, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    .line 219
    .line 220
    invoke-virtual {v1, v14}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    goto :goto_1

    .line 225
    :cond_7
    const/4 v14, 0x0

    .line 226
    :goto_1
    if-lt v2, v5, :cond_8

    .line 227
    .line 228
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 229
    .line 230
    invoke-virtual {v1, v11}, Ll/e2;->hasValue(I)Z

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    if-eqz v11, :cond_8

    .line 235
    .line 236
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 237
    .line 238
    invoke-virtual {v1, v11}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    goto :goto_2

    .line 243
    :cond_8
    const/4 v11, 0x0

    .line 244
    :goto_2
    invoke-virtual {v1}, Ll/e2;->recycle()V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_9
    move v7, v10

    .line 249
    move v15, v7

    .line 250
    const/4 v11, 0x0

    .line 251
    const/4 v14, 0x0

    .line 252
    :goto_3
    sget-object v1, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 253
    .line 254
    invoke-static {v8, v4, v1, v6, v10}, Ll/e2;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Ll/e2;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    if-nez v3, :cond_a

    .line 259
    .line 260
    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 261
    .line 262
    invoke-virtual {v1, v13}, Ll/e2;->hasValue(I)Z

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    if-eqz v13, :cond_a

    .line 267
    .line 268
    sget v7, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 269
    .line 270
    invoke-virtual {v1, v7, v10}, Ll/e2;->getBoolean(IZ)Z

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    const/4 v15, 0x1

    .line 275
    :cond_a
    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    .line 276
    .line 277
    invoke-virtual {v1, v13}, Ll/e2;->hasValue(I)Z

    .line 278
    .line 279
    .line 280
    move-result v13

    .line 281
    if-eqz v13, :cond_b

    .line 282
    .line 283
    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    .line 284
    .line 285
    invoke-virtual {v1, v13}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v14

    .line 289
    :cond_b
    if-lt v2, v5, :cond_c

    .line 290
    .line 291
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 292
    .line 293
    invoke-virtual {v1, v5}, Ll/e2;->hasValue(I)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_c

    .line 298
    .line 299
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 300
    .line 301
    invoke-virtual {v1, v5}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v11

    .line 305
    :cond_c
    const/16 v5, 0x1c

    .line 306
    .line 307
    if-lt v2, v5, :cond_d

    .line 308
    .line 309
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 310
    .line 311
    invoke-virtual {v1, v5}, Ll/e2;->hasValue(I)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_d

    .line 316
    .line 317
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 318
    .line 319
    const/4 v13, -0x1

    .line 320
    invoke-virtual {v1, v5, v13}, Ll/e2;->getDimensionPixelSize(II)I

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    if-nez v5, :cond_d

    .line 325
    .line 326
    const/4 v5, 0x0

    .line 327
    invoke-virtual {v12, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 328
    .line 329
    .line 330
    :cond_d
    invoke-virtual {v0, v8, v1}, Ll/y0;->m(Landroid/content/Context;Ll/e2;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Ll/e2;->recycle()V

    .line 334
    .line 335
    .line 336
    if-nez v3, :cond_e

    .line 337
    .line 338
    if-eqz v15, :cond_e

    .line 339
    .line 340
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 341
    .line 342
    .line 343
    :cond_e
    iget-object v1, v0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 344
    .line 345
    if-eqz v1, :cond_10

    .line 346
    .line 347
    iget v3, v0, Ll/y0;->k:I

    .line 348
    .line 349
    const/4 v13, -0x1

    .line 350
    if-ne v3, v13, :cond_f

    .line 351
    .line 352
    iget v3, v0, Ll/y0;->j:I

    .line 353
    .line 354
    invoke-virtual {v12, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 355
    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_f
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 359
    .line 360
    .line 361
    :cond_10
    :goto_4
    if-eqz v11, :cond_11

    .line 362
    .line 363
    invoke-static {v12, v11}, Ll/w0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    :cond_11
    if-eqz v14, :cond_13

    .line 367
    .line 368
    const/16 v1, 0x18

    .line 369
    .line 370
    if-lt v2, v1, :cond_12

    .line 371
    .line 372
    invoke-static {v14}, Ll/v0;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v12, v1}, Ll/v0;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 377
    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_12
    const-string v1, ","

    .line 381
    .line 382
    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    aget-object v1, v1, v10

    .line 387
    .line 388
    invoke-static {v1}, Ll/u0;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-static {v12, v1}, Ll/t0;->c(Landroid/widget/TextView;Ljava/util/Locale;)V

    .line 393
    .line 394
    .line 395
    :cond_13
    :goto_5
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 396
    .line 397
    iget-object v11, v0, Ll/y0;->i:Ll/I0;

    .line 398
    .line 399
    iget-object v13, v11, Ll/I0;->j:Landroid/content/Context;

    .line 400
    .line 401
    invoke-virtual {v13, v4, v1, v6, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    iget-object v1, v11, Ll/I0;->i:Landroid/widget/TextView;

    .line 406
    .line 407
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 412
    .line 413
    const/4 v7, 0x0

    .line 414
    invoke-static/range {v1 .. v7}, LM/p0;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 415
    .line 416
    .line 417
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    .line 418
    .line 419
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_14

    .line 424
    .line 425
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    .line 426
    .line 427
    invoke-virtual {v5, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    iput v1, v11, Ll/I0;->a:I

    .line 432
    .line 433
    :cond_14
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    .line 434
    .line 435
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    const/high16 v2, -0x40800000    # -1.0f

    .line 440
    .line 441
    if-eqz v1, :cond_15

    .line 442
    .line 443
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    .line 444
    .line 445
    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    goto :goto_6

    .line 450
    :cond_15
    move v1, v2

    .line 451
    :goto_6
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    .line 452
    .line 453
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    if-eqz v3, :cond_16

    .line 458
    .line 459
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    .line 460
    .line 461
    invoke-virtual {v5, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    goto :goto_7

    .line 466
    :cond_16
    move v3, v2

    .line 467
    :goto_7
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    .line 468
    .line 469
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    if-eqz v6, :cond_17

    .line 474
    .line 475
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    .line 476
    .line 477
    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    goto :goto_8

    .line 482
    :cond_17
    move v6, v2

    .line 483
    :goto_8
    sget v7, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    .line 484
    .line 485
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-eqz v7, :cond_1a

    .line 490
    .line 491
    sget v7, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    .line 492
    .line 493
    invoke-virtual {v5, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    if-lez v7, :cond_1a

    .line 498
    .line 499
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 500
    .line 501
    .line 502
    move-result-object v14

    .line 503
    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    .line 508
    .line 509
    .line 510
    move-result v14

    .line 511
    new-array v15, v14, [I

    .line 512
    .line 513
    if-lez v14, :cond_19

    .line 514
    .line 515
    move/from16 p2, v2

    .line 516
    .line 517
    move v2, v10

    .line 518
    :goto_9
    if-ge v2, v14, :cond_18

    .line 519
    .line 520
    const/4 v10, -0x1

    .line 521
    invoke-virtual {v7, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 522
    .line 523
    .line 524
    move-result v18

    .line 525
    aput v18, v15, v2

    .line 526
    .line 527
    add-int/lit8 v2, v2, 0x1

    .line 528
    .line 529
    const/4 v10, 0x0

    .line 530
    goto :goto_9

    .line 531
    :cond_18
    invoke-static {v15}, Ll/I0;->b([I)[I

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    iput-object v2, v11, Ll/I0;->f:[I

    .line 536
    .line 537
    invoke-virtual {v11}, Ll/I0;->i()Z

    .line 538
    .line 539
    .line 540
    goto :goto_a

    .line 541
    :cond_19
    move/from16 p2, v2

    .line 542
    .line 543
    :goto_a
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 544
    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_1a
    move/from16 p2, v2

    .line 548
    .line 549
    :goto_b
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v11}, Ll/I0;->j()Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    const/4 v5, 0x2

    .line 557
    if-eqz v2, :cond_1f

    .line 558
    .line 559
    iget v2, v11, Ll/I0;->a:I

    .line 560
    .line 561
    const/4 v7, 0x1

    .line 562
    if-ne v2, v7, :cond_20

    .line 563
    .line 564
    iget-boolean v2, v11, Ll/I0;->g:Z

    .line 565
    .line 566
    if-nez v2, :cond_1e

    .line 567
    .line 568
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    cmpl-float v7, v3, p2

    .line 577
    .line 578
    if-nez v7, :cond_1b

    .line 579
    .line 580
    const/high16 v3, 0x41400000    # 12.0f

    .line 581
    .line 582
    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 583
    .line 584
    .line 585
    move-result v3

    .line 586
    :cond_1b
    cmpl-float v7, v6, p2

    .line 587
    .line 588
    if-nez v7, :cond_1c

    .line 589
    .line 590
    const/high16 v6, 0x42e00000    # 112.0f

    .line 591
    .line 592
    invoke-static {v5, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 593
    .line 594
    .line 595
    move-result v6

    .line 596
    :cond_1c
    cmpl-float v2, v1, p2

    .line 597
    .line 598
    if-nez v2, :cond_1d

    .line 599
    .line 600
    const/high16 v1, 0x3f800000    # 1.0f

    .line 601
    .line 602
    :cond_1d
    invoke-virtual {v11, v3, v6, v1}, Ll/I0;->k(FFF)V

    .line 603
    .line 604
    .line 605
    :cond_1e
    invoke-virtual {v11}, Ll/I0;->h()Z

    .line 606
    .line 607
    .line 608
    goto :goto_c

    .line 609
    :cond_1f
    const/4 v1, 0x0

    .line 610
    iput v1, v11, Ll/I0;->a:I

    .line 611
    .line 612
    :cond_20
    :goto_c
    sget-boolean v1, Ll/z2;->b:Z

    .line 613
    .line 614
    if-eqz v1, :cond_22

    .line 615
    .line 616
    iget v1, v11, Ll/I0;->a:I

    .line 617
    .line 618
    if-eqz v1, :cond_22

    .line 619
    .line 620
    iget-object v1, v11, Ll/I0;->f:[I

    .line 621
    .line 622
    array-length v2, v1

    .line 623
    if-lez v2, :cond_22

    .line 624
    .line 625
    invoke-static {v12}, Ll/w0;->a(Landroid/widget/TextView;)I

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    int-to-float v2, v2

    .line 630
    cmpl-float v2, v2, p2

    .line 631
    .line 632
    if-eqz v2, :cond_21

    .line 633
    .line 634
    iget v1, v11, Ll/I0;->d:F

    .line 635
    .line 636
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    iget v2, v11, Ll/I0;->e:F

    .line 641
    .line 642
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 643
    .line 644
    .line 645
    move-result v2

    .line 646
    iget v3, v11, Ll/I0;->c:F

    .line 647
    .line 648
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 649
    .line 650
    .line 651
    move-result v3

    .line 652
    const/4 v6, 0x0

    .line 653
    invoke-static {v12, v1, v2, v3, v6}, Ll/w0;->b(Landroid/widget/TextView;IIII)V

    .line 654
    .line 655
    .line 656
    goto :goto_d

    .line 657
    :cond_21
    const/4 v6, 0x0

    .line 658
    invoke-static {v12, v1, v6}, Ll/w0;->c(Landroid/widget/TextView;[II)V

    .line 659
    .line 660
    .line 661
    :cond_22
    :goto_d
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 662
    .line 663
    invoke-static {v8, v4, v1}, Ll/e2;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ll/e2;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    .line 668
    .line 669
    const/4 v13, -0x1

    .line 670
    invoke-virtual {v1, v2, v13}, Ll/e2;->getResourceId(II)I

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    if-eq v2, v13, :cond_23

    .line 675
    .line 676
    invoke-virtual {v9, v8, v2}, Ll/I;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    goto :goto_e

    .line 681
    :cond_23
    const/4 v2, 0x0

    .line 682
    :goto_e
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    .line 683
    .line 684
    invoke-virtual {v1, v3, v13}, Ll/e2;->getResourceId(II)I

    .line 685
    .line 686
    .line 687
    move-result v3

    .line 688
    if-eq v3, v13, :cond_24

    .line 689
    .line 690
    invoke-virtual {v9, v8, v3}, Ll/I;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 691
    .line 692
    .line 693
    move-result-object v3

    .line 694
    goto :goto_f

    .line 695
    :cond_24
    const/4 v3, 0x0

    .line 696
    :goto_f
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    .line 697
    .line 698
    invoke-virtual {v1, v4, v13}, Ll/e2;->getResourceId(II)I

    .line 699
    .line 700
    .line 701
    move-result v4

    .line 702
    if-eq v4, v13, :cond_25

    .line 703
    .line 704
    invoke-virtual {v9, v8, v4}, Ll/I;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    goto :goto_10

    .line 709
    :cond_25
    const/4 v4, 0x0

    .line 710
    :goto_10
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    .line 711
    .line 712
    invoke-virtual {v1, v6, v13}, Ll/e2;->getResourceId(II)I

    .line 713
    .line 714
    .line 715
    move-result v6

    .line 716
    if-eq v6, v13, :cond_26

    .line 717
    .line 718
    invoke-virtual {v9, v8, v6}, Ll/I;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 719
    .line 720
    .line 721
    move-result-object v6

    .line 722
    goto :goto_11

    .line 723
    :cond_26
    const/4 v6, 0x0

    .line 724
    :goto_11
    sget v7, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    .line 725
    .line 726
    invoke-virtual {v1, v7, v13}, Ll/e2;->getResourceId(II)I

    .line 727
    .line 728
    .line 729
    move-result v7

    .line 730
    if-eq v7, v13, :cond_27

    .line 731
    .line 732
    invoke-virtual {v9, v8, v7}, Ll/I;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 733
    .line 734
    .line 735
    move-result-object v7

    .line 736
    goto :goto_12

    .line 737
    :cond_27
    const/4 v7, 0x0

    .line 738
    :goto_12
    sget v10, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    .line 739
    .line 740
    invoke-virtual {v1, v10, v13}, Ll/e2;->getResourceId(II)I

    .line 741
    .line 742
    .line 743
    move-result v10

    .line 744
    if-eq v10, v13, :cond_28

    .line 745
    .line 746
    invoke-virtual {v9, v8, v10}, Ll/I;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 747
    .line 748
    .line 749
    move-result-object v8

    .line 750
    goto :goto_13

    .line 751
    :cond_28
    const/4 v8, 0x0

    .line 752
    :goto_13
    const/4 v9, 0x3

    .line 753
    if-nez v7, :cond_33

    .line 754
    .line 755
    if-eqz v8, :cond_29

    .line 756
    .line 757
    goto :goto_1b

    .line 758
    :cond_29
    if-nez v2, :cond_2a

    .line 759
    .line 760
    if-nez v3, :cond_2a

    .line 761
    .line 762
    if-nez v4, :cond_2a

    .line 763
    .line 764
    if-eqz v6, :cond_38

    .line 765
    .line 766
    :cond_2a
    invoke-static {v12}, Ll/t0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 767
    .line 768
    .line 769
    move-result-object v7

    .line 770
    const/16 v17, 0x0

    .line 771
    .line 772
    aget-object v8, v7, v17

    .line 773
    .line 774
    if-nez v8, :cond_30

    .line 775
    .line 776
    aget-object v10, v7, v5

    .line 777
    .line 778
    if-eqz v10, :cond_2b

    .line 779
    .line 780
    goto :goto_18

    .line 781
    :cond_2b
    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 782
    .line 783
    .line 784
    move-result-object v7

    .line 785
    if-eqz v2, :cond_2c

    .line 786
    .line 787
    goto :goto_14

    .line 788
    :cond_2c
    aget-object v2, v7, v17

    .line 789
    .line 790
    :goto_14
    if-eqz v3, :cond_2d

    .line 791
    .line 792
    goto :goto_15

    .line 793
    :cond_2d
    const/16 v16, 0x1

    .line 794
    .line 795
    aget-object v3, v7, v16

    .line 796
    .line 797
    :goto_15
    if-eqz v4, :cond_2e

    .line 798
    .line 799
    goto :goto_16

    .line 800
    :cond_2e
    aget-object v4, v7, v5

    .line 801
    .line 802
    :goto_16
    if-eqz v6, :cond_2f

    .line 803
    .line 804
    goto :goto_17

    .line 805
    :cond_2f
    aget-object v6, v7, v9

    .line 806
    .line 807
    :goto_17
    invoke-virtual {v12, v2, v3, v4, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 808
    .line 809
    .line 810
    goto :goto_20

    .line 811
    :cond_30
    :goto_18
    if-eqz v3, :cond_31

    .line 812
    .line 813
    goto :goto_19

    .line 814
    :cond_31
    const/16 v16, 0x1

    .line 815
    .line 816
    aget-object v3, v7, v16

    .line 817
    .line 818
    :goto_19
    aget-object v2, v7, v5

    .line 819
    .line 820
    if-eqz v6, :cond_32

    .line 821
    .line 822
    goto :goto_1a

    .line 823
    :cond_32
    aget-object v6, v7, v9

    .line 824
    .line 825
    :goto_1a
    invoke-static {v12, v8, v3, v2, v6}, Ll/t0;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 826
    .line 827
    .line 828
    goto :goto_20

    .line 829
    :cond_33
    :goto_1b
    invoke-static {v12}, Ll/t0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 830
    .line 831
    .line 832
    move-result-object v2

    .line 833
    if-eqz v7, :cond_34

    .line 834
    .line 835
    goto :goto_1c

    .line 836
    :cond_34
    const/16 v17, 0x0

    .line 837
    .line 838
    aget-object v7, v2, v17

    .line 839
    .line 840
    :goto_1c
    if-eqz v3, :cond_35

    .line 841
    .line 842
    goto :goto_1d

    .line 843
    :cond_35
    const/16 v16, 0x1

    .line 844
    .line 845
    aget-object v3, v2, v16

    .line 846
    .line 847
    :goto_1d
    if-eqz v8, :cond_36

    .line 848
    .line 849
    goto :goto_1e

    .line 850
    :cond_36
    aget-object v8, v2, v5

    .line 851
    .line 852
    :goto_1e
    if-eqz v6, :cond_37

    .line 853
    .line 854
    goto :goto_1f

    .line 855
    :cond_37
    aget-object v6, v2, v9

    .line 856
    .line 857
    :goto_1f
    invoke-static {v12, v7, v3, v8, v6}, Ll/t0;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 858
    .line 859
    .line 860
    :cond_38
    :goto_20
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    .line 861
    .line 862
    invoke-virtual {v1, v2}, Ll/e2;->hasValue(I)Z

    .line 863
    .line 864
    .line 865
    move-result v2

    .line 866
    if-eqz v2, :cond_39

    .line 867
    .line 868
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    .line 869
    .line 870
    invoke-virtual {v1, v2}, Ll/e2;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    invoke-static {v12, v2}, LS/A;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 875
    .line 876
    .line 877
    :cond_39
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 878
    .line 879
    invoke-virtual {v1, v2}, Ll/e2;->hasValue(I)Z

    .line 880
    .line 881
    .line 882
    move-result v2

    .line 883
    if-eqz v2, :cond_3a

    .line 884
    .line 885
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 886
    .line 887
    const/4 v13, -0x1

    .line 888
    invoke-virtual {v1, v2, v13}, Ll/e2;->getInt(II)I

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    const/4 v3, 0x0

    .line 893
    invoke-static {v2, v3}, Ll/P0;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 894
    .line 895
    .line 896
    move-result-object v2

    .line 897
    invoke-static {v12, v2}, LS/A;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 898
    .line 899
    .line 900
    goto :goto_21

    .line 901
    :cond_3a
    const/4 v13, -0x1

    .line 902
    :goto_21
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    .line 903
    .line 904
    invoke-virtual {v1, v2, v13}, Ll/e2;->getDimensionPixelSize(II)I

    .line 905
    .line 906
    .line 907
    move-result v2

    .line 908
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    .line 909
    .line 910
    invoke-virtual {v1, v3, v13}, Ll/e2;->getDimensionPixelSize(II)I

    .line 911
    .line 912
    .line 913
    move-result v3

    .line 914
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    .line 915
    .line 916
    invoke-virtual {v1, v4, v13}, Ll/e2;->getDimensionPixelSize(II)I

    .line 917
    .line 918
    .line 919
    move-result v4

    .line 920
    invoke-virtual {v1}, Ll/e2;->recycle()V

    .line 921
    .line 922
    .line 923
    if-eq v2, v13, :cond_3b

    .line 924
    .line 925
    invoke-static {v12, v2}, LS/A;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    .line 926
    .line 927
    .line 928
    :cond_3b
    if-eq v3, v13, :cond_3c

    .line 929
    .line 930
    invoke-static {v12, v3}, LS/A;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    .line 931
    .line 932
    .line 933
    :cond_3c
    if-eq v4, v13, :cond_3d

    .line 934
    .line 935
    invoke-static {v12, v4}, LS/A;->setLineHeight(Landroid/widget/TextView;I)V

    .line 936
    .line 937
    .line 938
    :cond_3d
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Ll/e2;->obtainStyledAttributes(Landroid/content/Context;I[I)Ll/e2;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ll/e2;->hasValue(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Ll/y0;->a:Landroid/widget/TextView;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 19
    .line 20
    invoke-virtual {p2, v0, v2}, Ll/e2;->getBoolean(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 30
    .line 31
    invoke-virtual {p2, v3}, Ll/e2;->hasValue(I)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    invoke-virtual {p2, v3, v4}, Ll/e2;->getDimensionPixelSize(II)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0, p1, p2}, Ll/y0;->m(Landroid/content/Context;Ll/e2;)V

    .line 51
    .line 52
    .line 53
    const/16 p1, 0x1a

    .line 54
    .line 55
    if-lt v0, p1, :cond_2

    .line 56
    .line 57
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ll/e2;->hasValue(I)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-static {v1, p1}, Ll/w0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p2}, Ll/e2;->recycle()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget p2, p0, Ll/y0;->j:I

    .line 84
    .line 85
    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public final h(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/y0;->i:Ll/I0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/I0;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Ll/I0;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Ll/I0;->k(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ll/I0;->h()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ll/I0;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final i([II)V
    .locals 6

    .line 1
    iget-object v0, p0, Ll/y0;->i:Ll/I0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/I0;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_3

    .line 12
    .line 13
    new-array v3, v1, [I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v4, v0, Ll/I0;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    .line 34
    aget v5, p1, v2

    .line 35
    .line 36
    int-to-float v5, v5

    .line 37
    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    aput v5, v3, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v3}, Ll/I0;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Ll/I0;->f:[I

    .line 55
    .line 56
    invoke-virtual {v0}, Ll/I0;->i()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "None of the preset sizes is valid: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :cond_3
    iput-boolean v2, v0, Ll/I0;->g:Z

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0}, Ll/I0;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Ll/I0;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final j(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ll/y0;->i:Ll/I0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/I0;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Ll/I0;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/high16 v1, 0x41400000    # 12.0f

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/high16 v3, 0x42e00000    # 112.0f

    .line 32
    .line 33
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1, v2}, Ll/I0;->k(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ll/I0;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ll/I0;->a()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "Unknown auto-size text type: "

    .line 55
    .line 56
    invoke-static {p1, v1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    iput p1, v0, Ll/I0;->a:I

    .line 66
    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    .line 68
    .line 69
    iput v1, v0, Ll/I0;->d:F

    .line 70
    .line 71
    iput v1, v0, Ll/I0;->e:F

    .line 72
    .line 73
    iput v1, v0, Ll/I0;->c:F

    .line 74
    .line 75
    new-array v1, p1, [I

    .line 76
    .line 77
    iput-object v1, v0, Ll/I0;->f:[I

    .line 78
    .line 79
    iput-boolean p1, v0, Ll/I0;->b:Z

    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/y0;->h:Ll/c2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ll/c2;

    .line 6
    .line 7
    invoke-direct {v0}, Ll/c2;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ll/y0;->h:Ll/c2;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ll/y0;->h:Ll/c2;

    .line 13
    .line 14
    iput-object p1, v0, Ll/c2;->a:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Ll/c2;->d:Z

    .line 22
    .line 23
    iput-object v0, p0, Ll/y0;->b:Ll/c2;

    .line 24
    .line 25
    iput-object v0, p0, Ll/y0;->c:Ll/c2;

    .line 26
    .line 27
    iput-object v0, p0, Ll/y0;->d:Ll/c2;

    .line 28
    .line 29
    iput-object v0, p0, Ll/y0;->e:Ll/c2;

    .line 30
    .line 31
    iput-object v0, p0, Ll/y0;->f:Ll/c2;

    .line 32
    .line 33
    iput-object v0, p0, Ll/y0;->g:Ll/c2;

    .line 34
    .line 35
    return-void
.end method

.method public final l(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/y0;->h:Ll/c2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ll/c2;

    .line 6
    .line 7
    invoke-direct {v0}, Ll/c2;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ll/y0;->h:Ll/c2;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ll/y0;->h:Ll/c2;

    .line 13
    .line 14
    iput-object p1, v0, Ll/c2;->b:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Ll/c2;->c:Z

    .line 22
    .line 23
    iput-object v0, p0, Ll/y0;->b:Ll/c2;

    .line 24
    .line 25
    iput-object v0, p0, Ll/y0;->c:Ll/c2;

    .line 26
    .line 27
    iput-object v0, p0, Ll/y0;->d:Ll/c2;

    .line 28
    .line 29
    iput-object v0, p0, Ll/y0;->e:Ll/c2;

    .line 30
    .line 31
    iput-object v0, p0, Ll/y0;->f:Ll/c2;

    .line 32
    .line 33
    iput-object v0, p0, Ll/y0;->g:Ll/c2;

    .line 34
    .line 35
    return-void
.end method

.method public final m(Landroid/content/Context;Ll/e2;)V
    .locals 10

    .line 1
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    .line 2
    .line 3
    iget v1, p0, Ll/y0;->j:I

    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Ll/e2;->getInt(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Ll/y0;->j:I

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, -0x1

    .line 15
    const/16 v3, 0x1c

    .line 16
    .line 17
    if-lt v0, v3, :cond_0

    .line 18
    .line 19
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    .line 20
    .line 21
    invoke-virtual {p2, v4, v2}, Ll/e2;->getInt(II)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iput v4, p0, Ll/y0;->k:I

    .line 26
    .line 27
    if-eq v4, v2, :cond_0

    .line 28
    .line 29
    iget v4, p0, Ll/y0;->j:I

    .line 30
    .line 31
    and-int/2addr v4, v1

    .line 32
    iput v4, p0, Ll/y0;->j:I

    .line 33
    .line 34
    :cond_0
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 35
    .line 36
    invoke-virtual {p2, v4}, Ll/e2;->hasValue(I)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x1

    .line 41
    const/4 v6, 0x0

    .line 42
    if-nez v4, :cond_5

    .line 43
    .line 44
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 45
    .line 46
    invoke-virtual {p2, v4}, Ll/e2;->hasValue(I)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ll/e2;->hasValue(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_e

    .line 60
    .line 61
    iput-boolean v6, p0, Ll/y0;->m:Z

    .line 62
    .line 63
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v5}, Ll/e2;->getInt(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eq p1, v5, :cond_4

    .line 70
    .line 71
    if-eq p1, v1, :cond_3

    .line 72
    .line 73
    const/4 p2, 0x3

    .line 74
    if-eq p1, p2, :cond_2

    .line 75
    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 79
    .line 80
    iput-object p1, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 84
    .line 85
    iput-object p1, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 89
    .line 90
    iput-object p1, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 91
    .line 92
    return-void

    .line 93
    :cond_5
    :goto_0
    const/4 v4, 0x0

    .line 94
    iput-object v4, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 95
    .line 96
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 97
    .line 98
    invoke-virtual {p2, v4}, Ll/e2;->hasValue(I)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_6

    .line 103
    .line 104
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 108
    .line 109
    :goto_1
    iget v7, p0, Ll/y0;->k:I

    .line 110
    .line 111
    iget v8, p0, Ll/y0;->j:I

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_b

    .line 118
    .line 119
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 120
    .line 121
    iget-object v9, p0, Ll/y0;->a:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-direct {p1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance v9, Ll/r0;

    .line 127
    .line 128
    invoke-direct {v9, p0, v7, v8, p1}, Ll/r0;-><init>(Ll/y0;IILjava/lang/ref/WeakReference;)V

    .line 129
    .line 130
    .line 131
    :try_start_0
    iget p1, p0, Ll/y0;->j:I

    .line 132
    .line 133
    invoke-virtual {p2, v4, p1, v9}, Ll/e2;->getFont(IILC/r;)Landroid/graphics/Typeface;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    if-lt v0, v3, :cond_8

    .line 140
    .line 141
    iget v0, p0, Ll/y0;->k:I

    .line 142
    .line 143
    if-eq v0, v2, :cond_8

    .line 144
    .line 145
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget v0, p0, Ll/y0;->k:I

    .line 150
    .line 151
    iget v7, p0, Ll/y0;->j:I

    .line 152
    .line 153
    and-int/2addr v7, v1

    .line 154
    if-eqz v7, :cond_7

    .line 155
    .line 156
    move v7, v5

    .line 157
    goto :goto_2

    .line 158
    :cond_7
    move v7, v6

    .line 159
    :goto_2
    invoke-static {p1, v0, v7}, Ll/x0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object p1, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    iput-object p1, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 167
    .line 168
    :cond_9
    :goto_3
    iget-object p1, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 169
    .line 170
    if-nez p1, :cond_a

    .line 171
    .line 172
    move p1, v5

    .line 173
    goto :goto_4

    .line 174
    :cond_a
    move p1, v6

    .line 175
    :goto_4
    iput-boolean p1, p0, Ll/y0;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    :catch_0
    :cond_b
    iget-object p1, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 178
    .line 179
    if-nez p1, :cond_e

    .line 180
    .line 181
    invoke-virtual {p2, v4}, Ll/e2;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p1, :cond_e

    .line 186
    .line 187
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 188
    .line 189
    if-lt p2, v3, :cond_d

    .line 190
    .line 191
    iget p2, p0, Ll/y0;->k:I

    .line 192
    .line 193
    if-eq p2, v2, :cond_d

    .line 194
    .line 195
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget p2, p0, Ll/y0;->k:I

    .line 200
    .line 201
    iget v0, p0, Ll/y0;->j:I

    .line 202
    .line 203
    and-int/2addr v0, v1

    .line 204
    if-eqz v0, :cond_c

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_c
    move v5, v6

    .line 208
    :goto_5
    invoke-static {p1, p2, v5}, Ll/x0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iput-object p1, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_d
    iget p2, p0, Ll/y0;->j:I

    .line 216
    .line 217
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iput-object p1, p0, Ll/y0;->l:Landroid/graphics/Typeface;

    .line 222
    .line 223
    :cond_e
    :goto_6
    return-void
.end method
