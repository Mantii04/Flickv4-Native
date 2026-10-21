.class public final Lk/j;
.super Lk/z;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field public static final K:I


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Lk/D;

.field public H:Landroid/view/ViewTreeObserver;

.field public I:Landroid/widget/PopupWindow$OnDismissListener;

.field public J:Z

.field public final e:Landroid/content/Context;

.field public final f:I

.field public final j:I

.field public final m:I

.field public final n:Z

.field public final p:Landroid/os/Handler;

.field public final q:Ljava/util/ArrayList;

.field public final r:Ljava/util/ArrayList;

.field public final s:Lk/e;

.field public final t:Lk/f;

.field public final u:Lk/h;

.field public v:I

.field public w:I

.field public x:Landroid/view/View;

.field public y:Landroid/view/View;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/R$layout;->abc_cascading_menu_item_layout:I

    .line 2
    .line 3
    sput v0, Lk/j;->K:I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk/j;->q:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lk/j;->r:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lk/e;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lk/e;-><init>(Lk/j;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lk/j;->s:Lk/e;

    .line 24
    .line 25
    new-instance v0, Lk/f;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lk/f;-><init>(Lk/j;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lk/j;->t:Lk/f;

    .line 31
    .line 32
    new-instance v0, Lk/h;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lk/h;-><init>(Lk/j;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lk/j;->u:Lk/h;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lk/j;->v:I

    .line 41
    .line 42
    iput v0, p0, Lk/j;->w:I

    .line 43
    .line 44
    iput-object p1, p0, Lk/j;->e:Landroid/content/Context;

    .line 45
    .line 46
    iput-object p2, p0, Lk/j;->x:Landroid/view/View;

    .line 47
    .line 48
    iput p3, p0, Lk/j;->j:I

    .line 49
    .line 50
    iput p4, p0, Lk/j;->m:I

    .line 51
    .line 52
    iput-boolean p5, p0, Lk/j;->n:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Lk/j;->E:Z

    .line 55
    .line 56
    invoke-static {p2}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/4 p3, 0x1

    .line 61
    if-ne p2, p3, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v0, p3

    .line 65
    :goto_0
    iput v0, p0, Lk/j;->z:I

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .line 77
    div-int/lit8 p2, p2, 0x2

    .line 78
    .line 79
    sget p3, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 80
    .line 81
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lk/j;->f:I

    .line 90
    .line 91
    new-instance p1, Landroid/os/Handler;

    .line 92
    .line 93
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lk/j;->p:Landroid/os/Handler;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a(Lk/p;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lk/j;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Lk/m;

    .line 12
    .line 13
    iget-boolean v5, v0, Lk/j;->n:Z

    .line 14
    .line 15
    sget v6, Lk/j;->K:I

    .line 16
    .line 17
    invoke-direct {v4, v1, v3, v5, v6}, Lk/m;-><init>(Lk/p;Landroid/view/LayoutInflater;ZI)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lk/j;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x1

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    iget-boolean v5, v0, Lk/j;->E:Z

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4, v6}, Lk/m;->setForceShowIcon(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lk/j;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-static {v1}, Lk/z;->shouldPreserveIconSpacing(Lk/p;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {v4, v5}, Lk/m;->setForceShowIcon(Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 49
    iget v7, v0, Lk/j;->f:I

    .line 50
    .line 51
    invoke-static {v4, v5, v2, v7}, Lk/z;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    new-instance v8, Ll/r1;

    .line 56
    .line 57
    iget v9, v0, Lk/j;->j:I

    .line 58
    .line 59
    iget v10, v0, Lk/j;->m:I

    .line 60
    .line 61
    invoke-direct {v8, v2, v5, v9, v10}, Ll/r1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lk/j;->u:Lk/h;

    .line 65
    .line 66
    invoke-virtual {v8, v2}, Ll/r1;->setHoverListener(Ll/m1;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8, v0}, Ll/l1;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, v0}, Ll/l1;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, v0, Lk/j;->x:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v8, v2}, Ll/l1;->setAnchorView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget v2, v0, Lk/j;->w:I

    .line 81
    .line 82
    invoke-virtual {v8, v2}, Ll/l1;->setDropDownGravity(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v6}, Ll/l1;->setModal(Z)V

    .line 86
    .line 87
    .line 88
    const/4 v2, 0x2

    .line 89
    invoke-virtual {v8, v2}, Ll/l1;->setInputMethodMode(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v4}, Ll/l1;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8, v7}, Ll/l1;->setContentWidth(I)V

    .line 96
    .line 97
    .line 98
    iget v4, v0, Lk/j;->w:I

    .line 99
    .line 100
    invoke-virtual {v8, v4}, Ll/l1;->setDropDownGravity(I)V

    .line 101
    .line 102
    .line 103
    iget-object v4, v0, Lk/j;->r:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    const/4 v10, 0x0

    .line 110
    if-lez v9, :cond_b

    .line 111
    .line 112
    invoke-static {v6, v4}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    check-cast v9, Lk/i;

    .line 117
    .line 118
    iget-object v11, v9, Lk/i;->b:Lk/p;

    .line 119
    .line 120
    invoke-virtual {v11}, Lk/p;->size()I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    move v13, v10

    .line 125
    :goto_1
    if-ge v13, v12, :cond_3

    .line 126
    .line 127
    invoke-virtual {v11, v13}, Lk/p;->getItem(I)Landroid/view/MenuItem;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    invoke-interface {v14}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    if-eqz v15, :cond_2

    .line 136
    .line 137
    invoke-interface {v14}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    if-ne v1, v15, :cond_2

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    move-object v14, v5

    .line 148
    :goto_2
    if-nez v14, :cond_4

    .line 149
    .line 150
    move-object v2, v5

    .line 151
    move/from16 v16, v6

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_4
    invoke-virtual {v9}, Lk/i;->getListView()Landroid/widget/ListView;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    .line 163
    .line 164
    if-eqz v13, :cond_5

    .line 165
    .line 166
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 167
    .line 168
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    check-cast v12, Lk/m;

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    check-cast v12, Lk/m;

    .line 180
    .line 181
    move v13, v10

    .line 182
    :goto_3
    invoke-virtual {v12}, Lk/m;->getCount()I

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    move/from16 v16, v6

    .line 187
    .line 188
    move v6, v10

    .line 189
    :goto_4
    const/4 v2, -0x1

    .line 190
    if-ge v6, v15, :cond_7

    .line 191
    .line 192
    invoke-virtual {v12, v6}, Lk/m;->getItem(I)Lk/s;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    if-ne v14, v5, :cond_6

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 200
    .line 201
    const/4 v5, 0x0

    .line 202
    goto :goto_4

    .line 203
    :cond_7
    move v6, v2

    .line 204
    :goto_5
    if-ne v6, v2, :cond_9

    .line 205
    .line 206
    :cond_8
    :goto_6
    const/4 v2, 0x0

    .line 207
    goto :goto_7

    .line 208
    :cond_9
    add-int/2addr v6, v13

    .line 209
    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    sub-int/2addr v6, v2

    .line 214
    if-ltz v6, :cond_8

    .line 215
    .line 216
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-lt v6, v2, :cond_a

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_a
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    goto :goto_7

    .line 228
    :cond_b
    move/from16 v16, v6

    .line 229
    .line 230
    const/4 v2, 0x0

    .line 231
    const/4 v9, 0x0

    .line 232
    :goto_7
    if-eqz v2, :cond_15

    .line 233
    .line 234
    invoke-virtual {v8, v10}, Ll/r1;->setTouchModal(Z)V

    .line 235
    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    invoke-virtual {v8, v5}, Ll/r1;->setEnterTransition(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    add-int/lit8 v5, v5, -0x1

    .line 246
    .line 247
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    check-cast v5, Lk/i;

    .line 252
    .line 253
    invoke-virtual {v5}, Lk/i;->getListView()Landroid/widget/ListView;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    const/4 v6, 0x2

    .line 258
    new-array v11, v6, [I

    .line 259
    .line 260
    invoke-virtual {v5, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 261
    .line 262
    .line 263
    new-instance v6, Landroid/graphics/Rect;

    .line 264
    .line 265
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 266
    .line 267
    .line 268
    iget-object v12, v0, Lk/j;->y:Landroid/view/View;

    .line 269
    .line 270
    invoke-virtual {v12, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 271
    .line 272
    .line 273
    iget v12, v0, Lk/j;->z:I

    .line 274
    .line 275
    move/from16 v13, v16

    .line 276
    .line 277
    if-ne v12, v13, :cond_e

    .line 278
    .line 279
    aget v11, v11, v10

    .line 280
    .line 281
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    add-int/2addr v5, v11

    .line 286
    add-int/2addr v5, v7

    .line 287
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 288
    .line 289
    if-le v5, v6, :cond_d

    .line 290
    .line 291
    :cond_c
    move v5, v10

    .line 292
    :goto_8
    const/4 v13, 0x1

    .line 293
    goto :goto_a

    .line 294
    :cond_d
    :goto_9
    const/4 v5, 0x1

    .line 295
    goto :goto_8

    .line 296
    :cond_e
    aget v5, v11, v10

    .line 297
    .line 298
    sub-int/2addr v5, v7

    .line 299
    if-gez v5, :cond_c

    .line 300
    .line 301
    goto :goto_9

    .line 302
    :goto_a
    if-ne v5, v13, :cond_f

    .line 303
    .line 304
    const/4 v13, 0x1

    .line 305
    goto :goto_b

    .line 306
    :cond_f
    move v13, v10

    .line 307
    :goto_b
    iput v5, v0, Lk/j;->z:I

    .line 308
    .line 309
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 310
    .line 311
    const/16 v6, 0x1a

    .line 312
    .line 313
    const/4 v11, 0x5

    .line 314
    if-lt v5, v6, :cond_10

    .line 315
    .line 316
    invoke-virtual {v8, v2}, Ll/l1;->setAnchorView(Landroid/view/View;)V

    .line 317
    .line 318
    .line 319
    move v6, v10

    .line 320
    move v12, v6

    .line 321
    goto :goto_c

    .line 322
    :cond_10
    const/4 v6, 0x2

    .line 323
    new-array v5, v6, [I

    .line 324
    .line 325
    iget-object v12, v0, Lk/j;->x:Landroid/view/View;

    .line 326
    .line 327
    invoke-virtual {v12, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 328
    .line 329
    .line 330
    new-array v6, v6, [I

    .line 331
    .line 332
    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 333
    .line 334
    .line 335
    iget v12, v0, Lk/j;->w:I

    .line 336
    .line 337
    and-int/lit8 v12, v12, 0x7

    .line 338
    .line 339
    if-ne v12, v11, :cond_11

    .line 340
    .line 341
    aget v12, v5, v10

    .line 342
    .line 343
    iget-object v14, v0, Lk/j;->x:Landroid/view/View;

    .line 344
    .line 345
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 346
    .line 347
    .line 348
    move-result v14

    .line 349
    add-int/2addr v14, v12

    .line 350
    aput v14, v5, v10

    .line 351
    .line 352
    aget v12, v6, v10

    .line 353
    .line 354
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 355
    .line 356
    .line 357
    move-result v14

    .line 358
    add-int/2addr v14, v12

    .line 359
    aput v14, v6, v10

    .line 360
    .line 361
    :cond_11
    aget v12, v6, v10

    .line 362
    .line 363
    aget v14, v5, v10

    .line 364
    .line 365
    sub-int/2addr v12, v14

    .line 366
    const/16 v16, 0x1

    .line 367
    .line 368
    aget v6, v6, v16

    .line 369
    .line 370
    aget v5, v5, v16

    .line 371
    .line 372
    sub-int/2addr v6, v5

    .line 373
    :goto_c
    iget v5, v0, Lk/j;->w:I

    .line 374
    .line 375
    and-int/2addr v5, v11

    .line 376
    if-ne v5, v11, :cond_13

    .line 377
    .line 378
    if-eqz v13, :cond_12

    .line 379
    .line 380
    add-int/2addr v12, v7

    .line 381
    goto :goto_d

    .line 382
    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    sub-int/2addr v12, v2

    .line 387
    goto :goto_d

    .line 388
    :cond_13
    if-eqz v13, :cond_14

    .line 389
    .line 390
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    add-int/2addr v12, v2

    .line 395
    goto :goto_d

    .line 396
    :cond_14
    sub-int/2addr v12, v7

    .line 397
    :goto_d
    invoke-virtual {v8, v12}, Ll/l1;->setHorizontalOffset(I)V

    .line 398
    .line 399
    .line 400
    const/4 v13, 0x1

    .line 401
    invoke-virtual {v8, v13}, Ll/l1;->setOverlapAnchor(Z)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v8, v6}, Ll/l1;->setVerticalOffset(I)V

    .line 405
    .line 406
    .line 407
    goto :goto_e

    .line 408
    :cond_15
    iget-boolean v2, v0, Lk/j;->A:Z

    .line 409
    .line 410
    if-eqz v2, :cond_16

    .line 411
    .line 412
    iget v2, v0, Lk/j;->C:I

    .line 413
    .line 414
    invoke-virtual {v8, v2}, Ll/l1;->setHorizontalOffset(I)V

    .line 415
    .line 416
    .line 417
    :cond_16
    iget-boolean v2, v0, Lk/j;->B:Z

    .line 418
    .line 419
    if-eqz v2, :cond_17

    .line 420
    .line 421
    iget v2, v0, Lk/j;->D:I

    .line 422
    .line 423
    invoke-virtual {v8, v2}, Ll/l1;->setVerticalOffset(I)V

    .line 424
    .line 425
    .line 426
    :cond_17
    invoke-virtual {v0}, Lk/z;->getEpicenterBounds()Landroid/graphics/Rect;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v8, v2}, Ll/l1;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 431
    .line 432
    .line 433
    :goto_e
    new-instance v2, Lk/i;

    .line 434
    .line 435
    iget v5, v0, Lk/j;->z:I

    .line 436
    .line 437
    invoke-direct {v2, v8, v1, v5}, Lk/i;-><init>(Ll/r1;Lk/p;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    invoke-virtual {v8}, Ll/l1;->show()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v8}, Ll/l1;->getListView()Landroid/widget/ListView;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 451
    .line 452
    .line 453
    if-nez v9, :cond_18

    .line 454
    .line 455
    iget-boolean v4, v0, Lk/j;->F:Z

    .line 456
    .line 457
    if-eqz v4, :cond_18

    .line 458
    .line 459
    invoke-virtual {v1}, Lk/p;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    if-eqz v4, :cond_18

    .line 464
    .line 465
    sget v4, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    .line 466
    .line 467
    invoke-virtual {v3, v4, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    check-cast v3, Landroid/widget/FrameLayout;

    .line 472
    .line 473
    const v4, 0x1020016

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    check-cast v4, Landroid/widget/TextView;

    .line 481
    .line 482
    invoke-virtual {v3, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1}, Lk/p;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    const/4 v5, 0x0

    .line 493
    invoke-virtual {v2, v3, v5, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v8}, Ll/l1;->show()V

    .line 497
    .line 498
    .line 499
    :cond_18
    return-void
.end method

.method public addMenu(Lk/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/j;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, p0, v0}, Lk/p;->addMenuPresenter(Lk/E;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lk/j;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lk/j;->a(Lk/p;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lk/j;->q:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public closeMenuOnSubMenuOpened()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/j;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    new-array v2, v1, [Lk/i;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Lk/i;

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_1

    .line 20
    .line 21
    aget-object v2, v0, v1

    .line 22
    .line 23
    iget-object v3, v2, Lk/i;->a:Ll/r1;

    .line 24
    .line 25
    invoke-virtual {v3}, Ll/l1;->isShowing()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v2, v2, Lk/i;->a:Ll/r1;

    .line 32
    .line 33
    invoke-virtual {v2}, Ll/l1;->dismiss()V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/j;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lk/i;

    .line 17
    .line 18
    invoke-virtual {v0}, Lk/i;->getListView()Landroid/widget/ListView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public isShowing()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/j;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lk/i;

    .line 15
    .line 16
    iget-object v0, v0, Lk/i;->a:Ll/r1;

    .line 17
    .line 18
    invoke-virtual {v0}, Ll/l1;->isShowing()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_0
    return v2
.end method

.method public onCloseMenu(Lk/p;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/j;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lk/i;

    .line 16
    .line 17
    iget-object v4, v4, Lk/i;->b:Lk/p;

    .line 18
    .line 19
    if-ne p1, v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, -0x1

    .line 26
    :goto_1
    if-gez v3, :cond_2

    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v1, v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lk/i;

    .line 43
    .line 44
    iget-object v1, v1, Lk/i;->b:Lk/p;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lk/p;->close(Z)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lk/i;

    .line 54
    .line 55
    iget-object v3, v1, Lk/i;->b:Lk/p;

    .line 56
    .line 57
    invoke-virtual {v3, p0}, Lk/p;->removeMenuPresenter(Lk/E;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v3, p0, Lk/j;->J:Z

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    iget-object v1, v1, Lk/i;->a:Ll/r1;

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ll/r1;->setExitTransition(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ll/l1;->setAnimationStyle(I)V

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-virtual {v1}, Ll/l1;->dismiss()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v3, 0x1

    .line 81
    if-lez v1, :cond_5

    .line 82
    .line 83
    add-int/lit8 v5, v1, -0x1

    .line 84
    .line 85
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Lk/i;

    .line 90
    .line 91
    iget v5, v5, Lk/i;->c:I

    .line 92
    .line 93
    iput v5, p0, Lk/j;->z:I

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    iget-object v5, p0, Lk/j;->x:Landroid/view/View;

    .line 97
    .line 98
    invoke-static {v5}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-ne v5, v3, :cond_6

    .line 103
    .line 104
    move v5, v2

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    move v5, v3

    .line 107
    :goto_2
    iput v5, p0, Lk/j;->z:I

    .line 108
    .line 109
    :goto_3
    if-nez v1, :cond_a

    .line 110
    .line 111
    invoke-virtual {p0}, Lk/j;->dismiss()V

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lk/j;->G:Lk/D;

    .line 115
    .line 116
    if-eqz p2, :cond_7

    .line 117
    .line 118
    invoke-interface {p2, p1, v3}, Lk/D;->onCloseMenu(Lk/p;Z)V

    .line 119
    .line 120
    .line 121
    :cond_7
    iget-object p1, p0, Lk/j;->H:Landroid/view/ViewTreeObserver;

    .line 122
    .line 123
    if-eqz p1, :cond_9

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_8

    .line 130
    .line 131
    iget-object p1, p0, Lk/j;->H:Landroid/view/ViewTreeObserver;

    .line 132
    .line 133
    iget-object p2, p0, Lk/j;->s:Lk/e;

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 136
    .line 137
    .line 138
    :cond_8
    iput-object v4, p0, Lk/j;->H:Landroid/view/ViewTreeObserver;

    .line 139
    .line 140
    :cond_9
    iget-object p1, p0, Lk/j;->y:Landroid/view/View;

    .line 141
    .line 142
    iget-object p2, p0, Lk/j;->t:Lk/f;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lk/j;->I:Landroid/widget/PopupWindow$OnDismissListener;

    .line 148
    .line 149
    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_a
    if-eqz p2, :cond_b

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lk/i;

    .line 160
    .line 161
    iget-object p1, p1, Lk/i;->b:Lk/p;

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Lk/p;->close(Z)V

    .line 164
    .line 165
    .line 166
    :cond_b
    :goto_4
    return-void
.end method

.method public onDismiss()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/j;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lk/i;

    .line 16
    .line 17
    iget-object v5, v4, Lk/i;->a:Ll/r1;

    .line 18
    .line 19
    invoke-virtual {v5}, Ll/l1;->isShowing()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v4, 0x0

    .line 30
    :goto_1
    if-eqz v4, :cond_2

    .line 31
    .line 32
    iget-object v0, v4, Lk/i;->b:Lk/p;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lk/p;->close(Z)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x52

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lk/j;->dismiss()V

    .line 13
    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public onSubMenuSelected(Lk/M;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lk/j;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lk/i;

    .line 19
    .line 20
    iget-object v3, v1, Lk/i;->b:Lk/p;

    .line 21
    .line 22
    if-ne p1, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lk/i;->getListView()Landroid/widget/ListView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p1}, Lk/p;->hasVisibleItems()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lk/j;->addMenu(Lk/p;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lk/j;->G:Lk/D;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lk/D;->onOpenSubMenu(Lk/p;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    return v2

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/j;->x:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lk/j;->x:Landroid/view/View;

    .line 6
    .line 7
    iget v0, p0, Lk/j;->v:I

    .line 8
    .line 9
    invoke-static {p1}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, LM/s;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lk/j;->w:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setCallback(Lk/D;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/j;->G:Lk/D;

    .line 2
    .line 3
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk/j;->E:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lk/j;->v:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lk/j;->v:I

    .line 6
    .line 7
    iget-object v0, p0, Lk/j;->x:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0}, LM/p0;->getLayoutDirection(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, LM/s;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lk/j;->w:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/j;->A:Z

    .line 3
    .line 4
    iput p1, p0, Lk/j;->C:I

    .line 5
    .line 6
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/j;->I:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk/j;->F:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/j;->B:Z

    .line 3
    .line 4
    iput p1, p0, Lk/j;->D:I

    .line 5
    .line 6
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/j;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v0, p0, Lk/j;->q:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lk/p;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lk/j;->a(Lk/p;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lk/j;->x:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, p0, Lk/j;->y:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lk/j;->H:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lk/j;->H:Landroid/view/ViewTreeObserver;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lk/j;->s:Lk/e;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lk/j;->y:Landroid/view/View;

    .line 60
    .line 61
    iget-object v1, p0, Lk/j;->t:Lk/f;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_2
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lk/j;->r:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lk/i;

    .line 18
    .line 19
    invoke-virtual {v0}, Lk/i;->getListView()Landroid/widget/ListView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lk/z;->toMenuAdapter(Landroid/widget/ListAdapter;)Lk/m;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lk/m;->notifyDataSetChanged()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
