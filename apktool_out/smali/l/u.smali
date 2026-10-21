.class public final Ll/u;
.super Lk/d;
.source "SourceFile"

# interfaces
.implements LM/c;


# instance fields
.field public A:Z

.field public final B:Landroid/util/SparseBooleanArray;

.field public C:Ll/q;

.field public D:Ll/l;

.field public E:Ll/n;

.field public F:Ll/m;

.field public final G:Ll/r;

.field public H:I

.field public s:Ll/p;

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroidx/appcompat/R$layout;->abc_action_menu_layout:I

    .line 2
    .line 3
    sget v1, Landroidx/appcompat/R$layout;->abc_action_menu_item_layout:I

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Lk/d;-><init>(Landroid/content/Context;II)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ll/u;->B:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    new-instance p1, Ll/r;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Ll/r;-><init>(Ll/u;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Ll/u;->G:Ll/r;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public bindItemView(Lk/s;Lk/F;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, p1, v0}, Lk/F;->initialize(Lk/s;I)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lk/d;->q:Lk/G;

    .line 6
    .line 7
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 8
    .line 9
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Lk/o;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Ll/u;->F:Ll/m;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Ll/m;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Ll/m;-><init>(Ll/u;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ll/u;->F:Ll/m;

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Ll/u;->F:Ll/m;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Lk/c;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ll/u;->hideOverflowMenu()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ll/u;->hideSubMenus()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    or-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ll/u;->s:Ll/p;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Lk/d;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public flagActionItems()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lk/d;->f:Lk/p;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lk/p;->getVisibleItems()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v2

    .line 19
    move v4, v3

    .line 20
    :goto_0
    iget v5, v0, Ll/u;->z:I

    .line 21
    .line 22
    iget v6, v0, Ll/u;->y:I

    .line 23
    .line 24
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    iget-object v8, v0, Lk/d;->q:Lk/G;

    .line 29
    .line 30
    check-cast v8, Landroid/view/ViewGroup;

    .line 31
    .line 32
    move v9, v3

    .line 33
    move v10, v9

    .line 34
    move v11, v10

    .line 35
    move v12, v11

    .line 36
    :goto_1
    const/4 v13, 0x1

    .line 37
    if-ge v9, v4, :cond_4

    .line 38
    .line 39
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    check-cast v14, Lk/s;

    .line 44
    .line 45
    invoke-virtual {v14}, Lk/s;->requiresActionButton()Z

    .line 46
    .line 47
    .line 48
    move-result v15

    .line 49
    if-eqz v15, :cond_1

    .line 50
    .line 51
    add-int/lit8 v11, v11, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    invoke-virtual {v14}, Lk/s;->requestsActionButton()Z

    .line 55
    .line 56
    .line 57
    move-result v15

    .line 58
    if-eqz v15, :cond_2

    .line 59
    .line 60
    add-int/lit8 v12, v12, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move v10, v13

    .line 64
    :goto_2
    iget-boolean v13, v0, Ll/u;->A:Z

    .line 65
    .line 66
    if-eqz v13, :cond_3

    .line 67
    .line 68
    invoke-virtual {v14}, Lk/s;->isActionViewExpanded()Z

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    if-eqz v13, :cond_3

    .line 73
    .line 74
    move v5, v3

    .line 75
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    iget-boolean v9, v0, Ll/u;->v:Z

    .line 79
    .line 80
    if-eqz v9, :cond_6

    .line 81
    .line 82
    if-nez v10, :cond_5

    .line 83
    .line 84
    add-int/2addr v12, v11

    .line 85
    if-le v12, v5, :cond_6

    .line 86
    .line 87
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 88
    .line 89
    :cond_6
    sub-int/2addr v5, v11

    .line 90
    iget-object v9, v0, Ll/u;->B:Landroid/util/SparseBooleanArray;

    .line 91
    .line 92
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    .line 93
    .line 94
    .line 95
    move v10, v3

    .line 96
    move v11, v10

    .line 97
    :goto_3
    if-ge v10, v4, :cond_15

    .line 98
    .line 99
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Lk/s;

    .line 104
    .line 105
    invoke-virtual {v12}, Lk/s;->requiresActionButton()Z

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    if-eqz v14, :cond_9

    .line 110
    .line 111
    invoke-virtual {v0, v12, v2, v8}, Ll/u;->getItemView(Lk/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    sub-int/2addr v6, v14

    .line 123
    if-nez v11, :cond_7

    .line 124
    .line 125
    move v11, v14

    .line 126
    :cond_7
    invoke-virtual {v12}, Lk/s;->getGroupId()I

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    if-eqz v14, :cond_8

    .line 131
    .line 132
    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 133
    .line 134
    .line 135
    :cond_8
    invoke-virtual {v12, v13}, Lk/s;->setIsActionButton(Z)V

    .line 136
    .line 137
    .line 138
    move v15, v3

    .line 139
    move/from16 v16, v13

    .line 140
    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :cond_9
    invoke-virtual {v12}, Lk/s;->requestsActionButton()Z

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    if-eqz v14, :cond_14

    .line 148
    .line 149
    invoke-virtual {v12}, Lk/s;->getGroupId()I

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    if-gtz v5, :cond_a

    .line 158
    .line 159
    if-eqz v15, :cond_b

    .line 160
    .line 161
    :cond_a
    if-lez v6, :cond_b

    .line 162
    .line 163
    move/from16 v16, v13

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_b
    move/from16 v16, v3

    .line 167
    .line 168
    :goto_4
    if-eqz v16, :cond_e

    .line 169
    .line 170
    invoke-virtual {v0, v12, v2, v8}, Ll/u;->getItemView(Lk/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v3, v7, v7}, Landroid/view/View;->measure(II)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    sub-int/2addr v6, v3

    .line 182
    if-nez v11, :cond_c

    .line 183
    .line 184
    move v11, v3

    .line 185
    :cond_c
    add-int v3, v6, v11

    .line 186
    .line 187
    if-lez v3, :cond_d

    .line 188
    .line 189
    move v3, v13

    .line 190
    goto :goto_5

    .line 191
    :cond_d
    const/4 v3, 0x0

    .line 192
    :goto_5
    and-int v16, v16, v3

    .line 193
    .line 194
    :cond_e
    move/from16 v3, v16

    .line 195
    .line 196
    if-eqz v3, :cond_f

    .line 197
    .line 198
    if-eqz v14, :cond_f

    .line 199
    .line 200
    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 201
    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_f
    if-eqz v15, :cond_12

    .line 205
    .line 206
    const/4 v15, 0x0

    .line 207
    invoke-virtual {v9, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 208
    .line 209
    .line 210
    const/4 v15, 0x0

    .line 211
    :goto_6
    if-ge v15, v10, :cond_12

    .line 212
    .line 213
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v16

    .line 217
    move-object/from16 v2, v16

    .line 218
    .line 219
    check-cast v2, Lk/s;

    .line 220
    .line 221
    move/from16 v16, v13

    .line 222
    .line 223
    invoke-virtual {v2}, Lk/s;->getGroupId()I

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    if-ne v13, v14, :cond_11

    .line 228
    .line 229
    invoke-virtual {v2}, Lk/s;->isActionButton()Z

    .line 230
    .line 231
    .line 232
    move-result v13

    .line 233
    if-eqz v13, :cond_10

    .line 234
    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 236
    .line 237
    :cond_10
    const/4 v13, 0x0

    .line 238
    invoke-virtual {v2, v13}, Lk/s;->setIsActionButton(Z)V

    .line 239
    .line 240
    .line 241
    :cond_11
    add-int/lit8 v15, v15, 0x1

    .line 242
    .line 243
    move/from16 v13, v16

    .line 244
    .line 245
    const/4 v2, 0x0

    .line 246
    goto :goto_6

    .line 247
    :cond_12
    :goto_7
    move/from16 v16, v13

    .line 248
    .line 249
    if-eqz v3, :cond_13

    .line 250
    .line 251
    add-int/lit8 v5, v5, -0x1

    .line 252
    .line 253
    :cond_13
    invoke-virtual {v12, v3}, Lk/s;->setIsActionButton(Z)V

    .line 254
    .line 255
    .line 256
    const/4 v15, 0x0

    .line 257
    goto :goto_8

    .line 258
    :cond_14
    move v15, v3

    .line 259
    move/from16 v16, v13

    .line 260
    .line 261
    invoke-virtual {v12, v15}, Lk/s;->setIsActionButton(Z)V

    .line 262
    .line 263
    .line 264
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 265
    .line 266
    move v3, v15

    .line 267
    move/from16 v13, v16

    .line 268
    .line 269
    const/4 v2, 0x0

    .line 270
    goto/16 :goto_3

    .line 271
    .line 272
    :cond_15
    move/from16 v16, v13

    .line 273
    .line 274
    return v16
.end method

.method public getItemView(Lk/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lk/s;->getActionView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lk/s;->hasCollapsibleActionView()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lk/d;->getItemView(Lk/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lk/s;->isActionViewExpanded()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const/16 p1, 0x8

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ll/x;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lk/G;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/d;->q:Lk/G;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lk/d;->getMenuView(Landroid/view/ViewGroup;)Lk/G;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Ll/u;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/u;->s:Ll/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Ll/u;->u:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Ll/u;->t:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ll/u;->E:Ll/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lk/d;->q:Lk/G;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    check-cast v2, Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Ll/u;->E:Ll/n;

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Ll/u;->C:Ll/q;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lk/C;->dismiss()V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public hideSubMenus()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll/u;->D:Ll/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lk/C;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lk/p;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lk/d;->initForMenu(Landroid/content/Context;Lk/p;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p1}, Lj/a;->get(Landroid/content/Context;)Lj/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-boolean v0, p0, Ll/u;->w:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lj/a;->showsOverflowMenuButton()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Ll/u;->v:Z

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lj/a;->getEmbeddedMenuWidthLimit()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Ll/u;->x:I

    .line 27
    .line 28
    invoke-virtual {p1}, Lj/a;->getMaxActionButtons()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Ll/u;->z:I

    .line 33
    .line 34
    iget p1, p0, Ll/u;->x:I

    .line 35
    .line 36
    iget-boolean v0, p0, Ll/u;->v:Z

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Ll/u;->s:Ll/p;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    new-instance v0, Ll/p;

    .line 46
    .line 47
    iget-object v2, p0, Lk/d;->b:Landroid/content/Context;

    .line 48
    .line 49
    invoke-direct {v0, p0, v2}, Ll/p;-><init>(Ll/u;Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Ll/u;->s:Ll/p;

    .line 53
    .line 54
    iget-boolean v2, p0, Ll/u;->u:Z

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    iget-object v2, p0, Ll/u;->t:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ll/P;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Ll/u;->t:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    iput-boolean v3, p0, Ll/u;->u:Z

    .line 67
    .line 68
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object v1, p0, Ll/u;->s:Ll/p;

    .line 73
    .line 74
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Ll/u;->s:Ll/p;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    sub-int/2addr p1, v0

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iput-object v1, p0, Ll/u;->s:Ll/p;

    .line 86
    .line 87
    :goto_0
    iput p1, p0, Ll/u;->y:I

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .line 95
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll/u;->E:Ll/n;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ll/u;->isOverflowMenuShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll/u;->C:Ll/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lk/C;->isShowing()Z

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

.method public onCloseMenu(Lk/p;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ll/u;->dismissPopupMenus()Z

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lk/d;->onCloseMenu(Lk/p;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lk/d;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lj/a;->get(Landroid/content/Context;)Lj/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lj/a;->getMaxActionButtons()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Ll/u;->z:I

    .line 12
    .line 13
    iget-object p1, p0, Lk/d;->f:Lk/p;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lk/p;->onItemsChanged(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ll/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Ll/t;

    .line 7
    .line 8
    iget p1, p1, Ll/t;->b:I

    .line 9
    .line 10
    if-lez p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lk/d;->f:Lk/p;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lk/p;->findItem(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lk/M;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ll/u;->onSubMenuSelected(Lk/M;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Ll/t;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Ll/u;->H:I

    .line 7
    .line 8
    iput v1, v0, Ll/t;->b:I

    .line 9
    .line 10
    return-object v0
.end method

.method public onSubMenuSelected(Lk/M;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lk/p;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    invoke-virtual {v0}, Lk/M;->getParentMenu()Landroid/view/Menu;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Lk/d;->f:Lk/p;

    .line 15
    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lk/M;->getParentMenu()Landroid/view/Menu;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lk/M;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Lk/M;->getItem()Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Lk/d;->q:Lk/G;

    .line 30
    .line 31
    check-cast v2, Landroid/view/ViewGroup;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    move v5, v1

    .line 42
    :goto_1
    if-ge v5, v4, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    instance-of v7, v6, Lk/F;

    .line 49
    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    move-object v7, v6

    .line 53
    check-cast v7, Lk/F;

    .line 54
    .line 55
    invoke-interface {v7}, Lk/F;->getItemData()Lk/s;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    if-ne v7, v0, :cond_3

    .line 60
    .line 61
    move-object v3, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 67
    .line 68
    return v1

    .line 69
    :cond_5
    invoke-virtual {p1}, Lk/M;->getItem()Landroid/view/MenuItem;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Ll/u;->H:I

    .line 78
    .line 79
    invoke-virtual {p1}, Lk/p;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    move v2, v1

    .line 84
    :goto_3
    const/4 v4, 0x1

    .line 85
    if-ge v2, v0, :cond_7

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Lk/p;->getItem(I)Landroid/view/MenuItem;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_6

    .line 96
    .line 97
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-eqz v5, :cond_6

    .line 102
    .line 103
    move v1, v4

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_7
    :goto_4
    new-instance v0, Ll/l;

    .line 109
    .line 110
    iget-object v2, p0, Lk/d;->e:Landroid/content/Context;

    .line 111
    .line 112
    invoke-direct {v0, p0, v2, p1, v3}, Ll/l;-><init>(Ll/u;Landroid/content/Context;Lk/M;Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Ll/u;->D:Ll/l;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lk/C;->setForceShowIcon(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Ll/u;->D:Ll/l;

    .line 121
    .line 122
    invoke-virtual {v0}, Lk/C;->show()V

    .line 123
    .line 124
    .line 125
    invoke-super {p0, p1}, Lk/d;->onSubMenuSelected(Lk/M;)Z

    .line 126
    .line 127
    .line 128
    return v4
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ll/u;->A:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMenuView(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lk/d;->q:Lk/G;

    .line 2
    .line 3
    iget-object v0, p0, Lk/d;->f:Lk/p;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Lk/p;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/u;->s:Ll/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ll/P;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Ll/u;->u:Z

    .line 11
    .line 12
    iput-object p1, p0, Ll/u;->t:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ll/u;->v:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Ll/u;->w:Z

    .line 5
    .line 6
    return-void
.end method

.method public shouldIncludeItem(ILk/s;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Lk/s;->isActionButton()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public showOverflowMenu()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Ll/u;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ll/u;->isOverflowMenuShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lk/d;->f:Lk/p;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lk/d;->q:Lk/G;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Ll/u;->E:Ll/n;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lk/p;->getNonActionItems()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-instance v1, Ll/q;

    .line 34
    .line 35
    iget-object v3, p0, Lk/d;->e:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v4, p0, Lk/d;->f:Lk/p;

    .line 38
    .line 39
    iget-object v5, p0, Ll/u;->s:Ll/p;

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    move-object v2, p0

    .line 43
    invoke-direct/range {v1 .. v6}, Ll/q;-><init>(Ll/u;Landroid/content/Context;Lk/p;Landroid/view/View;Z)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ll/n;

    .line 47
    .line 48
    invoke-direct {v0, p0, v1}, Ll/n;-><init>(Ll/u;Ll/q;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, v2, Ll/u;->E:Ll/n;

    .line 52
    .line 53
    iget-object v1, v2, Lk/d;->q:Lk/G;

    .line 54
    .line 55
    check-cast v1, Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    return v0

    .line 62
    :cond_0
    move-object v2, p0

    .line 63
    const/4 v0, 0x0

    .line 64
    return v0
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lk/d;->updateMenuView(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lk/d;->q:Lk/G;

    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lk/d;->f:Lk/p;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lk/p;->getActionItems()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    move v2, v0

    .line 25
    :goto_0
    if-ge v2, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lk/s;

    .line 32
    .line 33
    invoke-virtual {v3}, Lk/s;->getSupportActionProvider()LM/e;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v3, p0}, LM/e;->setSubUiVisibilityListener(LM/c;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lk/d;->f:Lk/p;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lk/p;->getNonActionItems()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    :goto_1
    iget-boolean v1, p0, Ll/u;->v:Z

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x1

    .line 66
    if-ne v1, v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lk/s;

    .line 73
    .line 74
    invoke-virtual {p1}, Lk/s;->isActionViewExpanded()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    xor-int/lit8 v0, p1, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    if-lez v1, :cond_4

    .line 82
    .line 83
    move v0, v2

    .line 84
    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 85
    .line 86
    iget-object p1, p0, Ll/u;->s:Ll/p;

    .line 87
    .line 88
    if-nez p1, :cond_5

    .line 89
    .line 90
    new-instance p1, Ll/p;

    .line 91
    .line 92
    iget-object v0, p0, Lk/d;->b:Landroid/content/Context;

    .line 93
    .line 94
    invoke-direct {p1, p0, v0}, Ll/p;-><init>(Ll/u;Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Ll/u;->s:Ll/p;

    .line 98
    .line 99
    :cond_5
    iget-object p1, p0, Ll/u;->s:Ll/p;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/view/ViewGroup;

    .line 106
    .line 107
    iget-object v0, p0, Lk/d;->q:Lk/G;

    .line 108
    .line 109
    if-eq p1, v0, :cond_8

    .line 110
    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    iget-object v0, p0, Ll/u;->s:Ll/p;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    :cond_6
    iget-object p1, p0, Lk/d;->q:Lk/G;

    .line 119
    .line 120
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 121
    .line 122
    iget-object v0, p0, Ll/u;->s:Ll/p;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Ll/x;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    iget-object p1, p0, Ll/u;->s:Ll/p;

    .line 133
    .line 134
    if-eqz p1, :cond_8

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object v0, p0, Lk/d;->q:Lk/G;

    .line 141
    .line 142
    if-ne p1, v0, :cond_8

    .line 143
    .line 144
    check-cast v0, Landroid/view/ViewGroup;

    .line 145
    .line 146
    iget-object p1, p0, Ll/u;->s:Ll/p;

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    :cond_8
    :goto_3
    iget-object p1, p0, Lk/d;->q:Lk/G;

    .line 152
    .line 153
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 154
    .line 155
    iget-boolean v0, p0, Ll/u;->v:Z

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 158
    .line 159
    .line 160
    return-void
.end method
