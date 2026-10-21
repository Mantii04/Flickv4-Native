.class public final Lx3/q;
.super Lm1/V;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public e:Lk/s;

.field public f:Z

.field public final synthetic g:Lx3/A;


# direct methods
.method public constructor <init>(Lx3/A;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/q;->g:Lx3/A;

    .line 2
    .line 3
    invoke-direct {p0}, Lm1/V;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lx3/q;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Lx3/q;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lx3/q;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lx3/q;->f:Z

    .line 10
    .line 11
    iget-object v2, v0, Lx3/q;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lx3/r;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v3, v0, Lx3/q;->g:Lx3/A;

    .line 25
    .line 26
    iget-object v4, v3, Lx3/A;->f:Lk/p;

    .line 27
    .line 28
    invoke-virtual {v4}, Lk/p;->getVisibleItems()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, -0x1

    .line 38
    move v7, v5

    .line 39
    move v8, v7

    .line 40
    move v9, v8

    .line 41
    :goto_0
    if-ge v7, v4, :cond_f

    .line 42
    .line 43
    iget-object v10, v3, Lx3/A;->f:Lk/p;

    .line 44
    .line 45
    invoke-virtual {v10}, Lk/p;->getVisibleItems()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    check-cast v10, Lk/s;

    .line 54
    .line 55
    invoke-virtual {v10}, Lk/s;->isChecked()Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-eqz v11, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, v10}, Lx3/q;->setCheckedItem(Lk/s;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v10}, Lk/s;->isCheckable()Z

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    if-eqz v11, :cond_2

    .line 69
    .line 70
    invoke-virtual {v10, v5}, Lk/s;->setExclusiveCheckable(Z)V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {v10}, Lk/s;->hasSubMenu()Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    if-eqz v11, :cond_a

    .line 78
    .line 79
    invoke-virtual {v10}, Lk/s;->getSubMenu()Landroid/view/SubMenu;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    invoke-interface {v11}, Landroid/view/Menu;->hasVisibleItems()Z

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    if-eqz v12, :cond_9

    .line 88
    .line 89
    if-eqz v7, :cond_3

    .line 90
    .line 91
    new-instance v12, Lx3/t;

    .line 92
    .line 93
    iget v13, v3, Lx3/A;->J:I

    .line 94
    .line 95
    invoke-direct {v12, v13, v5}, Lx3/t;-><init>(II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :cond_3
    new-instance v12, Lx3/u;

    .line 102
    .line 103
    invoke-direct {v12, v10}, Lx3/u;-><init>(Lk/s;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    invoke-interface {v11}, Landroid/view/Menu;->size()I

    .line 114
    .line 115
    .line 116
    move-result v13

    .line 117
    move v14, v5

    .line 118
    move v15, v14

    .line 119
    :goto_1
    if-ge v14, v13, :cond_8

    .line 120
    .line 121
    invoke-interface {v11, v14}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 122
    .line 123
    .line 124
    move-result-object v16

    .line 125
    move-object/from16 v1, v16

    .line 126
    .line 127
    check-cast v1, Lk/s;

    .line 128
    .line 129
    invoke-virtual {v1}, Lk/s;->isVisible()Z

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    if-eqz v16, :cond_7

    .line 134
    .line 135
    if-nez v15, :cond_4

    .line 136
    .line 137
    invoke-virtual {v1}, Lk/s;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object v16

    .line 141
    if-eqz v16, :cond_4

    .line 142
    .line 143
    const/4 v15, 0x1

    .line 144
    :cond_4
    invoke-virtual {v1}, Lk/s;->isCheckable()Z

    .line 145
    .line 146
    .line 147
    move-result v16

    .line 148
    if-eqz v16, :cond_5

    .line 149
    .line 150
    invoke-virtual {v1, v5}, Lk/s;->setExclusiveCheckable(Z)V

    .line 151
    .line 152
    .line 153
    :cond_5
    invoke-virtual {v10}, Lk/s;->isChecked()Z

    .line 154
    .line 155
    .line 156
    move-result v16

    .line 157
    if-eqz v16, :cond_6

    .line 158
    .line 159
    invoke-virtual {v0, v10}, Lx3/q;->setCheckedItem(Lk/s;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    new-instance v5, Lx3/u;

    .line 163
    .line 164
    invoke-direct {v5, v1}, Lx3/u;-><init>(Lk/s;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 171
    .line 172
    const/4 v1, 0x1

    .line 173
    const/4 v5, 0x0

    .line 174
    goto :goto_1

    .line 175
    :cond_8
    if-eqz v15, :cond_9

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    :goto_2
    if-ge v12, v1, :cond_9

    .line 182
    .line 183
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Lx3/u;

    .line 188
    .line 189
    const/4 v10, 0x1

    .line 190
    iput-boolean v10, v5, Lx3/u;->b:Z

    .line 191
    .line 192
    add-int/lit8 v12, v12, 0x1

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_9
    const/4 v11, 0x1

    .line 196
    goto :goto_6

    .line 197
    :cond_a
    invoke-virtual {v10}, Lk/s;->getGroupId()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eq v1, v6, :cond_d

    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    invoke-virtual {v10}, Lk/s;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    if-eqz v5, :cond_b

    .line 212
    .line 213
    const/4 v8, 0x1

    .line 214
    goto :goto_3

    .line 215
    :cond_b
    const/4 v8, 0x0

    .line 216
    :goto_3
    if-eqz v7, :cond_c

    .line 217
    .line 218
    add-int/lit8 v9, v9, 0x1

    .line 219
    .line 220
    new-instance v5, Lx3/t;

    .line 221
    .line 222
    iget v6, v3, Lx3/A;->J:I

    .line 223
    .line 224
    invoke-direct {v5, v6, v6}, Lx3/t;-><init>(II)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    :cond_c
    const/4 v11, 0x1

    .line 231
    goto :goto_5

    .line 232
    :cond_d
    if-nez v8, :cond_c

    .line 233
    .line 234
    invoke-virtual {v10}, Lk/s;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    if-eqz v5, :cond_c

    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    move v6, v9

    .line 245
    :goto_4
    if-ge v6, v5, :cond_e

    .line 246
    .line 247
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    check-cast v8, Lx3/u;

    .line 252
    .line 253
    const/4 v11, 0x1

    .line 254
    iput-boolean v11, v8, Lx3/u;->b:Z

    .line 255
    .line 256
    add-int/lit8 v6, v6, 0x1

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_e
    const/4 v11, 0x1

    .line 260
    move v8, v11

    .line 261
    :goto_5
    new-instance v5, Lx3/u;

    .line 262
    .line 263
    invoke-direct {v5, v10}, Lx3/u;-><init>(Lk/s;)V

    .line 264
    .line 265
    .line 266
    iput-boolean v8, v5, Lx3/u;->b:Z

    .line 267
    .line 268
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move v6, v1

    .line 272
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 273
    .line 274
    move v1, v11

    .line 275
    const/4 v5, 0x0

    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_f
    move v1, v5

    .line 279
    iput-boolean v1, v0, Lx3/q;->f:Z

    .line 280
    .line 281
    return-void
.end method

.method public createInstanceState()Landroid/os/Bundle;
    .locals 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lx3/q;->e:Lk/s;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "android:menu:checked"

    .line 11
    .line 12
    invoke-virtual {v1}, Lk/s;->getItemId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lx3/q;->d:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-ge v4, v3, :cond_3

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lx3/s;

    .line 38
    .line 39
    instance-of v6, v5, Lx3/u;

    .line 40
    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    check-cast v5, Lx3/u;

    .line 44
    .line 45
    invoke-virtual {v5}, Lx3/u;->getMenuItem()Lk/s;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-virtual {v5}, Lk/s;->getActionView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v6, 0x0

    .line 57
    :goto_1
    if-eqz v6, :cond_2

    .line 58
    .line 59
    new-instance v7, Lx3/D;

    .line 60
    .line 61
    invoke-direct {v7}, Lx3/D;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v7}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Lk/s;->getItemId()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v1, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const-string v2, "android:menu:action_views"

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public getCheckedItem()Lk/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/q;->e:Lk/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/q;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/q;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lx3/s;

    .line 8
    .line 9
    instance-of v0, p1, Lx3/t;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    return p1

    .line 15
    :cond_0
    instance-of v0, p1, Lx3/r;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    return p1

    .line 21
    :cond_1
    instance-of v0, p1, Lx3/u;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    check-cast p1, Lx3/u;

    .line 26
    .line 27
    invoke-virtual {p1}, Lx3/u;->getMenuItem()Lk/s;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lk/s;->hasSubMenu()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string v0, "Unknown item type."

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Lm1/B0;I)V
    .locals 0

    .line 1
    check-cast p1, Lx3/z;

    invoke-virtual {p0, p1, p2}, Lx3/q;->onBindViewHolder(Lx3/z;I)V

    return-void
.end method

.method public onBindViewHolder(Lx3/z;I)V
    .locals 6

    .line 2
    invoke-virtual {p0, p2}, Lx3/q;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lx3/q;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lx3/q;->g:Lx3/A;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx3/t;

    .line 4
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    iget v0, v2, Lx3/A;->B:I

    .line 5
    invoke-virtual {p2}, Lx3/t;->getPaddingTop()I

    move-result v1

    iget v2, v2, Lx3/A;->C:I

    .line 6
    invoke-virtual {p2}, Lx3/t;->getPaddingBottom()I

    move-result p2

    .line 7
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx3/u;

    .line 10
    invoke-virtual {v0}, Lx3/u;->getMenuItem()Lk/s;

    move-result-object v0

    invoke-virtual {v0}, Lk/s;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget v0, v2, Lx3/A;->p:I

    invoke-static {p1, v0}, LS/A;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 12
    iget v0, v2, Lx3/A;->D:I

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v4, v2, Lx3/A;->E:I

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 15
    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 16
    iget-object v0, v2, Lx3/A;->q:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 18
    :cond_2
    new-instance v0, Lx3/p;

    invoke-direct {v0, p0, p2, v3}, Lx3/p;-><init>(Lx3/q;IZ)V

    invoke-static {p1, v0}, LM/p0;->setAccessibilityDelegate(Landroid/view/View;LM/b;)V

    return-void

    .line 19
    :cond_3
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 20
    iget-object v0, v2, Lx3/A;->u:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 21
    iget v0, v2, Lx3/A;->r:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 22
    iget-object v0, v2, Lx3/A;->t:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 24
    :cond_4
    iget-object v0, v2, Lx3/A;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {p1, v0}, LM/p0;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object v0, v2, Lx3/A;->w:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx3/i;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_6
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx3/u;

    .line 29
    iget-boolean v1, v0, Lx3/u;->b:Z

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 30
    iget v1, v2, Lx3/A;->x:I

    iget v3, v2, Lx3/A;->y:I

    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    iget v1, v2, Lx3/A;->z:I

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 32
    iget-boolean v1, v2, Lx3/A;->F:Z

    if-eqz v1, :cond_7

    .line 33
    iget v1, v2, Lx3/A;->A:I

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 34
    :cond_7
    iget v1, v2, Lx3/A;->H:I

    .line 35
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setMaxLines(I)V

    .line 36
    invoke-virtual {v0}, Lx3/u;->getMenuItem()Lk/s;

    move-result-object v0

    iget-boolean v1, v2, Lx3/A;->s:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->initialize(Lk/s;Z)V

    .line 37
    new-instance v0, Lx3/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lx3/p;-><init>(Lx3/q;IZ)V

    invoke-static {p1, v0}, LM/p0;->setAccessibilityDelegate(Landroid/view/View;LM/b;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lm1/B0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lx3/q;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lx3/z;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lx3/z;
    .locals 2

    .line 2
    iget-object v0, p0, Lx3/q;->g:Lx3/A;

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lx3/o;

    iget-object p2, v0, Lx3/A;->e:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lx3/o;-><init>(Landroid/view/View;)V

    return-object p1

    .line 4
    :cond_1
    new-instance p2, Lx3/x;

    iget-object v0, v0, Lx3/A;->n:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lx3/x;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 5
    :cond_2
    new-instance p2, Lx3/y;

    iget-object v0, v0, Lx3/A;->n:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lx3/y;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 6
    :cond_3
    new-instance p2, Lx3/w;

    iget-object v1, v0, Lx3/A;->n:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lx3/A;->L:Lx3/n;

    invoke-direct {p2, v1, p1, v0}, Lx3/w;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Lm1/B0;)V
    .locals 0

    .line 1
    check-cast p1, Lx3/z;

    invoke-virtual {p0, p1}, Lx3/q;->onViewRecycled(Lx3/z;)V

    return-void
.end method

.method public onViewRecycled(Lx3/z;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lx3/w;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lm1/B0;->a:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->recycle()V

    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const-string v0, "android:menu:checked"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, Lx3/q;->d:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    iput-boolean v3, p0, Lx3/q;->f:Z

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    move v4, v1

    .line 20
    :goto_0
    if-ge v4, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lx3/s;

    .line 27
    .line 28
    instance-of v6, v5, Lx3/u;

    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    check-cast v5, Lx3/u;

    .line 33
    .line 34
    invoke-virtual {v5}, Lx3/u;->getMenuItem()Lk/s;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    invoke-virtual {v5}, Lk/s;->getItemId()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ne v6, v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, v5}, Lx3/q;->setCheckedItem(Lk/s;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lx3/q;->f:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Lx3/q;->a()V

    .line 56
    .line 57
    .line 58
    :cond_2
    const-string v0, "android:menu:action_views"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_7

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    :goto_2
    if-ge v1, v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lx3/s;

    .line 77
    .line 78
    instance-of v4, v3, Lx3/u;

    .line 79
    .line 80
    if-nez v4, :cond_3

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    check-cast v3, Lx3/u;

    .line 84
    .line 85
    invoke-virtual {v3}, Lx3/u;->getMenuItem()Lk/s;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-nez v3, :cond_4

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {v3}, Lk/s;->getActionView()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    invoke-virtual {v3}, Lk/s;->getItemId()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lx3/D;

    .line 108
    .line 109
    if-nez v3, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    invoke-virtual {v4, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 113
    .line 114
    .line 115
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    return-void
.end method

.method public setCheckedItem(Lk/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx3/q;->e:Lk/s;

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Lk/s;->isCheckable()Z

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
    iget-object v0, p0, Lx3/q;->e:Lk/s;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lk/s;->setChecked(Z)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    :cond_1
    iput-object p1, p0, Lx3/q;->e:Lk/s;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Lk/s;->setChecked(Z)Landroid/view/MenuItem;

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lx3/q;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public update()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx3/q;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lm1/V;->notifyDataSetChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
