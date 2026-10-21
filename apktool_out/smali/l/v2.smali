.class public final Ll/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static t:Ll/v2;

.field public static u:Ll/v2;


# instance fields
.field public final b:Landroid/view/View;

.field public final e:Ljava/lang/CharSequence;

.field public final f:I

.field public final j:Ll/u2;

.field public final m:Ll/u2;

.field public n:I

.field public p:I

.field public q:Ll/w2;

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll/u2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Ll/u2;-><init>(Ll/v2;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ll/v2;->j:Ll/u2;

    .line 11
    .line 12
    new-instance v0, Ll/u2;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Ll/u2;-><init>(Ll/v2;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Ll/v2;->m:Ll/u2;

    .line 19
    .line 20
    iput-object p1, p0, Ll/v2;->b:Landroid/view/View;

    .line 21
    .line 22
    iput-object p2, p0, Ll/v2;->e:Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, LM/t0;->getScaledHoverSlop(Landroid/view/ViewConfiguration;)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iput p2, p0, Ll/v2;->f:I

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Ll/v2;->s:Z

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static b(Ll/v2;)V
    .locals 3

    .line 1
    sget-object v0, Ll/v2;->t:Ll/v2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Ll/v2;->j:Ll/u2;

    .line 6
    .line 7
    iget-object v0, v0, Ll/v2;->b:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    sput-object p0, Ll/v2;->t:Ll/v2;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Ll/v2;->j:Ll/u2;

    .line 17
    .line 18
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-long v1, v1

    .line 23
    iget-object p0, p0, Ll/v2;->b:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    sget-object v0, Ll/v2;->t:Ll/v2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Ll/v2;->b:Landroid/view/View;

    .line 7
    .line 8
    if-ne v0, p0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Ll/v2;->b(Ll/v2;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object p1, Ll/v2;->u:Ll/v2;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v0, p1, Ll/v2;->b:Landroid/view/View;

    .line 24
    .line 25
    if-ne v0, p0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Ll/v2;->a()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    new-instance v0, Ll/v2;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Ll/v2;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    sget-object v0, Ll/v2;->u:Ll/v2;

    .line 2
    .line 3
    iget-object v1, p0, Ll/v2;->b:Landroid/view/View;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, p0, :cond_2

    .line 7
    .line 8
    sput-object v2, Ll/v2;->u:Ll/v2;

    .line 9
    .line 10
    iget-object v0, p0, Ll/v2;->q:Ll/w2;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, Ll/w2;->b:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Ll/w2;->a:Landroid/content/Context;

    .line 23
    .line 24
    const-string v4, "window"

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/view/WindowManager;

    .line 31
    .line 32
    invoke-interface {v0, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iput-object v2, p0, Ll/v2;->q:Ll/w2;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Ll/v2;->s:Z

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "TooltipCompatHandler"

    .line 45
    .line 46
    const-string v3, "sActiveHandler.mPopup == null"

    .line 47
    .line 48
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    sget-object v0, Ll/v2;->t:Ll/v2;

    .line 52
    .line 53
    if-ne v0, p0, :cond_3

    .line 54
    .line 55
    invoke-static {v2}, Ll/v2;->b(Ll/v2;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Ll/v2;->m:Ll/u2;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final c(Z)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ll/v2;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v1}, LM/p0;->isAttachedToWindow(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ll/v2;->b(Ll/v2;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Ll/v2;->u:Ll/v2;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Ll/v2;->a()V

    .line 21
    .line 22
    .line 23
    :cond_1
    sput-object v0, Ll/v2;->u:Ll/v2;

    .line 24
    .line 25
    move/from16 v2, p1

    .line 26
    .line 27
    iput-boolean v2, v0, Ll/v2;->r:Z

    .line 28
    .line 29
    new-instance v2, Ll/w2;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v2, v3}, Ll/w2;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, v0, Ll/v2;->q:Ll/w2;

    .line 39
    .line 40
    iget v3, v0, Ll/v2;->n:I

    .line 41
    .line 42
    iget v4, v0, Ll/v2;->p:I

    .line 43
    .line 44
    iget-boolean v5, v0, Ll/v2;->r:Z

    .line 45
    .line 46
    iget-object v6, v2, Ll/w2;->b:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    const-string v8, "window"

    .line 53
    .line 54
    iget-object v9, v2, Ll/w2;->a:Landroid/content/Context;

    .line 55
    .line 56
    if-eqz v7, :cond_2

    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    if-eqz v7, :cond_2

    .line 63
    .line 64
    invoke-virtual {v9, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Landroid/view/WindowManager;

    .line 69
    .line 70
    invoke-interface {v7, v6}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v7, v2, Ll/w2;->c:Landroid/widget/TextView;

    .line 74
    .line 75
    iget-object v10, v0, Ll/v2;->e:Ljava/lang/CharSequence;

    .line 76
    .line 77
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v7, v2, Ll/w2;->d:Landroid/view/WindowManager$LayoutParams;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    iput-object v10, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 87
    .line 88
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    sget v11, Landroidx/appcompat/R$dimen;->tooltip_precise_anchor_threshold:I

    .line 93
    .line 94
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    const/4 v12, 0x2

    .line 103
    if-lt v11, v10, :cond_3

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    div-int/2addr v3, v12

    .line 111
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-lt v11, v10, :cond_4

    .line 116
    .line 117
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    sget v11, Landroidx/appcompat/R$dimen;->tooltip_precise_anchor_extra_offset:I

    .line 122
    .line 123
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    add-int v11, v4, v10

    .line 128
    .line 129
    sub-int/2addr v4, v10

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    const/4 v4, 0x0

    .line 136
    :goto_1
    const/16 v10, 0x31

    .line 137
    .line 138
    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 139
    .line 140
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    if-eqz v5, :cond_5

    .line 145
    .line 146
    sget v14, Landroidx/appcompat/R$dimen;->tooltip_y_offset_touch:I

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    sget v14, Landroidx/appcompat/R$dimen;->tooltip_y_offset_non_touch:I

    .line 150
    .line 151
    :goto_2
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    instance-of v13, v15, Landroid/view/WindowManager$LayoutParams;

    .line 164
    .line 165
    if-eqz v13, :cond_6

    .line 166
    .line 167
    check-cast v15, Landroid/view/WindowManager$LayoutParams;

    .line 168
    .line 169
    iget v13, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 170
    .line 171
    if-ne v13, v12, :cond_6

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    :goto_3
    instance-of v15, v13, Landroid/content/ContextWrapper;

    .line 179
    .line 180
    if-eqz v15, :cond_8

    .line 181
    .line 182
    instance-of v15, v13, Landroid/app/Activity;

    .line 183
    .line 184
    if-eqz v15, :cond_7

    .line 185
    .line 186
    check-cast v13, Landroid/app/Activity;

    .line 187
    .line 188
    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    goto :goto_4

    .line 197
    :cond_7
    check-cast v13, Landroid/content/ContextWrapper;

    .line 198
    .line 199
    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    goto :goto_3

    .line 204
    :cond_8
    :goto_4
    if-nez v14, :cond_9

    .line 205
    .line 206
    const-string v2, "TooltipPopup"

    .line 207
    .line 208
    const-string v3, "Cannot find app view"

    .line 209
    .line 210
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    const/16 v17, 0x1

    .line 214
    .line 215
    goto/16 :goto_7

    .line 216
    .line 217
    :cond_9
    iget-object v15, v2, Ll/w2;->e:Landroid/graphics/Rect;

    .line 218
    .line 219
    invoke-virtual {v14, v15}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 220
    .line 221
    .line 222
    move/from16 v16, v12

    .line 223
    .line 224
    iget v12, v15, Landroid/graphics/Rect;->left:I

    .line 225
    .line 226
    if-gez v12, :cond_b

    .line 227
    .line 228
    iget v12, v15, Landroid/graphics/Rect;->top:I

    .line 229
    .line 230
    if-gez v12, :cond_b

    .line 231
    .line 232
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    const/16 v17, 0x1

    .line 237
    .line 238
    const-string v13, "dimen"

    .line 239
    .line 240
    move/from16 v18, v3

    .line 241
    .line 242
    const-string v3, "android"

    .line 243
    .line 244
    move/from16 v19, v4

    .line 245
    .line 246
    const-string v4, "status_bar_height"

    .line 247
    .line 248
    invoke-virtual {v12, v4, v13, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_a

    .line 253
    .line 254
    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    goto :goto_5

    .line 259
    :cond_a
    const/4 v3, 0x0

    .line 260
    :goto_5
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    iget v12, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 265
    .line 266
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 267
    .line 268
    const/4 v13, 0x0

    .line 269
    invoke-virtual {v15, v13, v3, v12, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_b
    move/from16 v18, v3

    .line 274
    .line 275
    move/from16 v19, v4

    .line 276
    .line 277
    const/4 v13, 0x0

    .line 278
    const/16 v17, 0x1

    .line 279
    .line 280
    :goto_6
    iget-object v3, v2, Ll/w2;->g:[I

    .line 281
    .line 282
    invoke-virtual {v14, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 283
    .line 284
    .line 285
    iget-object v2, v2, Ll/w2;->f:[I

    .line 286
    .line 287
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 288
    .line 289
    .line 290
    aget v4, v2, v13

    .line 291
    .line 292
    aget v12, v3, v13

    .line 293
    .line 294
    sub-int/2addr v4, v12

    .line 295
    aput v4, v2, v13

    .line 296
    .line 297
    aget v12, v2, v17

    .line 298
    .line 299
    aget v3, v3, v17

    .line 300
    .line 301
    sub-int/2addr v12, v3

    .line 302
    aput v12, v2, v17

    .line 303
    .line 304
    add-int v4, v4, v18

    .line 305
    .line 306
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    div-int/lit8 v3, v3, 0x2

    .line 311
    .line 312
    sub-int/2addr v4, v3

    .line 313
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 314
    .line 315
    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    invoke-virtual {v6, v3, v3}, Landroid/view/View;->measure(II)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    aget v2, v2, v17

    .line 327
    .line 328
    add-int v4, v2, v19

    .line 329
    .line 330
    sub-int/2addr v4, v10

    .line 331
    sub-int/2addr v4, v3

    .line 332
    add-int/2addr v2, v11

    .line 333
    add-int/2addr v2, v10

    .line 334
    if-eqz v5, :cond_d

    .line 335
    .line 336
    if-ltz v4, :cond_c

    .line 337
    .line 338
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_c
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_d
    add-int/2addr v3, v2

    .line 345
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    if-gt v3, v5, :cond_e

    .line 350
    .line 351
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_e
    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 355
    .line 356
    :goto_7
    invoke-virtual {v9, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    check-cast v2, Landroid/view/WindowManager;

    .line 361
    .line 362
    invoke-interface {v2, v6, v7}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 366
    .line 367
    .line 368
    iget-boolean v2, v0, Ll/v2;->r:Z

    .line 369
    .line 370
    if-eqz v2, :cond_f

    .line 371
    .line 372
    const-wide/16 v2, 0x9c4

    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_f
    invoke-static {v1}, LM/p0;->getWindowSystemUiVisibility(Landroid/view/View;)I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    and-int/lit8 v2, v2, 0x1

    .line 380
    .line 381
    move/from16 v3, v17

    .line 382
    .line 383
    if-ne v2, v3, :cond_10

    .line 384
    .line 385
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    int-to-long v2, v2

    .line 390
    const-wide/16 v4, 0xbb8

    .line 391
    .line 392
    :goto_8
    sub-long v2, v4, v2

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_10
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    int-to-long v2, v2

    .line 400
    const-wide/16 v4, 0x3a98

    .line 401
    .line 402
    goto :goto_8

    .line 403
    :goto_9
    iget-object v4, v0, Ll/v2;->m:Ll/u2;

    .line 404
    .line 405
    invoke-virtual {v1, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    .line 410
    .line 411
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Ll/v2;->q:Ll/w2;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Ll/v2;->r:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Ll/v2;->b:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "accessibility"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x7

    .line 43
    if-eq v1, v2, :cond_3

    .line 44
    .line 45
    const/16 p1, 0xa

    .line 46
    .line 47
    if-eq v1, p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Ll/v2;->s:Z

    .line 52
    .line 53
    invoke-virtual {p0}, Ll/v2;->a()V

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    iget-object p1, p0, Ll/v2;->q:Ll/w2;

    .line 64
    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    float-to-int p1, p1

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    float-to-int p2, p2

    .line 77
    iget-boolean v1, p0, Ll/v2;->s:Z

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    iget v1, p0, Ll/v2;->n:I

    .line 82
    .line 83
    sub-int v1, p1, v1

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget v2, p0, Ll/v2;->f:I

    .line 90
    .line 91
    if-gt v1, v2, :cond_4

    .line 92
    .line 93
    iget v1, p0, Ll/v2;->p:I

    .line 94
    .line 95
    sub-int v1, p2, v1

    .line 96
    .line 97
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-le v1, v2, :cond_5

    .line 102
    .line 103
    :cond_4
    iput p1, p0, Ll/v2;->n:I

    .line 104
    .line 105
    iput p2, p0, Ll/v2;->p:I

    .line 106
    .line 107
    iput-boolean v0, p0, Ll/v2;->s:Z

    .line 108
    .line 109
    invoke-static {p0}, Ll/v2;->b(Ll/v2;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_0
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    iput v0, p0, Ll/v2;->n:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    div-int/lit8 p1, p1, 0x2

    .line 14
    .line 15
    iput p1, p0, Ll/v2;->p:I

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Ll/v2;->c(Z)V

    .line 19
    .line 20
    .line 21
    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll/v2;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
