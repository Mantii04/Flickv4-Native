.class public final Li3/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lx3/I;


# static fields
.field public static final w:I

.field public static final x:I


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public final e:LG3/j;

.field public final f:Lx3/J;

.field public final j:Landroid/graphics/Rect;

.field public final m:Li3/d;

.field public n:F

.field public p:F

.field public final q:I

.field public r:F

.field public s:F

.field public t:F

.field public u:Ljava/lang/ref/WeakReference;

.field public v:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Badge:I

    .line 2
    .line 3
    sput v0, Li3/a;->w:I

    .line 4
    .line 5
    sget v0, Lcom/google/android/material/R$attr;->badgeStyle:I

    .line 6
    .line 7
    sput v0, Li3/a;->x:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Li3/a;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-static {p1}, Lx3/L;->checkMaterialTheme(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Li3/a;->j:Landroid/graphics/Rect;

    .line 20
    .line 21
    new-instance v1, Lx3/J;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lx3/J;-><init>(Lx3/I;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Li3/a;->f:Lx3/J;

    .line 27
    .line 28
    invoke-virtual {v1}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Li3/d;

    .line 38
    .line 39
    invoke-direct {v2, p1}, Li3/d;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Li3/a;->m:Li3/d;

    .line 43
    .line 44
    new-instance v3, LG3/j;

    .line 45
    .line 46
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object v2, v2, Li3/d;->b:Li3/c;

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    iget-object v4, v2, Li3/c;->p:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v4, v2, Li3/c;->m:Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    :goto_0
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    iget-object v5, v2, Li3/c;->q:Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object v5, v2, Li3/c;->n:Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    :goto_1
    invoke-static {p1, v4, v5}, LG3/p;->builder(Landroid/content/Context;II)LG3/n;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, LG3/n;->build()LG3/p;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {v3, p1}, LG3/j;-><init>(LG3/p;)V

    .line 95
    .line 96
    .line 97
    iput-object v3, p0, Li3/a;->e:LG3/j;

    .line 98
    .line 99
    invoke-virtual {p0}, Li3/a;->c()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/content/Context;

    .line 107
    .line 108
    if-nez p1, :cond_2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    new-instance v0, LC3/g;

    .line 112
    .line 113
    iget-object v4, v2, Li3/c;->j:Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-direct {v0, p1, v4}, LC3/g;-><init>(Landroid/content/Context;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lx3/J;->getTextAppearance()LC3/g;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-ne v4, v0, :cond_3

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {v1, v0, p1}, Lx3/J;->setTextAppearance(LC3/g;Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object v0, v2, Li3/c;->f:Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Li3/a;->d()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 152
    .line 153
    .line 154
    :goto_2
    invoke-virtual {p0}, Li3/a;->getMaxCharacterCount()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    const/4 v0, -0x2

    .line 159
    const/4 v4, 0x1

    .line 160
    if-eq p1, v0, :cond_4

    .line 161
    .line 162
    invoke-virtual {p0}, Li3/a;->getMaxCharacterCount()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    int-to-double v5, p1

    .line 167
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 168
    .line 169
    sub-double/2addr v5, v7

    .line 170
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 171
    .line 172
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 173
    .line 174
    .line 175
    move-result-wide v5

    .line 176
    double-to-int p1, v5

    .line 177
    sub-int/2addr p1, v4

    .line 178
    iput p1, p0, Li3/a;->q:I

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_4
    invoke-virtual {p0}, Li3/a;->getMaxNumber()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    iput p1, p0, Li3/a;->q:I

    .line 186
    .line 187
    :goto_3
    invoke-virtual {v1, v4}, Lx3/J;->setTextSizeDirty(Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Li3/a;->d()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v4}, Lx3/J;->setTextSizeDirty(Z)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Li3/a;->c()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Li3/a;->d()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p0}, Li3/a;->getAlpha()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 220
    .line 221
    .line 222
    iget-object p1, v2, Li3/c;->e:Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {v3}, LG3/j;->getFillColor()Landroid/content/res/ColorStateList;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-eq v0, p1, :cond_5

    .line 237
    .line 238
    invoke-virtual {v3, p1}, LG3/j;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 242
    .line 243
    .line 244
    :cond_5
    invoke-virtual {v1}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    iget-object v0, v2, Li3/c;->f:Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Li3/a;->u:Ljava/lang/ref/WeakReference;

    .line 261
    .line 262
    if-eqz p1, :cond_7

    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    if-eqz p1, :cond_7

    .line 269
    .line 270
    iget-object p1, p0, Li3/a;->u:Ljava/lang/ref/WeakReference;

    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    check-cast p1, Landroid/view/View;

    .line 277
    .line 278
    iget-object v0, p0, Li3/a;->v:Ljava/lang/ref/WeakReference;

    .line 279
    .line 280
    if-eqz v0, :cond_6

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Landroid/widget/FrameLayout;

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_6
    const/4 v0, 0x0

    .line 290
    :goto_4
    invoke-virtual {p0, p1, v0}, Li3/a;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 291
    .line 292
    .line 293
    :cond_7
    invoke-virtual {p0}, Li3/a;->d()V

    .line 294
    .line 295
    .line 296
    iget-object p1, v2, Li3/c;->C:Ljava/lang/Boolean;

    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method public static create(Landroid/content/Context;)Li3/a;
    .locals 1

    .line 1
    new-instance v0, Li3/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Li3/a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Li3/a;->q:I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual {p0}, Li3/a;->hasText()Z

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    const-string v5, ""

    .line 11
    .line 12
    iget-object v6, p0, Li3/a;->b:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    const/4 v7, -0x2

    .line 15
    if-eqz v4, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Li3/a;->getText()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Li3/a;->getMaxCharacterCount()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ne v4, v7, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-le v7, v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Landroid/content/Context;

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    return-object v5

    .line 45
    :cond_1
    sub-int/2addr v4, v3

    .line 46
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget v4, Lcom/google/android/material/R$string;->m3_exceed_max_badge_text_suffix:I

    .line 51
    .line 52
    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v1, v0, v2

    .line 59
    .line 60
    const-string v1, "\u2026"

    .line 61
    .line 62
    aput-object v1, v0, v3

    .line 63
    .line 64
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :cond_2
    :goto_0
    return-object v1

    .line 70
    :cond_3
    invoke-virtual {p0}, Li3/a;->hasNumber()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_7

    .line 75
    .line 76
    iget-object v4, p0, Li3/a;->m:Li3/d;

    .line 77
    .line 78
    if-eq v1, v7, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Li3/a;->getNumber()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-gt v7, v1, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Landroid/content/Context;

    .line 92
    .line 93
    if-nez v6, :cond_5

    .line 94
    .line 95
    return-object v5

    .line 96
    :cond_5
    iget-object v4, v4, Li3/d;->b:Li3/c;

    .line 97
    .line 98
    iget-object v4, v4, Li3/c;->w:Ljava/util/Locale;

    .line 99
    .line 100
    sget v5, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_suffix:I

    .line 101
    .line 102
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object v1, v0, v2

    .line 113
    .line 114
    const-string v1, "+"

    .line 115
    .line 116
    aput-object v1, v0, v3

    .line 117
    .line 118
    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    :cond_6
    :goto_1
    iget-object v0, v4, Li3/d;->b:Li3/c;

    .line 124
    .line 125
    iget-object v0, v0, Li3/c;->w:Ljava/util/Locale;

    .line 126
    .line 127
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p0}, Li3/a;->getNumber()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    int-to-long v1, v1

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0

    .line 141
    :cond_7
    const/4 v0, 0x0

    .line 142
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Li3/a;->hasText()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Li3/a;->hasNumber()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Li3/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Li3/a;->m:Li3/d;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v2, Li3/d;->b:Li3/c;

    .line 21
    .line 22
    iget-object v1, v1, Li3/c;->p:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, v2, Li3/d;->b:Li3/c;

    .line 30
    .line 31
    iget-object v1, v1, Li3/c;->m:Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_0
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object v2, v2, Li3/d;->b:Li3/c;

    .line 44
    .line 45
    iget-object v2, v2, Li3/c;->q:Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v2, v2, Li3/d;->b:Li3/c;

    .line 53
    .line 54
    iget-object v2, v2, Li3/c;->n:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :goto_1
    invoke-static {v0, v1, v2}, LG3/p;->builder(Landroid/content/Context;II)LG3/n;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, LG3/n;->build()LG3/p;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Li3/a;->e:LG3/j;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, LG3/j;->setShapeAppearanceModel(LG3/p;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final d()V
    .locals 14

    .line 1
    iget-object v0, p0, Li3/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Li3/a;->u:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/view/View;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_1d

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_12

    .line 27
    .line 28
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Li3/a;->j:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    iget-object v6, p0, Li3/a;->v:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/view/ViewGroup;

    .line 55
    .line 56
    :cond_2
    if-nez v3, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v6, p0, Li3/a;->m:Li3/d;

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    iget v3, v6, Li3/d;->d:F

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget v3, v6, Li3/d;->c:F

    .line 74
    .line 75
    :goto_2
    iput v3, p0, Li3/a;->r:F

    .line 76
    .line 77
    const/high16 v7, -0x40800000    # -1.0f

    .line 78
    .line 79
    cmpl-float v8, v3, v7

    .line 80
    .line 81
    const/high16 v9, 0x40000000    # 2.0f

    .line 82
    .line 83
    if-eqz v8, :cond_5

    .line 84
    .line 85
    iput v3, p0, Li3/a;->s:F

    .line 86
    .line 87
    iput v3, p0, Li3/a;->t:F

    .line 88
    .line 89
    goto :goto_7

    .line 90
    :cond_5
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    iget v3, v6, Li3/d;->g:F

    .line 97
    .line 98
    :goto_3
    div-float/2addr v3, v9

    .line 99
    goto :goto_4

    .line 100
    :cond_6
    iget v3, v6, Li3/d;->e:F

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_4
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    int-to-float v3, v3

    .line 108
    iput v3, p0, Li3/a;->s:F

    .line 109
    .line 110
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_7

    .line 115
    .line 116
    iget v3, v6, Li3/d;->h:F

    .line 117
    .line 118
    :goto_5
    div-float/2addr v3, v9

    .line 119
    goto :goto_6

    .line 120
    :cond_7
    iget v3, v6, Li3/d;->f:F

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :goto_6
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    int-to-float v3, v3

    .line 128
    iput v3, p0, Li3/a;->t:F

    .line 129
    .line 130
    :goto_7
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0}, Li3/a;->a()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget v8, p0, Li3/a;->s:F

    .line 141
    .line 142
    iget-object v10, p0, Li3/a;->f:Lx3/J;

    .line 143
    .line 144
    invoke-virtual {v10, v3}, Lx3/J;->getTextWidth(Ljava/lang/String;)F

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    div-float/2addr v11, v9

    .line 149
    iget-object v12, v6, Li3/d;->b:Li3/c;

    .line 150
    .line 151
    iget-object v12, v12, Li3/c;->D:Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    int-to-float v12, v12

    .line 158
    add-float/2addr v11, v12

    .line 159
    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    iput v8, p0, Li3/a;->s:F

    .line 164
    .line 165
    iget v8, p0, Li3/a;->t:F

    .line 166
    .line 167
    invoke-virtual {v10, v3}, Lx3/J;->getTextHeight(Ljava/lang/String;)F

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    div-float/2addr v3, v9

    .line 172
    iget-object v9, v6, Li3/d;->b:Li3/c;

    .line 173
    .line 174
    iget-object v9, v9, Li3/c;->E:Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    int-to-float v9, v9

    .line 181
    add-float/2addr v3, v9

    .line 182
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    iput v3, p0, Li3/a;->t:F

    .line 187
    .line 188
    iget v8, p0, Li3/a;->s:F

    .line 189
    .line 190
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    iput v3, p0, Li3/a;->s:F

    .line 195
    .line 196
    :cond_8
    iget-object v3, v6, Li3/d;->b:Li3/c;

    .line 197
    .line 198
    iget-object v3, v3, Li3/c;->G:Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    iget-object v9, v6, Li3/d;->b:Li3/c;

    .line 209
    .line 210
    const/4 v10, 0x0

    .line 211
    if-eqz v8, :cond_9

    .line 212
    .line 213
    iget-object v3, v9, Li3/c;->I:Ljava/lang/Integer;

    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Landroid/content/Context;

    .line 224
    .line 225
    if-eqz v0, :cond_9

    .line 226
    .line 227
    invoke-static {v0}, LC3/d;->getFontScale(Landroid/content/Context;)F

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    const/high16 v8, 0x3f800000    # 1.0f

    .line 232
    .line 233
    sub-float/2addr v0, v8

    .line 234
    const v11, 0x3e99999a    # 0.3f

    .line 235
    .line 236
    .line 237
    invoke-static {v10, v8, v11, v8, v0}, Lg3/a;->lerp(FFFFF)F

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    iget-object v8, v9, Li3/c;->L:Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    sub-int v8, v3, v8

    .line 248
    .line 249
    invoke-static {v3, v8, v0}, Lg3/a;->lerp(IIF)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    :cond_9
    iget v0, v6, Li3/d;->k:I

    .line 254
    .line 255
    if-nez v0, :cond_a

    .line 256
    .line 257
    iget v8, p0, Li3/a;->t:F

    .line 258
    .line 259
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    sub-int/2addr v3, v8

    .line 264
    :cond_a
    iget-object v8, v9, Li3/c;->K:Ljava/lang/Integer;

    .line 265
    .line 266
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    add-int/2addr v8, v3

    .line 271
    iget-object v3, v9, Li3/c;->B:Ljava/lang/Integer;

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    const v11, 0x800053

    .line 278
    .line 279
    .line 280
    if-eq v3, v11, :cond_b

    .line 281
    .line 282
    const v12, 0x800055

    .line 283
    .line 284
    .line 285
    if-eq v3, v12, :cond_b

    .line 286
    .line 287
    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 288
    .line 289
    add-int/2addr v3, v8

    .line 290
    int-to-float v3, v3

    .line 291
    iput v3, p0, Li3/a;->p:F

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_b
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 295
    .line 296
    sub-int/2addr v3, v8

    .line 297
    int-to-float v3, v3

    .line 298
    iput v3, p0, Li3/a;->p:F

    .line 299
    .line 300
    :goto_8
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-eqz v3, :cond_c

    .line 305
    .line 306
    iget-object v3, v9, Li3/c;->H:Ljava/lang/Integer;

    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    goto :goto_9

    .line 313
    :cond_c
    iget-object v3, v9, Li3/c;->F:Ljava/lang/Integer;

    .line 314
    .line 315
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    :goto_9
    const/4 v8, 0x1

    .line 320
    if-ne v0, v8, :cond_e

    .line 321
    .line 322
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_d

    .line 327
    .line 328
    iget v0, v6, Li3/d;->j:I

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_d
    iget v0, v6, Li3/d;->i:I

    .line 332
    .line 333
    :goto_a
    add-int/2addr v3, v0

    .line 334
    :cond_e
    iget-object v0, v9, Li3/c;->J:Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    add-int/2addr v0, v3

    .line 341
    iget-object v3, v9, Li3/c;->B:Ljava/lang/Integer;

    .line 342
    .line 343
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    const v6, 0x800033

    .line 348
    .line 349
    .line 350
    if-eq v3, v6, :cond_10

    .line 351
    .line 352
    if-eq v3, v11, :cond_10

    .line 353
    .line 354
    invoke-static {v2}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-nez v3, :cond_f

    .line 359
    .line 360
    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 361
    .line 362
    int-to-float v3, v3

    .line 363
    iget v5, p0, Li3/a;->s:F

    .line 364
    .line 365
    add-float/2addr v3, v5

    .line 366
    int-to-float v0, v0

    .line 367
    sub-float/2addr v3, v0

    .line 368
    goto :goto_b

    .line 369
    :cond_f
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 370
    .line 371
    int-to-float v3, v3

    .line 372
    iget v5, p0, Li3/a;->s:F

    .line 373
    .line 374
    sub-float/2addr v3, v5

    .line 375
    int-to-float v0, v0

    .line 376
    add-float/2addr v3, v0

    .line 377
    :goto_b
    iput v3, p0, Li3/a;->n:F

    .line 378
    .line 379
    goto :goto_d

    .line 380
    :cond_10
    invoke-static {v2}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-nez v3, :cond_11

    .line 385
    .line 386
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 387
    .line 388
    int-to-float v3, v3

    .line 389
    iget v5, p0, Li3/a;->s:F

    .line 390
    .line 391
    sub-float/2addr v3, v5

    .line 392
    int-to-float v0, v0

    .line 393
    add-float/2addr v3, v0

    .line 394
    goto :goto_c

    .line 395
    :cond_11
    iget v3, v5, Landroid/graphics/Rect;->right:I

    .line 396
    .line 397
    int-to-float v3, v3

    .line 398
    iget v5, p0, Li3/a;->s:F

    .line 399
    .line 400
    add-float/2addr v3, v5

    .line 401
    int-to-float v0, v0

    .line 402
    sub-float/2addr v3, v0

    .line 403
    :goto_c
    iput v3, p0, Li3/a;->n:F

    .line 404
    .line 405
    :goto_d
    iget-object v0, v9, Li3/c;->M:Ljava/lang/Boolean;

    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_1b

    .line 412
    .line 413
    invoke-virtual {p0}, Li3/a;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    if-nez v0, :cond_13

    .line 418
    .line 419
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    instance-of v0, v0, Landroid/view/View;

    .line 424
    .line 425
    if-nez v0, :cond_12

    .line 426
    .line 427
    goto/16 :goto_11

    .line 428
    .line 429
    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    check-cast v2, Landroid/view/View;

    .line 442
    .line 443
    move-object v13, v2

    .line 444
    move v2, v0

    .line 445
    move-object v0, v13

    .line 446
    goto :goto_e

    .line 447
    :cond_13
    invoke-virtual {p0}, Li3/a;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    if-eqz v2, :cond_15

    .line 452
    .line 453
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    sget v3, Lcom/google/android/material/R$id;->mtrl_anchor_parent:I

    .line 458
    .line 459
    if-ne v2, v3, :cond_15

    .line 460
    .line 461
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    instance-of v2, v2, Landroid/view/View;

    .line 466
    .line 467
    if-nez v2, :cond_14

    .line 468
    .line 469
    goto/16 :goto_11

    .line 470
    .line 471
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    check-cast v0, Landroid/view/View;

    .line 484
    .line 485
    goto :goto_e

    .line 486
    :cond_15
    move v2, v10

    .line 487
    move v3, v2

    .line 488
    :goto_e
    iget v5, p0, Li3/a;->p:F

    .line 489
    .line 490
    iget v6, p0, Li3/a;->t:F

    .line 491
    .line 492
    sub-float/2addr v5, v6

    .line 493
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    add-float/2addr v6, v5

    .line 498
    add-float/2addr v6, v2

    .line 499
    iget v5, p0, Li3/a;->n:F

    .line 500
    .line 501
    iget v8, p0, Li3/a;->s:F

    .line 502
    .line 503
    sub-float/2addr v5, v8

    .line 504
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 505
    .line 506
    .line 507
    move-result v8

    .line 508
    add-float/2addr v8, v5

    .line 509
    add-float/2addr v8, v3

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    instance-of v5, v5, Landroid/view/View;

    .line 515
    .line 516
    if-eqz v5, :cond_16

    .line 517
    .line 518
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    check-cast v5, Landroid/view/View;

    .line 523
    .line 524
    iget v9, p0, Li3/a;->p:F

    .line 525
    .line 526
    iget v11, p0, Li3/a;->t:F

    .line 527
    .line 528
    add-float/2addr v9, v11

    .line 529
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 530
    .line 531
    .line 532
    move-result v5

    .line 533
    int-to-float v5, v5

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 535
    .line 536
    .line 537
    move-result v11

    .line 538
    sub-float/2addr v5, v11

    .line 539
    sub-float/2addr v9, v5

    .line 540
    add-float/2addr v9, v2

    .line 541
    goto :goto_f

    .line 542
    :cond_16
    move v9, v10

    .line 543
    :goto_f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    instance-of v2, v2, Landroid/view/View;

    .line 548
    .line 549
    if-eqz v2, :cond_17

    .line 550
    .line 551
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    check-cast v2, Landroid/view/View;

    .line 556
    .line 557
    iget v5, p0, Li3/a;->n:F

    .line 558
    .line 559
    iget v11, p0, Li3/a;->s:F

    .line 560
    .line 561
    add-float/2addr v5, v11

    .line 562
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 563
    .line 564
    .line 565
    move-result v2

    .line 566
    int-to-float v2, v2

    .line 567
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    sub-float/2addr v2, v0

    .line 572
    sub-float/2addr v5, v2

    .line 573
    add-float/2addr v5, v3

    .line 574
    goto :goto_10

    .line 575
    :cond_17
    move v5, v10

    .line 576
    :goto_10
    cmpg-float v0, v6, v10

    .line 577
    .line 578
    if-gez v0, :cond_18

    .line 579
    .line 580
    iget v0, p0, Li3/a;->p:F

    .line 581
    .line 582
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    add-float/2addr v2, v0

    .line 587
    iput v2, p0, Li3/a;->p:F

    .line 588
    .line 589
    :cond_18
    cmpg-float v0, v8, v10

    .line 590
    .line 591
    if-gez v0, :cond_19

    .line 592
    .line 593
    iget v0, p0, Li3/a;->n:F

    .line 594
    .line 595
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    add-float/2addr v2, v0

    .line 600
    iput v2, p0, Li3/a;->n:F

    .line 601
    .line 602
    :cond_19
    cmpl-float v0, v9, v10

    .line 603
    .line 604
    if-lez v0, :cond_1a

    .line 605
    .line 606
    iget v0, p0, Li3/a;->p:F

    .line 607
    .line 608
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    sub-float/2addr v0, v2

    .line 613
    iput v0, p0, Li3/a;->p:F

    .line 614
    .line 615
    :cond_1a
    cmpl-float v0, v5, v10

    .line 616
    .line 617
    if-lez v0, :cond_1b

    .line 618
    .line 619
    iget v0, p0, Li3/a;->n:F

    .line 620
    .line 621
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 622
    .line 623
    .line 624
    move-result v2

    .line 625
    sub-float/2addr v0, v2

    .line 626
    iput v0, p0, Li3/a;->n:F

    .line 627
    .line 628
    :cond_1b
    :goto_11
    iget v0, p0, Li3/a;->n:F

    .line 629
    .line 630
    iget v2, p0, Li3/a;->p:F

    .line 631
    .line 632
    iget v3, p0, Li3/a;->s:F

    .line 633
    .line 634
    iget v5, p0, Li3/a;->t:F

    .line 635
    .line 636
    invoke-static {v4, v0, v2, v3, v5}, Li3/e;->updateBadgeBounds(Landroid/graphics/Rect;FFFF)V

    .line 637
    .line 638
    .line 639
    iget v0, p0, Li3/a;->r:F

    .line 640
    .line 641
    cmpl-float v2, v0, v7

    .line 642
    .line 643
    iget-object v3, p0, Li3/a;->e:LG3/j;

    .line 644
    .line 645
    if-eqz v2, :cond_1c

    .line 646
    .line 647
    invoke-virtual {v3, v0}, LG3/j;->setCornerSize(F)V

    .line 648
    .line 649
    .line 650
    :cond_1c
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    if-nez v0, :cond_1d

    .line 655
    .line 656
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 657
    .line 658
    .line 659
    :cond_1d
    :goto_12
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Li3/a;->getAlpha()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v0, p0, Li3/a;->e:LG3/j;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, LG3/j;->draw(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Li3/a;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Li3/a;->a()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v1, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Li3/a;->f:Lx3/J;

    .line 47
    .line 48
    invoke-virtual {v2}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    iget v3, p0, Li3/a;->p:F

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    sub-float/2addr v3, v4

    .line 67
    iget v4, p0, Li3/a;->n:F

    .line 68
    .line 69
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 70
    .line 71
    if-gtz v1, :cond_1

    .line 72
    .line 73
    float-to-int v1, v3

    .line 74
    :goto_0
    int-to-float v1, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_0

    .line 81
    :goto_1
    invoke-virtual {v2}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_2
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Li3/a;->m:Li3/d;

    .line 2
    .line 3
    iget-object v0, v0, Li3/d;->b:Li3/c;

    .line 4
    .line 5
    iget v0, v0, Li3/c;->r:I

    .line 6
    .line 7
    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Li3/a;->q:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Li3/a;->hasText()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object v4, p0, Li3/a;->m:Li3/d;

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    iget-object v0, v4, Li3/d;->b:Li3/c;

    .line 21
    .line 22
    iget-object v0, v0, Li3/c;->x:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {p0}, Li3/a;->getText()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_2
    invoke-virtual {p0}, Li3/a;->hasNumber()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_7

    .line 37
    .line 38
    iget-object v3, v4, Li3/d;->b:Li3/c;

    .line 39
    .line 40
    iget v3, v3, Li3/c;->z:I

    .line 41
    .line 42
    if-eqz v3, :cond_6

    .line 43
    .line 44
    iget-object v3, p0, Li3/a;->b:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/content/Context;

    .line 51
    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 v5, -0x2

    .line 56
    iget-object v4, v4, Li3/d;->b:Li3/c;

    .line 57
    .line 58
    if-eq v2, v5, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0}, Li3/a;->getNumber()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-gt v5, v2, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    iget v4, v4, Li3/c;->A:I

    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v2, v1, v0

    .line 76
    .line 77
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :cond_5
    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget v3, v4, Li3/c;->z:I

    .line 87
    .line 88
    invoke-virtual {p0}, Li3/a;->getNumber()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {p0}, Li3/a;->getNumber()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object v5, v1, v0

    .line 103
    .line 104
    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 110
    return-object v0

    .line 111
    :cond_7
    iget-object v0, v4, Li3/d;->b:Li3/c;

    .line 112
    .line 113
    iget-object v0, v0, Li3/c;->y:Ljava/lang/CharSequence;

    .line 114
    .line 115
    return-object v0
.end method

.method public getCustomBadgeParent()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Li3/a;->v:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Li3/a;->j:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Li3/a;->j:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxCharacterCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Li3/a;->m:Li3/d;

    .line 2
    .line 3
    iget-object v0, v0, Li3/d;->b:Li3/c;

    .line 4
    .line 5
    iget v0, v0, Li3/c;->u:I

    .line 6
    .line 7
    return v0
.end method

.method public getMaxNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Li3/a;->m:Li3/d;

    .line 2
    .line 3
    iget-object v0, v0, Li3/d;->b:Li3/c;

    .line 4
    .line 5
    iget v0, v0, Li3/c;->v:I

    .line 6
    .line 7
    return v0
.end method

.method public getNumber()I
    .locals 2

    .line 1
    iget-object v0, p0, Li3/a;->m:Li3/d;

    .line 2
    .line 3
    iget-object v0, v0, Li3/d;->b:Li3/c;

    .line 4
    .line 5
    iget v0, v0, Li3/c;->t:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li3/a;->m:Li3/d;

    .line 2
    .line 3
    iget-object v0, v0, Li3/d;->b:Li3/c;

    .line 4
    .line 5
    iget-object v0, v0, Li3/c;->s:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public hasNumber()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li3/a;->m:Li3/d;

    .line 2
    .line 3
    iget-object v0, v0, Li3/d;->b:Li3/c;

    .line 4
    .line 5
    iget-object v1, v0, Li3/c;->s:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, v0, Li3/c;->t:I

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public hasText()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li3/a;->m:Li3/d;

    .line 2
    .line 3
    iget-object v0, v0, Li3/d;->b:Li3/c;

    .line 4
    .line 5
    iget-object v0, v0, Li3/c;->s:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onTextSizeChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Li3/a;->m:Li3/d;

    .line 2
    .line 3
    iget-object v1, v0, Li3/d;->a:Li3/c;

    .line 4
    .line 5
    iput p1, v1, Li3/c;->r:I

    .line 6
    .line 7
    iget-object v0, v0, Li3/d;->b:Li3/c;

    .line 8
    .line 9
    iput p1, v0, Li3/c;->r:I

    .line 10
    .line 11
    iget-object p1, p0, Li3/a;->f:Lx3/J;

    .line 12
    .line 13
    invoke-virtual {p1}, Lx3/J;->getTextPaint()Landroid/text/TextPaint;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Li3/a;->getAlpha()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Li3/a;->u:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Li3/a;->v:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Li3/a;->d()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
