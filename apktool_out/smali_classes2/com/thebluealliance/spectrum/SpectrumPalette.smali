.class public Lcom/thebluealliance/spectrum/SpectrumPalette;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/ArrayList;

.field public final b:I

.field public final e:I

.field public f:[I

.field public j:I

.field public m:Ln4/e;

.field public final n:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:I

.field public x:I

.field public y:Z

.field public final z:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->n:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:Z

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->q:I

    .line 11
    .line 12
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    .line 13
    .line 14
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->s:I

    .line 15
    .line 16
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:I

    .line 17
    .line 18
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->u:I

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->v:Z

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    iput v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 24
    .line 25
    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->x:I

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->y:Z

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->A:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette:[I

    .line 45
    .line 46
    invoke-virtual {v1, p2, v2, p1, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    sget v1, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette_spectrum_colors:I

    .line 51
    .line 52
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:[I

    .line 71
    .line 72
    :cond_0
    sget v1, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette_spectrum_autoPadding:I

    .line 73
    .line 74
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iput-boolean v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->n:Z

    .line 79
    .line 80
    sget v1, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette_spectrum_outlineWidth:I

    .line 81
    .line 82
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    .line 87
    .line 88
    sget p1, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette_spectrum_columnCount:I

    .line 89
    .line 90
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->q:I

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    if-eq p1, v0, :cond_1

    .line 98
    .line 99
    iput-boolean v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:Z

    .line 100
    .line 101
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:I

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->u:I

    .line 115
    .line 116
    new-instance p1, Lorg/greenrobot/eventbus/EventBus;

    .line 117
    .line 118
    invoke-direct {p1}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->z:Lorg/greenrobot/eventbus/EventBus;

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    sget p2, Lcom/thebluealliance/spectrum/R$dimen;->color_item_small:I

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->b:I

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    sget p2, Lcom/thebluealliance/spectrum/R$dimen;->color_item_margins_small:I

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method private getOriginalPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->u:I

    .line 2
    .line 3
    return v0
.end method

.method private getOriginalPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    array-length v1, v0

    .line 8
    div-int/2addr v1, p1

    .line 9
    array-length v0, v0

    .line 10
    rem-int/2addr v0, p1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    :cond_1
    iget p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->b:I

    .line 16
    .line 17
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    .line 18
    .line 19
    mul-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    mul-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public createPaletteView()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 6
    .line 7
    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->x:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->y:Z

    .line 15
    .line 16
    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 17
    .line 18
    iput v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->x:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:[I

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    const/4 v4, -0x1

    .line 45
    const/4 v5, -0x2

    .line 46
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53
    .line 54
    .line 55
    move v3, v2

    .line 56
    move v6, v3

    .line 57
    :goto_0
    iget-object v7, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:[I

    .line 58
    .line 59
    array-length v8, v7

    .line 60
    if-ge v3, v8, :cond_5

    .line 61
    .line 62
    aget v7, v7, v3

    .line 63
    .line 64
    iget v8, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->j:I

    .line 65
    .line 66
    new-instance v9, Lo4/c;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    if-ne v7, v8, :cond_2

    .line 73
    .line 74
    move v8, v0

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v8, v2

    .line 77
    :goto_1
    iget-object v11, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->z:Lorg/greenrobot/eventbus/EventBus;

    .line 78
    .line 79
    invoke-direct {v9, v10, v7, v8, v11}, Lo4/c;-><init>(Landroid/content/Context;IZLorg/greenrobot/eventbus/EventBus;)V

    .line 80
    .line 81
    .line 82
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    .line 84
    iget v8, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->b:I

    .line 85
    .line 86
    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    .line 89
    iget v8, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    .line 90
    .line 91
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    iget v7, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    .line 98
    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    invoke-virtual {v9, v7}, Lo4/c;->setOutlineWidth(I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    iget-object v7, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->A:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v6, v6, 0x1

    .line 113
    .line 114
    iget v7, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 115
    .line 116
    if-ne v6, v7, :cond_4

    .line 117
    .line 118
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    new-instance v1, Landroid/widget/LinearLayout;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    .line 132
    .line 133
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 134
    .line 135
    invoke-direct {v6, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    .line 143
    .line 144
    move v6, v2

    .line 145
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_5
    if-lez v6, :cond_7

    .line 149
    .line 150
    :goto_2
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 151
    .line 152
    if-ge v6, v0, :cond_6

    .line 153
    .line 154
    new-instance v0, Landroid/widget/ImageView;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    .line 165
    iget v3, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->b:I

    .line 166
    .line 167
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    .line 169
    .line 170
    iget v3, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    .line 171
    .line 172
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v6, v6, 0x1

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    :cond_7
    :goto_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget-boolean v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:Z

    .line 18
    .line 19
    const/high16 v3, -0x80000000

    .line 20
    .line 21
    const/high16 v4, 0x40000000    # 2.0f

    .line 22
    .line 23
    if-nez v2, :cond_4

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-ne v0, v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    add-int/2addr v5, v0

    .line 37
    sub-int v0, p1, v5

    .line 38
    .line 39
    :goto_0
    add-int/lit8 v5, v2, 0x1

    .line 40
    .line 41
    iget v6, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->b:I

    .line 42
    .line 43
    mul-int/2addr v6, v5

    .line 44
    mul-int/lit8 v7, v5, 0x2

    .line 45
    .line 46
    iget v8, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    .line 47
    .line 48
    mul-int/2addr v7, v8

    .line 49
    add-int/2addr v7, v6

    .line 50
    if-gt v7, v0, :cond_0

    .line 51
    .line 52
    move v2, v5

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iput v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    if-ne v0, v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    add-int/2addr v5, v0

    .line 68
    sub-int v0, p1, v5

    .line 69
    .line 70
    :goto_1
    add-int/lit8 v5, v2, 0x1

    .line 71
    .line 72
    iget v6, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->b:I

    .line 73
    .line 74
    mul-int/2addr v6, v5

    .line 75
    mul-int/lit8 v7, v5, 0x2

    .line 76
    .line 77
    iget v8, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    .line 78
    .line 79
    mul-int/2addr v7, v8

    .line 80
    add-int/2addr v7, v6

    .line 81
    if-gt v7, v0, :cond_2

    .line 82
    .line 83
    move v2, v5

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iput v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    iget p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->b:I

    .line 89
    .line 90
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    .line 91
    .line 92
    mul-int/lit8 v0, v0, 0x2

    .line 93
    .line 94
    add-int/2addr v0, p1

    .line 95
    const/4 p1, 0x4

    .line 96
    mul-int/2addr v0, p1

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    add-int/2addr v2, v0

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    add-int/2addr v0, v2

    .line 107
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 108
    .line 109
    move p1, v0

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    iget p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->q:I

    .line 112
    .line 113
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->b:I

    .line 114
    .line 115
    iget v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    .line 116
    .line 117
    mul-int/lit8 v2, v2, 0x2

    .line 118
    .line 119
    add-int/2addr v2, v0

    .line 120
    mul-int/2addr v2, p1

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    add-int/2addr p1, v2

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr p1, v0

    .line 131
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->q:I

    .line 132
    .line 133
    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 134
    .line 135
    :goto_2
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 136
    .line 137
    iget v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->b:I

    .line 138
    .line 139
    iget v5, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    .line 140
    .line 141
    mul-int/lit8 v5, v5, 0x2

    .line 142
    .line 143
    add-int/2addr v5, v2

    .line 144
    mul-int/2addr v5, v0

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    add-int/2addr v0, v5

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    add-int/2addr v2, v0

    .line 155
    sub-int v0, p1, v2

    .line 156
    .line 157
    div-int/lit8 v0, v0, 0x2

    .line 158
    .line 159
    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->s:I

    .line 160
    .line 161
    iget-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->n:Z

    .line 162
    .line 163
    if-ne v1, v4, :cond_5

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    if-ne v1, v3, :cond_7

    .line 167
    .line 168
    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Lcom/thebluealliance/spectrum/SpectrumPalette;->a(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    iget v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:I

    .line 175
    .line 176
    add-int/2addr v1, v2

    .line 177
    iget v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->u:I

    .line 178
    .line 179
    add-int/2addr v1, v2

    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    iget v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->s:I

    .line 183
    .line 184
    mul-int/lit8 v2, v2, 0x2

    .line 185
    .line 186
    add-int/2addr v1, v2

    .line 187
    :cond_6
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    iget p2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->w:I

    .line 193
    .line 194
    invoke-virtual {p0, p2}, Lcom/thebluealliance/spectrum/SpectrumPalette;->a(I)I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:I

    .line 199
    .line 200
    add-int/2addr p2, v1

    .line 201
    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->u:I

    .line 202
    .line 203
    add-int/2addr p2, v1

    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->s:I

    .line 207
    .line 208
    mul-int/lit8 v1, v1, 0x2

    .line 209
    .line 210
    add-int/2addr p2, v1

    .line 211
    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:I

    .line 218
    .line 219
    iget v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->s:I

    .line 220
    .line 221
    add-int/2addr v1, v2

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    iget v3, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->u:I

    .line 227
    .line 228
    iget v5, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->s:I

    .line 229
    .line 230
    add-int/2addr v3, v5

    .line 231
    const/4 v5, 0x1

    .line 232
    iput-boolean v5, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->v:Z

    .line 233
    .line 234
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setPadding(IIII)V

    .line 235
    .line 236
    .line 237
    :cond_9
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->createPaletteView()V

    .line 238
    .line 239
    .line 240
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 249
    .line 250
    .line 251
    return-void
.end method

.method public onSelectedColorChanged(Lo4/e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lo4/e;->getSelectedColor()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->j:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->m:Ln4/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ln4/e;->onColorSelected(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setColors([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:[I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->y:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->createPaletteView()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFixedColumnCount(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "set column count to "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "spectrum"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:Z

    .line 24
    .line 25
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->q:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:Z

    .line 36
    .line 37
    const/4 p1, -0x1

    .line 38
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->q:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setOnColorSelectedListener(Ln4/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->m:Ln4/e;

    .line 2
    .line 3
    return-void
.end method

.method public setOutlineWidth(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->A:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lo4/c;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lo4/c;->setOutlineWidth(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->v:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput p2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:I

    .line 9
    .line 10
    iput p4, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->u:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->j:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->z:Lorg/greenrobot/eventbus/EventBus;

    .line 4
    .line 5
    new-instance v1, Lo4/e;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lo4/e;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
