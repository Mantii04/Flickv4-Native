.class public final Le/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/view/View;

.field public D:Landroid/widget/ListAdapter;

.field public E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:Z

.field public final L:Le/o;

.field public final M:Le/j;

.field public final a:Landroid/content/Context;

.field public final b:Le/c0;

.field public final c:Landroid/view/Window;

.field public final d:I

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public h:Landroid/view/View;

.field public i:I

.field public j:Z

.field public k:Landroid/widget/Button;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/os/Message;

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Landroid/widget/Button;

.field public p:Ljava/lang/CharSequence;

.field public q:Landroid/os/Message;

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:Landroid/widget/Button;

.field public t:Ljava/lang/CharSequence;

.field public u:Landroid/os/Message;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:Landroidx/core/widget/NestedScrollView;

.field public x:I

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/c0;Landroid/view/Window;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le/q;->j:Z

    .line 6
    .line 7
    iput v0, p0, Le/q;->x:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Le/q;->E:I

    .line 11
    .line 12
    new-instance v1, Le/j;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Le/j;-><init>(Le/q;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Le/q;->M:Le/j;

    .line 18
    .line 19
    iput-object p1, p0, Le/q;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Le/q;->b:Le/c0;

    .line 22
    .line 23
    iput-object p3, p0, Le/q;->c:Landroid/view/Window;

    .line 24
    .line 25
    new-instance p3, Le/o;

    .line 26
    .line 27
    invoke-direct {p3, p2}, Le/o;-><init>(Landroid/content/DialogInterface;)V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Le/q;->L:Le/o;

    .line 31
    .line 32
    sget-object p3, Landroidx/appcompat/R$styleable;->AlertDialog:[I

    .line 33
    .line 34
    sget v1, Landroidx/appcompat/R$attr;->alertDialogStyle:I

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_android_layout:I

    .line 42
    .line 43
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    iput p3, p0, Le/q;->F:I

    .line 48
    .line 49
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    .line 50
    .line 51
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 52
    .line 53
    .line 54
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_listLayout:I

    .line 55
    .line 56
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    iput p3, p0, Le/q;->G:I

    .line 61
    .line 62
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    .line 63
    .line 64
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    iput p3, p0, Le/q;->H:I

    .line 69
    .line 70
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 71
    .line 72
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    iput p3, p0, Le/q;->I:I

    .line 77
    .line 78
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    .line 79
    .line 80
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    iput p3, p0, Le/q;->J:I

    .line 85
    .line 86
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_showTitle:I

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    iput-boolean p3, p0, Le/q;->K:Z

    .line 94
    .line 95
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_buttonIconDimen:I

    .line 96
    .line 97
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    iput p3, p0, Le/q;->d:I

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v1}, Le/c0;->supportRequestWindowFeature(I)Z

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :cond_2
    if-lez v0, :cond_3

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Le/q;->a(Landroid/view/View;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    return v2
.end method

.method public static b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    instance-of p0, p1, Landroid/view/ViewStub;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroid/view/ViewStub;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_1
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    instance-of p1, p0, Landroid/view/ViewStub;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    check-cast p0, Landroid/view/ViewStub;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_3
    check-cast p0, Landroid/view/ViewGroup;

    .line 42
    .line 43
    return-object p0
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Le/q;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 2
    .line 3
    return-object v0
.end method

.method public installContent()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Le/q;->b:Le/c0;

    .line 4
    .line 5
    iget v2, v0, Le/q;->F:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Le/c0;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    .line 11
    .line 12
    iget-object v2, v0, Le/q;->c:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget v3, Landroidx/appcompat/R$id;->topPanel:I

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget v4, Landroidx/appcompat/R$id;->contentPanel:I

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    sget v5, Landroidx/appcompat/R$id;->buttonPanel:I

    .line 31
    .line 32
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    sget v6, Landroidx/appcompat/R$id;->customPanel:I

    .line 37
    .line 38
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    .line 44
    iget-object v6, v0, Le/q;->h:Landroid/view/View;

    .line 45
    .line 46
    iget-object v7, v0, Le/q;->a:Landroid/content/Context;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget v6, v0, Le/q;->i:I

    .line 54
    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget v10, v0, Le/q;->i:I

    .line 62
    .line 63
    invoke-virtual {v6, v10, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move-object v6, v8

    .line 69
    :goto_0
    if-eqz v6, :cond_2

    .line 70
    .line 71
    const/4 v11, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v11, v9

    .line 74
    :goto_1
    if-eqz v11, :cond_3

    .line 75
    .line 76
    invoke-static {v6}, Le/q;->a(Landroid/view/View;)Z

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    if-nez v12, :cond_4

    .line 81
    .line 82
    :cond_3
    const/high16 v12, 0x20000

    .line 83
    .line 84
    invoke-virtual {v2, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 85
    .line 86
    .line 87
    :cond_4
    const/4 v12, -0x1

    .line 88
    const/16 v13, 0x8

    .line 89
    .line 90
    if-eqz v11, :cond_6

    .line 91
    .line 92
    sget v11, Landroidx/appcompat/R$id;->custom:I

    .line 93
    .line 94
    invoke-virtual {v2, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    check-cast v11, Landroid/widget/FrameLayout;

    .line 99
    .line 100
    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    invoke-direct {v14, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    iget-boolean v6, v0, Le/q;->j:Z

    .line 109
    .line 110
    if-eqz v6, :cond_5

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    const/4 v14, 0x0

    .line 114
    const/4 v15, 0x0

    .line 115
    const/4 v10, 0x0

    .line 116
    invoke-virtual {v11, v6, v14, v15, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-object v6, v0, Le/q;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 120
    .line 121
    if-eqz v6, :cond_7

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Ll/b1;

    .line 128
    .line 129
    const/4 v10, 0x0

    .line 130
    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    :cond_7
    :goto_2
    sget v6, Landroidx/appcompat/R$id;->topPanel:I

    .line 137
    .line 138
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    sget v10, Landroidx/appcompat/R$id;->contentPanel:I

    .line 143
    .line 144
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    sget v11, Landroidx/appcompat/R$id;->buttonPanel:I

    .line 149
    .line 150
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    invoke-static {v6, v3}, Le/q;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-static {v10, v4}, Le/q;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v11, v5}, Le/q;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    sget v6, Landroidx/appcompat/R$id;->scrollView:I

    .line 167
    .line 168
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    check-cast v6, Landroidx/core/widget/NestedScrollView;

    .line 173
    .line 174
    iput-object v6, v0, Le/q;->w:Landroidx/core/widget/NestedScrollView;

    .line 175
    .line 176
    invoke-virtual {v6, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 177
    .line 178
    .line 179
    iget-object v6, v0, Le/q;->w:Landroidx/core/widget/NestedScrollView;

    .line 180
    .line 181
    invoke-virtual {v6, v9}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 182
    .line 183
    .line 184
    const v6, 0x102000b

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    check-cast v6, Landroid/widget/TextView;

    .line 192
    .line 193
    iput-object v6, v0, Le/q;->B:Landroid/widget/TextView;

    .line 194
    .line 195
    if-nez v6, :cond_8

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_8
    iget-object v10, v0, Le/q;->f:Ljava/lang/CharSequence;

    .line 199
    .line 200
    if-eqz v10, :cond_9

    .line 201
    .line 202
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    iget-object v6, v0, Le/q;->w:Landroidx/core/widget/NestedScrollView;

    .line 210
    .line 211
    iget-object v10, v0, Le/q;->B:Landroid/widget/TextView;

    .line 212
    .line 213
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    iget-object v6, v0, Le/q;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 217
    .line 218
    if-eqz v6, :cond_a

    .line 219
    .line 220
    iget-object v6, v0, Le/q;->w:Landroidx/core/widget/NestedScrollView;

    .line 221
    .line 222
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    check-cast v6, Landroid/view/ViewGroup;

    .line 227
    .line 228
    iget-object v10, v0, Le/q;->w:Landroidx/core/widget/NestedScrollView;

    .line 229
    .line 230
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 235
    .line 236
    .line 237
    iget-object v11, v0, Le/q;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 238
    .line 239
    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    .line 240
    .line 241
    invoke-direct {v14, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, v11, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_a
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    :goto_3
    const v6, 0x1020019

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    check-cast v6, Landroid/widget/Button;

    .line 259
    .line 260
    iput-object v6, v0, Le/q;->k:Landroid/widget/Button;

    .line 261
    .line 262
    iget-object v10, v0, Le/q;->M:Le/j;

    .line 263
    .line 264
    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    iget-object v6, v0, Le/q;->l:Ljava/lang/CharSequence;

    .line 268
    .line 269
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    iget v11, v0, Le/q;->d:I

    .line 274
    .line 275
    if-eqz v6, :cond_b

    .line 276
    .line 277
    iget-object v6, v0, Le/q;->n:Landroid/graphics/drawable/Drawable;

    .line 278
    .line 279
    if-nez v6, :cond_b

    .line 280
    .line 281
    iget-object v6, v0, Le/q;->k:Landroid/widget/Button;

    .line 282
    .line 283
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    move v6, v9

    .line 287
    goto :goto_4

    .line 288
    :cond_b
    iget-object v6, v0, Le/q;->k:Landroid/widget/Button;

    .line 289
    .line 290
    iget-object v14, v0, Le/q;->l:Ljava/lang/CharSequence;

    .line 291
    .line 292
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    iget-object v6, v0, Le/q;->n:Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    if-eqz v6, :cond_c

    .line 298
    .line 299
    invoke-virtual {v6, v9, v9, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    .line 301
    .line 302
    iget-object v6, v0, Le/q;->k:Landroid/widget/Button;

    .line 303
    .line 304
    iget-object v14, v0, Le/q;->n:Landroid/graphics/drawable/Drawable;

    .line 305
    .line 306
    invoke-virtual {v6, v14, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 307
    .line 308
    .line 309
    :cond_c
    iget-object v6, v0, Le/q;->k:Landroid/widget/Button;

    .line 310
    .line 311
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 312
    .line 313
    .line 314
    const/4 v6, 0x1

    .line 315
    :goto_4
    const v14, 0x102001a

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object v14

    .line 322
    check-cast v14, Landroid/widget/Button;

    .line 323
    .line 324
    iput-object v14, v0, Le/q;->o:Landroid/widget/Button;

    .line 325
    .line 326
    invoke-virtual {v14, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    .line 328
    .line 329
    iget-object v14, v0, Le/q;->p:Ljava/lang/CharSequence;

    .line 330
    .line 331
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    if-eqz v14, :cond_d

    .line 336
    .line 337
    iget-object v14, v0, Le/q;->r:Landroid/graphics/drawable/Drawable;

    .line 338
    .line 339
    if-nez v14, :cond_d

    .line 340
    .line 341
    iget-object v14, v0, Le/q;->o:Landroid/widget/Button;

    .line 342
    .line 343
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_d
    iget-object v14, v0, Le/q;->o:Landroid/widget/Button;

    .line 348
    .line 349
    iget-object v15, v0, Le/q;->p:Ljava/lang/CharSequence;

    .line 350
    .line 351
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    iget-object v14, v0, Le/q;->r:Landroid/graphics/drawable/Drawable;

    .line 355
    .line 356
    if-eqz v14, :cond_e

    .line 357
    .line 358
    invoke-virtual {v14, v9, v9, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 359
    .line 360
    .line 361
    iget-object v14, v0, Le/q;->o:Landroid/widget/Button;

    .line 362
    .line 363
    iget-object v15, v0, Le/q;->r:Landroid/graphics/drawable/Drawable;

    .line 364
    .line 365
    invoke-virtual {v14, v15, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 366
    .line 367
    .line 368
    :cond_e
    iget-object v14, v0, Le/q;->o:Landroid/widget/Button;

    .line 369
    .line 370
    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .line 372
    .line 373
    or-int/lit8 v6, v6, 0x2

    .line 374
    .line 375
    :goto_5
    const v14, 0x102001b

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v14

    .line 382
    check-cast v14, Landroid/widget/Button;

    .line 383
    .line 384
    iput-object v14, v0, Le/q;->s:Landroid/widget/Button;

    .line 385
    .line 386
    invoke-virtual {v14, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    .line 388
    .line 389
    iget-object v10, v0, Le/q;->t:Ljava/lang/CharSequence;

    .line 390
    .line 391
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 392
    .line 393
    .line 394
    move-result v10

    .line 395
    if-eqz v10, :cond_f

    .line 396
    .line 397
    iget-object v10, v0, Le/q;->v:Landroid/graphics/drawable/Drawable;

    .line 398
    .line 399
    if-nez v10, :cond_f

    .line 400
    .line 401
    iget-object v10, v0, Le/q;->s:Landroid/widget/Button;

    .line 402
    .line 403
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 404
    .line 405
    .line 406
    goto :goto_6

    .line 407
    :cond_f
    iget-object v10, v0, Le/q;->s:Landroid/widget/Button;

    .line 408
    .line 409
    iget-object v14, v0, Le/q;->t:Ljava/lang/CharSequence;

    .line 410
    .line 411
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    .line 413
    .line 414
    iget-object v10, v0, Le/q;->v:Landroid/graphics/drawable/Drawable;

    .line 415
    .line 416
    if-eqz v10, :cond_10

    .line 417
    .line 418
    invoke-virtual {v10, v9, v9, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    .line 420
    .line 421
    iget-object v10, v0, Le/q;->s:Landroid/widget/Button;

    .line 422
    .line 423
    iget-object v11, v0, Le/q;->v:Landroid/graphics/drawable/Drawable;

    .line 424
    .line 425
    invoke-virtual {v10, v11, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 426
    .line 427
    .line 428
    :cond_10
    iget-object v10, v0, Le/q;->s:Landroid/widget/Button;

    .line 429
    .line 430
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 431
    .line 432
    .line 433
    or-int/lit8 v6, v6, 0x4

    .line 434
    .line 435
    :goto_6
    new-instance v10, Landroid/util/TypedValue;

    .line 436
    .line 437
    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    sget v11, Landroidx/appcompat/R$attr;->alertDialogCenterButtons:I

    .line 445
    .line 446
    const/4 v14, 0x1

    .line 447
    invoke-virtual {v7, v11, v10, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 448
    .line 449
    .line 450
    iget v7, v10, Landroid/util/TypedValue;->data:I

    .line 451
    .line 452
    const/4 v10, 0x2

    .line 453
    if-eqz v7, :cond_13

    .line 454
    .line 455
    const/high16 v7, 0x3f000000    # 0.5f

    .line 456
    .line 457
    if-ne v6, v14, :cond_11

    .line 458
    .line 459
    iget-object v11, v0, Le/q;->k:Landroid/widget/Button;

    .line 460
    .line 461
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 462
    .line 463
    .line 464
    move-result-object v15

    .line 465
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 466
    .line 467
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 468
    .line 469
    iput v7, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 470
    .line 471
    invoke-virtual {v11, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    .line 473
    .line 474
    goto :goto_7

    .line 475
    :cond_11
    if-ne v6, v10, :cond_12

    .line 476
    .line 477
    iget-object v11, v0, Le/q;->o:Landroid/widget/Button;

    .line 478
    .line 479
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 480
    .line 481
    .line 482
    move-result-object v15

    .line 483
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 484
    .line 485
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 486
    .line 487
    iput v7, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 488
    .line 489
    invoke-virtual {v11, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    .line 491
    .line 492
    goto :goto_7

    .line 493
    :cond_12
    const/4 v11, 0x4

    .line 494
    if-ne v6, v11, :cond_13

    .line 495
    .line 496
    iget-object v11, v0, Le/q;->s:Landroid/widget/Button;

    .line 497
    .line 498
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 499
    .line 500
    .line 501
    move-result-object v15

    .line 502
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 503
    .line 504
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 505
    .line 506
    iput v7, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 507
    .line 508
    invoke-virtual {v11, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    .line 510
    .line 511
    :cond_13
    :goto_7
    if-eqz v6, :cond_14

    .line 512
    .line 513
    goto :goto_8

    .line 514
    :cond_14
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 515
    .line 516
    .line 517
    :goto_8
    iget-object v6, v0, Le/q;->C:Landroid/view/View;

    .line 518
    .line 519
    if-eqz v6, :cond_15

    .line 520
    .line 521
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 522
    .line 523
    const/4 v7, -0x2

    .line 524
    invoke-direct {v6, v12, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 525
    .line 526
    .line 527
    iget-object v7, v0, Le/q;->C:Landroid/view/View;

    .line 528
    .line 529
    invoke-virtual {v3, v7, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 530
    .line 531
    .line 532
    sget v6, Landroidx/appcompat/R$id;->title_template:I

    .line 533
    .line 534
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 535
    .line 536
    .line 537
    move-result-object v6

    .line 538
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 539
    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_15
    const v6, 0x1020006

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object v6

    .line 549
    check-cast v6, Landroid/widget/ImageView;

    .line 550
    .line 551
    iput-object v6, v0, Le/q;->z:Landroid/widget/ImageView;

    .line 552
    .line 553
    iget-object v6, v0, Le/q;->e:Ljava/lang/CharSequence;

    .line 554
    .line 555
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 556
    .line 557
    .line 558
    move-result v6

    .line 559
    if-nez v6, :cond_18

    .line 560
    .line 561
    iget-boolean v6, v0, Le/q;->K:Z

    .line 562
    .line 563
    if-eqz v6, :cond_18

    .line 564
    .line 565
    sget v6, Landroidx/appcompat/R$id;->alertTitle:I

    .line 566
    .line 567
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    check-cast v6, Landroid/widget/TextView;

    .line 572
    .line 573
    iput-object v6, v0, Le/q;->A:Landroid/widget/TextView;

    .line 574
    .line 575
    iget-object v7, v0, Le/q;->e:Ljava/lang/CharSequence;

    .line 576
    .line 577
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    .line 579
    .line 580
    iget v6, v0, Le/q;->x:I

    .line 581
    .line 582
    if-eqz v6, :cond_16

    .line 583
    .line 584
    iget-object v7, v0, Le/q;->z:Landroid/widget/ImageView;

    .line 585
    .line 586
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 587
    .line 588
    .line 589
    goto :goto_9

    .line 590
    :cond_16
    iget-object v6, v0, Le/q;->y:Landroid/graphics/drawable/Drawable;

    .line 591
    .line 592
    if-eqz v6, :cond_17

    .line 593
    .line 594
    iget-object v7, v0, Le/q;->z:Landroid/widget/ImageView;

    .line 595
    .line 596
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    .line 598
    .line 599
    goto :goto_9

    .line 600
    :cond_17
    iget-object v6, v0, Le/q;->A:Landroid/widget/TextView;

    .line 601
    .line 602
    iget-object v7, v0, Le/q;->z:Landroid/widget/ImageView;

    .line 603
    .line 604
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    .line 605
    .line 606
    .line 607
    move-result v7

    .line 608
    iget-object v11, v0, Le/q;->z:Landroid/widget/ImageView;

    .line 609
    .line 610
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    .line 611
    .line 612
    .line 613
    move-result v11

    .line 614
    iget-object v14, v0, Le/q;->z:Landroid/widget/ImageView;

    .line 615
    .line 616
    invoke-virtual {v14}, Landroid/view/View;->getPaddingRight()I

    .line 617
    .line 618
    .line 619
    move-result v14

    .line 620
    iget-object v15, v0, Le/q;->z:Landroid/widget/ImageView;

    .line 621
    .line 622
    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    .line 623
    .line 624
    .line 625
    move-result v15

    .line 626
    invoke-virtual {v6, v7, v11, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 627
    .line 628
    .line 629
    iget-object v6, v0, Le/q;->z:Landroid/widget/ImageView;

    .line 630
    .line 631
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    .line 633
    .line 634
    goto :goto_9

    .line 635
    :cond_18
    sget v6, Landroidx/appcompat/R$id;->title_template:I

    .line 636
    .line 637
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 638
    .line 639
    .line 640
    move-result-object v6

    .line 641
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 642
    .line 643
    .line 644
    iget-object v6, v0, Le/q;->z:Landroid/widget/ImageView;

    .line 645
    .line 646
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 650
    .line 651
    .line 652
    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-eq v1, v13, :cond_19

    .line 657
    .line 658
    const/4 v14, 0x1

    .line 659
    goto :goto_a

    .line 660
    :cond_19
    move v14, v9

    .line 661
    :goto_a
    if-eqz v3, :cond_1a

    .line 662
    .line 663
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-eq v1, v13, :cond_1a

    .line 668
    .line 669
    const/4 v1, 0x1

    .line 670
    goto :goto_b

    .line 671
    :cond_1a
    move v1, v9

    .line 672
    :goto_b
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 673
    .line 674
    .line 675
    move-result v5

    .line 676
    if-eq v5, v13, :cond_1b

    .line 677
    .line 678
    const/4 v5, 0x1

    .line 679
    goto :goto_c

    .line 680
    :cond_1b
    move v5, v9

    .line 681
    :goto_c
    if-nez v5, :cond_1c

    .line 682
    .line 683
    sget v6, Landroidx/appcompat/R$id;->textSpacerNoButtons:I

    .line 684
    .line 685
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 686
    .line 687
    .line 688
    move-result-object v6

    .line 689
    if-eqz v6, :cond_1c

    .line 690
    .line 691
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 692
    .line 693
    .line 694
    :cond_1c
    if-eqz v1, :cond_20

    .line 695
    .line 696
    iget-object v6, v0, Le/q;->w:Landroidx/core/widget/NestedScrollView;

    .line 697
    .line 698
    if-eqz v6, :cond_1d

    .line 699
    .line 700
    const/4 v7, 0x1

    .line 701
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 702
    .line 703
    .line 704
    :cond_1d
    iget-object v6, v0, Le/q;->f:Ljava/lang/CharSequence;

    .line 705
    .line 706
    if-nez v6, :cond_1e

    .line 707
    .line 708
    iget-object v6, v0, Le/q;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 709
    .line 710
    if-eqz v6, :cond_1f

    .line 711
    .line 712
    :cond_1e
    sget v6, Landroidx/appcompat/R$id;->titleDividerNoCustom:I

    .line 713
    .line 714
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 715
    .line 716
    .line 717
    move-result-object v8

    .line 718
    :cond_1f
    if-eqz v8, :cond_21

    .line 719
    .line 720
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 721
    .line 722
    .line 723
    goto :goto_d

    .line 724
    :cond_20
    sget v3, Landroidx/appcompat/R$id;->textSpacerNoTitle:I

    .line 725
    .line 726
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    if-eqz v3, :cond_21

    .line 731
    .line 732
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 733
    .line 734
    .line 735
    :cond_21
    :goto_d
    iget-object v3, v0, Le/q;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 736
    .line 737
    instance-of v6, v3, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 738
    .line 739
    if-eqz v6, :cond_22

    .line 740
    .line 741
    invoke-virtual {v3, v1, v5}, Landroidx/appcompat/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 742
    .line 743
    .line 744
    :cond_22
    if-nez v14, :cond_26

    .line 745
    .line 746
    iget-object v3, v0, Le/q;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 747
    .line 748
    if-eqz v3, :cond_23

    .line 749
    .line 750
    goto :goto_e

    .line 751
    :cond_23
    iget-object v3, v0, Le/q;->w:Landroidx/core/widget/NestedScrollView;

    .line 752
    .line 753
    :goto_e
    if-eqz v3, :cond_26

    .line 754
    .line 755
    if-eqz v5, :cond_24

    .line 756
    .line 757
    move v9, v10

    .line 758
    :cond_24
    or-int/2addr v1, v9

    .line 759
    sget v5, Landroidx/appcompat/R$id;->scrollIndicatorUp:I

    .line 760
    .line 761
    invoke-virtual {v2, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    sget v6, Landroidx/appcompat/R$id;->scrollIndicatorDown:I

    .line 766
    .line 767
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    const/4 v6, 0x3

    .line 772
    invoke-static {v3, v1, v6}, LM/p0;->setScrollIndicators(Landroid/view/View;II)V

    .line 773
    .line 774
    .line 775
    if-eqz v5, :cond_25

    .line 776
    .line 777
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 778
    .line 779
    .line 780
    :cond_25
    if-eqz v2, :cond_26

    .line 781
    .line 782
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 783
    .line 784
    .line 785
    :cond_26
    iget-object v1, v0, Le/q;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 786
    .line 787
    if-eqz v1, :cond_27

    .line 788
    .line 789
    iget-object v2, v0, Le/q;->D:Landroid/widget/ListAdapter;

    .line 790
    .line 791
    if-eqz v2, :cond_27

    .line 792
    .line 793
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 794
    .line 795
    .line 796
    iget v2, v0, Le/q;->E:I

    .line 797
    .line 798
    if-le v2, v12, :cond_27

    .line 799
    .line 800
    const/4 v7, 0x1

    .line 801
    invoke-virtual {v1, v2, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 805
    .line 806
    .line 807
    :cond_27
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/q;->w:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/q;->w:Landroidx/core/widget/NestedScrollView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object p4, p0, Le/q;->L:Le/o;

    .line 6
    .line 7
    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    :cond_0
    const/4 p3, -0x3

    .line 12
    if-eq p1, p3, :cond_3

    .line 13
    .line 14
    const/4 p3, -0x2

    .line 15
    if-eq p1, p3, :cond_2

    .line 16
    .line 17
    const/4 p3, -0x1

    .line 18
    if-ne p1, p3, :cond_1

    .line 19
    .line 20
    iput-object p2, p0, Le/q;->l:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iput-object p4, p0, Le/q;->m:Landroid/os/Message;

    .line 23
    .line 24
    iput-object p5, p0, Le/q;->n:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p2, "Button does not exist"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    iput-object p2, p0, Le/q;->p:Ljava/lang/CharSequence;

    .line 36
    .line 37
    iput-object p4, p0, Le/q;->q:Landroid/os/Message;

    .line 38
    .line 39
    iput-object p5, p0, Le/q;->r:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    iput-object p2, p0, Le/q;->t:Ljava/lang/CharSequence;

    .line 43
    .line 44
    iput-object p4, p0, Le/q;->u:Landroid/os/Message;

    .line 45
    .line 46
    iput-object p5, p0, Le/q;->v:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/q;->C:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/q;->y:Landroid/graphics/drawable/Drawable;

    .line 2
    iput p1, p0, Le/q;->x:I

    .line 3
    iget-object v0, p0, Le/q;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Le/q;->z:Landroid/widget/ImageView;

    iget v0, p0, Le/q;->x:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 7
    iput-object p1, p0, Le/q;->y:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Le/q;->x:I

    .line 9
    iget-object v1, p0, Le/q;->z:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Le/q;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/q;->f:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Le/q;->B:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/q;->e:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Le/q;->A:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/q;->h:Landroid/view/View;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Le/q;->i:I

    .line 5
    .line 6
    iput-boolean p1, p0, Le/q;->j:Z

    .line 7
    .line 8
    return-void
.end method
