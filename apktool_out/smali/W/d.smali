.class public abstract LW/d;
.super LM/b;
.source "SourceFile"


# static fields
.field public static final n:Landroid/graphics/Rect;

.field public static final o:LW/a;

.field public static final p:LW/b;


# instance fields
.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/Rect;

.field public final g:[I

.field public final h:Landroid/view/accessibility/AccessibilityManager;

.field public final i:Landroid/view/View;

.field public j:LW/c;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/high16 v2, -0x80000000

    .line 7
    .line 8
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    .line 10
    .line 11
    sput-object v0, LW/d;->n:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance v0, LW/a;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, LW/d;->o:LW/a;

    .line 19
    .line 20
    new-instance v0, LW/b;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, LW/d;->p:LW/b;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, LM/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LW/d;->d:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LW/d;->e:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LW/d;->f:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    iput-object v0, p0, LW/d;->g:[I

    .line 29
    .line 30
    const/high16 v0, -0x80000000

    .line 31
    .line 32
    iput v0, p0, LW/d;->k:I

    .line 33
    .line 34
    iput v0, p0, LW/d;->l:I

    .line 35
    .line 36
    iput v0, p0, LW/d;->m:I

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iput-object p1, p0, LW/d;->i:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "accessibility"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 53
    .line 54
    iput-object v0, p0, LW/d;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, LM/p0;->getImportantForAccessibility(Landroid/view/View;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    invoke-static {p1, v0}, LM/p0;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string v0, "View may not be null"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method


# virtual methods
.method public final a(I)LN/n;
    .locals 11

    .line 1
    invoke-static {}, LN/n;->obtain()LN/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, LN/n;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, LN/n;->setFocusable(Z)V

    .line 10
    .line 11
    .line 12
    const-string v2, "android.view.View"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, LN/n;->setClassName(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, LW/d;->n:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, LN/n;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, LN/n;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, LW/d;->i:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, LN/n;->setParent(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, LW/d;->onPopulateNodeForVirtualView(ILN/n;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, LN/n;->getText()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, LN/n;->getContentDescription()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 47
    .line 48
    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    :goto_0
    iget-object v4, p0, LW/d;->e:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {v0, v4}, LN/n;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_10

    .line 64
    .line 65
    invoke-virtual {v0}, LN/n;->getActions()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    and-int/lit8 v6, v5, 0x40

    .line 70
    .line 71
    if-nez v6, :cond_f

    .line 72
    .line 73
    const/16 v6, 0x80

    .line 74
    .line 75
    and-int/2addr v5, v6

    .line 76
    if-nez v5, :cond_e

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v0, v5}, LN/n;->setPackageName(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3, p1}, LN/n;->setSource(Landroid/view/View;I)V

    .line 90
    .line 91
    .line 92
    iget v5, p0, LW/d;->k:I

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    if-ne v5, p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {v0, v1}, LN/n;->setAccessibilityFocused(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v6}, LN/n;->addAction(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v0, v7}, LN/n;->setAccessibilityFocused(Z)V

    .line 105
    .line 106
    .line 107
    const/16 v5, 0x40

    .line 108
    .line 109
    invoke-virtual {v0, v5}, LN/n;->addAction(I)V

    .line 110
    .line 111
    .line 112
    :goto_1
    iget v5, p0, LW/d;->l:I

    .line 113
    .line 114
    if-ne v5, p1, :cond_3

    .line 115
    .line 116
    move p1, v1

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    move p1, v7

    .line 119
    :goto_2
    if-eqz p1, :cond_4

    .line 120
    .line 121
    const/4 v5, 0x2

    .line 122
    invoke-virtual {v0, v5}, LN/n;->addAction(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    invoke-virtual {v0}, LN/n;->isFocusable()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0, v1}, LN/n;->addAction(I)V

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, LN/n;->setFocused(Z)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, LW/d;->g:[I

    .line 139
    .line 140
    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 141
    .line 142
    .line 143
    iget-object v5, p0, LW/d;->d:Landroid/graphics/Rect;

    .line 144
    .line 145
    invoke-virtual {v0, v5}, LN/n;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_8

    .line 153
    .line 154
    invoke-virtual {v0, v5}, LN/n;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 155
    .line 156
    .line 157
    iget v6, v0, LN/n;->b:I

    .line 158
    .line 159
    const/4 v8, -0x1

    .line 160
    if-eq v6, v8, :cond_7

    .line 161
    .line 162
    invoke-static {}, LN/n;->obtain()LN/n;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iget v9, v0, LN/n;->b:I

    .line 167
    .line 168
    :goto_4
    if-eq v9, v8, :cond_6

    .line 169
    .line 170
    invoke-virtual {v6, v3, v8}, LN/n;->setParent(Landroid/view/View;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v2}, LN/n;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v9, v6}, LW/d;->onPopulateNodeForVirtualView(ILN/n;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v4}, LN/n;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 180
    .line 181
    .line 182
    iget v9, v4, Landroid/graphics/Rect;->left:I

    .line 183
    .line 184
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 185
    .line 186
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 187
    .line 188
    .line 189
    iget v9, v6, LN/n;->b:I

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_6
    invoke-virtual {v6}, LN/n;->recycle()V

    .line 193
    .line 194
    .line 195
    :cond_7
    aget v2, p1, v7

    .line 196
    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    sub-int/2addr v2, v4

    .line 202
    aget v4, p1, v1

    .line 203
    .line 204
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    sub-int/2addr v4, v6

    .line 209
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 210
    .line 211
    .line 212
    :cond_8
    iget-object v2, p0, LW/d;->f:Landroid/graphics/Rect;

    .line 213
    .line 214
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_d

    .line 219
    .line 220
    aget v4, p1, v7

    .line 221
    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    sub-int/2addr v4, v6

    .line 227
    aget p1, p1, v1

    .line 228
    .line 229
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    sub-int/2addr p1, v6

    .line 234
    invoke-virtual {v2, v4, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_d

    .line 242
    .line 243
    invoke-virtual {v0, v5}, LN/n;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 244
    .line 245
    .line 246
    if-eqz v5, :cond_d

    .line 247
    .line 248
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-eqz p1, :cond_9

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_a

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    :goto_5
    instance-of v2, p1, Landroid/view/View;

    .line 267
    .line 268
    if-eqz v2, :cond_c

    .line 269
    .line 270
    check-cast p1, Landroid/view/View;

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    const/4 v3, 0x0

    .line 277
    cmpg-float v2, v2, v3

    .line 278
    .line 279
    if-lez v2, :cond_d

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_b

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    goto :goto_5

    .line 293
    :cond_c
    if-eqz p1, :cond_d

    .line 294
    .line 295
    invoke-virtual {v0, v1}, LN/n;->setVisibleToUser(Z)V

    .line 296
    .line 297
    .line 298
    :cond_d
    :goto_6
    return-object v0

    .line 299
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 300
    .line 301
    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 302
    .line 303
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw p1

    .line 307
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    .line 308
    .line 309
    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 310
    .line 311
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw p1

    .line 315
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    .line 316
    .line 317
    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    .line 318
    .line 319
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw p1
.end method

.method public final b(ILandroid/graphics/Rect;)Z
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, LW/d;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lp/r;

    .line 10
    .line 11
    invoke-direct {v1}, Lp/r;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-ge v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p0, v4}, LW/d;->a(I)LN/n;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {v1, v5, v4}, Lp/r;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget v0, p0, LW/d;->l:I

    .line 53
    .line 54
    const/high16 v8, -0x80000000

    .line 55
    .line 56
    if-ne v0, v8, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    :goto_1
    move-object v4, v0

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {v1, v0}, Lp/r;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, LN/n;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_2
    const/4 v0, 0x1

    .line 69
    sget-object v3, LW/d;->o:LW/a;

    .line 70
    .line 71
    move v5, v2

    .line 72
    sget-object v2, LW/d;->p:LW/b;

    .line 73
    .line 74
    iget-object v6, p0, LW/d;->i:Landroid/view/View;

    .line 75
    .line 76
    if-eq p1, v0, :cond_a

    .line 77
    .line 78
    const/4 v7, 0x2

    .line 79
    if-eq p1, v7, :cond_a

    .line 80
    .line 81
    const/16 v0, 0x82

    .line 82
    .line 83
    const/16 v7, 0x42

    .line 84
    .line 85
    const/16 v9, 0x21

    .line 86
    .line 87
    const/16 v10, 0x11

    .line 88
    .line 89
    if-eq p1, v10, :cond_2

    .line 90
    .line 91
    if-eq p1, v9, :cond_2

    .line 92
    .line 93
    if-eq p1, v7, :cond_2

    .line 94
    .line 95
    if-ne p1, v0, :cond_3

    .line 96
    .line 97
    :cond_2
    move v11, v5

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string p2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :goto_3
    new-instance v5, Landroid/graphics/Rect;

    .line 108
    .line 109
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .line 111
    .line 112
    iget v12, p0, LW/d;->l:I

    .line 113
    .line 114
    if-eq v12, v8, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0, v12}, LW/d;->c(I)LN/n;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2, v5}, LN/n;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 121
    .line 122
    .line 123
    :goto_4
    move v6, p1

    .line 124
    goto :goto_5

    .line 125
    :cond_4
    if-eqz p2, :cond_5

    .line 126
    .line 127
    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eq p1, v10, :cond_9

    .line 140
    .line 141
    if-eq p1, v9, :cond_8

    .line 142
    .line 143
    const/4 v9, -0x1

    .line 144
    if-eq p1, v7, :cond_7

    .line 145
    .line 146
    if-ne p1, v0, :cond_6

    .line 147
    .line 148
    invoke-virtual {v5, v11, v9, p2, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    const-string p2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 155
    .line 156
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_7
    invoke-virtual {v5, v9, v11, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_8
    invoke-virtual {v5, v11, v6, p2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_9
    invoke-virtual {v5, p2, v11, p2, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :goto_5
    invoke-static/range {v1 .. v6}, LW/h;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;LW/f;LW/e;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, LN/n;

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_a
    move v11, v5

    .line 180
    move v5, p1

    .line 181
    invoke-static {v6}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-ne p1, v0, :cond_b

    .line 186
    .line 187
    move v6, v0

    .line 188
    goto :goto_6

    .line 189
    :cond_b
    move v6, v11

    .line 190
    :goto_6
    const/4 v7, 0x0

    .line 191
    invoke-static/range {v1 .. v7}, LW/h;->findNextFocusInRelativeDirection(Ljava/lang/Object;LW/f;LW/e;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, LN/n;

    .line 196
    .line 197
    :goto_7
    if-nez p1, :cond_c

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_c
    invoke-virtual {v1, p1}, Lp/r;->indexOfValue(Ljava/lang/Object;)I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-virtual {v1, p1}, Lp/r;->keyAt(I)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    :goto_8
    invoke-virtual {p0, v8}, LW/d;->requestKeyboardFocusForVirtualView(I)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    return p1
.end method

.method public final c(I)LN/n;
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    .line 4
    iget-object p1, p0, LW/d;->i:Landroid/view/View;

    .line 5
    .line 6
    invoke-static {p1}, LN/n;->obtain(Landroid/view/View;)LN/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, LM/p0;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, LW/d;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, LN/n;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-gtz v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v0, "Views cannot have both real and virtual children"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_1
    if-ge v3, v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {v0, p1, v4}, LN/n;->addChild(Landroid/view/View;I)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    return-object v0

    .line 66
    :cond_3
    invoke-virtual {p0, p1}, LW/d;->a(I)LN/n;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2

    .line 1
    iget v0, p0, LW/d;->l:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/high16 v0, -0x80000000

    .line 8
    .line 9
    iput v0, p0, LW/d;->l:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v1}, LW/d;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, LW/d;->sendEventForVirtualView(II)Z

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, LW/d;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x100

    .line 21
    .line 22
    const/16 v2, 0x80

    .line 23
    .line 24
    const/4 v3, 0x7

    .line 25
    const/4 v4, 0x1

    .line 26
    const/high16 v5, -0x80000000

    .line 27
    .line 28
    if-eq v0, v3, :cond_3

    .line 29
    .line 30
    const/16 v3, 0x9

    .line 31
    .line 32
    if-eq v0, v3, :cond_3

    .line 33
    .line 34
    const/16 p1, 0xa

    .line 35
    .line 36
    if-eq v0, p1, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget p1, p0, LW/d;->m:I

    .line 40
    .line 41
    if-eq p1, v5, :cond_5

    .line 42
    .line 43
    if-ne p1, v5, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iput v5, p0, LW/d;->m:I

    .line 47
    .line 48
    invoke-virtual {p0, v5, v2}, LW/d;->sendEventForVirtualView(II)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, v1}, LW/d;->sendEventForVirtualView(II)Z

    .line 52
    .line 53
    .line 54
    return v4

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {p0, v0, p1}, LW/d;->getVirtualViewAt(FF)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget v0, p0, LW/d;->m:I

    .line 68
    .line 69
    if-ne v0, p1, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iput p1, p0, LW/d;->m:I

    .line 73
    .line 74
    invoke-virtual {p0, p1, v2}, LW/d;->sendEventForVirtualView(II)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0, v1}, LW/d;->sendEventForVirtualView(II)Z

    .line 78
    .line 79
    .line 80
    :goto_0
    if-eq p1, v5, :cond_5

    .line 81
    .line 82
    :goto_1
    return v4

    .line 83
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 84
    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_8

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v3, 0x3d

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eq v0, v3, :cond_6

    .line 17
    .line 18
    const/16 v3, 0x42

    .line 19
    .line 20
    if-eq v0, v3, :cond_4

    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_8

    .line 31
    .line 32
    const/16 v5, 0x13

    .line 33
    .line 34
    if-eq v0, v5, :cond_1

    .line 35
    .line 36
    const/16 v5, 0x15

    .line 37
    .line 38
    if-eq v0, v5, :cond_0

    .line 39
    .line 40
    const/16 v5, 0x16

    .line 41
    .line 42
    if-eq v0, v5, :cond_2

    .line 43
    .line 44
    const/16 v3, 0x82

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 v3, 0x11

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/16 v3, 0x21

    .line 51
    .line 52
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/2addr p1, v2

    .line 57
    move v0, v1

    .line 58
    :goto_1
    if-ge v1, p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, v3, v4}, LW/d;->b(ILandroid/graphics/Rect;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    move v0, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    return v0

    .line 71
    :cond_4
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_8

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_8

    .line 82
    .line 83
    iget p1, p0, LW/d;->l:I

    .line 84
    .line 85
    const/high16 v0, -0x80000000

    .line 86
    .line 87
    if-eq p1, v0, :cond_5

    .line 88
    .line 89
    const/16 v0, 0x10

    .line 90
    .line 91
    invoke-virtual {p0, p1, v0, v4}, LW/d;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 92
    .line 93
    .line 94
    :cond_5
    return v2

    .line 95
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    const/4 p1, 0x2

    .line 102
    invoke-virtual {p0, p1, v4}, LW/d;->b(ILandroid/graphics/Rect;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    return p1

    .line 107
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_8

    .line 112
    .line 113
    invoke-virtual {p0, v2, v4}, LW/d;->b(ILandroid/graphics/Rect;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    return p1

    .line 118
    :cond_8
    :goto_2
    return v1

    .line 119
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    .line 1
    iget v0, p0, LW/d;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)LN/q;
    .locals 0

    .line 1
    iget-object p1, p0, LW/d;->j:LW/c;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, LW/c;

    .line 6
    .line 7
    invoke-direct {p1, p0}, LW/c;-><init>(LW/d;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, LW/d;->j:LW/c;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, LW/d;->j:LW/c;

    .line 13
    .line 14
    return-object p1
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .locals 1

    .line 1
    iget v0, p0, LW/d;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract getVirtualViewAt(FF)I
.end method

.method public abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget v0, p0, LW/d;->l:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, LW/d;->clearKeyboardFocusForVirtualView(I)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p2, p3}, LW/d;->b(ILandroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, LM/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, LW/d;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, LM/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/n;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, LW/d;->onPopulateNodeForHost(LN/n;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method public onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onPopulateNodeForHost(LN/n;)V
.end method

.method public abstract onPopulateNodeForVirtualView(ILN/n;)V
.end method

.method public abstract onVirtualViewKeyboardFocusChanged(IZ)V
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, LW/d;->i:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    iget v0, p0, LW/d;->l:I

    .line 18
    .line 19
    if-ne v0, p1, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    const/high16 v1, -0x80000000

    .line 23
    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v0}, LW/d;->clearKeyboardFocusForVirtualView(I)Z

    .line 27
    .line 28
    .line 29
    :cond_2
    if-ne p1, v1, :cond_3

    .line 30
    .line 31
    return v2

    .line 32
    :cond_3
    iput p1, p0, LW/d;->l:I

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, p1, v0}, LW/d;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-virtual {p0, p1, v1}, LW/d;->sendEventForVirtualView(II)Z

    .line 41
    .line 42
    .line 43
    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 5

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_5

    .line 5
    .line 6
    iget-object v0, p0, LW/d;->h:Landroid/view/accessibility/AccessibilityManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, LW/d;->i:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    const/4 v1, -0x1

    .line 26
    if-eq p1, v1, :cond_4

    .line 27
    .line 28
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0, p1}, LW/d;->c(I)LN/n;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v1}, LN/n;->getText()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, LN/n;->getContentDescription()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, LN/n;->isScrollable()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, LN/n;->isPassword()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, LN/n;->isEnabled()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, LN/n;->isChecked()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, LW/d;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 103
    .line 104
    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_3
    :goto_0
    invoke-virtual {v1}, LN/n;->getClassName()Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p2, v0, p1}, LN/r;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {v0, p2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    invoke-interface {v2, v0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    return p1

    .line 144
    :cond_5
    :goto_2
    return v1
.end method
