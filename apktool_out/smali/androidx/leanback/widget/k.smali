.class public abstract Landroidx/leanback/widget/k;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final A:[I


# instance fields
.field public b:I

.field public e:I

.field public f:I

.field public final j:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/ArrayList;

.field public p:I

.field public q:I

.field public r:Z

.field public final s:I

.field public final t:I

.field public final u:I

.field public v:F

.field public w:F

.field public x:F

.field public y:Landroidx/leanback/widget/f;

.field public final z:Landroidx/leanback/widget/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100a7

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/leanback/widget/k;->A:[I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/leanback/widget/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/leanback/widget/b;-><init>(Landroidx/leanback/widget/k;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/k;->z:Landroidx/leanback/widget/b;

    .line 10
    .line 11
    sget-object v0, Landroidx/leanback/R$styleable;->lbBaseCardView:[I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :try_start_0
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_cardType:I

    .line 19
    .line 20
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, p0, Landroidx/leanback/widget/k;->b:I

    .line 25
    .line 26
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_cardForeground:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_0
    :goto_0
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_cardBackground:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_infoVisibility:I

    .line 53
    .line 54
    const/4 p3, 0x1

    .line 55
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iput p2, p0, Landroidx/leanback/widget/k;->e:I

    .line 60
    .line 61
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_extraVisibility:I

    .line 62
    .line 63
    const/4 v0, 0x2

    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iput p2, p0, Landroidx/leanback/widget/k;->f:I

    .line 69
    .line 70
    iget v0, p0, Landroidx/leanback/widget/k;->e:I

    .line 71
    .line 72
    if-ge p2, v0, :cond_2

    .line 73
    .line 74
    iput v0, p0, Landroidx/leanback/widget/k;->f:I

    .line 75
    .line 76
    :cond_2
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_selectedAnimationDelay:I

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget v1, Landroidx/leanback/R$integer;->lb_card_selected_animation_delay:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iput p2, p0, Landroidx/leanback/widget/k;->s:I

    .line 93
    .line 94
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_selectedAnimationDuration:I

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget v1, Landroidx/leanback/R$integer;->lb_card_selected_animation_duration:I

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    iput p2, p0, Landroidx/leanback/widget/k;->u:I

    .line 111
    .line 112
    sget p2, Landroidx/leanback/R$styleable;->lbBaseCardView_activatedAnimationDuration:I

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sget v1, Landroidx/leanback/R$integer;->lb_card_activated_animation_duration:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    iput p2, p0, Landroidx/leanback/widget/k;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    .line 132
    .line 133
    iput-boolean p3, p0, Landroidx/leanback/widget/k;->r:Z

    .line 134
    .line 135
    new-instance p1, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, Landroidx/leanback/widget/k;->j:Ljava/util/ArrayList;

    .line 141
    .line 142
    new-instance p1, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object p1, p0, Landroidx/leanback/widget/k;->m:Ljava/util/ArrayList;

    .line 148
    .line 149
    new-instance p1, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object p1, p0, Landroidx/leanback/widget/k;->n:Ljava/util/ArrayList;

    .line 155
    .line 156
    const/4 p1, 0x0

    .line 157
    iput p1, p0, Landroidx/leanback/widget/k;->v:F

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->getFinalInfoVisFraction()F

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iput p1, p0, Landroidx/leanback/widget/k;->w:F

    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->getFinalInfoAlpha()F

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput p1, p0, Landroidx/leanback/widget/k;->x:F

    .line 170
    .line 171
    return-void

    .line 172
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    .line 174
    .line 175
    throw p2
.end method

.method private setInfoViewVisibility(Z)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/leanback/widget/k;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/k;->m:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    if-ne v0, v2, :cond_3

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    move p1, v5

    .line 15
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ge p1, v0, :cond_e

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, v5

    .line 34
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ge p1, v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 p1, p1, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_2
    iget-object p1, p0, Landroidx/leanback/widget/k;->n:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ge v5, v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iput v3, p0, Landroidx/leanback/widget/k;->v:F

    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 76
    .line 77
    const/4 v6, 0x2

    .line 78
    if-ne v0, v6, :cond_9

    .line 79
    .line 80
    iget v0, p0, Landroidx/leanback/widget/k;->e:I

    .line 81
    .line 82
    if-ne v0, v6, :cond_7

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->b()V

    .line 85
    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    move v0, v5

    .line 90
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v0, v4, :cond_4

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    if-eqz p1, :cond_5

    .line 109
    .line 110
    move v3, v2

    .line 111
    :cond_5
    iget p1, p0, Landroidx/leanback/widget/k;->w:F

    .line 112
    .line 113
    cmpl-float p1, p1, v3

    .line 114
    .line 115
    if-nez p1, :cond_6

    .line 116
    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :cond_6
    new-instance p1, Landroidx/leanback/widget/h;

    .line 120
    .line 121
    iget v0, p0, Landroidx/leanback/widget/k;->w:F

    .line 122
    .line 123
    invoke-direct {p1, p0, v0, v3}, Landroidx/leanback/widget/h;-><init>(Landroidx/leanback/widget/k;FF)V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 127
    .line 128
    iget v0, p0, Landroidx/leanback/widget/k;->u:I

    .line 129
    .line 130
    int-to-long v0, v0

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 135
    .line 136
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 137
    .line 138
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 145
    .line 146
    new-instance v0, Landroidx/leanback/widget/d;

    .line 147
    .line 148
    invoke-direct {v0, p0}, Landroidx/leanback/widget/d;-><init>(Landroidx/leanback/widget/k;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 155
    .line 156
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_7
    move v0, v5

    .line 161
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-ge v0, v2, :cond_e

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Landroid/view/View;

    .line 172
    .line 173
    if-eqz p1, :cond_8

    .line 174
    .line 175
    move v3, v5

    .line 176
    goto :goto_5

    .line 177
    :cond_8
    move v3, v4

    .line 178
    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_9
    const/4 v4, 0x1

    .line 185
    if-ne v0, v4, :cond_e

    .line 186
    .line 187
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->b()V

    .line 188
    .line 189
    .line 190
    if-eqz p1, :cond_a

    .line 191
    .line 192
    move v0, v5

    .line 193
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-ge v0, v4, :cond_a

    .line 198
    .line 199
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Landroid/view/View;

    .line 204
    .line 205
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_a
    if-eqz p1, :cond_b

    .line 212
    .line 213
    move v0, v2

    .line 214
    goto :goto_7

    .line 215
    :cond_b
    move v0, v3

    .line 216
    :goto_7
    iget v1, p0, Landroidx/leanback/widget/k;->x:F

    .line 217
    .line 218
    cmpl-float v0, v0, v1

    .line 219
    .line 220
    if-nez v0, :cond_c

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_c
    new-instance v0, Landroidx/leanback/widget/g;

    .line 224
    .line 225
    iget v1, p0, Landroidx/leanback/widget/k;->x:F

    .line 226
    .line 227
    if-eqz p1, :cond_d

    .line 228
    .line 229
    move v3, v2

    .line 230
    :cond_d
    invoke-direct {v0, p0, v1, v3}, Landroidx/leanback/widget/g;-><init>(Landroidx/leanback/widget/k;FF)V

    .line 231
    .line 232
    .line 233
    iput-object v0, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 234
    .line 235
    iget p1, p0, Landroidx/leanback/widget/k;->t:I

    .line 236
    .line 237
    int-to-long v1, p1

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 242
    .line 243
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 244
    .line 245
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 252
    .line 253
    new-instance v0, Landroidx/leanback/widget/e;

    .line 254
    .line 255
    invoke-direct {v0, p0}, Landroidx/leanback/widget/e;-><init>(Landroidx/leanback/widget/k;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 262
    .line 263
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 264
    .line 265
    .line 266
    :cond_e
    :goto_8
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->b()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget v1, p0, Landroidx/leanback/widget/k;->p:I

    .line 8
    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    move v3, v0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/k;->n:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-ge v3, v6, :cond_0

    .line 28
    .line 29
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v0, v4

    .line 53
    :cond_1
    new-instance v1, Landroidx/leanback/widget/i;

    .line 54
    .line 55
    iget v2, p0, Landroidx/leanback/widget/k;->v:F

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    int-to-float p1, v0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    :goto_1
    invoke-direct {v1, p0, v2, p1}, Landroidx/leanback/widget/i;-><init>(Landroidx/leanback/widget/k;FF)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 66
    .line 67
    iget p1, p0, Landroidx/leanback/widget/k;->u:I

    .line 68
    .line 69
    int-to-long v2, p1

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 74
    .line 75
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 84
    .line 85
    new-instance v0, Landroidx/leanback/widget/c;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Landroidx/leanback/widget/c;-><init>(Landroidx/leanback/widget/k;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/k;->y:Landroidx/leanback/widget/f;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/leanback/widget/j;

    .line 2
    .line 3
    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->generateDefaultLayoutParams()Landroidx/leanback/widget/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->generateDefaultLayoutParams()Landroidx/leanback/widget/j;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/leanback/widget/j;
    .locals 2

    .line 3
    new-instance v0, Landroidx/leanback/widget/j;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/leanback/widget/j;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/k;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/leanback/widget/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/k;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/leanback/widget/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/k;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/leanback/widget/j;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/leanback/widget/j;
    .locals 2

    .line 4
    new-instance v0, Landroidx/leanback/widget/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/leanback/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/leanback/widget/j;
    .locals 1

    .line 5
    instance-of v0, p1, Landroidx/leanback/widget/j;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Landroidx/leanback/widget/j;

    check-cast p1, Landroidx/leanback/widget/j;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/j;-><init>(Landroidx/leanback/widget/j;)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Landroidx/leanback/widget/j;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCardType()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/k;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtraVisibility()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/leanback/widget/k;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFinalInfoAlpha()F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/k;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/k;->e:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    .line 21
    return v0
.end method

.method public final getFinalInfoVisFraction()F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/k;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/leanback/widget/k;->e:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    return v0
.end method

.method public getInfoVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/k;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    aget v4, p1, v1

    .line 12
    .line 13
    const v5, 0x10100a7

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    if-ne v4, v5, :cond_0

    .line 18
    .line 19
    move v2, v6

    .line 20
    :cond_0
    const v5, 0x101009e

    .line 21
    .line 22
    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    move v3, v6

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    if-eqz v2, :cond_3

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    sget-object p1, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    if-eqz v2, :cond_4

    .line 37
    .line 38
    sget-object p1, Landroidx/leanback/widget/k;->A:[I

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_4
    if-eqz v3, :cond_5

    .line 42
    .line 43
    sget-object p1, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_5
    sget-object p1, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 47
    .line 48
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/k;->z:Landroidx/leanback/widget/b;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Landroidx/leanback/widget/k;->j:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/16 v4, 0x8

    .line 15
    .line 16
    if-ge v1, v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    float-to-int v4, p1

    .line 35
    iget v5, p0, Landroidx/leanback/widget/k;->p:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    add-int/2addr v6, v5

    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    int-to-float v5, v5

    .line 47
    add-float/2addr v5, p1

    .line 48
    float-to-int v5, v5

    .line 49
    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/view/View;->layout(IIII)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    add-float/2addr p1, v2

    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget v1, p0, Landroidx/leanback/widget/k;->b:I

    .line 62
    .line 63
    if-eqz v1, :cond_a

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    move v2, v0

    .line 67
    move v3, v1

    .line 68
    :goto_1
    iget-object v5, p0, Landroidx/leanback/widget/k;->m:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-ge v2, v6, :cond_2

    .line 75
    .line 76
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    int-to-float v5, v5

    .line 87
    add-float/2addr v3, v5

    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget v2, p0, Landroidx/leanback/widget/k;->b:I

    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    if-ne v2, v6, :cond_3

    .line 95
    .line 96
    sub-float/2addr p1, v3

    .line 97
    cmpg-float v2, p1, v1

    .line 98
    .line 99
    if-gez v2, :cond_5

    .line 100
    .line 101
    move p1, v1

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const/4 v6, 0x2

    .line 104
    if-ne v2, v6, :cond_4

    .line 105
    .line 106
    iget v2, p0, Landroidx/leanback/widget/k;->e:I

    .line 107
    .line 108
    if-ne v2, v6, :cond_5

    .line 109
    .line 110
    iget v2, p0, Landroidx/leanback/widget/k;->w:F

    .line 111
    .line 112
    mul-float/2addr v3, v2

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    iget v2, p0, Landroidx/leanback/widget/k;->v:F

    .line 115
    .line 116
    sub-float/2addr p1, v2

    .line 117
    :cond_5
    :goto_2
    move v2, v0

    .line 118
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-ge v2, v6, :cond_8

    .line 123
    .line 124
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eq v7, v4, :cond_7

    .line 135
    .line 136
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    int-to-float v8, v7

    .line 141
    cmpl-float v8, v8, v3

    .line 142
    .line 143
    if-lez v8, :cond_6

    .line 144
    .line 145
    float-to-int v7, v3

    .line 146
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    float-to-int v9, p1

    .line 151
    iget v10, p0, Landroidx/leanback/widget/k;->p:I

    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    add-int/2addr v11, v10

    .line 158
    int-to-float v7, v7

    .line 159
    add-float/2addr p1, v7

    .line 160
    float-to-int v10, p1

    .line 161
    invoke-virtual {v6, v8, v9, v11, v10}, Landroid/view/View;->layout(IIII)V

    .line 162
    .line 163
    .line 164
    sub-float/2addr v3, v7

    .line 165
    cmpg-float v6, v3, v1

    .line 166
    .line 167
    if-gtz v6, :cond_7

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_8
    :goto_4
    iget v1, p0, Landroidx/leanback/widget/k;->b:I

    .line 174
    .line 175
    const/4 v2, 0x3

    .line 176
    if-ne v1, v2, :cond_a

    .line 177
    .line 178
    move v1, v0

    .line 179
    :goto_5
    iget-object v2, p0, Landroidx/leanback/widget/k;->n:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-ge v1, v3, :cond_a

    .line 186
    .line 187
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Landroid/view/View;

    .line 192
    .line 193
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eq v3, v4, :cond_9

    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    float-to-int v5, p1

    .line 204
    iget v6, p0, Landroidx/leanback/widget/k;->p:I

    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    add-int/2addr v7, v6

    .line 211
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    int-to-float v6, v6

    .line 216
    add-float/2addr v6, p1

    .line 217
    float-to-int v6, v6

    .line 218
    invoke-virtual {v2, v3, v5, v7, v6}, Landroid/view/View;->layout(IIII)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    int-to-float v2, v2

    .line 226
    add-float/2addr p1, v2

    .line 227
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_a
    sub-int p1, p4, p2

    .line 231
    .line 232
    sub-int p2, p5, p3

    .line 233
    .line 234
    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/leanback/widget/k;->p:I

    .line 5
    .line 6
    iput v1, v0, Landroidx/leanback/widget/k;->q:I

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/leanback/widget/k;->j:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Landroidx/leanback/widget/k;->m:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v4, v0, Landroidx/leanback/widget/k;->n:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iget v6, v0, Landroidx/leanback/widget/k;->b:I

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    move v8, v7

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v8, v1

    .line 35
    :goto_0
    const/4 v9, 0x2

    .line 36
    const/4 v10, 0x0

    .line 37
    if-eqz v8, :cond_6

    .line 38
    .line 39
    iget v8, v0, Landroidx/leanback/widget/k;->e:I

    .line 40
    .line 41
    if-eqz v8, :cond_3

    .line 42
    .line 43
    if-eq v8, v7, :cond_5

    .line 44
    .line 45
    if-eq v8, v9, :cond_2

    .line 46
    .line 47
    :cond_1
    move v6, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    if-ne v6, v9, :cond_4

    .line 50
    .line 51
    iget v6, v0, Landroidx/leanback/widget/k;->w:F

    .line 52
    .line 53
    cmpl-float v6, v6, v10

    .line 54
    .line 55
    if-lez v6, :cond_1

    .line 56
    .line 57
    :cond_3
    move v6, v7

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    goto :goto_1

    .line 64
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    :goto_1
    if-eqz v6, :cond_6

    .line 69
    .line 70
    move v6, v7

    .line 71
    goto :goto_2

    .line 72
    :cond_6
    move v6, v1

    .line 73
    :goto_2
    iget v8, v0, Landroidx/leanback/widget/k;->b:I

    .line 74
    .line 75
    const/4 v11, 0x3

    .line 76
    if-ne v8, v11, :cond_7

    .line 77
    .line 78
    move v8, v7

    .line 79
    goto :goto_3

    .line 80
    :cond_7
    move v8, v1

    .line 81
    :goto_3
    if-eqz v8, :cond_8

    .line 82
    .line 83
    iget v8, v0, Landroidx/leanback/widget/k;->v:F

    .line 84
    .line 85
    cmpl-float v8, v8, v10

    .line 86
    .line 87
    if-lez v8, :cond_8

    .line 88
    .line 89
    move v8, v7

    .line 90
    goto :goto_4

    .line 91
    :cond_8
    move v8, v1

    .line 92
    :goto_4
    move v12, v1

    .line 93
    :goto_5
    const/16 v13, 0x8

    .line 94
    .line 95
    if-ge v12, v5, :cond_e

    .line 96
    .line 97
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    if-nez v14, :cond_9

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_9
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object v15

    .line 108
    check-cast v15, Landroidx/leanback/widget/j;

    .line 109
    .line 110
    iget v15, v15, Landroidx/leanback/widget/j;->a:I

    .line 111
    .line 112
    if-ne v15, v7, :cond_b

    .line 113
    .line 114
    iget v15, v0, Landroidx/leanback/widget/k;->x:F

    .line 115
    .line 116
    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    if-eqz v6, :cond_a

    .line 123
    .line 124
    move v13, v1

    .line 125
    :cond_a
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_b
    if-ne v15, v9, :cond_d

    .line 130
    .line 131
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    if-eqz v8, :cond_c

    .line 135
    .line 136
    move v13, v1

    .line 137
    :cond_c
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_d
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_e
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    move v6, v1

    .line 155
    move v8, v6

    .line 156
    move v12, v8

    .line 157
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-ge v6, v14, :cond_10

    .line 162
    .line 163
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    check-cast v14, Landroid/view/View;

    .line 168
    .line 169
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    if-eq v15, v13, :cond_f

    .line 174
    .line 175
    invoke-virtual {v0, v14, v5, v5}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 176
    .line 177
    .line 178
    iget v15, v0, Landroidx/leanback/widget/k;->p:I

    .line 179
    .line 180
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    iput v1, v0, Landroidx/leanback/widget/k;->p:I

    .line 189
    .line 190
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    add-int/2addr v8, v1

    .line 195
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 204
    .line 205
    const/4 v1, 0x0

    .line 206
    goto :goto_7

    .line 207
    :cond_10
    iget v1, v0, Landroidx/leanback/widget/k;->p:I

    .line 208
    .line 209
    div-int/2addr v1, v9

    .line 210
    int-to-float v1, v1

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 212
    .line 213
    .line 214
    div-int/lit8 v1, v8, 0x2

    .line 215
    .line 216
    int-to-float v1, v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 218
    .line 219
    .line 220
    iget v1, v0, Landroidx/leanback/widget/k;->p:I

    .line 221
    .line 222
    const/high16 v2, 0x40000000    # 2.0f

    .line 223
    .line 224
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    iget v2, v0, Landroidx/leanback/widget/k;->b:I

    .line 229
    .line 230
    if-eqz v2, :cond_11

    .line 231
    .line 232
    move v2, v7

    .line 233
    goto :goto_8

    .line 234
    :cond_11
    const/4 v2, 0x0

    .line 235
    :goto_8
    if-eqz v2, :cond_18

    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    const/4 v6, 0x0

    .line 239
    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    if-ge v2, v14, :cond_14

    .line 244
    .line 245
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    check-cast v14, Landroid/view/View;

    .line 250
    .line 251
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 252
    .line 253
    .line 254
    move-result v15

    .line 255
    if-eq v15, v13, :cond_13

    .line 256
    .line 257
    invoke-virtual {v0, v14, v1, v5}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 258
    .line 259
    .line 260
    iget v15, v0, Landroidx/leanback/widget/k;->b:I

    .line 261
    .line 262
    if-eq v15, v7, :cond_12

    .line 263
    .line 264
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 265
    .line 266
    .line 267
    move-result v15

    .line 268
    add-int/2addr v6, v15

    .line 269
    :cond_12
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    invoke-static {v12, v14}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 274
    .line 275
    .line 276
    move-result v12

    .line 277
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_14
    iget v2, v0, Landroidx/leanback/widget/k;->b:I

    .line 281
    .line 282
    if-ne v2, v11, :cond_15

    .line 283
    .line 284
    move v2, v7

    .line 285
    goto :goto_a

    .line 286
    :cond_15
    const/4 v2, 0x0

    .line 287
    :goto_a
    if-eqz v2, :cond_17

    .line 288
    .line 289
    const/4 v2, 0x0

    .line 290
    const/4 v3, 0x0

    .line 291
    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    if-ge v2, v11, :cond_19

    .line 296
    .line 297
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v11

    .line 301
    check-cast v11, Landroid/view/View;

    .line 302
    .line 303
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 304
    .line 305
    .line 306
    move-result v14

    .line 307
    if-eq v14, v13, :cond_16

    .line 308
    .line 309
    invoke-virtual {v0, v11, v1, v5}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 313
    .line 314
    .line 315
    move-result v14

    .line 316
    add-int/2addr v3, v14

    .line 317
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    .line 318
    .line 319
    .line 320
    move-result v11

    .line 321
    invoke-static {v12, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 322
    .line 323
    .line 324
    move-result v12

    .line 325
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 326
    .line 327
    goto :goto_b

    .line 328
    :cond_17
    const/4 v3, 0x0

    .line 329
    goto :goto_c

    .line 330
    :cond_18
    const/4 v3, 0x0

    .line 331
    const/4 v6, 0x0

    .line 332
    :cond_19
    :goto_c
    iget v1, v0, Landroidx/leanback/widget/k;->b:I

    .line 333
    .line 334
    if-eqz v1, :cond_1a

    .line 335
    .line 336
    move v1, v7

    .line 337
    goto :goto_d

    .line 338
    :cond_1a
    const/4 v1, 0x0

    .line 339
    :goto_d
    if-eqz v1, :cond_1b

    .line 340
    .line 341
    iget v1, v0, Landroidx/leanback/widget/k;->e:I

    .line 342
    .line 343
    if-ne v1, v9, :cond_1b

    .line 344
    .line 345
    move v1, v7

    .line 346
    goto :goto_e

    .line 347
    :cond_1b
    const/4 v1, 0x0

    .line 348
    :goto_e
    int-to-float v2, v8

    .line 349
    int-to-float v4, v6

    .line 350
    if-eqz v1, :cond_1c

    .line 351
    .line 352
    iget v5, v0, Landroidx/leanback/widget/k;->w:F

    .line 353
    .line 354
    mul-float/2addr v4, v5

    .line 355
    :cond_1c
    add-float/2addr v2, v4

    .line 356
    int-to-float v3, v3

    .line 357
    add-float/2addr v2, v3

    .line 358
    if-eqz v1, :cond_1d

    .line 359
    .line 360
    goto :goto_f

    .line 361
    :cond_1d
    iget v10, v0, Landroidx/leanback/widget/k;->v:F

    .line 362
    .line 363
    :goto_f
    sub-float/2addr v2, v10

    .line 364
    float-to-int v1, v2

    .line 365
    iput v1, v0, Landroidx/leanback/widget/k;->q:I

    .line 366
    .line 367
    iget v1, v0, Landroidx/leanback/widget/k;->p:I

    .line 368
    .line 369
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    add-int/2addr v2, v1

    .line 374
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    add-int/2addr v1, v2

    .line 379
    move/from16 v2, p1

    .line 380
    .line 381
    invoke-static {v1, v2, v12}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    iget v2, v0, Landroidx/leanback/widget/k;->q:I

    .line 386
    .line 387
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    add-int/2addr v3, v2

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    add-int/2addr v2, v3

    .line 397
    shl-int/lit8 v3, v12, 0x10

    .line 398
    .line 399
    move/from16 v4, p2

    .line 400
    .line 401
    invoke-static {v2, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 406
    .line 407
    .line 408
    return-void
.end method

.method public setActivated(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Landroidx/leanback/widget/k;->b:I

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iget p1, p0, Landroidx/leanback/widget/k;->e:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_3

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroidx/leanback/widget/k;->setInfoViewVisibility(Z)V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public setCardType(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/k;->b:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Landroidx/leanback/widget/k;->b:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Invalid card type specified: "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ". Defaulting to type CARD_TYPE_MAIN_ONLY."

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "BaseCardView"

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput p1, p0, Landroidx/leanback/widget/k;->b:I

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public setExtraVisibility(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/leanback/widget/k;->f:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/leanback/widget/k;->f:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setInfoVisibility(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/k;->e:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->b()V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroidx/leanback/widget/k;->e:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->getFinalInfoVisFraction()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Landroidx/leanback/widget/k;->w:F

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/leanback/widget/k;->getFinalInfoAlpha()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget v0, p0, Landroidx/leanback/widget/k;->x:F

    .line 24
    .line 25
    cmpl-float v0, p1, v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iput p1, p0, Landroidx/leanback/widget/k;->x:F

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/k;->m:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge p1, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/View;

    .line 45
    .line 46
    iget v1, p0, Landroidx/leanback/widget/k;->x:F

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Landroidx/leanback/widget/k;->z:Landroidx/leanback/widget/b;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroidx/leanback/widget/k;->b:I

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-boolean p1, p0, Landroidx/leanback/widget/k;->r:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Landroidx/leanback/widget/k;->r:Z

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget p1, p0, Landroidx/leanback/widget/k;->s:I

    .line 38
    .line 39
    int-to-long v1, p1

    .line 40
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/k;->a(Z)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/k;->e:I

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    if-ne v0, v1, :cond_3

    .line 53
    .line 54
    invoke-direct {p0, p1}, Landroidx/leanback/widget/k;->setInfoViewVisibility(Z)V

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method

.method public setSelectedAnimationDelayed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/k;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
