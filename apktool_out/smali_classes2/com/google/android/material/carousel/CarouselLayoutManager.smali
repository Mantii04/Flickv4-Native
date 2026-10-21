.class public Lcom/google/android/material/carousel/CarouselLayoutManager;
.super Lm1/i0;
.source "SourceFile"

# interfaces
.implements Lo3/b;
.implements Lm1/v0;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public p:I

.field public q:I

.field public r:I

.field public final s:Lo3/f;

.field public t:Lo3/j;

.field public u:Lo3/o;

.field public v:Lo3/n;

.field public w:I

.field public x:Ljava/util/HashMap;

.field public y:Lo3/i;

.field public final z:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lo3/p;

    invoke-direct {v0}, Lo3/p;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;-><init>(Lo3/j;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lm1/i0;-><init>()V

    .line 12
    new-instance p3, Lo3/f;

    invoke-direct {p3}, Lo3/f;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->s:Lo3/f;

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 14
    new-instance p4, Lo3/c;

    invoke-direct {p4, p0}, Lo3/c;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    iput-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->z:Landroid/view/View$OnLayoutChangeListener;

    const/4 p4, -0x1

    .line 15
    iput p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->B:I

    .line 16
    iput p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    .line 17
    new-instance p4, Lo3/p;

    invoke-direct {p4}, Lo3/p;-><init>()V

    invoke-virtual {p0, p4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselStrategy(Lo3/j;)V

    if-eqz p2, :cond_0

    .line 18
    sget-object p4, Lcom/google/android/material/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 19
    sget p2, Lcom/google/android/material/R$styleable;->Carousel_carousel_alignment:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselAlignment(I)V

    .line 20
    sget p2, Lcom/google/android/material/R$styleable;->RecyclerView_android_orientation:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setOrientation(I)V

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lo3/j;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;-><init>(Lo3/j;I)V

    return-void
.end method

.method public constructor <init>(Lo3/j;I)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lm1/i0;-><init>()V

    .line 4
    new-instance v0, Lo3/f;

    invoke-direct {v0}, Lo3/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->s:Lo3/f;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 6
    new-instance v1, Lo3/c;

    invoke-direct {v1, p0}, Lo3/c;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->z:Landroid/view/View$OnLayoutChangeListener;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->B:I

    .line 8
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setCarouselStrategy(Lo3/j;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->setOrientation(I)V

    return-void
.end method

.method public static x(Ljava/util/List;FZ)LC/k;
    .locals 13

    .line 1
    const/4 v0, -0x1

    .line 2
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    .line 4
    .line 5
    const v2, -0x800001

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    move v6, v0

    .line 10
    move v7, v6

    .line 11
    move v8, v7

    .line 12
    move v9, v8

    .line 13
    move v4, v2

    .line 14
    move v5, v3

    .line 15
    move v2, v1

    .line 16
    move v3, v2

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    if-ge v5, v10, :cond_5

    .line 22
    .line 23
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v10

    .line 27
    check-cast v10, Lo3/m;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget v10, v10, Lo3/m;->b:F

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget v10, v10, Lo3/m;->a:F

    .line 35
    .line 36
    :goto_1
    sub-float v11, v10, p1

    .line 37
    .line 38
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    cmpg-float v12, v10, p1

    .line 43
    .line 44
    if-gtz v12, :cond_1

    .line 45
    .line 46
    cmpg-float v12, v11, v1

    .line 47
    .line 48
    if-gtz v12, :cond_1

    .line 49
    .line 50
    move v6, v5

    .line 51
    move v1, v11

    .line 52
    :cond_1
    cmpl-float v12, v10, p1

    .line 53
    .line 54
    if-lez v12, :cond_2

    .line 55
    .line 56
    cmpg-float v12, v11, v2

    .line 57
    .line 58
    if-gtz v12, :cond_2

    .line 59
    .line 60
    move v8, v5

    .line 61
    move v2, v11

    .line 62
    :cond_2
    cmpg-float v11, v10, v3

    .line 63
    .line 64
    if-gtz v11, :cond_3

    .line 65
    .line 66
    move v7, v5

    .line 67
    move v3, v10

    .line 68
    :cond_3
    cmpl-float v11, v10, v4

    .line 69
    .line 70
    if-lez v11, :cond_4

    .line 71
    .line 72
    move v9, v5

    .line 73
    move v4, v10

    .line 74
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    if-ne v6, v0, :cond_6

    .line 78
    .line 79
    move v6, v7

    .line 80
    :cond_6
    if-ne v8, v0, :cond_7

    .line 81
    .line 82
    move v8, v9

    .line 83
    :cond_7
    new-instance p1, LC/k;

    .line 84
    .line 85
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lo3/m;

    .line 90
    .line 91
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Lo3/m;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iget v0, p2, Lo3/m;->a:F

    .line 101
    .line 102
    iget v1, p0, Lo3/m;->a:F

    .line 103
    .line 104
    cmpg-float v0, v0, v1

    .line 105
    .line 106
    if-gtz v0, :cond_8

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    goto :goto_2

    .line 110
    :cond_8
    const/4 v0, 0x0

    .line 111
    :goto_2
    invoke-static {v0}, LL/h;->checkArgument(Z)V

    .line 112
    .line 113
    .line 114
    iput-object p2, p1, LC/k;->a:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object p0, p1, LC/k;->b:Ljava/lang/Object;

    .line 117
    .line 118
    return-object p1
.end method


# virtual methods
.method public final A(FLC/k;)Z
    .locals 3

    .line 1
    iget-object v0, p2, LC/k;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo3/m;

    .line 4
    .line 5
    iget v1, v0, Lo3/m;->d:F

    .line 6
    .line 7
    iget-object p2, p2, LC/k;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Lo3/m;

    .line 10
    .line 11
    iget v2, p2, Lo3/m;->d:F

    .line 12
    .line 13
    iget v0, v0, Lo3/m;->b:F

    .line 14
    .line 15
    iget p2, p2, Lo3/m;->b:F

    .line 16
    .line 17
    invoke-static {v1, v2, v0, p2, p1}, Lg3/a;->lerp(FFFFF)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float/2addr p2, v0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->n(FF)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->t()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    int-to-float p2, p2

    .line 39
    cmpl-float p1, p1, p2

    .line 40
    .line 41
    if-lez p1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p2, 0x0

    .line 45
    cmpg-float p1, p1, p2

    .line 46
    .line 47
    if-gez p1, :cond_1

    .line 48
    .line 49
    :goto_0
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    return p1
.end method

.method public final B(Lm1/p0;FI)Lo3/e;
    .locals 2

    .line 1
    invoke-virtual {p1, p3}, Lm1/p0;->getViewForPosition(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p3, 0x0

    .line 6
    invoke-virtual {p0, p1, p3, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 10
    .line 11
    iget v0, v0, Lo3/n;->a:F

    .line 12
    .line 13
    const/high16 v1, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float/2addr v0, v1

    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->n(FF)F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 21
    .line 22
    iget-object v0, v0, Lo3/n;->b:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->x(Ljava/util/List;FZ)LC/k;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->q(Landroid/view/View;FLC/k;)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    new-instance v1, Lo3/e;

    .line 33
    .line 34
    invoke-direct {v1, p1, p2, v0, p3}, Lo3/e;-><init>(Landroid/view/View;FFLC/k;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method public final C(Lm1/p0;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    invoke-virtual {v2, v1}, Lm1/p0;->getViewForPosition(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lo3/j;

    .line 14
    .line 15
    check-cast v3, Lo3/p;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lo3/b;->getContainerHeight()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    int-to-float v4, v4

    .line 25
    invoke-interface {v0}, Lo3/b;->isHorizontal()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Lo3/b;->getContainerWidth()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    int-to-float v4, v4

    .line 36
    :cond_0
    move v5, v4

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lm1/j0;

    .line 42
    .line 43
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 44
    .line 45
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 46
    .line 47
    add-int/2addr v6, v7

    .line 48
    int-to-float v6, v6

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    int-to-float v7, v7

    .line 54
    invoke-interface {v0}, Lo3/b;->isHorizontal()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 61
    .line 62
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 63
    .line 64
    add-int/2addr v6, v4

    .line 65
    int-to-float v6, v6

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    int-to-float v7, v4

    .line 71
    :cond_1
    move v4, v6

    .line 72
    invoke-virtual {v3}, Lo3/j;->getSmallItemSizeMin()F

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    add-float/2addr v6, v4

    .line 77
    invoke-virtual {v3}, Lo3/j;->getSmallItemSizeMax()F

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    add-float/2addr v8, v4

    .line 82
    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    add-float v9, v7, v4

    .line 87
    .line 88
    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    const/high16 v9, 0x40400000    # 3.0f

    .line 93
    .line 94
    div-float/2addr v7, v9

    .line 95
    add-float/2addr v7, v4

    .line 96
    add-float v9, v6, v4

    .line 97
    .line 98
    add-float v10, v8, v4

    .line 99
    .line 100
    invoke-static {v7, v9, v10}, LG/a;->clamp(FFF)F

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    add-float v9, v12, v7

    .line 105
    .line 106
    const/high16 v14, 0x40000000    # 2.0f

    .line 107
    .line 108
    div-float v10, v9, v14

    .line 109
    .line 110
    sget-object v9, Lo3/p;->d:[I

    .line 111
    .line 112
    mul-float v11, v6, v14

    .line 113
    .line 114
    cmpg-float v11, v5, v11

    .line 115
    .line 116
    const/4 v15, 0x1

    .line 117
    if-gez v11, :cond_2

    .line 118
    .line 119
    new-array v9, v15, [I

    .line 120
    .line 121
    aput v1, v9, v1

    .line 122
    .line 123
    :cond_2
    sget-object v11, Lo3/p;->e:[I

    .line 124
    .line 125
    invoke-interface {v0}, Lo3/b;->getCarouselAlignment()I

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    if-ne v13, v15, :cond_5

    .line 130
    .line 131
    array-length v13, v9

    .line 132
    move/from16 p1, v14

    .line 133
    .line 134
    new-array v14, v13, [I

    .line 135
    .line 136
    move/from16 v16, v15

    .line 137
    .line 138
    :goto_0
    const/4 v15, 0x2

    .line 139
    if-ge v1, v13, :cond_3

    .line 140
    .line 141
    aget v17, v9, v1

    .line 142
    .line 143
    mul-int/lit8 v17, v17, 0x2

    .line 144
    .line 145
    aput v17, v14, v1

    .line 146
    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    new-array v1, v15, [I

    .line 151
    .line 152
    const/4 v9, 0x0

    .line 153
    :goto_1
    if-ge v9, v15, :cond_4

    .line 154
    .line 155
    aget v13, v11, v9

    .line 156
    .line 157
    mul-int/2addr v13, v15

    .line 158
    aput v13, v1, v9

    .line 159
    .line 160
    add-int/lit8 v9, v9, 0x1

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    move-object v11, v1

    .line 164
    move-object v9, v14

    .line 165
    goto :goto_2

    .line 166
    :cond_5
    move/from16 p1, v14

    .line 167
    .line 168
    move/from16 v16, v15

    .line 169
    .line 170
    :goto_2
    array-length v1, v11

    .line 171
    const/4 v14, 0x0

    .line 172
    const/high16 v15, -0x80000000

    .line 173
    .line 174
    :goto_3
    if-ge v14, v1, :cond_7

    .line 175
    .line 176
    aget v13, v11, v14

    .line 177
    .line 178
    if-le v13, v15, :cond_6

    .line 179
    .line 180
    move v15, v13

    .line 181
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    int-to-float v1, v15

    .line 185
    mul-float/2addr v1, v10

    .line 186
    sub-float v1, v5, v1

    .line 187
    .line 188
    array-length v13, v9

    .line 189
    const/high16 v14, -0x80000000

    .line 190
    .line 191
    const/4 v15, 0x0

    .line 192
    :goto_4
    if-ge v15, v13, :cond_9

    .line 193
    .line 194
    move/from16 v17, v1

    .line 195
    .line 196
    aget v1, v9, v15

    .line 197
    .line 198
    if-le v1, v14, :cond_8

    .line 199
    .line 200
    move v14, v1

    .line 201
    :cond_8
    add-int/lit8 v15, v15, 0x1

    .line 202
    .line 203
    move/from16 v1, v17

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_9
    move/from16 v17, v1

    .line 207
    .line 208
    int-to-float v1, v14

    .line 209
    mul-float/2addr v1, v8

    .line 210
    sub-float v1, v17, v1

    .line 211
    .line 212
    div-float/2addr v1, v12

    .line 213
    float-to-double v13, v1

    .line 214
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    .line 215
    .line 216
    .line 217
    move-result-wide v13

    .line 218
    move-object v15, v2

    .line 219
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 220
    .line 221
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(DD)D

    .line 222
    .line 223
    .line 224
    move-result-wide v1

    .line 225
    double-to-int v1, v1

    .line 226
    div-float v2, v5, v12

    .line 227
    .line 228
    float-to-double v13, v2

    .line 229
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 230
    .line 231
    .line 232
    move-result-wide v13

    .line 233
    double-to-int v2, v13

    .line 234
    sub-int v1, v2, v1

    .line 235
    .line 236
    add-int/lit8 v1, v1, 0x1

    .line 237
    .line 238
    new-array v13, v1, [I

    .line 239
    .line 240
    const/4 v14, 0x0

    .line 241
    :goto_5
    if-ge v14, v1, :cond_a

    .line 242
    .line 243
    sub-int v17, v2, v14

    .line 244
    .line 245
    aput v17, v13, v14

    .line 246
    .line 247
    add-int/lit8 v14, v14, 0x1

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_a
    move/from16 v28, v7

    .line 251
    .line 252
    move v7, v6

    .line 253
    move/from16 v6, v28

    .line 254
    .line 255
    invoke-static/range {v5 .. v13}, Lo3/a;->a(FFFF[IF[IF[I)Lo3/a;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    iget v2, v1, Lo3/a;->c:I

    .line 260
    .line 261
    iget v9, v1, Lo3/a;->d:I

    .line 262
    .line 263
    add-int/2addr v2, v9

    .line 264
    iget v9, v1, Lo3/a;->g:I

    .line 265
    .line 266
    add-int/2addr v2, v9

    .line 267
    iput v2, v3, Lo3/p;->c:I

    .line 268
    .line 269
    invoke-interface {v0}, Lo3/b;->getItemCount()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    iget v3, v1, Lo3/a;->c:I

    .line 274
    .line 275
    iget v11, v1, Lo3/a;->d:I

    .line 276
    .line 277
    add-int v13, v3, v11

    .line 278
    .line 279
    add-int/2addr v13, v9

    .line 280
    sub-int/2addr v13, v2

    .line 281
    if-lez v13, :cond_c

    .line 282
    .line 283
    if-gtz v3, :cond_b

    .line 284
    .line 285
    move/from16 v2, v16

    .line 286
    .line 287
    if-le v11, v2, :cond_c

    .line 288
    .line 289
    :cond_b
    const/4 v2, 0x1

    .line 290
    goto :goto_6

    .line 291
    :cond_c
    const/4 v2, 0x0

    .line 292
    :goto_6
    if-lez v13, :cond_f

    .line 293
    .line 294
    iget v3, v1, Lo3/a;->c:I

    .line 295
    .line 296
    if-lez v3, :cond_d

    .line 297
    .line 298
    add-int/lit8 v3, v3, -0x1

    .line 299
    .line 300
    iput v3, v1, Lo3/a;->c:I

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_d
    iget v3, v1, Lo3/a;->d:I

    .line 304
    .line 305
    const/4 v11, 0x1

    .line 306
    if-le v3, v11, :cond_e

    .line 307
    .line 308
    add-int/lit8 v3, v3, -0x1

    .line 309
    .line 310
    iput v3, v1, Lo3/a;->d:I

    .line 311
    .line 312
    :cond_e
    :goto_7
    add-int/lit8 v13, v13, -0x1

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_f
    if-eqz v2, :cond_10

    .line 316
    .line 317
    iget v2, v1, Lo3/a;->c:I

    .line 318
    .line 319
    filled-new-array {v2}, [I

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    iget v1, v1, Lo3/a;->d:I

    .line 324
    .line 325
    filled-new-array {v1}, [I

    .line 326
    .line 327
    .line 328
    move-result-object v11

    .line 329
    filled-new-array {v9}, [I

    .line 330
    .line 331
    .line 332
    move-result-object v13

    .line 333
    move-object v9, v2

    .line 334
    invoke-static/range {v5 .. v13}, Lo3/a;->a(FFFF[IF[IF[I)Lo3/a;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    :cond_10
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-interface {v0}, Lo3/b;->getCarouselAlignment()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    const/4 v6, 0x0

    .line 347
    const/4 v11, 0x1

    .line 348
    if-ne v3, v11, :cond_15

    .line 349
    .line 350
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    sget v3, Lcom/google/android/material/R$dimen;->m3_carousel_gone_size:I

    .line 355
    .line 356
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    add-float/2addr v2, v4

    .line 361
    iget v3, v1, Lo3/a;->f:F

    .line 362
    .line 363
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 364
    .line 365
    .line 366
    move-result v10

    .line 367
    div-float v2, v10, p1

    .line 368
    .line 369
    sub-float v8, v6, v2

    .line 370
    .line 371
    iget v3, v1, Lo3/a;->b:F

    .line 372
    .line 373
    iget v7, v1, Lo3/a;->c:I

    .line 374
    .line 375
    invoke-static {v6, v3, v7}, Lo3/k;->b(FFI)F

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    iget v7, v1, Lo3/a;->b:F

    .line 380
    .line 381
    iget v9, v1, Lo3/a;->c:I

    .line 382
    .line 383
    int-to-float v9, v9

    .line 384
    div-float v9, v9, p1

    .line 385
    .line 386
    float-to-double v11, v9

    .line 387
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 388
    .line 389
    .line 390
    move-result-wide v11

    .line 391
    double-to-int v9, v11

    .line 392
    invoke-static {v3, v7, v9}, Lo3/k;->a(FFI)F

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    iget v9, v1, Lo3/a;->b:F

    .line 397
    .line 398
    iget v11, v1, Lo3/a;->c:I

    .line 399
    .line 400
    invoke-static {v6, v7, v9, v11}, Lo3/k;->c(FFFI)F

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    iget v9, v1, Lo3/a;->e:F

    .line 405
    .line 406
    iget v11, v1, Lo3/a;->d:I

    .line 407
    .line 408
    invoke-static {v7, v9, v11}, Lo3/k;->b(FFI)F

    .line 409
    .line 410
    .line 411
    move-result v13

    .line 412
    iget v9, v1, Lo3/a;->e:F

    .line 413
    .line 414
    iget v11, v1, Lo3/a;->d:I

    .line 415
    .line 416
    int-to-float v11, v11

    .line 417
    div-float v11, v11, p1

    .line 418
    .line 419
    float-to-double v11, v11

    .line 420
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 421
    .line 422
    .line 423
    move-result-wide v11

    .line 424
    double-to-int v11, v11

    .line 425
    invoke-static {v13, v9, v11}, Lo3/k;->a(FFI)F

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    iget v11, v1, Lo3/a;->e:F

    .line 430
    .line 431
    iget v12, v1, Lo3/a;->d:I

    .line 432
    .line 433
    invoke-static {v7, v9, v11, v12}, Lo3/k;->c(FFFI)F

    .line 434
    .line 435
    .line 436
    move-result v7

    .line 437
    iget v9, v1, Lo3/a;->f:F

    .line 438
    .line 439
    iget v11, v1, Lo3/a;->g:I

    .line 440
    .line 441
    invoke-static {v7, v9, v11}, Lo3/k;->b(FFI)F

    .line 442
    .line 443
    .line 444
    move-result v14

    .line 445
    iget v9, v1, Lo3/a;->f:F

    .line 446
    .line 447
    invoke-static {v14, v9, v11}, Lo3/k;->a(FFI)F

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    iget v12, v1, Lo3/a;->f:F

    .line 452
    .line 453
    invoke-static {v7, v9, v12, v11}, Lo3/k;->c(FFFI)F

    .line 454
    .line 455
    .line 456
    move-result v7

    .line 457
    iget v9, v1, Lo3/a;->e:F

    .line 458
    .line 459
    iget v11, v1, Lo3/a;->d:I

    .line 460
    .line 461
    invoke-static {v7, v9, v11}, Lo3/k;->b(FFI)F

    .line 462
    .line 463
    .line 464
    move-result v15

    .line 465
    iget v9, v1, Lo3/a;->e:F

    .line 466
    .line 467
    iget v11, v1, Lo3/a;->d:I

    .line 468
    .line 469
    int-to-float v11, v11

    .line 470
    div-float v11, v11, p1

    .line 471
    .line 472
    float-to-double v11, v11

    .line 473
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 474
    .line 475
    .line 476
    move-result-wide v11

    .line 477
    double-to-int v11, v11

    .line 478
    invoke-static {v15, v9, v11}, Lo3/k;->a(FFI)F

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    iget v11, v1, Lo3/a;->e:F

    .line 483
    .line 484
    iget v12, v1, Lo3/a;->d:I

    .line 485
    .line 486
    invoke-static {v7, v9, v11, v12}, Lo3/k;->c(FFFI)F

    .line 487
    .line 488
    .line 489
    move-result v7

    .line 490
    iget v9, v1, Lo3/a;->b:F

    .line 491
    .line 492
    iget v11, v1, Lo3/a;->c:I

    .line 493
    .line 494
    invoke-static {v7, v9, v11}, Lo3/k;->b(FFI)F

    .line 495
    .line 496
    .line 497
    move-result v23

    .line 498
    add-float/2addr v2, v5

    .line 499
    iget v7, v1, Lo3/a;->f:F

    .line 500
    .line 501
    invoke-static {v10, v7, v4}, Lo3/j;->a(FFF)F

    .line 502
    .line 503
    .line 504
    move-result v9

    .line 505
    iget v7, v1, Lo3/a;->b:F

    .line 506
    .line 507
    iget v11, v1, Lo3/a;->f:F

    .line 508
    .line 509
    invoke-static {v7, v11, v4}, Lo3/j;->a(FFF)F

    .line 510
    .line 511
    .line 512
    move-result v19

    .line 513
    iget v7, v1, Lo3/a;->e:F

    .line 514
    .line 515
    iget v11, v1, Lo3/a;->f:F

    .line 516
    .line 517
    invoke-static {v7, v11, v4}, Lo3/j;->a(FFF)F

    .line 518
    .line 519
    .line 520
    move-result v4

    .line 521
    new-instance v7, Lo3/l;

    .line 522
    .line 523
    iget v11, v1, Lo3/a;->f:F

    .line 524
    .line 525
    invoke-direct {v7, v11, v5}, Lo3/l;-><init>(FF)V

    .line 526
    .line 527
    .line 528
    const/4 v11, 0x0

    .line 529
    const/4 v12, 0x1

    .line 530
    invoke-virtual/range {v7 .. v12}, Lo3/l;->a(FFFZZ)V

    .line 531
    .line 532
    .line 533
    move-object/from16 v17, v7

    .line 534
    .line 535
    iget v5, v1, Lo3/a;->c:I

    .line 536
    .line 537
    if-lez v5, :cond_11

    .line 538
    .line 539
    iget v7, v1, Lo3/a;->b:F

    .line 540
    .line 541
    int-to-float v5, v5

    .line 542
    div-float v5, v5, p1

    .line 543
    .line 544
    float-to-double v11, v5

    .line 545
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 546
    .line 547
    .line 548
    move-result-wide v11

    .line 549
    double-to-int v5, v11

    .line 550
    const/16 v22, 0x0

    .line 551
    .line 552
    move/from16 v18, v3

    .line 553
    .line 554
    move/from16 v21, v5

    .line 555
    .line 556
    move/from16 v20, v7

    .line 557
    .line 558
    invoke-virtual/range {v17 .. v22}, Lo3/l;->c(FFFIZ)V

    .line 559
    .line 560
    .line 561
    :cond_11
    move/from16 v3, v19

    .line 562
    .line 563
    iget v5, v1, Lo3/a;->d:I

    .line 564
    .line 565
    if-lez v5, :cond_12

    .line 566
    .line 567
    iget v7, v1, Lo3/a;->e:F

    .line 568
    .line 569
    int-to-float v5, v5

    .line 570
    div-float v5, v5, p1

    .line 571
    .line 572
    float-to-double v11, v5

    .line 573
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 574
    .line 575
    .line 576
    move-result-wide v11

    .line 577
    double-to-int v5, v11

    .line 578
    const/16 v22, 0x0

    .line 579
    .line 580
    move/from16 v19, v4

    .line 581
    .line 582
    move/from16 v21, v5

    .line 583
    .line 584
    move/from16 v20, v7

    .line 585
    .line 586
    move/from16 v18, v13

    .line 587
    .line 588
    invoke-virtual/range {v17 .. v22}, Lo3/l;->c(FFFIZ)V

    .line 589
    .line 590
    .line 591
    :cond_12
    iget v5, v1, Lo3/a;->f:F

    .line 592
    .line 593
    const/16 v22, 0x1

    .line 594
    .line 595
    const/16 v19, 0x0

    .line 596
    .line 597
    iget v7, v1, Lo3/a;->g:I

    .line 598
    .line 599
    move/from16 v20, v5

    .line 600
    .line 601
    move/from16 v21, v7

    .line 602
    .line 603
    move/from16 v18, v14

    .line 604
    .line 605
    invoke-virtual/range {v17 .. v22}, Lo3/l;->c(FFFIZ)V

    .line 606
    .line 607
    .line 608
    iget v5, v1, Lo3/a;->d:I

    .line 609
    .line 610
    if-lez v5, :cond_13

    .line 611
    .line 612
    iget v7, v1, Lo3/a;->e:F

    .line 613
    .line 614
    int-to-float v5, v5

    .line 615
    div-float v5, v5, p1

    .line 616
    .line 617
    float-to-double v11, v5

    .line 618
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 619
    .line 620
    .line 621
    move-result-wide v11

    .line 622
    double-to-int v5, v11

    .line 623
    const/16 v22, 0x0

    .line 624
    .line 625
    move/from16 v19, v4

    .line 626
    .line 627
    move/from16 v21, v5

    .line 628
    .line 629
    move/from16 v20, v7

    .line 630
    .line 631
    move/from16 v18, v15

    .line 632
    .line 633
    invoke-virtual/range {v17 .. v22}, Lo3/l;->c(FFFIZ)V

    .line 634
    .line 635
    .line 636
    :cond_13
    iget v4, v1, Lo3/a;->c:I

    .line 637
    .line 638
    if-lez v4, :cond_14

    .line 639
    .line 640
    iget v1, v1, Lo3/a;->b:F

    .line 641
    .line 642
    int-to-float v4, v4

    .line 643
    div-float v4, v4, p1

    .line 644
    .line 645
    float-to-double v4, v4

    .line 646
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 647
    .line 648
    .line 649
    move-result-wide v4

    .line 650
    double-to-int v4, v4

    .line 651
    const/16 v22, 0x0

    .line 652
    .line 653
    move/from16 v20, v1

    .line 654
    .line 655
    move/from16 v19, v3

    .line 656
    .line 657
    move/from16 v21, v4

    .line 658
    .line 659
    move/from16 v18, v23

    .line 660
    .line 661
    invoke-virtual/range {v17 .. v22}, Lo3/l;->c(FFFIZ)V

    .line 662
    .line 663
    .line 664
    :cond_14
    const/4 v11, 0x0

    .line 665
    const/4 v12, 0x1

    .line 666
    move v8, v2

    .line 667
    move-object/from16 v7, v17

    .line 668
    .line 669
    invoke-virtual/range {v7 .. v12}, Lo3/l;->a(FFFZZ)V

    .line 670
    .line 671
    .line 672
    invoke-virtual/range {v17 .. v17}, Lo3/l;->d()Lo3/n;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    goto/16 :goto_8

    .line 677
    .line 678
    :cond_15
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    sget v3, Lcom/google/android/material/R$dimen;->m3_carousel_gone_size:I

    .line 683
    .line 684
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 685
    .line 686
    .line 687
    move-result v2

    .line 688
    add-float/2addr v2, v4

    .line 689
    iget v3, v1, Lo3/a;->f:F

    .line 690
    .line 691
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 692
    .line 693
    .line 694
    move-result v10

    .line 695
    div-float v2, v10, p1

    .line 696
    .line 697
    sub-float v8, v6, v2

    .line 698
    .line 699
    iget v3, v1, Lo3/a;->f:F

    .line 700
    .line 701
    iget v7, v1, Lo3/a;->g:I

    .line 702
    .line 703
    invoke-static {v6, v3, v7}, Lo3/k;->b(FFI)F

    .line 704
    .line 705
    .line 706
    move-result v3

    .line 707
    iget v9, v1, Lo3/a;->f:F

    .line 708
    .line 709
    invoke-static {v3, v9, v7}, Lo3/k;->a(FFI)F

    .line 710
    .line 711
    .line 712
    move-result v9

    .line 713
    iget v11, v1, Lo3/a;->f:F

    .line 714
    .line 715
    invoke-static {v6, v9, v11, v7}, Lo3/k;->c(FFFI)F

    .line 716
    .line 717
    .line 718
    move-result v7

    .line 719
    iget v9, v1, Lo3/a;->e:F

    .line 720
    .line 721
    iget v11, v1, Lo3/a;->d:I

    .line 722
    .line 723
    invoke-static {v7, v9, v11}, Lo3/k;->b(FFI)F

    .line 724
    .line 725
    .line 726
    move-result v13

    .line 727
    iget v9, v1, Lo3/a;->e:F

    .line 728
    .line 729
    iget v11, v1, Lo3/a;->d:I

    .line 730
    .line 731
    invoke-static {v7, v13, v9, v11}, Lo3/k;->c(FFFI)F

    .line 732
    .line 733
    .line 734
    move-result v7

    .line 735
    iget v9, v1, Lo3/a;->b:F

    .line 736
    .line 737
    iget v11, v1, Lo3/a;->c:I

    .line 738
    .line 739
    invoke-static {v7, v9, v11}, Lo3/k;->b(FFI)F

    .line 740
    .line 741
    .line 742
    move-result v14

    .line 743
    add-float/2addr v2, v5

    .line 744
    iget v7, v1, Lo3/a;->f:F

    .line 745
    .line 746
    invoke-static {v10, v7, v4}, Lo3/j;->a(FFF)F

    .line 747
    .line 748
    .line 749
    move-result v9

    .line 750
    iget v7, v1, Lo3/a;->b:F

    .line 751
    .line 752
    iget v11, v1, Lo3/a;->f:F

    .line 753
    .line 754
    invoke-static {v7, v11, v4}, Lo3/j;->a(FFF)F

    .line 755
    .line 756
    .line 757
    move-result v15

    .line 758
    iget v7, v1, Lo3/a;->e:F

    .line 759
    .line 760
    iget v11, v1, Lo3/a;->f:F

    .line 761
    .line 762
    invoke-static {v7, v11, v4}, Lo3/j;->a(FFF)F

    .line 763
    .line 764
    .line 765
    move-result v4

    .line 766
    new-instance v7, Lo3/l;

    .line 767
    .line 768
    iget v11, v1, Lo3/a;->f:F

    .line 769
    .line 770
    invoke-direct {v7, v11, v5}, Lo3/l;-><init>(FF)V

    .line 771
    .line 772
    .line 773
    const/4 v11, 0x0

    .line 774
    const/4 v12, 0x1

    .line 775
    invoke-virtual/range {v7 .. v12}, Lo3/l;->a(FFFZZ)V

    .line 776
    .line 777
    .line 778
    move-object/from16 v17, v7

    .line 779
    .line 780
    iget v5, v1, Lo3/a;->f:F

    .line 781
    .line 782
    const/16 v22, 0x1

    .line 783
    .line 784
    const/16 v19, 0x0

    .line 785
    .line 786
    iget v7, v1, Lo3/a;->g:I

    .line 787
    .line 788
    move/from16 v18, v3

    .line 789
    .line 790
    move/from16 v20, v5

    .line 791
    .line 792
    move/from16 v21, v7

    .line 793
    .line 794
    invoke-virtual/range {v17 .. v22}, Lo3/l;->c(FFFIZ)V

    .line 795
    .line 796
    .line 797
    iget v3, v1, Lo3/a;->d:I

    .line 798
    .line 799
    if-lez v3, :cond_16

    .line 800
    .line 801
    iget v3, v1, Lo3/a;->e:F

    .line 802
    .line 803
    const/16 v22, 0x0

    .line 804
    .line 805
    const/16 v21, 0x0

    .line 806
    .line 807
    move/from16 v20, v3

    .line 808
    .line 809
    move/from16 v19, v4

    .line 810
    .line 811
    move/from16 v18, v13

    .line 812
    .line 813
    invoke-virtual/range {v17 .. v22}, Lo3/l;->a(FFFZZ)V

    .line 814
    .line 815
    .line 816
    :cond_16
    iget v3, v1, Lo3/a;->c:I

    .line 817
    .line 818
    if-lez v3, :cond_17

    .line 819
    .line 820
    iget v1, v1, Lo3/a;->b:F

    .line 821
    .line 822
    const/16 v22, 0x0

    .line 823
    .line 824
    move/from16 v20, v1

    .line 825
    .line 826
    move/from16 v21, v3

    .line 827
    .line 828
    move/from16 v18, v14

    .line 829
    .line 830
    move/from16 v19, v15

    .line 831
    .line 832
    invoke-virtual/range {v17 .. v22}, Lo3/l;->c(FFFIZ)V

    .line 833
    .line 834
    .line 835
    :cond_17
    const/4 v11, 0x0

    .line 836
    const/4 v12, 0x1

    .line 837
    move v8, v2

    .line 838
    move-object/from16 v7, v17

    .line 839
    .line 840
    invoke-virtual/range {v7 .. v12}, Lo3/l;->a(FFFZZ)V

    .line 841
    .line 842
    .line 843
    invoke-virtual/range {v17 .. v17}, Lo3/l;->d()Lo3/n;

    .line 844
    .line 845
    .line 846
    move-result-object v1

    .line 847
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 848
    .line 849
    .line 850
    move-result v2

    .line 851
    if-eqz v2, :cond_1a

    .line 852
    .line 853
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->t()I

    .line 854
    .line 855
    .line 856
    move-result v2

    .line 857
    int-to-float v2, v2

    .line 858
    new-instance v7, Lo3/l;

    .line 859
    .line 860
    iget v3, v1, Lo3/n;->a:F

    .line 861
    .line 862
    invoke-direct {v7, v3, v2}, Lo3/l;-><init>(FF)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v1}, Lo3/n;->d()Lo3/m;

    .line 866
    .line 867
    .line 868
    move-result-object v3

    .line 869
    iget v3, v3, Lo3/m;->b:F

    .line 870
    .line 871
    sub-float/2addr v2, v3

    .line 872
    invoke-virtual {v1}, Lo3/n;->d()Lo3/m;

    .line 873
    .line 874
    .line 875
    move-result-object v3

    .line 876
    iget v3, v3, Lo3/m;->d:F

    .line 877
    .line 878
    div-float v3, v3, p1

    .line 879
    .line 880
    sub-float/2addr v2, v3

    .line 881
    iget-object v3, v1, Lo3/n;->b:Ljava/util/List;

    .line 882
    .line 883
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 884
    .line 885
    .line 886
    move-result v4

    .line 887
    const/16 v16, 0x1

    .line 888
    .line 889
    add-int/lit8 v4, v4, -0x1

    .line 890
    .line 891
    :goto_9
    if-ltz v4, :cond_19

    .line 892
    .line 893
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v5

    .line 897
    check-cast v5, Lo3/m;

    .line 898
    .line 899
    iget v10, v5, Lo3/m;->d:F

    .line 900
    .line 901
    div-float v8, v10, p1

    .line 902
    .line 903
    add-float/2addr v8, v2

    .line 904
    iget v9, v1, Lo3/n;->c:I

    .line 905
    .line 906
    if-lt v4, v9, :cond_18

    .line 907
    .line 908
    iget v9, v1, Lo3/n;->d:I

    .line 909
    .line 910
    if-gt v4, v9, :cond_18

    .line 911
    .line 912
    const/4 v11, 0x1

    .line 913
    goto :goto_a

    .line 914
    :cond_18
    const/4 v11, 0x0

    .line 915
    :goto_a
    iget v9, v5, Lo3/m;->c:F

    .line 916
    .line 917
    iget-boolean v12, v5, Lo3/m;->e:Z

    .line 918
    .line 919
    invoke-virtual/range {v7 .. v12}, Lo3/l;->a(FFFZZ)V

    .line 920
    .line 921
    .line 922
    iget v5, v5, Lo3/m;->d:F

    .line 923
    .line 924
    add-float/2addr v2, v5

    .line 925
    add-int/lit8 v4, v4, -0x1

    .line 926
    .line 927
    goto :goto_9

    .line 928
    :cond_19
    invoke-virtual {v7}, Lo3/l;->d()Lo3/n;

    .line 929
    .line 930
    .line 931
    move-result-object v1

    .line 932
    :cond_1a
    move-object v7, v1

    .line 933
    invoke-virtual {v0}, Lm1/i0;->getChildCount()I

    .line 934
    .line 935
    .line 936
    move-result v1

    .line 937
    if-lez v1, :cond_1c

    .line 938
    .line 939
    const/4 v1, 0x0

    .line 940
    invoke-virtual {v0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 941
    .line 942
    .line 943
    move-result-object v2

    .line 944
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 945
    .line 946
    .line 947
    move-result-object v1

    .line 948
    check-cast v1, Lm1/j0;

    .line 949
    .line 950
    iget-object v2, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 951
    .line 952
    iget v2, v2, Lo3/i;->a:I

    .line 953
    .line 954
    if-nez v2, :cond_1b

    .line 955
    .line 956
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 957
    .line 958
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 959
    .line 960
    :goto_b
    add-int/2addr v1, v2

    .line 961
    goto :goto_c

    .line 962
    :cond_1b
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 963
    .line 964
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 965
    .line 966
    goto :goto_b

    .line 967
    :cond_1c
    const/4 v1, 0x0

    .line 968
    :goto_c
    int-to-float v1, v1

    .line 969
    invoke-virtual {v0}, Lm1/i0;->getClipToPadding()Z

    .line 970
    .line 971
    .line 972
    move-result v2

    .line 973
    if-nez v2, :cond_1e

    .line 974
    .line 975
    iget-object v2, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lo3/j;

    .line 976
    .line 977
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOrientation()I

    .line 981
    .line 982
    .line 983
    move-result v2

    .line 984
    const/4 v11, 0x1

    .line 985
    if-ne v2, v11, :cond_1d

    .line 986
    .line 987
    invoke-virtual {v0}, Lm1/i0;->getPaddingTop()I

    .line 988
    .line 989
    .line 990
    move-result v2

    .line 991
    goto :goto_d

    .line 992
    :cond_1d
    invoke-virtual {v0}, Lm1/i0;->getPaddingLeft()I

    .line 993
    .line 994
    .line 995
    move-result v2

    .line 996
    goto :goto_d

    .line 997
    :cond_1e
    const/4 v2, 0x0

    .line 998
    :goto_d
    int-to-float v2, v2

    .line 999
    invoke-virtual {v0}, Lm1/i0;->getClipToPadding()Z

    .line 1000
    .line 1001
    .line 1002
    move-result v3

    .line 1003
    if-nez v3, :cond_20

    .line 1004
    .line 1005
    iget-object v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lo3/j;

    .line 1006
    .line 1007
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOrientation()I

    .line 1011
    .line 1012
    .line 1013
    move-result v3

    .line 1014
    const/4 v11, 0x1

    .line 1015
    if-ne v3, v11, :cond_1f

    .line 1016
    .line 1017
    invoke-virtual {v0}, Lm1/i0;->getPaddingBottom()I

    .line 1018
    .line 1019
    .line 1020
    move-result v3

    .line 1021
    goto :goto_e

    .line 1022
    :cond_1f
    invoke-virtual {v0}, Lm1/i0;->getPaddingRight()I

    .line 1023
    .line 1024
    .line 1025
    move-result v3

    .line 1026
    goto :goto_e

    .line 1027
    :cond_20
    const/4 v3, 0x0

    .line 1028
    :goto_e
    int-to-float v3, v3

    .line 1029
    new-instance v4, Lo3/o;

    .line 1030
    .line 1031
    new-instance v5, Ljava/util/ArrayList;

    .line 1032
    .line 1033
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    const/4 v8, 0x0

    .line 1040
    :goto_f
    iget-object v14, v7, Lo3/n;->b:Ljava/util/List;

    .line 1041
    .line 1042
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1043
    .line 1044
    .line 1045
    move-result v9

    .line 1046
    if-ge v8, v9, :cond_22

    .line 1047
    .line 1048
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v9

    .line 1052
    check-cast v9, Lo3/m;

    .line 1053
    .line 1054
    iget-boolean v9, v9, Lo3/m;->e:Z

    .line 1055
    .line 1056
    if-nez v9, :cond_21

    .line 1057
    .line 1058
    goto :goto_10

    .line 1059
    :cond_21
    add-int/lit8 v8, v8, 0x1

    .line 1060
    .line 1061
    goto :goto_f

    .line 1062
    :cond_22
    const/4 v8, -0x1

    .line 1063
    :goto_10
    invoke-interface {v0}, Lo3/b;->isHorizontal()Z

    .line 1064
    .line 1065
    .line 1066
    move-result v9

    .line 1067
    if-eqz v9, :cond_23

    .line 1068
    .line 1069
    invoke-interface {v0}, Lo3/b;->getContainerWidth()I

    .line 1070
    .line 1071
    .line 1072
    move-result v9

    .line 1073
    :goto_11
    int-to-float v9, v9

    .line 1074
    move v13, v9

    .line 1075
    goto :goto_12

    .line 1076
    :cond_23
    invoke-interface {v0}, Lo3/b;->getContainerHeight()I

    .line 1077
    .line 1078
    .line 1079
    move-result v9

    .line 1080
    goto :goto_11

    .line 1081
    :goto_12
    invoke-virtual {v7}, Lo3/n;->a()Lo3/m;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v9

    .line 1085
    iget v9, v9, Lo3/m;->b:F

    .line 1086
    .line 1087
    invoke-virtual {v7}, Lo3/n;->a()Lo3/m;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v10

    .line 1091
    iget v10, v10, Lo3/m;->d:F

    .line 1092
    .line 1093
    div-float v10, v10, p1

    .line 1094
    .line 1095
    sub-float/2addr v9, v10

    .line 1096
    cmpl-float v9, v9, v6

    .line 1097
    .line 1098
    const/16 v24, 0x0

    .line 1099
    .line 1100
    iget v10, v7, Lo3/n;->d:I

    .line 1101
    .line 1102
    iget v11, v7, Lo3/n;->c:I

    .line 1103
    .line 1104
    if-ltz v9, :cond_27

    .line 1105
    .line 1106
    invoke-virtual {v7}, Lo3/n;->a()Lo3/m;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v9

    .line 1110
    move/from16 v25, v6

    .line 1111
    .line 1112
    const/4 v12, 0x0

    .line 1113
    :goto_13
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1114
    .line 1115
    .line 1116
    move-result v6

    .line 1117
    if-ge v12, v6, :cond_25

    .line 1118
    .line 1119
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v6

    .line 1123
    check-cast v6, Lo3/m;

    .line 1124
    .line 1125
    iget-boolean v15, v6, Lo3/m;->e:Z

    .line 1126
    .line 1127
    if-nez v15, :cond_24

    .line 1128
    .line 1129
    goto :goto_14

    .line 1130
    :cond_24
    add-int/lit8 v12, v12, 0x1

    .line 1131
    .line 1132
    goto :goto_13

    .line 1133
    :cond_25
    move-object/from16 v6, v24

    .line 1134
    .line 1135
    :goto_14
    if-ne v9, v6, :cond_26

    .line 1136
    .line 1137
    goto :goto_17

    .line 1138
    :cond_26
    :goto_15
    const/4 v6, -0x1

    .line 1139
    goto :goto_16

    .line 1140
    :cond_27
    move/from16 v25, v6

    .line 1141
    .line 1142
    goto :goto_15

    .line 1143
    :goto_16
    if-ne v8, v6, :cond_29

    .line 1144
    .line 1145
    :goto_17
    cmpl-float v6, v2, v25

    .line 1146
    .line 1147
    if-lez v6, :cond_28

    .line 1148
    .line 1149
    const/4 v6, 0x1

    .line 1150
    invoke-static {v7, v2, v13, v6, v1}, Lo3/o;->e(Lo3/n;FFZF)Lo3/n;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    .line 1156
    .line 1157
    :cond_28
    move v15, v10

    .line 1158
    move/from16 v26, v11

    .line 1159
    .line 1160
    goto/16 :goto_1d

    .line 1161
    .line 1162
    :cond_29
    sub-int v6, v11, v8

    .line 1163
    .line 1164
    invoke-virtual {v7}, Lo3/n;->b()Lo3/m;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v9

    .line 1168
    iget v9, v9, Lo3/m;->b:F

    .line 1169
    .line 1170
    invoke-virtual {v7}, Lo3/n;->b()Lo3/m;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v12

    .line 1174
    iget v12, v12, Lo3/m;->d:F

    .line 1175
    .line 1176
    div-float v12, v12, p1

    .line 1177
    .line 1178
    sub-float/2addr v9, v12

    .line 1179
    if-gtz v6, :cond_2a

    .line 1180
    .line 1181
    invoke-virtual {v7}, Lo3/n;->a()Lo3/m;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v12

    .line 1185
    iget v12, v12, Lo3/m;->f:F

    .line 1186
    .line 1187
    cmpl-float v12, v12, v25

    .line 1188
    .line 1189
    if-lez v12, :cond_2a

    .line 1190
    .line 1191
    invoke-virtual {v7}, Lo3/n;->a()Lo3/m;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    iget v2, v2, Lo3/m;->f:F

    .line 1196
    .line 1197
    add-float/2addr v9, v2

    .line 1198
    const/4 v8, 0x0

    .line 1199
    move v2, v11

    .line 1200
    iget v11, v7, Lo3/n;->c:I

    .line 1201
    .line 1202
    move v6, v10

    .line 1203
    move v10, v9

    .line 1204
    const/4 v9, 0x0

    .line 1205
    iget v12, v7, Lo3/n;->d:I

    .line 1206
    .line 1207
    move/from16 v26, v2

    .line 1208
    .line 1209
    move v15, v6

    .line 1210
    invoke-static/range {v7 .. v13}, Lo3/o;->d(Lo3/n;IIFIIF)Lo3/n;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v2

    .line 1214
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    .line 1216
    .line 1217
    goto/16 :goto_1d

    .line 1218
    .line 1219
    :cond_2a
    move v15, v10

    .line 1220
    move/from16 v26, v11

    .line 1221
    .line 1222
    move/from16 v23, v13

    .line 1223
    .line 1224
    move/from16 v11, v25

    .line 1225
    .line 1226
    const/4 v10, 0x0

    .line 1227
    :goto_18
    if-ge v10, v6, :cond_2f

    .line 1228
    .line 1229
    const/4 v12, 0x1

    .line 1230
    invoke-static {v12, v5}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v13

    .line 1234
    check-cast v13, Lo3/n;

    .line 1235
    .line 1236
    move/from16 v16, v12

    .line 1237
    .line 1238
    add-int v12, v8, v10

    .line 1239
    .line 1240
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1241
    .line 1242
    .line 1243
    move-result v17

    .line 1244
    add-int/lit8 v17, v17, -0x1

    .line 1245
    .line 1246
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v18

    .line 1250
    move/from16 v27, v6

    .line 1251
    .line 1252
    move-object/from16 v6, v18

    .line 1253
    .line 1254
    check-cast v6, Lo3/m;

    .line 1255
    .line 1256
    iget v6, v6, Lo3/m;->f:F

    .line 1257
    .line 1258
    add-float/2addr v11, v6

    .line 1259
    add-int/lit8 v12, v12, -0x1

    .line 1260
    .line 1261
    if-ltz v12, :cond_2d

    .line 1262
    .line 1263
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v6

    .line 1267
    check-cast v6, Lo3/m;

    .line 1268
    .line 1269
    iget v6, v6, Lo3/m;->c:F

    .line 1270
    .line 1271
    iget v12, v13, Lo3/n;->d:I

    .line 1272
    .line 1273
    move/from16 v17, v6

    .line 1274
    .line 1275
    :goto_19
    iget-object v6, v13, Lo3/n;->b:Ljava/util/List;

    .line 1276
    .line 1277
    move/from16 v18, v8

    .line 1278
    .line 1279
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1280
    .line 1281
    .line 1282
    move-result v8

    .line 1283
    if-ge v12, v8, :cond_2c

    .line 1284
    .line 1285
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v6

    .line 1289
    check-cast v6, Lo3/m;

    .line 1290
    .line 1291
    iget v6, v6, Lo3/m;->c:F

    .line 1292
    .line 1293
    cmpl-float v6, v17, v6

    .line 1294
    .line 1295
    if-nez v6, :cond_2b

    .line 1296
    .line 1297
    move v6, v12

    .line 1298
    const/4 v12, 0x1

    .line 1299
    goto :goto_1a

    .line 1300
    :cond_2b
    add-int/lit8 v12, v12, 0x1

    .line 1301
    .line 1302
    move/from16 v8, v18

    .line 1303
    .line 1304
    goto :goto_19

    .line 1305
    :cond_2c
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1306
    .line 1307
    .line 1308
    move-result v6

    .line 1309
    const/4 v12, 0x1

    .line 1310
    sub-int/2addr v6, v12

    .line 1311
    :goto_1a
    add-int/lit8 v17, v6, -0x1

    .line 1312
    .line 1313
    :goto_1b
    move/from16 v19, v17

    .line 1314
    .line 1315
    goto :goto_1c

    .line 1316
    :cond_2d
    move/from16 v18, v8

    .line 1317
    .line 1318
    const/4 v12, 0x1

    .line 1319
    goto :goto_1b

    .line 1320
    :goto_1c
    sub-int v6, v26, v10

    .line 1321
    .line 1322
    add-int/lit8 v21, v6, -0x1

    .line 1323
    .line 1324
    sub-int v6, v15, v10

    .line 1325
    .line 1326
    add-int/lit8 v22, v6, -0x1

    .line 1327
    .line 1328
    add-float v20, v9, v11

    .line 1329
    .line 1330
    move-object/from16 v17, v13

    .line 1331
    .line 1332
    invoke-static/range {v17 .. v23}, Lo3/o;->d(Lo3/n;IIFIIF)Lo3/n;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v6

    .line 1336
    move/from16 v13, v23

    .line 1337
    .line 1338
    add-int/lit8 v8, v27, -0x1

    .line 1339
    .line 1340
    if-ne v10, v8, :cond_2e

    .line 1341
    .line 1342
    cmpl-float v8, v2, v25

    .line 1343
    .line 1344
    if-lez v8, :cond_2e

    .line 1345
    .line 1346
    invoke-static {v6, v2, v13, v12, v1}, Lo3/o;->e(Lo3/n;FFZF)Lo3/n;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v6

    .line 1350
    :cond_2e
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    .line 1352
    .line 1353
    add-int/lit8 v10, v10, 0x1

    .line 1354
    .line 1355
    move/from16 v23, v13

    .line 1356
    .line 1357
    move/from16 v8, v18

    .line 1358
    .line 1359
    move/from16 v6, v27

    .line 1360
    .line 1361
    goto/16 :goto_18

    .line 1362
    .line 1363
    :cond_2f
    :goto_1d
    new-instance v2, Ljava/util/ArrayList;

    .line 1364
    .line 1365
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    .line 1370
    .line 1371
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1372
    .line 1373
    .line 1374
    move-result v6

    .line 1375
    const/16 v16, 0x1

    .line 1376
    .line 1377
    add-int/lit8 v6, v6, -0x1

    .line 1378
    .line 1379
    :goto_1e
    if-ltz v6, :cond_31

    .line 1380
    .line 1381
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v8

    .line 1385
    check-cast v8, Lo3/m;

    .line 1386
    .line 1387
    iget-boolean v8, v8, Lo3/m;->e:Z

    .line 1388
    .line 1389
    if-nez v8, :cond_30

    .line 1390
    .line 1391
    goto :goto_1f

    .line 1392
    :cond_30
    add-int/lit8 v6, v6, -0x1

    .line 1393
    .line 1394
    goto :goto_1e

    .line 1395
    :cond_31
    const/4 v6, -0x1

    .line 1396
    :goto_1f
    invoke-interface {v0}, Lo3/b;->isHorizontal()Z

    .line 1397
    .line 1398
    .line 1399
    move-result v8

    .line 1400
    if-eqz v8, :cond_32

    .line 1401
    .line 1402
    invoke-interface {v0}, Lo3/b;->getContainerWidth()I

    .line 1403
    .line 1404
    .line 1405
    move-result v8

    .line 1406
    :goto_20
    int-to-float v8, v8

    .line 1407
    move v13, v8

    .line 1408
    goto :goto_21

    .line 1409
    :cond_32
    invoke-interface {v0}, Lo3/b;->getContainerHeight()I

    .line 1410
    .line 1411
    .line 1412
    move-result v8

    .line 1413
    goto :goto_20

    .line 1414
    :goto_21
    invoke-interface {v0}, Lo3/b;->getContainerHeight()I

    .line 1415
    .line 1416
    .line 1417
    move-result v8

    .line 1418
    invoke-interface {v0}, Lo3/b;->isHorizontal()Z

    .line 1419
    .line 1420
    .line 1421
    move-result v9

    .line 1422
    if-eqz v9, :cond_33

    .line 1423
    .line 1424
    invoke-interface {v0}, Lo3/b;->getContainerWidth()I

    .line 1425
    .line 1426
    .line 1427
    move-result v8

    .line 1428
    :cond_33
    invoke-virtual {v7}, Lo3/n;->c()Lo3/m;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v9

    .line 1432
    iget v9, v9, Lo3/m;->b:F

    .line 1433
    .line 1434
    invoke-virtual {v7}, Lo3/n;->c()Lo3/m;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v10

    .line 1438
    iget v10, v10, Lo3/m;->d:F

    .line 1439
    .line 1440
    div-float v10, v10, p1

    .line 1441
    .line 1442
    add-float/2addr v10, v9

    .line 1443
    int-to-float v8, v8

    .line 1444
    cmpg-float v8, v10, v8

    .line 1445
    .line 1446
    if-gtz v8, :cond_36

    .line 1447
    .line 1448
    invoke-virtual {v7}, Lo3/n;->c()Lo3/m;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v8

    .line 1452
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1453
    .line 1454
    .line 1455
    move-result v9

    .line 1456
    const/16 v16, 0x1

    .line 1457
    .line 1458
    add-int/lit8 v9, v9, -0x1

    .line 1459
    .line 1460
    :goto_22
    if-ltz v9, :cond_35

    .line 1461
    .line 1462
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v10

    .line 1466
    check-cast v10, Lo3/m;

    .line 1467
    .line 1468
    iget-boolean v11, v10, Lo3/m;->e:Z

    .line 1469
    .line 1470
    if-nez v11, :cond_34

    .line 1471
    .line 1472
    goto :goto_23

    .line 1473
    :cond_34
    add-int/lit8 v9, v9, -0x1

    .line 1474
    .line 1475
    goto :goto_22

    .line 1476
    :cond_35
    move-object/from16 v10, v24

    .line 1477
    .line 1478
    :goto_23
    if-ne v8, v10, :cond_36

    .line 1479
    .line 1480
    goto :goto_24

    .line 1481
    :cond_36
    const/4 v8, -0x1

    .line 1482
    if-ne v6, v8, :cond_37

    .line 1483
    .line 1484
    :goto_24
    cmpl-float v6, v3, v25

    .line 1485
    .line 1486
    if-lez v6, :cond_3d

    .line 1487
    .line 1488
    const/4 v6, 0x0

    .line 1489
    invoke-static {v7, v3, v13, v6, v1}, Lo3/o;->e(Lo3/n;FFZF)Lo3/n;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v1

    .line 1493
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    .line 1495
    .line 1496
    goto/16 :goto_2b

    .line 1497
    .line 1498
    :cond_37
    sub-int v8, v6, v15

    .line 1499
    .line 1500
    invoke-virtual {v7}, Lo3/n;->b()Lo3/m;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v9

    .line 1504
    iget v9, v9, Lo3/m;->b:F

    .line 1505
    .line 1506
    invoke-virtual {v7}, Lo3/n;->b()Lo3/m;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v10

    .line 1510
    iget v10, v10, Lo3/m;->d:F

    .line 1511
    .line 1512
    div-float v10, v10, p1

    .line 1513
    .line 1514
    sub-float/2addr v9, v10

    .line 1515
    if-gtz v8, :cond_38

    .line 1516
    .line 1517
    invoke-virtual {v7}, Lo3/n;->c()Lo3/m;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v10

    .line 1521
    iget v10, v10, Lo3/m;->f:F

    .line 1522
    .line 1523
    cmpl-float v10, v10, v25

    .line 1524
    .line 1525
    if-lez v10, :cond_38

    .line 1526
    .line 1527
    invoke-virtual {v7}, Lo3/n;->c()Lo3/m;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v1

    .line 1531
    iget v1, v1, Lo3/m;->f:F

    .line 1532
    .line 1533
    sub-float v10, v9, v1

    .line 1534
    .line 1535
    const/4 v8, 0x0

    .line 1536
    iget v11, v7, Lo3/n;->c:I

    .line 1537
    .line 1538
    const/4 v9, 0x0

    .line 1539
    iget v12, v7, Lo3/n;->d:I

    .line 1540
    .line 1541
    invoke-static/range {v7 .. v13}, Lo3/o;->d(Lo3/n;IIFIIF)Lo3/n;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v1

    .line 1545
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    .line 1547
    .line 1548
    goto/16 :goto_2b

    .line 1549
    .line 1550
    :cond_38
    move/from16 v23, v13

    .line 1551
    .line 1552
    move/from16 v11, v25

    .line 1553
    .line 1554
    const/4 v10, 0x0

    .line 1555
    :goto_25
    if-ge v10, v8, :cond_3d

    .line 1556
    .line 1557
    const/4 v12, 0x1

    .line 1558
    invoke-static {v12, v2}, Lb/c;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v13

    .line 1562
    check-cast v13, Lo3/n;

    .line 1563
    .line 1564
    move/from16 v16, v12

    .line 1565
    .line 1566
    sub-int v12, v6, v10

    .line 1567
    .line 1568
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v17

    .line 1572
    move/from16 v18, v6

    .line 1573
    .line 1574
    move-object/from16 v6, v17

    .line 1575
    .line 1576
    check-cast v6, Lo3/m;

    .line 1577
    .line 1578
    iget v6, v6, Lo3/m;->f:F

    .line 1579
    .line 1580
    add-float/2addr v11, v6

    .line 1581
    add-int/lit8 v12, v12, 0x1

    .line 1582
    .line 1583
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1584
    .line 1585
    .line 1586
    move-result v6

    .line 1587
    if-ge v12, v6, :cond_3b

    .line 1588
    .line 1589
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v6

    .line 1593
    check-cast v6, Lo3/m;

    .line 1594
    .line 1595
    iget v6, v6, Lo3/m;->c:F

    .line 1596
    .line 1597
    iget v12, v13, Lo3/n;->c:I

    .line 1598
    .line 1599
    add-int/lit8 v12, v12, -0x1

    .line 1600
    .line 1601
    :goto_26
    if-ltz v12, :cond_3a

    .line 1602
    .line 1603
    move/from16 v17, v6

    .line 1604
    .line 1605
    iget-object v6, v13, Lo3/n;->b:Ljava/util/List;

    .line 1606
    .line 1607
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v6

    .line 1611
    check-cast v6, Lo3/m;

    .line 1612
    .line 1613
    iget v6, v6, Lo3/m;->c:F

    .line 1614
    .line 1615
    cmpl-float v6, v17, v6

    .line 1616
    .line 1617
    if-nez v6, :cond_39

    .line 1618
    .line 1619
    :goto_27
    const/16 v16, 0x1

    .line 1620
    .line 1621
    goto :goto_28

    .line 1622
    :cond_39
    add-int/lit8 v12, v12, -0x1

    .line 1623
    .line 1624
    move/from16 v6, v17

    .line 1625
    .line 1626
    goto :goto_26

    .line 1627
    :cond_3a
    const/4 v12, 0x0

    .line 1628
    goto :goto_27

    .line 1629
    :goto_28
    add-int/lit8 v6, v12, 0x1

    .line 1630
    .line 1631
    move/from16 v19, v6

    .line 1632
    .line 1633
    goto :goto_29

    .line 1634
    :cond_3b
    const/16 v19, 0x0

    .line 1635
    .line 1636
    :goto_29
    add-int v6, v26, v10

    .line 1637
    .line 1638
    add-int/lit8 v21, v6, 0x1

    .line 1639
    .line 1640
    add-int v6, v15, v10

    .line 1641
    .line 1642
    add-int/lit8 v22, v6, 0x1

    .line 1643
    .line 1644
    sub-float v20, v9, v11

    .line 1645
    .line 1646
    move-object/from16 v17, v13

    .line 1647
    .line 1648
    invoke-static/range {v17 .. v23}, Lo3/o;->d(Lo3/n;IIFIIF)Lo3/n;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v6

    .line 1652
    move/from16 v13, v23

    .line 1653
    .line 1654
    add-int/lit8 v12, v8, -0x1

    .line 1655
    .line 1656
    if-ne v10, v12, :cond_3c

    .line 1657
    .line 1658
    cmpl-float v12, v3, v25

    .line 1659
    .line 1660
    if-lez v12, :cond_3c

    .line 1661
    .line 1662
    const/4 v12, 0x0

    .line 1663
    invoke-static {v6, v3, v13, v12, v1}, Lo3/o;->e(Lo3/n;FFZF)Lo3/n;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v6

    .line 1667
    goto :goto_2a

    .line 1668
    :cond_3c
    const/4 v12, 0x0

    .line 1669
    :goto_2a
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    .line 1671
    .line 1672
    add-int/lit8 v10, v10, 0x1

    .line 1673
    .line 1674
    move/from16 v23, v13

    .line 1675
    .line 1676
    move/from16 v6, v18

    .line 1677
    .line 1678
    goto :goto_25

    .line 1679
    :cond_3d
    :goto_2b
    invoke-direct {v4, v7, v5, v2}, Lo3/o;-><init>(Lo3/n;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1680
    .line 1681
    .line 1682
    iput-object v4, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 1683
    .line 1684
    return-void
.end method

.method public final D()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 3
    .line 4
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final E(ILm1/p0;Lm1/x0;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->C(Lm1/p0;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 20
    .line 21
    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 22
    .line 23
    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 24
    .line 25
    add-int v4, v0, p1

    .line 26
    .line 27
    if-ge v4, v2, :cond_2

    .line 28
    .line 29
    sub-int p1, v2, v0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    if-le v4, v3, :cond_3

    .line 33
    .line 34
    sub-int p1, v3, v0

    .line 35
    .line 36
    :cond_3
    :goto_0
    add-int/2addr v0, p1

    .line 37
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->F(Lo3/o;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 45
    .line 46
    iget v0, v0, Lo3/n;->a:F

    .line 47
    .line 48
    const/high16 v2, 0x40000000    # 2.0f

    .line 49
    .line 50
    div-float/2addr v0, v2

    .line 51
    invoke-virtual {p0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p0, v2}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->r(I)F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    new-instance v3, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 75
    .line 76
    invoke-virtual {v4}, Lo3/n;->c()Lo3/m;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iget v4, v4, Lo3/m;->b:F

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 84
    .line 85
    invoke-virtual {v4}, Lo3/n;->a()Lo3/m;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget v4, v4, Lo3/m;->b:F

    .line 90
    .line 91
    :goto_1
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 92
    .line 93
    .line 94
    move v6, v1

    .line 95
    :goto_2
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-ge v6, v7, :cond_6

    .line 100
    .line 101
    invoke-virtual {p0, v6}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {p0, v2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->n(FF)F

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    iget-object v9, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 110
    .line 111
    iget-object v9, v9, Lo3/n;->b:Ljava/util/List;

    .line 112
    .line 113
    invoke-static {v9, v8, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->x(Ljava/util/List;FZ)LC/k;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/material/carousel/CarouselLayoutManager;->q(Landroid/view/View;FLC/k;)F

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    invoke-super {p0, v7, v3}, Lm1/i0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 122
    .line 123
    .line 124
    iget-object v9, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 125
    .line 126
    invoke-virtual {v9, v7, v3, v0, v8}, Lo3/i;->offsetChild(Landroid/view/View;Landroid/graphics/Rect;FF)V

    .line 127
    .line 128
    .line 129
    sub-float v8, v4, v8

    .line 130
    .line 131
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-eqz v7, :cond_5

    .line 136
    .line 137
    cmpg-float v9, v8, v5

    .line 138
    .line 139
    if-gez v9, :cond_5

    .line 140
    .line 141
    invoke-virtual {p0, v7}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    iput v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->B:I

    .line 146
    .line 147
    move v5, v8

    .line 148
    :cond_5
    iget-object v7, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 149
    .line 150
    iget v7, v7, Lo3/n;->a:F

    .line 151
    .line 152
    invoke-virtual {p0, v2, v7}, Lcom/google/android/material/carousel/CarouselLayoutManager;->n(FF)F

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    add-int/lit8 v6, v6, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->s(Lm1/p0;Lm1/x0;)V

    .line 160
    .line 161
    .line 162
    return p1

    .line 163
    :cond_7
    :goto_3
    return v1
.end method

.method public final F(Lo3/o;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lo3/o;->a()Lo3/n;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lo3/o;->b()Lo3/n;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    int-to-float v1, v1

    .line 29
    int-to-float v0, v0

    .line 30
    invoke-virtual {p1, v2, v1, v0}, Lo3/o;->getShiftedState(FFF)Lo3/n;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 35
    .line 36
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 37
    .line 38
    iget-object p1, p1, Lo3/n;->b:Ljava/util/List;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->s:Lo3/f;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, v0, Lo3/f;->b:Ljava/util/List;

    .line 50
    .line 51
    return-void
.end method

.method public final G()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->A:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lo3/j;

    .line 15
    .line 16
    check-cast v2, Lo3/p;

    .line 17
    .line 18
    iget v3, v2, Lo3/p;->c:I

    .line 19
    .line 20
    if-ge v1, v3, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Lo3/b;->getItemCount()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget v4, v2, Lo3/p;->c:I

    .line 27
    .line 28
    if-ge v3, v4, :cond_2

    .line 29
    .line 30
    :cond_1
    iget v3, v2, Lo3/p;->c:I

    .line 31
    .line 32
    if-lt v1, v3, :cond_3

    .line 33
    .line 34
    invoke-interface {p0}, Lo3/b;->getItemCount()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget v2, v2, Lo3/p;->c:I

    .line 39
    .line 40
    if-ge v1, v2, :cond_3

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->D()V

    .line 43
    .line 44
    .line 45
    :cond_3
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->A:I

    .line 46
    .line 47
    :cond_4
    :goto_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public computeHorizontalScrollExtent(Lm1/x0;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 20
    .line 21
    iget-object v0, v0, Lo3/o;->a:Lo3/n;

    .line 22
    .line 23
    iget v0, v0, Lo3/n;->a:F

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->computeHorizontalScrollRange(Lm1/x0;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-float p1, p1

    .line 30
    div-float/2addr v0, p1

    .line 31
    invoke-virtual {p0}, Lm1/i0;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    int-to-float p1, p1

    .line 36
    mul-float/2addr p1, v0

    .line 37
    float-to-int p1, p1

    .line 38
    return p1

    .line 39
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public computeHorizontalScrollOffset(Lm1/x0;)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 2
    .line 3
    return p1
.end method

.method public computeHorizontalScrollRange(Lm1/x0;)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 4
    .line 5
    sub-int/2addr p1, v0

    .line 6
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->u(I)Lo3/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->v(ILo3/n;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 16
    .line 17
    sub-int/2addr p1, v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/PointF;

    .line 26
    .line 27
    int-to-float p1, p1

    .line 28
    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    .line 33
    .line 34
    int-to-float p1, p1

    .line 35
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public computeVerticalScrollExtent(Lm1/x0;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 20
    .line 21
    iget-object v0, v0, Lo3/o;->a:Lo3/n;

    .line 22
    .line 23
    iget v0, v0, Lo3/n;->a:F

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->computeVerticalScrollRange(Lm1/x0;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-float p1, p1

    .line 30
    div-float/2addr v0, p1

    .line 31
    invoke-virtual {p0}, Lm1/i0;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    int-to-float p1, p1

    .line 36
    mul-float/2addr p1, v0

    .line 37
    float-to-int p1, p1

    .line 38
    return p1

    .line 39
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public computeVerticalScrollOffset(Lm1/x0;)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 2
    .line 3
    return p1
.end method

.method public computeVerticalScrollRange(Lm1/x0;)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 4
    .line 5
    sub-int/2addr p1, v0

    .line 6
    return p1
.end method

.method public generateDefaultLayoutParams()Lm1/j0;
    .locals 2

    .line 1
    new-instance v0, Lm1/j0;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Lm1/j0;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public getCarouselAlignment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    .line 2
    .line 3
    return v0
.end method

.method public getContainerHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getContainerWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lm1/i0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    int-to-float p1, p1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 21
    .line 22
    iget-object v0, v0, Lo3/n;->b:Ljava/util/List;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v0, p1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->x(Ljava/util/List;FZ)LC/k;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, v0, LC/k;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lo3/m;

    .line 32
    .line 33
    iget v2, v1, Lo3/m;->d:F

    .line 34
    .line 35
    iget-object v0, v0, LC/k;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lo3/m;

    .line 38
    .line 39
    iget v3, v0, Lo3/m;->d:F

    .line 40
    .line 41
    iget v1, v1, Lo3/m;->b:F

    .line 42
    .line 43
    iget v0, v0, Lo3/m;->b:F

    .line 44
    .line 45
    invoke-static {v2, v3, v1, v0, p1}, Lg3/a;->lerp(FFFFF)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    const/high16 v2, 0x40000000    # 2.0f

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-float v0, v0

    .line 63
    sub-float/2addr v0, p1

    .line 64
    div-float/2addr v0, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move v0, v1

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    int-to-float v1, v1

    .line 79
    sub-float/2addr v1, p1

    .line 80
    div-float/2addr v1, v2

    .line 81
    :goto_1
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 82
    .line 83
    int-to-float p1, p1

    .line 84
    add-float/2addr p1, v0

    .line 85
    float-to-int p1, p1

    .line 86
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    int-to-float v2, v2

    .line 89
    add-float/2addr v2, v1

    .line 90
    float-to-int v2, v2

    .line 91
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 92
    .line 93
    int-to-float v3, v3

    .line 94
    sub-float/2addr v3, v0

    .line 95
    float-to-int v0, v3

    .line 96
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 97
    .line 98
    int-to-float v3, v3

    .line 99
    sub-float/2addr v3, v1

    .line 100
    float-to-int v1, v3

    .line 101
    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 2
    .line 3
    iget v0, v0, Lo3/i;->a:I

    .line 4
    .line 5
    return v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHorizontal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 2
    .line 3
    iget v0, v0, Lo3/i;->a:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final m(Landroid/view/View;ILo3/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 2
    .line 3
    iget v0, v0, Lo3/n;->a:F

    .line 4
    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr v0, v1

    .line 8
    invoke-virtual {p0, p1, p2}, Lm1/i0;->addView(Landroid/view/View;I)V

    .line 9
    .line 10
    .line 11
    iget p2, p3, Lo3/e;->b:F

    .line 12
    .line 13
    sub-float p3, p2, v0

    .line 14
    .line 15
    float-to-int p3, p3

    .line 16
    add-float/2addr p2, v0

    .line 17
    float-to-int p2, p2

    .line 18
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p3, p2}, Lo3/i;->layoutDecoratedWithMargins(Landroid/view/View;II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p2, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final n(FF)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sub-float/2addr p1, p2

    .line 8
    return p1

    .line 9
    :cond_0
    add-float/2addr p1, p2

    .line 10
    return p1
.end method

.method public final o(ILm1/p0;Lm1/x0;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->r(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p3}, Lm1/x0;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p1, v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, p2, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->B(Lm1/p0;FI)Lo3/e;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v2, v1, Lo3/e;->b:F

    .line 16
    .line 17
    iget-object v3, v1, Lo3/e;->c:LC/k;

    .line 18
    .line 19
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->z(FLC/k;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 27
    .line 28
    iget v4, v4, Lo3/n;->a:F

    .line 29
    .line 30
    invoke-virtual {p0, v0, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->n(FF)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->A(FLC/k;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v2, v1, Lo3/e;->a:Landroid/view/View;

    .line 42
    .line 43
    const/4 v3, -0x1

    .line 44
    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->m(Landroid/view/View;ILo3/e;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_2
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lo3/j;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v2, v0, Lo3/j;->a:F

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    cmpl-float v4, v2, v3

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget v4, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_min:I

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    :goto_0
    iput v2, v0, Lo3/j;->a:F

    .line 29
    .line 30
    iget v2, v0, Lo3/j;->b:F

    .line 31
    .line 32
    cmpl-float v3, v2, v3

    .line 33
    .line 34
    if-lez v3, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget v2, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_max:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :goto_1
    iput v2, v0, Lo3/j;->b:F

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->D()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->z:Landroid/view/View$OnLayoutChangeListener;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Lm1/p0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lm1/i0;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Lm1/p0;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->z:Landroid/view/View$OnLayoutChangeListener;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILm1/p0;Lm1/x0;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getOrientation()I

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    const/high16 v0, -0x80000000

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq p2, v2, :cond_5

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    if-eq p2, v3, :cond_3

    .line 21
    .line 22
    const/16 v3, 0x11

    .line 23
    .line 24
    if-eq p2, v3, :cond_7

    .line 25
    .line 26
    const/16 v3, 0x21

    .line 27
    .line 28
    if-eq p2, v3, :cond_6

    .line 29
    .line 30
    const/16 v3, 0x42

    .line 31
    .line 32
    if-eq p2, v3, :cond_4

    .line 33
    .line 34
    const/16 v3, 0x82

    .line 35
    .line 36
    if-eq p2, v3, :cond_2

    .line 37
    .line 38
    new-instance p4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "Unknown focus request:"

    .line 41
    .line 42
    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string p4, "CarouselLayoutManager"

    .line 53
    .line 54
    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    move p2, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    if-ne p4, v2, :cond_1

    .line 60
    .line 61
    :cond_3
    :goto_0
    move p2, v2

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    if-nez p4, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    :cond_5
    :goto_1
    move p2, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_6
    if-ne p4, v2, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_7
    if-nez p4, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_5

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_2
    if-ne p2, v0, :cond_8

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_8
    const/4 p4, 0x0

    .line 89
    if-ne p2, v1, :cond_d

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_9

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_9
    invoke-virtual {p0, p4}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    sub-int/2addr p1, v2

    .line 107
    if-ltz p1, :cond_b

    .line 108
    .line 109
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-lt p1, p2, :cond_a

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->r(I)F

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->B(Lm1/p0;FI)Lo3/e;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object p2, p1, Lo3/e;->a:Landroid/view/View;

    .line 125
    .line 126
    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->m(Landroid/view/View;ILo3/e;)V

    .line 127
    .line 128
    .line 129
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_c

    .line 134
    .line 135
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    add-int/lit8 p4, p1, -0x1

    .line 140
    .line 141
    :cond_c
    invoke-virtual {p0, p4}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    return-object p1

    .line 146
    :cond_d
    invoke-virtual {p0, p1}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    sub-int/2addr p2, v2

    .line 155
    if-ne p1, p2, :cond_e

    .line 156
    .line 157
    :goto_4
    const/4 p1, 0x0

    .line 158
    return-object p1

    .line 159
    :cond_e
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    sub-int/2addr p1, v2

    .line 164
    invoke-virtual {p0, p1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    add-int/2addr p1, v2

    .line 173
    if-ltz p1, :cond_10

    .line 174
    .line 175
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-lt p1, p2, :cond_f

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->r(I)F

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->B(Lm1/p0;FI)Lo3/e;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object p2, p1, Lo3/e;->a:Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual {p0, p2, v1, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->m(Landroid/view/View;ILo3/e;)V

    .line 193
    .line 194
    .line 195
    :cond_10
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_11

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_11
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    add-int/lit8 p4, p1, -0x1

    .line 207
    .line 208
    :goto_6
    invoke-virtual {p0, p4}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm1/i0;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->G()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm1/i0;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->G()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onLayoutChildren(Lm1/p0;Lm1/x0;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_1a

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->t()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    cmpg-float v1, v1, v3

    .line 17
    .line 18
    if-gtz v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_11

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    move v3, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v3, v2

    .line 34
    :goto_0
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->C(Lm1/p0;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v5, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_3

    .line 46
    .line 47
    invoke-virtual {v5}, Lo3/o;->a()Lo3/n;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {v5}, Lo3/o;->b()Lo3/n;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :goto_1
    if-eqz v6, :cond_4

    .line 57
    .line 58
    invoke-virtual {v5}, Lo3/n;->c()Lo3/m;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual {v5}, Lo3/n;->a()Lo3/m;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    :goto_2
    iget v6, v6, Lo3/m;->a:F

    .line 68
    .line 69
    iget v5, v5, Lo3/n;->a:F

    .line 70
    .line 71
    const/high16 v7, 0x40000000    # 2.0f

    .line 72
    .line 73
    div-float/2addr v5, v7

    .line 74
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_5

    .line 79
    .line 80
    add-float/2addr v6, v5

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    sub-float/2addr v6, v5

    .line 83
    :goto_3
    iget-object v5, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 84
    .line 85
    invoke-virtual {v5}, Lo3/i;->e()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    int-to-float v5, v5

    .line 90
    sub-float/2addr v5, v6

    .line 91
    float-to-int v5, v5

    .line 92
    iget-object v6, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_6

    .line 99
    .line 100
    invoke-virtual {v6}, Lo3/o;->b()Lo3/n;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    invoke-virtual {v6}, Lo3/o;->a()Lo3/n;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    :goto_4
    if-eqz v7, :cond_7

    .line 110
    .line 111
    invoke-virtual {v6}, Lo3/n;->a()Lo3/m;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    goto :goto_5

    .line 116
    :cond_7
    invoke-virtual {v6}, Lo3/n;->c()Lo3/m;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->getItemCount()I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    sub-int/2addr v9, v4

    .line 125
    int-to-float v9, v9

    .line 126
    iget v6, v6, Lo3/n;->a:F

    .line 127
    .line 128
    mul-float/2addr v9, v6

    .line 129
    if-eqz v7, :cond_8

    .line 130
    .line 131
    const/high16 v6, -0x40800000    # -1.0f

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_8
    const/high16 v6, 0x3f800000    # 1.0f

    .line 135
    .line 136
    :goto_6
    mul-float/2addr v9, v6

    .line 137
    if-eqz v7, :cond_9

    .line 138
    .line 139
    iget v6, v8, Lo3/m;->g:F

    .line 140
    .line 141
    neg-float v6, v6

    .line 142
    goto :goto_7

    .line 143
    :cond_9
    iget v6, v8, Lo3/m;->h:F

    .line 144
    .line 145
    :goto_7
    iget v10, v8, Lo3/m;->a:F

    .line 146
    .line 147
    iget-object v11, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 148
    .line 149
    invoke-virtual {v11}, Lo3/i;->e()I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    int-to-float v11, v11

    .line 154
    sub-float/2addr v10, v11

    .line 155
    iget-object v11, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 156
    .line 157
    invoke-virtual {v11}, Lo3/i;->b()I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    int-to-float v11, v11

    .line 162
    iget v8, v8, Lo3/m;->a:F

    .line 163
    .line 164
    sub-float/2addr v11, v8

    .line 165
    sub-float/2addr v9, v10

    .line 166
    add-float/2addr v9, v11

    .line 167
    add-float/2addr v9, v6

    .line 168
    float-to-int v6, v9

    .line 169
    if-eqz v7, :cond_a

    .line 170
    .line 171
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    goto :goto_8

    .line 176
    :cond_a
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    :goto_8
    if-eqz v1, :cond_b

    .line 181
    .line 182
    move v7, v6

    .line 183
    goto :goto_9

    .line 184
    :cond_b
    move v7, v5

    .line 185
    :goto_9
    iput v7, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 186
    .line 187
    if-eqz v1, :cond_c

    .line 188
    .line 189
    move v6, v5

    .line 190
    :cond_c
    iput v6, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 191
    .line 192
    if-eqz v3, :cond_17

    .line 193
    .line 194
    iput v5, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 195
    .line 196
    iget-object v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 197
    .line 198
    invoke-virtual {v0}, Lm1/i0;->getItemCount()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iget v5, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 203
    .line 204
    iget v6, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    iget-object v8, v1, Lo3/o;->a:Lo3/n;

    .line 211
    .line 212
    new-instance v9, Ljava/util/HashMap;

    .line 213
    .line 214
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 215
    .line 216
    .line 217
    move v10, v2

    .line 218
    move v11, v10

    .line 219
    :goto_a
    const/4 v12, -0x1

    .line 220
    iget v13, v8, Lo3/n;->a:F

    .line 221
    .line 222
    if-ge v10, v3, :cond_11

    .line 223
    .line 224
    if-eqz v7, :cond_d

    .line 225
    .line 226
    sub-int v14, v3, v10

    .line 227
    .line 228
    sub-int/2addr v14, v4

    .line 229
    goto :goto_b

    .line 230
    :cond_d
    move v14, v10

    .line 231
    :goto_b
    int-to-float v15, v14

    .line 232
    mul-float/2addr v15, v13

    .line 233
    if-eqz v7, :cond_e

    .line 234
    .line 235
    goto :goto_c

    .line 236
    :cond_e
    move v12, v4

    .line 237
    :goto_c
    int-to-float v12, v12

    .line 238
    mul-float/2addr v15, v12

    .line 239
    int-to-float v12, v6

    .line 240
    iget v13, v1, Lo3/o;->g:F

    .line 241
    .line 242
    sub-float/2addr v12, v13

    .line 243
    cmpl-float v12, v15, v12

    .line 244
    .line 245
    iget-object v13, v1, Lo3/o;->c:Ljava/util/List;

    .line 246
    .line 247
    if-gtz v12, :cond_f

    .line 248
    .line 249
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    sub-int v12, v3, v12

    .line 254
    .line 255
    if-lt v10, v12, :cond_10

    .line 256
    .line 257
    :cond_f
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v12

    .line 261
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v14

    .line 265
    sub-int/2addr v14, v4

    .line 266
    invoke-static {v11, v2, v14}, LG/a;->clamp(III)I

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    check-cast v13, Lo3/n;

    .line 275
    .line 276
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    add-int/lit8 v11, v11, 0x1

    .line 280
    .line 281
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 282
    .line 283
    goto :goto_a

    .line 284
    :cond_11
    add-int/lit8 v6, v3, -0x1

    .line 285
    .line 286
    move v8, v2

    .line 287
    :goto_d
    if-ltz v6, :cond_16

    .line 288
    .line 289
    if-eqz v7, :cond_12

    .line 290
    .line 291
    sub-int v10, v3, v6

    .line 292
    .line 293
    sub-int/2addr v10, v4

    .line 294
    goto :goto_e

    .line 295
    :cond_12
    move v10, v6

    .line 296
    :goto_e
    int-to-float v11, v10

    .line 297
    mul-float/2addr v11, v13

    .line 298
    if-eqz v7, :cond_13

    .line 299
    .line 300
    move v14, v12

    .line 301
    goto :goto_f

    .line 302
    :cond_13
    move v14, v4

    .line 303
    :goto_f
    int-to-float v14, v14

    .line 304
    mul-float/2addr v11, v14

    .line 305
    int-to-float v14, v5

    .line 306
    iget v15, v1, Lo3/o;->f:F

    .line 307
    .line 308
    add-float/2addr v14, v15

    .line 309
    cmpg-float v11, v11, v14

    .line 310
    .line 311
    iget-object v14, v1, Lo3/o;->b:Ljava/util/List;

    .line 312
    .line 313
    if-ltz v11, :cond_14

    .line 314
    .line 315
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    if-ge v6, v11, :cond_15

    .line 320
    .line 321
    :cond_14
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 326
    .line 327
    .line 328
    move-result v11

    .line 329
    sub-int/2addr v11, v4

    .line 330
    invoke-static {v8, v2, v11}, LG/a;->clamp(III)I

    .line 331
    .line 332
    .line 333
    move-result v11

    .line 334
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    check-cast v11, Lo3/n;

    .line 339
    .line 340
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    add-int/lit8 v8, v8, 0x1

    .line 344
    .line 345
    :cond_15
    add-int/lit8 v6, v6, -0x1

    .line 346
    .line 347
    goto :goto_d

    .line 348
    :cond_16
    iput-object v9, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->x:Ljava/util/HashMap;

    .line 349
    .line 350
    iget v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->B:I

    .line 351
    .line 352
    if-eq v1, v12, :cond_17

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->u(I)Lo3/n;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->v(ILo3/n;)I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    iput v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 363
    .line 364
    :cond_17
    iget v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 365
    .line 366
    iget v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 367
    .line 368
    iget v4, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 369
    .line 370
    if-ge v1, v3, :cond_18

    .line 371
    .line 372
    sub-int/2addr v3, v1

    .line 373
    goto :goto_10

    .line 374
    :cond_18
    if-le v1, v4, :cond_19

    .line 375
    .line 376
    sub-int v3, v4, v1

    .line 377
    .line 378
    goto :goto_10

    .line 379
    :cond_19
    move v3, v2

    .line 380
    :goto_10
    add-int/2addr v3, v1

    .line 381
    iput v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 382
    .line 383
    iget v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 384
    .line 385
    invoke-virtual/range {p2 .. p2}, Lm1/x0;->getItemCount()I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    invoke-static {v1, v2, v3}, LG/a;->clamp(III)I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    iput v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 394
    .line 395
    iget-object v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->F(Lo3/o;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual/range {p0 .. p1}, Lm1/i0;->detachAndScrapAttachedViews(Lm1/p0;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->s(Lm1/p0;Lm1/x0;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0}, Lm1/i0;->getItemCount()I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    iput v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->A:I

    .line 411
    .line 412
    return-void

    .line 413
    :cond_1a
    :goto_11
    invoke-virtual/range {p0 .. p1}, Lm1/i0;->removeAndRecycleAllViews(Lm1/p0;)V

    .line 414
    .line 415
    .line 416
    iput v2, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 417
    .line 418
    return-void
.end method

.method public onLayoutCompleted(Lm1/x0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lm1/i0;->onLayoutCompleted(Lm1/x0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 23
    .line 24
    return-void
.end method

.method public final p(ILm1/p0;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->r(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ltz p1, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0, p2, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->B(Lm1/p0;FI)Lo3/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v1, Lo3/e;->c:LC/k;

    .line 12
    .line 13
    iget v3, v1, Lo3/e;->b:F

    .line 14
    .line 15
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->A(FLC/k;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 23
    .line 24
    iget v4, v4, Lo3/n;->a:F

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    add-float/2addr v0, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    sub-float/2addr v0, v4

    .line 35
    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->z(FLC/k;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    iget-object v2, v1, Lo3/e;->a:Landroid/view/View;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->m(Landroid/view/View;ILo3/e;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_3
    return-void
.end method

.method public final q(Landroid/view/View;FLC/k;)F
    .locals 5

    .line 1
    iget-object v0, p3, LC/k;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo3/m;

    .line 4
    .line 5
    iget v1, v0, Lo3/m;->b:F

    .line 6
    .line 7
    iget-object p3, p3, LC/k;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p3, Lo3/m;

    .line 10
    .line 11
    iget v2, p3, Lo3/m;->b:F

    .line 12
    .line 13
    iget v3, v0, Lo3/m;->a:F

    .line 14
    .line 15
    iget v4, p3, Lo3/m;->a:F

    .line 16
    .line 17
    invoke-static {v1, v2, v3, v4, p2}, Lg3/a;->lerp(FFFFF)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 22
    .line 23
    invoke-virtual {v2}, Lo3/n;->b()Lo3/m;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eq p3, v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 30
    .line 31
    invoke-virtual {v2}, Lo3/n;->d()Lo3/m;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-ne v0, v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return v1

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lm1/j0;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lo3/i;->getMaskMargins(Lm1/j0;)F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 52
    .line 53
    iget v0, v0, Lo3/n;->a:F

    .line 54
    .line 55
    div-float/2addr p1, v0

    .line 56
    sub-float/2addr p2, v4

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    .line 58
    .line 59
    iget p3, p3, Lo3/m;->c:F

    .line 60
    .line 61
    sub-float/2addr v0, p3

    .line 62
    add-float/2addr v0, p1

    .line 63
    mul-float/2addr v0, p2

    .line 64
    add-float/2addr v0, v1

    .line 65
    return v0
.end method

.method public final r(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo3/i;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    int-to-float v0, v0

    .line 11
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 12
    .line 13
    iget v1, v1, Lo3/n;->a:F

    .line 14
    .line 15
    int-to-float p1, p1

    .line 16
    mul-float/2addr v1, p1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->n(FF)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p2}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0, p2}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    invoke-virtual {p0, p5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->u(I)Lo3/n;

    .line 16
    .line 17
    .line 18
    move-result-object p5

    .line 19
    invoke-virtual {p0, p3, p5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->w(ILo3/n;)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-nez p3, :cond_1

    .line 24
    .line 25
    :goto_0
    return p4

    .line 26
    :cond_1
    iget p5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 27
    .line 28
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 29
    .line 30
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 31
    .line 32
    add-int v2, p5, p3

    .line 33
    .line 34
    if-ge v2, v0, :cond_2

    .line 35
    .line 36
    sub-int p3, v0, p5

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    if-le v2, v1, :cond_3

    .line 40
    .line 41
    sub-int p3, v1, p5

    .line 42
    .line 43
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 44
    .line 45
    add-int/2addr p5, p3

    .line 46
    int-to-float p3, p5

    .line 47
    int-to-float p5, v0

    .line 48
    int-to-float v0, v1

    .line 49
    invoke-virtual {v2, p3, p5, v0}, Lo3/o;->getShiftedState(FFF)Lo3/n;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p0, p2}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->w(ILo3/n;)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1, p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {p1, p4, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 72
    .line 73
    .line 74
    :goto_2
    const/4 p1, 0x1

    .line 75
    return p1
.end method

.method public final s(Lm1/p0;Lm1/x0;)V
    .locals 5

    .line 1
    :goto_0
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v3, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-super {p0, v0, v3}, Lm1/i0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    :goto_1
    int-to-float v3, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    goto :goto_1

    .line 38
    :goto_2
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 39
    .line 40
    iget-object v4, v4, Lo3/n;->b:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {v4, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->x(Ljava/util/List;FZ)LC/k;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p0, v3, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->A(FLC/k;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, v0, p1}, Lm1/i0;->removeAndRecycleView(Landroid/view/View;Lm1/p0;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sub-int/2addr v0, v2

    .line 61
    if-ltz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sub-int/2addr v0, v2

    .line 68
    invoke-virtual {p0, v0}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v3, Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-super {p0, v0, v3}, Lm1/i0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    :goto_4
    int-to-float v3, v3

    .line 91
    goto :goto_5

    .line 92
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    goto :goto_4

    .line 97
    :goto_5
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lo3/n;

    .line 98
    .line 99
    iget-object v4, v4, Lo3/n;->b:Ljava/util/List;

    .line 100
    .line 101
    invoke-static {v4, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->x(Ljava/util/List;FZ)LC/k;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {p0, v3, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->z(FLC/k;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    invoke-virtual {p0, v0, p1}, Lm1/i0;->removeAndRecycleView(Landroid/view/View;Lm1/p0;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_4

    .line 120
    .line 121
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 122
    .line 123
    sub-int/2addr v0, v2

    .line 124
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->p(ILm1/p0;)V

    .line 125
    .line 126
    .line 127
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 128
    .line 129
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->o(ILm1/p0;Lm1/x0;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    invoke-virtual {p0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {p0}, Lm1/i0;->getChildCount()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    sub-int/2addr v1, v2

    .line 146
    invoke-virtual {p0, v1}, Lm1/i0;->getChildAt(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p0, v1}, Lm1/i0;->getPosition(Landroid/view/View;)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    sub-int/2addr v0, v2

    .line 155
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->p(ILm1/p0;)V

    .line 156
    .line 157
    .line 158
    add-int/2addr v1, v2

    .line 159
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->o(ILm1/p0;Lm1/x0;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public scrollHorizontallyBy(ILm1/p0;Lm1/x0;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollHorizontally()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->E(ILm1/p0;Lm1/x0;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->B:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->u(I)Lo3/n;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->v(ILo3/n;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 17
    .line 18
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p1, v1, v0}, LG/a;->clamp(III)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->F(Lo3/o;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lm1/i0;->requestLayout()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public scrollVerticallyBy(ILm1/p0;Lm1/x0;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->canScrollVertically()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->E(ILm1/p0;Lm1/x0;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public setCarouselAlignment(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->D()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCarouselStrategy(Lo3/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lo3/j;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->D()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "invalid orientation:"

    .line 10
    .line 11
    invoke-static {p1, v1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Lm1/i0;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget v1, v1, Lo3/i;->a:I

    .line 28
    .line 29
    if-eq p1, v1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    return-void

    .line 33
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 34
    .line 35
    if-ne p1, v0, :cond_4

    .line 36
    .line 37
    new-instance p1, Lo3/g;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lo3/g;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "invalid orientation"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_5
    new-instance p1, Lo3/h;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lo3/h;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lo3/i;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->D()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Lm1/x0;I)V
    .locals 0

    .line 1
    new-instance p2, Lo3/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p0, p1}, Lo3/d;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lm1/w0;->setTargetPosition(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lm1/i0;->startSmoothScroll(Lm1/w0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->getContainerHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final u(I)Lo3/n;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->x:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lm1/i0;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p1, v2, v1}, LG/a;->clamp(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lo3/n;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lo3/o;

    .line 34
    .line 35
    iget-object p1, p1, Lo3/o;->a:Lo3/n;

    .line 36
    .line 37
    return-object p1
.end method

.method public final v(ILo3/n;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->t()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {p2}, Lo3/n;->c()Lo3/m;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget v2, v2, Lo3/m;->a:F

    .line 19
    .line 20
    sub-float/2addr v0, v2

    .line 21
    int-to-float p1, p1

    .line 22
    iget p2, p2, Lo3/n;->a:F

    .line 23
    .line 24
    mul-float/2addr p1, p2

    .line 25
    sub-float/2addr v0, p1

    .line 26
    div-float/2addr p2, v1

    .line 27
    sub-float/2addr v0, p2

    .line 28
    float-to-int p1, v0

    .line 29
    return p1

    .line 30
    :cond_0
    int-to-float p1, p1

    .line 31
    iget v0, p2, Lo3/n;->a:F

    .line 32
    .line 33
    mul-float/2addr p1, v0

    .line 34
    invoke-virtual {p2}, Lo3/n;->a()Lo3/m;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v0, v0, Lo3/m;->a:F

    .line 39
    .line 40
    sub-float/2addr p1, v0

    .line 41
    iget p2, p2, Lo3/n;->a:F

    .line 42
    .line 43
    div-float/2addr p2, v1

    .line 44
    add-float/2addr p2, p1

    .line 45
    float-to-int p1, p2

    .line 46
    return p1
.end method

.method public final w(ILo3/n;)I
    .locals 6

    .line 1
    iget v0, p2, Lo3/n;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p2, Lo3/n;->b:Ljava/util/List;

    .line 6
    .line 7
    iget v2, p2, Lo3/n;->c:I

    .line 8
    .line 9
    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7fffffff

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lo3/m;

    .line 31
    .line 32
    int-to-float v3, p1

    .line 33
    iget v4, p2, Lo3/n;->a:F

    .line 34
    .line 35
    mul-float/2addr v3, v4

    .line 36
    const/high16 v5, 0x40000000    # 2.0f

    .line 37
    .line 38
    div-float/2addr v4, v5

    .line 39
    add-float/2addr v4, v3

    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->t()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    int-to-float v3, v3

    .line 51
    iget v2, v2, Lo3/m;->a:F

    .line 52
    .line 53
    sub-float/2addr v3, v2

    .line 54
    sub-float/2addr v3, v4

    .line 55
    float-to-int v2, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget v2, v2, Lo3/m;->a:F

    .line 58
    .line 59
    sub-float/2addr v4, v2

    .line 60
    float-to-int v2, v4

    .line 61
    :goto_1
    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 62
    .line 63
    sub-int/2addr v2, v3

    .line 64
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-le v3, v4, :cond_0

    .line 73
    .line 74
    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return v1
.end method

.method public final y()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->isHorizontal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lm1/i0;->getLayoutDirection()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final z(FLC/k;)Z
    .locals 3

    .line 1
    iget-object v0, p2, LC/k;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo3/m;

    .line 4
    .line 5
    iget v1, v0, Lo3/m;->d:F

    .line 6
    .line 7
    iget-object p2, p2, LC/k;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Lo3/m;

    .line 10
    .line 11
    iget v2, p2, Lo3/m;->d:F

    .line 12
    .line 13
    iget v0, v0, Lo3/m;->b:F

    .line 14
    .line 15
    iget p2, p2, Lo3/m;->b:F

    .line 16
    .line 17
    invoke-static {v1, v2, v0, p2, p1}, Lg3/a;->lerp(FFFFF)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float/2addr p2, v0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    add-float/2addr p1, p2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sub-float/2addr p1, p2

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->y()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    cmpg-float p1, p1, p2

    .line 41
    .line 42
    if-gez p1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->t()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    int-to-float p2, p2

    .line 50
    cmpl-float p1, p1, p2

    .line 51
    .line 52
    if-lez p1, :cond_2

    .line 53
    .line 54
    :goto_1
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    return p1
.end method
